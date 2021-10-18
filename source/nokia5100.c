/*
 * spi_lcd.c
 *
 * Control of SPI LCD (AE-AQM1248A) for PIC16F88
 *
 * Copyright(C) 2020 S.Yamamoto
 *
 * 2020/Apr/11 S.Yamamoto  Created.
 */
#include <htc.h>
#include "nokia5100.h"

extern unsigned char dummy;
extern unsigned char spiEmpty;

//
// Command definition of SPI-LCD.
//
#define SPI_LCD_DISPLAY_OFF       0xae
#define SPI_LCD_DISPLAY_ON        0xaf
#define SPI_LCD_ADC_NORMAL        0xa0
#define SPI_LCD_OUTPUT_REVERSE    0xc8
#define SPI_LCD_BIAS_1_7          0xa3
#define SPI_LCD_POWER_CONTR1      0x2c
#define SPI_LCD_POWER_CONTR2      0x2e
#define SPI_LCD_POWER_CONTR3      0x2f

#define SPI_LCD_VO_VOLTAGE        0x23
#define SPI_LCD_EL_VOLUME_MODE    0x81
#define SPI_LCD_EL_VOLUME_SET     0x1c

#define SPI_LCD_DISP_ALL_POINT    0xa4
#define SPI_LCD_DISP_START        0x40
#define SPI_LCD_DISP_NORMAL       0xa6
#define SPI_LCD_DISP_REVERSE      0xa7

#define SPI_LCD_SET_PAGE          0xb0
#define SPI_LCD_SET_ADDRESS       0x40
#define SPI_LCD_SET_COLUMN_H      0x10
#define SPI_LCD_SET_COLUMN_L      0x00

 
/* Charactor font (Numeric numbers) */
const unsigned char pattern7seg[11] = 
{
	0xfc,	// 0
	0x60,	// 1
	0xda,	// 2
	0xf2,	// 3
	0x66,	// 4
	0xb6,	// 5
	0xbe,	// 6
	0xe0,	// 7
	0xfe,	// 8
	0xf6,	// 9
	0x02	// -
};

//
// Utility code
//
void SPI_LCD_Delay10US( int us )
{
	while( --us > 0 ){
		// dummy = RA0;
	}
}

void WriteSPI( unsigned char data )
{
	// Wait for last transmission.
	while( spiEmpty == 0 )		// Wait for spi.
		;
		
	// Write SPI transmission buffer.
	NOKIA5100_SCE = 0;		// assert CE
	SSPBUF = data;
	spiEmpty = 0;
}

//
// Send command to SPI-LCD
//
void SPILCD_command( unsigned char work )
{
	SPI_LCD_Delay10US( 50 );
	NOKIA5100_DC = 0;	// Specify command.

	WriteSPI( work );
}

//
// Send data to SPI-LCD
//
void SPILCD_data( unsigned char work )
{
	SPI_LCD_Delay10US( 10 );
	NOKIA5100_DC = 1;	// Specify data.

	WriteSPI( work );
}

void NOKIAsetDataByAddress( int x, int y, int data )
{
	SPILCD_command( 0x0080 | (x & 0x007f));
	SPILCD_command( 0x0040 | (y & 0x0007));
	SPILCD_data( data );
}

void NOKIAclearScreen( void )
{
	int x, y;

	for( y = 0 ; y < NOKIA_V_HEIGHT ; y++ ){
		for( x = 0 ; x < NOKIA_H_WIDTH ; x++ ){
			NOKIAsetDataByAddress( x, y, 0 );
		}
	}
}

void SPILCD_LocationSet( int x, int y )
{
	SPILCD_command( 0x0080 | (x & 0x007f));
	SPILCD_command( 0x0040 | (y & 0x0007));
}

//
// Segment pattern for 24x32 size.
//
// Segment A
//
void SPILCD_7SegA( int x, int y, unsigned char sFlag )
{
	int i;

	SPILCD_LocationSet( x + 7, y );
	if( sFlag != 0 ){
		// ON pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x1e );
		}
	} else {
		// OFF pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x00 );
		}
	}
}

//
// Segment B
//
void SPILCD_7SegB( int x, int y, unsigned char sFlag )
{
	// 1st Row
	SPILCD_LocationSet( x + 17, y );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xfc );
		SPILCD_data( 0xfc );
		SPILCD_data( 0xfc );
		SPILCD_data( 0xf8 );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
	// 2nd row
	SPILCD_LocationSet( x + 16, y + 1 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
}

