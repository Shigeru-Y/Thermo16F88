/*
 * ds18b20.c
 *
 * Handler of DS18B20+
 *
 * Copyright(C) 2020 S.Yamamoto
 *
 * 2020/Apr/14 S.Yamamoto  Created.
 */

#include	<pic.h>

//
// Wait for DS18 10uS
//
void DS18wait10us( unsigned char loop )
{
	unsigned char ci;

	for( ci = 0 ; ci < loop ; ci++ ){
		CLRWDT();	// Idly kick the dog
	}
}

//
// Output reset signal
//
char InitDS18( void )
{
	int i;
	char exist = 0;

	// Output 0
	RA4 = 0;
	TRISA4 = 0;	// Output ON.
	DS18wait10us( 70 );
	TRISA4 = 1;	// Output OFF.
	DS18wait10us( 5 );
	
	// Check device
	for( i = 0 ; i < 70 ; i++ ){
		if( RA4 == 0 ){
			exist = 1;
			break;
		}
		DS18wait10us( 10 );
	}
	
	// Wait for signal reverse
	for( i = 0 ; i < 100 ; i++ ){
		if( RA4 == 1 ){
			break;
		}
		DS18wait10us( 10 );
	}

	return exist;
}

void OutBitToDS18( char bitData )
{
	RA4 = 0;
	TRISA4 = 0;	// Output ON.
	CLRWDT();	// Idly kick the dog
	if( bitData == 0 ){
		TRISA4 = 0;	// Output still ON.		
	} else {
		TRISA4 = 1;	// Output OFF.
	}
	DS18wait10us( 7 );	// 70uS
	TRISA4 = 1;	// Output OFF.
	DS18wait10us( 1 );		
}

void OutByteToDS18( unsigned char byteData )
{
	char ci;
	for( ci = 0 ; ci < 8 ; ci++ ){
		OutBitToDS18( byteData & 0x01 );
		byteData >>= 1;
	}
}

char ReadBitFromDS18( void )
{
	char data;

	// Drive port to indicate bit reading
	RA4 = 0;
	TRISA4 = 0;	// Output still ON.		
	CLRWDT();	// Idly kick the dog
	TRISA4 = 1;	// Output OFF.
	CLRWDT();	// Idly kick the dog
	CLRWDT();	// Idly kick the dog
	CLRWDT();	// Idly kick the dog
	CLRWDT();	// Idly kick the dog
	data = RA4;
	DS18wait10us( 7 );
	return data;
}

unsigned char ReadByteFromDS18( void )
{
	unsigned char readByte;
	char ci;
	
	readByte = 0;
	for( ci = 0 ; ci < 8 ; ci++ ){
		readByte >>= 1;
		if( ReadBitFromDS18() ){
			readByte |= 0x80;
		}
	}
	return readByte;
}

void StartTemperatureDS18( void )
{
	// Initialize
	InitDS18();

	// Skip ROM command
	OutByteToDS18( 0xcc );
	// Issue T command
	OutByteToDS18( 0x44 );
}

unsigned int ReadTemperatureDS18( void )
{
	unsigned int temperature;

	// Initialize
	InitDS18();

	// Skip ROM command
	OutByteToDS18( 0xcc );
	// Issue ROM read command
	OutByteToDS18( 0xbe );
	// Read temp
	temperature = ReadByteFromDS18();	// Read temp LSB
	temperature += (ReadByteFromDS18() << 8 );

	return temperature;
}
