/*
 * spi_lcd.h
 *
 * Definition file for SPI LCD handler.
 *
 * Copyright (C) 2020 S.Yamamoto
 *
 * 2020/Apr/11 S.Yamamoto  Created.
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
#define NOKIA5100_SCE RA7
#define NOKIA5100_DC  RA1
#define NOKIA5100_RS  RA6
#define SPEAKER       RA3

// Structure of NOKIA LCD. 48x84 dots.
#define NOKIA_V_HEIGHT 6
#define NOKIA_H_WIDTH  84

/*
 * NOKIA5100
 *
 * 1 - VCC
 * 2 - GND
 * 3 - SCE
 * 4 - RESET
 * 5 - D/C
 * 6 - SDIN
 * 7 - SCLK
 * 8 - LED+
 */

//
// Prototype
//
void SPILCD_InitDisplay( void );
void SPILCD_LocationPutc( int x, int y, int ch );
void SPILCD_LocationPut7Seg( int x, int y, int n, int dp );
void SPILCD_Small7Seg( int x, int y, int n, int dp );
void SPILCD_SmallColon( int x, int y, int fDisp );
void SPILCD_SleepDisplay( void );
void SPILCD_Normal( void );
void SPILCD_Reverse( void );