//
// Segment C
//
void SPILCD_7SegC( int x, int y, unsigned char sFlag )
{
	// 1st Row
	SPILCD_LocationSet( x + 15, y + 2 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
	// 2nd row
	SPILCD_LocationSet( x + 14, y + 3 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0x3f );
		SPILCD_data( 0x3f );
		SPILCD_data( 0x3f );
		SPILCD_data( 0x1f );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
}

//
// Segment D
//
void SPILCD_7SegD( int x, int y, unsigned char sFlag )
{
	int i;

	SPILCD_LocationSet( x + 4, y + 3 );
	if( sFlag != 0 ){
		// ON pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x78 );
		}
	} else {
		// OFF pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x00 );
		}
	}
}

//
// Segment E
//
void SPILCD_7SegE( int x, int y, unsigned char sFlag )
{
	// 1st Row
	SPILCD_LocationSet( x + 1, y + 2 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
	// 2nd row
	SPILCD_LocationSet( x, y + 3 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0x1f );
		SPILCD_data( 0x3f );
		SPILCD_data( 0x3f );
		SPILCD_data( 0x3f );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
}

//
// Segment F
//
void SPILCD_7SegF( int x, int y, unsigned char sFlag )
{
	// 1st Row
	SPILCD_LocationSet( x + 3, y );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xf8 );
		SPILCD_data( 0xfc );
		SPILCD_data( 0xfc );
		SPILCD_data( 0xfc );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
	// 2nd row
	SPILCD_LocationSet( x + 2, y + 1 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
	} else {
		// OFF pattern
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
		SPILCD_data( 0x00 );
	}
}

//
// Segment G
//
void SPILCD_7SegG( int x, int y, unsigned char sFlag )
{
	int i;

	// 1st row
	SPILCD_LocationSet( x + 6, y + 1 );
	if( sFlag != 0 ){
		// ON pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0xc0 );
		}
	} else {
		// OFF pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x00 );
		}
	}
	// 2nd row
	SPILCD_LocationSet( x + 5, y + 2 );
	if( sFlag != 0 ){
		// ON pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x03 );
		}
	} else {
		// OFF pattern
		for( i = 0 ; i < 10 ; i++ ){
			SPILCD_data( 0x00 );
		}
	}
}

//
// Segment DP
//
void SPILCD_7SegDP( int x, int y, unsigned char sFlag )
{
	int i;

	SPILCD_LocationSet( x + 19, y + 3 );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0x30 );
		SPILCD_data( 0x78 );
		SPILCD_data( 0x78 );
		SPILCD_data( 0x30 );
	} else {
		// OFF pattern
		for( i = 0 ; i < 4 ; i++ ){
			SPILCD_data( 0x00 );
		}
	}
}

void SPILCD_LocationPut7Seg( int x, int y, int n, int dp )
{
	unsigned char ptn7seg = pattern7seg[ n ];

	SPILCD_7SegA( x, y, ptn7seg & 0x80 );
	SPILCD_7SegB( x, y, ptn7seg & 0x40 );
	SPILCD_7SegC( x, y, ptn7seg & 0x20 );
	SPILCD_7SegD( x, y, ptn7seg & 0x10 );
	SPILCD_7SegE( x, y, ptn7seg & 0x08 );
	SPILCD_7SegF( x, y, ptn7seg & 0x04 );
	SPILCD_7SegG( x, y, ptn7seg & 0x02 );
	SPILCD_7SegDP( x, y, dp );
}

void SPILCD_LocationPutDegree( int x, int y )
{
	// Draw pattern
	SPILCD_LocationSet( x, y );
	SPILCD_data( 0x06 );
	SPILCD_data( 0x09 );
	SPILCD_data( 0x09 );
	SPILCD_data( 0xc6 );
	SPILCD_data( 0xe0 );
	SPILCD_data( 0x60 );
	SPILCD_data( 0x60 );
	SPILCD_data( 0x60 );
	// 2nd row
	SPILCD_LocationSet( x + 2, y + 1 );
	SPILCD_data( 0x0f );
	SPILCD_data( 0x3f );
	SPILCD_data( 0x70 );
	SPILCD_data( 0x60 );
	SPILCD_data( 0x60 );
	SPILCD_data( 0x60 );
}

//
// Small number display
//
//
// Segment pattern B, F
//
void SPILCD_SmallB( int x, int y, unsigned char sFlag )
{
	SPILCD_LocationSet( x, y );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0xff );
		SPILCD_data( 0xff );
	} else {
		// OFF pattern
		SPILCD_data( 0 );
		SPILCD_data( 0 );
	}
}

