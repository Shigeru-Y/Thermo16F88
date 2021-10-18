/*
 * Thermo16F88.h
 *
 * Definition file for thermometer
 */

/*
 * Definition of port
 * Hardware
 * Port Assign
 *
 *                          +----__----+
 *            RA2/AN2/VREF- | 1      18| RA1/AN1         D/C
 * SPEAKER    RA3/AN3/VREF+ | 2      17| RA0/AN0         
 *            RA4/AN4/TOCKI | 3      16| RA7/OSC1/CLKI   NOKIA5100_SCE
 * RESET      RA5/~MCLR     | 4      15| RA6/OSC2/CLKO   NOKIA5100_RS
 *            VSS           | 5      14| VDD
 * SW_IN      RB0/INT       | 6      13| RB7/AN6/PGD     Programming & Debug
 * SDI        RB1/SDI/SDA   | 7      12| RB6/AN5/PGC     Programming & Debug
 * LCDDATA    RB2/SDO/RX    | 8      11| RB5/~SS/TX      
 * Pilot      RB3/PGM/CCP1  | 9      10| RB4/SCK/SCL     Shift clock to LCD
 *                          +----------+
 */
/*
 * Port A : TRISA=0x23
 * RA0 I: N.C.
 * RA1 I: LCD_D/C
 * RA2 O: N.C.
 * RA3 O: SPEAKER
 * RA4 O: DS18DATA
 * RA5 I: ~MCLR
 * RA6 O: LCD_RS
 * RA7 O: LCD_SCE
 *
 * Port B : TRISB=0xf3
 * RB0 I: INT SW_IN
 * RB1 I: LCD_SDI
 * RB2 O: LCD_DATA
 * RB3 O: CCP1(Pilot)
 * RB4 O: LCD_SCK
 * RB5 I: N.C.
 * RB6 I: PGC
 * RB7 I: PGD
 */

//
// Hardware definition.
//
// #define PILOT RB3

// Temperature adjustment
#define TEMP_ADJUST 0x0012

//
// Prototype
//
void StartTemperatureDS18( void );
unsigned int ReadTemperatureDS18( void );
