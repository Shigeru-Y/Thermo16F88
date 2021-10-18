/*
 * Thermometer with PIC16F88.
 * DS18B20+ as temperature reading.
 *
 * 
 * (C) 2020 Shigeru Yamamoto
 *
 * 2020/Apr/12  S.Yamamoto Created.
 *
 */
// #include <stdio.h>
#include <htc.h> 
#include "Thermo16F88.h"
#include "nokia5100.h"

#define TIMER_INTERVAL (0xffff - 20000) // TMRモジュールのカウント初期値
                                        // 8MHz, 1/1プリスケーラで、10msecごとに割り込みが入る
unsigned char seconds;
unsigned char minutes;
bit sleepRequest;
bit speakerPol;
unsigned char speakerCount;
unsigned char dummy;
unsigned char spiEmpty;
bit timer_int;
int timer_07;
unsigned char timer_count;
int counter;

int binTemperature;
int maxTemperature;
int temperatureInt;
int temperatureFrac;
char temperature100;
char temperature10;
char temperature1;
char temperature01;

void main( void )
{
    __CONFIG ( FOSC_INTOSCIO &  // Use internal RC clock.
              WDTE_OFF &        // watchdog OFF
              PWRTE_OFF &       // Power-up Timer
              MCLRE_ON &        // MCLR pin active
              BOREN_OFF &       // Brown out reset OFF
              LVP_OFF &         // Low-Voltage Programming OF
              CPD_OFF &         // EEPROM protect OFF
              WRT_OFF &         // FrashROM protect OFF
              DEBUG_ON &        // ICD debug enable.
//              CCPMX_RB1 &       // RB1 use as CCP
              CCPMX_RB3 &       // RB3 use as CCP
              CP_OFF );         // Code protect OFF
 
	char a, b;

    OSCCONbits.IRCF = 7;        // Internal clock set to 8MHz
    // PortB
    // RB5 ENC_A, RB4=ENC_B input
    // All other output.
    TRISB  = 0xc3;          // PortB RB0,4,5 - Input, all other Output
	PORTB  = 0x10;			// clock high

//	ADCON1 = 0x00;			// Result left justified. Clock 1/1. Ref AVDD/AVSS.
//	ADCON0 = AD0_PREP;		// Setup A/D converter.
	ANSEL  = 0;				// No analog.
//	ADIF   = 0;				// Clear interrupt flag.
//	ADIE   = 1;				// Interrupt enable for A/D completion.
//	thermo16stt = THEMO16STT_IDLE;	// A/D conversion set idle state.

	// Set digital ports.
 	TRISA  = 0x21;			// A0 for analog, A1 for DC, A7 for CE.
							// A3 Speaker
 	PORTA  = 0x08;			// CE high.
 
    INTCONbits.GIE  = 1;    // Enable Grobal interrupt.
    INTCONbits.PEIE = 1;    // Enable Peripheral interrupt.
//
    INTCONbits.RBIF = 0;	// Clear interrupt flag.
//    INTCONbits.RBIE = 1;	// Enable PORT-B Interrupt.

    PIR1bits.TMR1IF = 0;    // Clear Timer1 interrupt flag
//    PIE1bits.TMR1IE = 1;    // Enable Timer1 interrupt
 
//	OPTION_REG = 0b00000110;	// Timer prescaler 1/64. Weak pull-up.
//	OPTION_REG = 0b00000000;	// Timer prescaler 1/2. Weak pull-up.
	OPTION_REG = 0b10000000;	// Timer prescaler 1/2. Weak pull-up off.
	
	INTCONbits.TMR0IF = 0;
//	INTCONbits.TMR0IE = 1;
//	TMR0 = TIMER0_INTERVAL;

	T1CON = 0x35;	// Enable T1
	timer_int = 0;	// Clear timer interrupt flag.
	timer_07  = 0;
	timer_count = 0;	// Reset timer counter.
	TMR1IE = 1;		// Enable interrupt on TMR1 overflow
	
	// Setup PWM
	PR2 = 0xff;			// Generate 
	CCP1CON = 0x0c;		// PWM mode, LSB=0
	CCPR1L = 127;		// 1/2.
//	CCPR1L = 17;		// 1/3 of PR2
//	T2CON  = 0x5c;		// 1/1 prescaler. 1/12 Postscaler to generate 1T period.
//	T2CON  = 0x04;		// 1/1 prescaler, 1/1 postscaler.
	T2CON  = 0x05;		// 1/1 prescaler, 1/4 postscaler.
	// Enable interrupt.
	TMR2IF = 0;
//TEST	TMR2IE = 1;

	// Serial setup
	SSPCON = 0x22;		// SSP enable, SPI master  mode, clock idle low.
//	SSPCON = 0x32;		// SSP enable, SPI master  mode, clock idle high.
	SSPSTAT = 0xc0;		// Transmit occurs on transition from active to Idle clock state
	SSPIF = 0;			// Clear interrupt flag.
	SSPIE = 1;			// Enable interrupt.
	spiEmpty = 1;			// Indicate SPI buffer empty.
	INTEDG = 0;			// Falling edge.
	INT0IF = 0;			// Clear interrupt.
	INT0IE = 1;			// Interrupt on RB0 enabled.

	// Start first conversion.
	StartTemperatureDS18();

	//
	// Initialize SPI LCD
	//
	SPILCD_InitDisplay();

    // Main loop
	seconds = 0;
	minutes = 0;
	sleepRequest = 0;
	maxTemperature = 0;
	timer_count = 3;		// Preset interrupt timer count.

    while( 1 ) {
		CLRWDT();	// Idly kick the dog

		if( timer_int ){
			// 1S timer.
			timer_int = 0;

			// Buzzer ON if condition.
			if( seconds == 0 || seconds < minutes){
				T2CON = 0x05;			// Buzzer ON.
			}

			// Conversion may end. Lit pilot lamp.
			// PILOT = 0;
			// Wait timer
			for( counter = 0 ; counter < 2000; counter++ ){
				CLRWDT();	// Idly kick the dog
			}
			
			// LED OFF
			// PILOT = 1;
			// Wait timer
			for( counter = 0 ; counter < 5000; counter++ ){
				CLRWDT();	// Idly kick the dog
			}
			
			// Read temperature
			binTemperature = ReadTemperatureDS18() + TEMP_ADJUST;

			// Start next conversion.
			StartTemperatureDS18();

			// Convert temperature data and output
			if( (minutes == 0) || (maxTemperature < binTemperature) )
				maxTemperature = binTemperature;
			temperatureInt = ((maxTemperature >> 4) & 0x0fff);
			temperatureFrac = (maxTemperature & 0x000f);

			temperature100 = (temperatureInt / 100);
			temperatureInt %= 100;
			temperature10  = (temperatureInt / 10);
			temperatureInt %= 10;
			temperature01 = (temperatureFrac * 10 / 16);
			
			// Update display.
//			if( temperature10 < 3 ){
//				// Body temperature < 30 degree
//				SPILCD_LocationPut7Seg( 0, 0, 10, 0 );		// '-'
//				SPILCD_LocationPut7Seg( 24, 0, 10, 0 );		// '-'
//				SPILCD_LocationPut7Seg( 48, 0, 10, 0 );		// '-'
//			} else {
				// Normal
				SPILCD_LocationPut7Seg( 0, 0, temperature10, 0 );
				SPILCD_LocationPut7Seg( 24, 0, temperatureInt, 1 );
				SPILCD_LocationPut7Seg( 48, 0, temperature01, 0 );
				// Small display
//				SPILCD_Small7Seg( 0, 4, temperature10, 0 );
//				SPILCD_Small7Seg( 12, 4, temperatureInt, 1 );
//				SPILCD_Small7Seg( 24, 4, temperature01, 0 );
//			}

			// Count up timer.
			if( ++seconds == 60 ){
				seconds = 0;
				if( ++minutes == 5 ){
					// 5minutes past.
					sleepRequest = 1;
					minutes = 0;
				}
			}
			// Display timer.
			SPILCD_Small7Seg( 44, 4, minutes, 0 );
			SPILCD_SmallColon( 55, 4, 1 );		// Display colon
			SPILCD_Small7Seg( 60, 4, seconds / 10, 0 );
			SPILCD_Small7Seg( 72, 4, seconds % 10, 0 );

			// Display reverse if reached 3 minutes.
			if( minutes >= 3 ){
				if( seconds & 0x01 ){
					SPILCD_Reverse();	// Display reverse.
				} else {
					SPILCD_Normal();	// Display noremal.
				}
			}
		}
		
		// 0.7 sec?
		if( timer_07 ){
			timer_07 = 0;
			SPILCD_SmallColon( 55, 4, 0 );		// Erase colon
		}

		//
		// Power down
		//
		if( sleepRequest ){
			SPILCD_SleepDisplay();	// Display sleep
			OSCCONbits.IRCF = 0;    // Internal clock set to 32KHz
			SLEEP();		// Sleep until PORTB change interrupt.
			NOP();
			// wake up
			OSCCONbits.IRCF = 7;    // Internal clock set to 8MHz
			sleepRequest = 0;		// Clear sleep request flag.
			maxTemperature = 0;		// Clear max temperature.
			SPILCD_InitDisplay();	// Initialize display again.
			timer_count = 3;		// Preset interrupt timer count.
		}
    }
}
 
 
// Interrupt(10msec)
static void interrupt intr( void )
{
    volatile static int intr_counter;
 
	if ( INT0IF == 1 ) {
//		RA2 = 1;	// Monitor
		// INT0 received. (Remo-con)
		INT0IF = 0;
//		dummy = SSPBUF;		// Dummy read.
//		SSPIF = 0;			// Clear SPI interrupt flag.
//		SSPBUF = ad0High;
//		spiCount = 0;
//		RA2 = 0;
	}

	if ( SSPIF == 1 ){
		// Serial interrupt.
		SSPIF = 0;
		dummy = SSPBUF;		// Dummy read.
		spiEmpty = 1;
		NOKIA5100_SCE = 1;		// Negate CE
	}


	if ( TMR0IF == 1 ) {
		INTCONbits.TMR0IF = 0;	// Clear timer interrupt flag.
//		TMR0 = WAVE_INTERVAL;
	}
	

    //------------------------------------
    //  Timer1 Interrupt
    //------------------------------------
    if ( PIR1bits.TMR1IF == 1 ) {
        PIR1bits.TMR1IF = 0;    // Clear timer interrupt flag

		// 0.1sec timer. 25000(d). 65536-25000=40536. 9E58(H)
		TMR1H = 0x9e;
		TMR1L = 0x5a;	// Adjust of code execution.
		if( ++timer_count == 10 ){
			timer_int = 1;		// 1 sec past.
			timer_count = 0;
		} else if( timer_count == 7 ){
			timer_07 = 1;		// 0.7 sec past.
		}
		// Buzzer OFF.
		if( timer_count == 3 ){
			T2CON = 0;		// Stop timer2 for PWM
		}
    }   

    //------------------------------------
    //  Timer2 Interrupt. 
    //  40KHz(25us) * 12 = 300uS
    //------------------------------------
    if ( PIR1bits.TMR2IF == 1 ) {
        PIR1bits.TMR2IF = 0;    // Clear timer interrupt flag

		// Start A/D conversion.
//		ADCON0 = AD0_START;		// Start A/D conversion.
//		RA2 = 1;				// Monitor output.

		// Pilot lamp
//		if( ++led_count == 0 ){
//			RA2 = 1;
//		}
//		if( led_count == led_value ){
//			RA2 = 0;
//		}

		// State machine
 	}

	//-----------------------------------
	// A/D interrupt.
	//-----------------------------------
	if( PIR1bits.ADIF == 1 ){
		PIR1bits.ADIF = 0;
	}
 	
    return;
 
}