//
// Segment pattern C, E
//
void SPILCD_SmallC( int x, int y, unsigned char sFlag )
{
	SPILCD_LocationSet( x, y );
	if( sFlag != 0 ){
		// ON pattern
		SPILCD_data( 0x3f );
		SPILCD_data( 0x3f );
	} else {
		// OFF pattern
		SPILCD_data( 0 );
		SPILCD_data( 0 );
	}
}

//
// Segment A and G
//
void SPILCD_SmallAG( int x, int y, unsigned char aFlag, unsigned char gFlag )
{
	unsigned char pattern;
	unsigned char i;

	if( aFlag ){
		pattern = 0x03;
	} else {
		pattern = 0;
	}
	if( gFlag )
		pattern |= 0xc0;

	SPILCD_LocationSet( x + 2, y );
	for( i = 0 ; i < 4 ; i++ ){
		SPILCD_data( pattern );
	}
}

//
// Segment pattern D, DP
//
void SPILCD_SmallD( int x, int y, unsigned char sFlag, unsigned char length )
{
	unsigned char loop;

	SPILCD_LocationSet( x, y );
	for( loop = 0 ; loop < length ; loop++ ){
		if( sFlag != 0 ){
			// ON pattern
			SPILCD_data( 0x30 );
		} else {
			// OFF pattern
			SPILCD_data( 0 );
		}
	}
}

void SPILCD_Small7Seg( int x, int y, int n, int dp )
{
	unsigned char ptn7seg = pattern7seg[ n ];

	SPILCD_SmallAG( x, y, ptn7seg & 0x80, ptn7seg & 0x02 );	// Segment A
	SPILCD_SmallB( x + 6, y, ptn7seg & 0x40 );				// Segment B
	SPILCD_SmallC( x + 6, y + 1, ptn7seg & 0x20 );			// Segment C
	SPILCD_SmallD( x + 2, y + 1, ptn7seg & 0x10, 4 );		// Segment D
	SPILCD_SmallC( x, y + 1, ptn7seg & 0x08 );				// Segment E
	SPILCD_SmallB( x, y, ptn7seg & 0x04 );					// Segment F
	SPILCD_SmallD( x + 9, y + 1, dp, 2 );					// Segment DP
}

void SPILCD_SmallColon( int x, int y, int fDisp )
{
	unsigned char pattern;
	if( fDisp ){
		SPILCD_LocationSet( x, y );
		SPILCD_data( 0x18 );
		SPILCD_data( 0x18 );
		SPILCD_LocationSet( x, y + 1 );
		SPILCD_data( 0x06 );
		SPILCD_data( 0x06 );
	} else {
		SPILCD_LocationSet( x, y );
		SPILCD_data( 0 );
		SPILCD_data( 0 );
		SPILCD_LocationSet( x, y + 1 );
		SPILCD_data( 0 );
		SPILCD_data( 0 );
	}
}

//
// Initialize display
//
void SPILCD_InitDisplay( void )
{
	// NOKIAclearScreen();
	NOKIA5100_RS = 1;
	NOKIA5100_SCE = 1;
	SPI_LCD_Delay10US( 1000 );
	NOKIA5100_RS = 0;
	SPI_LCD_Delay10US( 1000 );
	NOKIA5100_RS = 1;
//	SPI_LCD_Delay10US( 1000 );

	SPILCD_command( 0x21 );	// H = 1
	SPILCD_command( 0x90 );	// Display mode ON
	SPILCD_command( 0x20 );	// Display mode ON
	SPILCD_command( 0x0c );	// Display control, Normal
	NOKIAclearScreen();

	// First data
	// SPILCD_LocationPutc( 0, 0, 0x30 );		// Write '0'
	SPILCD_LocationPut7Seg( 0, 0, 8, 1 );
	SPILCD_LocationPut7Seg( 24, 0, 8, 1 );
	SPILCD_LocationPut7Seg( 48, 0, 8, 1 );
	SPILCD_LocationPutDegree( 72, 2 );
//	SPILCD_LocationPutsDoubleHeight( 0, 2, "Double Height" );	
}

//
// Go into sleep
//
void SPILCD_SleepDisplay( void )
{
	SPILCD_command( 0x24 );		// Display Power down
	SPI_LCD_Delay10US( 100 );	// Wait for SPI transfer.
}

//
// Screen reverse and normal.
//
void SPILCD_Normal( void )
{
	SPILCD_command( 0x0c );
}

void SPILCD_Reverse( void )
{
	SPILCD_command( 0x0d );
}
