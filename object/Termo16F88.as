opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F88
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_StartTemperatureDS18
	FNCALL	_main,_SPILCD_InitDisplay
	FNCALL	_main,_ReadTemperatureDS18
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___wmul
	FNCALL	_main,_SPILCD_LocationPut7Seg
	FNCALL	_main,_SPILCD_Small7Seg
	FNCALL	_main,_SPILCD_SmallColon
	FNCALL	_main,_SPILCD_Reverse
	FNCALL	_main,_SPILCD_Normal
	FNCALL	_main,_SPILCD_SleepDisplay
	FNCALL	_SPILCD_InitDisplay,_SPI_LCD_Delay10US
	FNCALL	_SPILCD_InitDisplay,_SPILCD_command
	FNCALL	_SPILCD_InitDisplay,_NOKIAclearScreen
	FNCALL	_SPILCD_InitDisplay,_SPILCD_LocationPut7Seg
	FNCALL	_SPILCD_InitDisplay,_SPILCD_LocationPutDegree
	FNCALL	_SPILCD_Small7Seg,_SPILCD_SmallAG
	FNCALL	_SPILCD_Small7Seg,_SPILCD_SmallB
	FNCALL	_SPILCD_Small7Seg,_SPILCD_SmallC
	FNCALL	_SPILCD_Small7Seg,_SPILCD_SmallD
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegA
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegB
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegC
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegD
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegE
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegF
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegG
	FNCALL	_SPILCD_LocationPut7Seg,_SPILCD_7SegDP
	FNCALL	_SPILCD_SmallD,_SPILCD_LocationSet
	FNCALL	_SPILCD_SmallD,_SPILCD_data
	FNCALL	_SPILCD_SmallAG,_SPILCD_LocationSet
	FNCALL	_SPILCD_SmallAG,_SPILCD_data
	FNCALL	_SPILCD_SmallC,_SPILCD_LocationSet
	FNCALL	_SPILCD_SmallC,_SPILCD_data
	FNCALL	_SPILCD_SmallB,_SPILCD_LocationSet
	FNCALL	_SPILCD_SmallB,_SPILCD_data
	FNCALL	_SPILCD_LocationPutDegree,_SPILCD_LocationSet
	FNCALL	_SPILCD_LocationPutDegree,_SPILCD_data
	FNCALL	_SPILCD_7SegDP,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegDP,_SPILCD_data
	FNCALL	_SPILCD_7SegG,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegG,_SPILCD_data
	FNCALL	_SPILCD_7SegF,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegF,_SPILCD_data
	FNCALL	_SPILCD_7SegE,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegE,_SPILCD_data
	FNCALL	_SPILCD_7SegD,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegD,_SPILCD_data
	FNCALL	_SPILCD_7SegC,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegC,_SPILCD_data
	FNCALL	_SPILCD_7SegB,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegB,_SPILCD_data
	FNCALL	_SPILCD_7SegA,_SPILCD_LocationSet
	FNCALL	_SPILCD_7SegA,_SPILCD_data
	FNCALL	_NOKIAclearScreen,_NOKIAsetDataByAddress
	FNCALL	_SPILCD_SmallColon,_SPILCD_LocationSet
	FNCALL	_SPILCD_SmallColon,_SPILCD_data
	FNCALL	_ReadTemperatureDS18,_InitDS18
	FNCALL	_ReadTemperatureDS18,_OutByteToDS18
	FNCALL	_ReadTemperatureDS18,_ReadByteFromDS18
	FNCALL	_StartTemperatureDS18,_InitDS18
	FNCALL	_StartTemperatureDS18,_OutByteToDS18
	FNCALL	_ReadByteFromDS18,_ReadBitFromDS18
	FNCALL	_OutByteToDS18,_OutBitToDS18
	FNCALL	_SPILCD_LocationSet,_SPILCD_command
	FNCALL	_NOKIAsetDataByAddress,_SPILCD_command
	FNCALL	_NOKIAsetDataByAddress,_SPILCD_data
	FNCALL	_SPILCD_SleepDisplay,_SPILCD_command
	FNCALL	_SPILCD_SleepDisplay,_SPI_LCD_Delay10US
	FNCALL	_SPILCD_Normal,_SPILCD_command
	FNCALL	_SPILCD_Reverse,_SPILCD_command
	FNCALL	_ReadBitFromDS18,_DS18wait10us
	FNCALL	_OutBitToDS18,_DS18wait10us
	FNCALL	_InitDS18,_DS18wait10us
	FNCALL	_SPILCD_data,_SPI_LCD_Delay10US
	FNCALL	_SPILCD_data,_WriteSPI
	FNCALL	_SPILCD_command,_SPI_LCD_Delay10US
	FNCALL	_SPILCD_command,_WriteSPI
	FNROOT	_main
	FNCALL	intlevel1,_intr
	global	intlevel1
	FNROOT	intlevel1
	global	_pattern7seg
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	44
_pattern7seg:
	retlw	0FCh
	retlw	060h
	retlw	0DAh
	retlw	0F2h
	retlw	066h
	retlw	0B6h
	retlw	0BEh
	retlw	0E0h
	retlw	0FEh
	retlw	0F6h
	retlw	02h
	global	_pattern7seg
	global	_binTemperature
	global	_counter
	global	_maxTemperature
	global	_temperatureFrac
	global	_temperatureInt
	global	_timer_07
	global	intr@intr_counter
	global	_minutes
	global	_seconds
	global	_temperature01
	global	_temperature10
	global	_temperature100
	global	_timer_count
	global	_dummy
	global	_speakerCount
	global	_temperature1
	global	_sleepRequest
	global	_speakerPol
	global	_timer_int
	global	_spiEmpty
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_spiEmpty:
       ds      1

	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_INTCONbits
_INTCONbits	set	11
	global	_PIR1bits
_PIR1bits	set	12
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_INT0IE
_INT0IE	set	92
	global	_INT0IF
_INT0IF	set	89
	global	_RA1
_RA1	set	41
	global	_RA4
_RA4	set	44
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_SSPIF
_SSPIF	set	99
	global	_TMR0IF
_TMR0IF	set	90
	global	_TMR2IF
_TMR2IF	set	97
	global	_ANSEL
_ANSEL	set	155
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCONbits
_OSCCONbits	set	143
	global	_PR2
_PR2	set	146
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_INTEDG
_INTEDG	set	1038
	global	_SSPIE
_SSPIE	set	1123
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISA4
_TRISA4	set	1068
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Termo16F88.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_sleepRequest:
       ds      1

_speakerPol:
       ds      1

_timer_int:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dummy:
       ds      1

_speakerCount:
       ds      1

_temperature1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_binTemperature:
       ds      2

_counter:
       ds      2

_maxTemperature:
       ds      2

_temperatureFrac:
       ds      2

_temperatureInt:
       ds      2

_timer_07:
       ds      2

intr@intr_counter:
       ds      2

_minutes:
       ds      1

_seconds:
       ds      1

_temperature01:
       ds      1

_temperature10:
       ds      1

_temperature100:
       ds      1

_timer_count:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+014h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_StartTemperatureDS18
?_StartTemperatureDS18:	; 0 bytes @ 0x0
	global	?_SPILCD_InitDisplay
?_SPILCD_InitDisplay:	; 0 bytes @ 0x0
	global	?_SPILCD_Reverse
?_SPILCD_Reverse:	; 0 bytes @ 0x0
	global	?_SPILCD_Normal
?_SPILCD_Normal:	; 0 bytes @ 0x0
	global	?_SPILCD_SleepDisplay
?_SPILCD_SleepDisplay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_intr
?_intr:	; 0 bytes @ 0x0
	global	??_intr
??_intr:	; 0 bytes @ 0x0
	global	?_WriteSPI
?_WriteSPI:	; 0 bytes @ 0x0
	global	?_SPILCD_command
?_SPILCD_command:	; 0 bytes @ 0x0
	global	?_SPILCD_data
?_SPILCD_data:	; 0 bytes @ 0x0
	global	?_NOKIAclearScreen
?_NOKIAclearScreen:	; 0 bytes @ 0x0
	global	?_DS18wait10us
?_DS18wait10us:	; 0 bytes @ 0x0
	global	?_OutBitToDS18
?_OutBitToDS18:	; 0 bytes @ 0x0
	global	?_OutByteToDS18
?_OutByteToDS18:	; 0 bytes @ 0x0
	global	?_InitDS18
?_InitDS18:	; 1 bytes @ 0x0
	global	?_ReadBitFromDS18
?_ReadBitFromDS18:	; 1 bytes @ 0x0
	global	?_ReadByteFromDS18
?_ReadByteFromDS18:	; 1 bytes @ 0x0
	ds	5
	global	??_StartTemperatureDS18
??_StartTemperatureDS18:	; 0 bytes @ 0x5
	global	??_SPILCD_InitDisplay
??_SPILCD_InitDisplay:	; 0 bytes @ 0x5
	global	??_SPILCD_SmallColon
??_SPILCD_SmallColon:	; 0 bytes @ 0x5
	global	??_SPILCD_Reverse
??_SPILCD_Reverse:	; 0 bytes @ 0x5
	global	??_SPILCD_Normal
??_SPILCD_Normal:	; 0 bytes @ 0x5
	global	??_SPILCD_SleepDisplay
??_SPILCD_SleepDisplay:	; 0 bytes @ 0x5
	global	??_SPI_LCD_Delay10US
??_SPI_LCD_Delay10US:	; 0 bytes @ 0x5
	global	??_WriteSPI
??_WriteSPI:	; 0 bytes @ 0x5
	global	??_SPILCD_command
??_SPILCD_command:	; 0 bytes @ 0x5
	global	??_SPILCD_data
??_SPILCD_data:	; 0 bytes @ 0x5
	global	??_NOKIAsetDataByAddress
??_NOKIAsetDataByAddress:	; 0 bytes @ 0x5
	global	??_NOKIAclearScreen
??_NOKIAclearScreen:	; 0 bytes @ 0x5
	global	??_SPILCD_LocationSet
??_SPILCD_LocationSet:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegA
??_SPILCD_7SegA:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegB
??_SPILCD_7SegB:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegC
??_SPILCD_7SegC:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegD
??_SPILCD_7SegD:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegE
??_SPILCD_7SegE:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegF
??_SPILCD_7SegF:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegG
??_SPILCD_7SegG:	; 0 bytes @ 0x5
	global	??_SPILCD_7SegDP
??_SPILCD_7SegDP:	; 0 bytes @ 0x5
	global	??_SPILCD_LocationPutDegree
??_SPILCD_LocationPutDegree:	; 0 bytes @ 0x5
	global	??_SPILCD_SmallB
??_SPILCD_SmallB:	; 0 bytes @ 0x5
	global	??_SPILCD_SmallC
??_SPILCD_SmallC:	; 0 bytes @ 0x5
	global	??_InitDS18
??_InitDS18:	; 0 bytes @ 0x5
	global	??_OutBitToDS18
??_OutBitToDS18:	; 0 bytes @ 0x5
	global	??___wmul
??___wmul:	; 0 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_SPI_LCD_Delay10US
?_SPI_LCD_Delay10US:	; 0 bytes @ 0x0
	global	??_DS18wait10us
??_DS18wait10us:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	WriteSPI@data
WriteSPI@data:	; 1 bytes @ 0x0
	global	SPI_LCD_Delay10US@us
SPI_LCD_Delay10US@us:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DS18wait10us@loop
DS18wait10us@loop:	; 1 bytes @ 0x1
	ds	1
	global	SPILCD_command@work
SPILCD_command@work:	; 1 bytes @ 0x2
	global	SPILCD_data@work
SPILCD_data@work:	; 1 bytes @ 0x2
	global	DS18wait10us@ci
DS18wait10us@ci:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?_NOKIAsetDataByAddress
?_NOKIAsetDataByAddress:	; 0 bytes @ 0x3
	global	?_SPILCD_LocationSet
?_SPILCD_LocationSet:	; 0 bytes @ 0x3
	global	??_ReadBitFromDS18
??_ReadBitFromDS18:	; 0 bytes @ 0x3
	global	InitDS18@exist
InitDS18@exist:	; 1 bytes @ 0x3
	global	OutBitToDS18@bitData
OutBitToDS18@bitData:	; 1 bytes @ 0x3
	global	NOKIAsetDataByAddress@x
NOKIAsetDataByAddress@x:	; 2 bytes @ 0x3
	global	SPILCD_LocationSet@x
SPILCD_LocationSet@x:	; 2 bytes @ 0x3
	ds	1
	global	??_OutByteToDS18
??_OutByteToDS18:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	ReadBitFromDS18@data
ReadBitFromDS18@data:	; 1 bytes @ 0x4
	global	InitDS18@i
InitDS18@i:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_ReadByteFromDS18
??_ReadByteFromDS18:	; 0 bytes @ 0x5
	global	OutByteToDS18@byteData
OutByteToDS18@byteData:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	NOKIAsetDataByAddress@y
NOKIAsetDataByAddress@y:	; 2 bytes @ 0x5
	global	SPILCD_LocationSet@y
SPILCD_LocationSet@y:	; 2 bytes @ 0x5
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	OutByteToDS18@ci
OutByteToDS18@ci:	; 1 bytes @ 0x6
	global	ReadByteFromDS18@readByte
ReadByteFromDS18@readByte:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	?_SPILCD_SmallColon
?_SPILCD_SmallColon:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegA
?_SPILCD_7SegA:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegB
?_SPILCD_7SegB:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegC
?_SPILCD_7SegC:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegD
?_SPILCD_7SegD:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegE
?_SPILCD_7SegE:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegF
?_SPILCD_7SegF:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegG
?_SPILCD_7SegG:	; 0 bytes @ 0x7
	global	?_SPILCD_7SegDP
?_SPILCD_7SegDP:	; 0 bytes @ 0x7
	global	?_SPILCD_LocationPutDegree
?_SPILCD_LocationPutDegree:	; 0 bytes @ 0x7
	global	?_SPILCD_SmallB
?_SPILCD_SmallB:	; 0 bytes @ 0x7
	global	?_SPILCD_SmallC
?_SPILCD_SmallC:	; 0 bytes @ 0x7
	global	?_SPILCD_SmallAG
?_SPILCD_SmallAG:	; 0 bytes @ 0x7
	global	?_SPILCD_SmallD
?_SPILCD_SmallD:	; 0 bytes @ 0x7
	global	ReadByteFromDS18@ci
ReadByteFromDS18@ci:	; 1 bytes @ 0x7
	global	NOKIAsetDataByAddress@data
NOKIAsetDataByAddress@data:	; 2 bytes @ 0x7
	global	SPILCD_7SegA@x
SPILCD_7SegA@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegB@x
SPILCD_7SegB@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegC@x
SPILCD_7SegC@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegD@x
SPILCD_7SegD@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegE@x
SPILCD_7SegE@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegF@x
SPILCD_7SegF@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegG@x
SPILCD_7SegG@x:	; 2 bytes @ 0x7
	global	SPILCD_7SegDP@x
SPILCD_7SegDP@x:	; 2 bytes @ 0x7
	global	SPILCD_LocationPutDegree@x
SPILCD_LocationPutDegree@x:	; 2 bytes @ 0x7
	global	SPILCD_SmallB@x
SPILCD_SmallB@x:	; 2 bytes @ 0x7
	global	SPILCD_SmallC@x
SPILCD_SmallC@x:	; 2 bytes @ 0x7
	global	SPILCD_SmallAG@x
SPILCD_SmallAG@x:	; 2 bytes @ 0x7
	global	SPILCD_SmallD@x
SPILCD_SmallD@x:	; 2 bytes @ 0x7
	global	SPILCD_SmallColon@x
SPILCD_SmallColon@x:	; 2 bytes @ 0x7
	ds	1
	global	?_ReadTemperatureDS18
?_ReadTemperatureDS18:	; 2 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	NOKIAclearScreen@x
NOKIAclearScreen@x:	; 2 bytes @ 0x9
	global	SPILCD_7SegA@y
SPILCD_7SegA@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegB@y
SPILCD_7SegB@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegC@y
SPILCD_7SegC@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegD@y
SPILCD_7SegD@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegE@y
SPILCD_7SegE@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegF@y
SPILCD_7SegF@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegG@y
SPILCD_7SegG@y:	; 2 bytes @ 0x9
	global	SPILCD_7SegDP@y
SPILCD_7SegDP@y:	; 2 bytes @ 0x9
	global	SPILCD_LocationPutDegree@y
SPILCD_LocationPutDegree@y:	; 2 bytes @ 0x9
	global	SPILCD_SmallB@y
SPILCD_SmallB@y:	; 2 bytes @ 0x9
	global	SPILCD_SmallC@y
SPILCD_SmallC@y:	; 2 bytes @ 0x9
	global	SPILCD_SmallAG@y
SPILCD_SmallAG@y:	; 2 bytes @ 0x9
	global	SPILCD_SmallD@y
SPILCD_SmallD@y:	; 2 bytes @ 0x9
	global	SPILCD_SmallColon@y
SPILCD_SmallColon@y:	; 2 bytes @ 0x9
	ds	1
	global	??_ReadTemperatureDS18
??_ReadTemperatureDS18:	; 0 bytes @ 0xA
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	ds	1
	global	SPILCD_7SegA@sFlag
SPILCD_7SegA@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegB@sFlag
SPILCD_7SegB@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegC@sFlag
SPILCD_7SegC@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegD@sFlag
SPILCD_7SegD@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegE@sFlag
SPILCD_7SegE@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegF@sFlag
SPILCD_7SegF@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegG@sFlag
SPILCD_7SegG@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_7SegDP@sFlag
SPILCD_7SegDP@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_SmallB@sFlag
SPILCD_SmallB@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_SmallC@sFlag
SPILCD_SmallC@sFlag:	; 1 bytes @ 0xB
	global	SPILCD_SmallAG@aFlag
SPILCD_SmallAG@aFlag:	; 1 bytes @ 0xB
	global	SPILCD_SmallD@sFlag
SPILCD_SmallD@sFlag:	; 1 bytes @ 0xB
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xB
	global	NOKIAclearScreen@y
NOKIAclearScreen@y:	; 2 bytes @ 0xB
	global	SPILCD_SmallColon@fDisp
SPILCD_SmallColon@fDisp:	; 2 bytes @ 0xB
	ds	1
	global	SPILCD_SmallAG@gFlag
SPILCD_SmallAG@gFlag:	; 1 bytes @ 0xC
	global	SPILCD_SmallD@length
SPILCD_SmallD@length:	; 1 bytes @ 0xC
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xC
	global	SPILCD_7SegA@i
SPILCD_7SegA@i:	; 2 bytes @ 0xC
	global	SPILCD_7SegD@i
SPILCD_7SegD@i:	; 2 bytes @ 0xC
	global	SPILCD_7SegG@i
SPILCD_7SegG@i:	; 2 bytes @ 0xC
	global	SPILCD_7SegDP@i
SPILCD_7SegDP@i:	; 2 bytes @ 0xC
	global	ReadTemperatureDS18@temperature
ReadTemperatureDS18@temperature:	; 2 bytes @ 0xC
	ds	1
	global	??_SPILCD_SmallAG
??_SPILCD_SmallAG:	; 0 bytes @ 0xD
	global	??_SPILCD_SmallD
??_SPILCD_SmallD:	; 0 bytes @ 0xD
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xD
	ds	1
	global	?_SPILCD_LocationPut7Seg
?_SPILCD_LocationPut7Seg:	; 0 bytes @ 0xE
	global	SPILCD_SmallAG@pattern
SPILCD_SmallAG@pattern:	; 1 bytes @ 0xE
	global	SPILCD_SmallD@loop
SPILCD_SmallD@loop:	; 1 bytes @ 0xE
	global	SPILCD_LocationPut7Seg@x
SPILCD_LocationPut7Seg@x:	; 2 bytes @ 0xE
	ds	1
	global	SPILCD_SmallAG@i
SPILCD_SmallAG@i:	; 1 bytes @ 0xF
	ds	1
	global	?_SPILCD_Small7Seg
?_SPILCD_Small7Seg:	; 0 bytes @ 0x10
	global	SPILCD_LocationPut7Seg@y
SPILCD_LocationPut7Seg@y:	; 2 bytes @ 0x10
	global	SPILCD_Small7Seg@x
SPILCD_Small7Seg@x:	; 2 bytes @ 0x10
	ds	2
	global	SPILCD_LocationPut7Seg@n
SPILCD_LocationPut7Seg@n:	; 2 bytes @ 0x12
	global	SPILCD_Small7Seg@y
SPILCD_Small7Seg@y:	; 2 bytes @ 0x12
	ds	2
	global	SPILCD_LocationPut7Seg@dp
SPILCD_LocationPut7Seg@dp:	; 2 bytes @ 0x14
	global	SPILCD_Small7Seg@n
SPILCD_Small7Seg@n:	; 2 bytes @ 0x14
	ds	2
	global	??_SPILCD_LocationPut7Seg
??_SPILCD_LocationPut7Seg:	; 0 bytes @ 0x16
	global	SPILCD_Small7Seg@dp
SPILCD_Small7Seg@dp:	; 2 bytes @ 0x16
	ds	1
	global	SPILCD_LocationPut7Seg@ptn7seg
SPILCD_LocationPut7Seg@ptn7seg:	; 1 bytes @ 0x17
	ds	1
	global	??_SPILCD_Small7Seg
??_SPILCD_Small7Seg:	; 0 bytes @ 0x18
	ds	2
	global	SPILCD_Small7Seg@ptn7seg
SPILCD_Small7Seg@ptn7seg:	; 1 bytes @ 0x1A
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1B
	ds	2
;;Data sizes: Strings 0, constant 11, data 0, bss 23, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       9
;; BANK0           80     29      50
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_ReadTemperatureDS18	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _intr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_SPILCD_Small7Seg
;;   _SPILCD_InitDisplay->_SPILCD_LocationPut7Seg
;;   _SPILCD_Small7Seg->_SPILCD_SmallAG
;;   _SPILCD_LocationPut7Seg->_SPILCD_7SegA
;;   _SPILCD_LocationPut7Seg->_SPILCD_7SegD
;;   _SPILCD_LocationPut7Seg->_SPILCD_7SegG
;;   _SPILCD_LocationPut7Seg->_SPILCD_7SegDP
;;   _SPILCD_SmallD->_SPILCD_LocationSet
;;   _SPILCD_SmallAG->_SPILCD_LocationSet
;;   _SPILCD_SmallC->_SPILCD_LocationSet
;;   _SPILCD_SmallB->_SPILCD_LocationSet
;;   _SPILCD_LocationPutDegree->_SPILCD_LocationSet
;;   _SPILCD_7SegDP->_SPILCD_LocationSet
;;   _SPILCD_7SegG->_SPILCD_LocationSet
;;   _SPILCD_7SegF->_SPILCD_LocationSet
;;   _SPILCD_7SegE->_SPILCD_LocationSet
;;   _SPILCD_7SegD->_SPILCD_LocationSet
;;   _SPILCD_7SegC->_SPILCD_LocationSet
;;   _SPILCD_7SegB->_SPILCD_LocationSet
;;   _SPILCD_7SegA->_SPILCD_LocationSet
;;   _NOKIAclearScreen->_NOKIAsetDataByAddress
;;   _SPILCD_SmallColon->_SPILCD_LocationSet
;;   _ReadTemperatureDS18->_ReadByteFromDS18
;;   _StartTemperatureDS18->_OutByteToDS18
;;   _ReadByteFromDS18->_ReadBitFromDS18
;;   _OutByteToDS18->_OutBitToDS18
;;   _SPILCD_LocationSet->_SPILCD_command
;;   _NOKIAsetDataByAddress->_SPILCD_command
;;   _NOKIAsetDataByAddress->_SPILCD_data
;;   _SPILCD_SleepDisplay->_SPILCD_command
;;   _SPILCD_Normal->_SPILCD_command
;;   _SPILCD_Reverse->_SPILCD_command
;;   _ReadBitFromDS18->_DS18wait10us
;;   _OutBitToDS18->_DS18wait10us
;;   _InitDS18->_DS18wait10us
;;   _SPILCD_data->_SPI_LCD_Delay10US
;;   _SPILCD_command->_SPI_LCD_Delay10US
;;   ___awdiv->___wmul
;;
;; Critical Paths under _intr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _intr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _intr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _intr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0   15215
;;                                             27 BANK0      2     2      0
;;               _StartTemperatureDS18
;;                 _SPILCD_InitDisplay
;;                _ReadTemperatureDS18
;;                            ___awdiv
;;                            ___awmod
;;                             ___wmul
;;             _SPILCD_LocationPut7Seg
;;                   _SPILCD_Small7Seg
;;                  _SPILCD_SmallColon
;;                     _SPILCD_Reverse
;;                      _SPILCD_Normal
;;                _SPILCD_SleepDisplay
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_InitDisplay                                   0     0      0    5556
;;                  _SPI_LCD_Delay10US
;;                     _SPILCD_command
;;                   _NOKIAclearScreen
;;             _SPILCD_LocationPut7Seg
;;           _SPILCD_LocationPutDegree
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_Small7Seg                                    11     3      8    2287
;;                                             16 BANK0     11     3      8
;;                     _SPILCD_SmallAG
;;                      _SPILCD_SmallB
;;                      _SPILCD_SmallC
;;                      _SPILCD_SmallD
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_LocationPut7Seg                              10     2      8    4583
;;                                             14 BANK0     10     2      8
;;                       _SPILCD_7SegA
;;                       _SPILCD_7SegB
;;                       _SPILCD_7SegC
;;                       _SPILCD_7SegD
;;                       _SPILCD_7SegE
;;                       _SPILCD_7SegF
;;                       _SPILCD_7SegG
;;                      _SPILCD_7SegDP
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_SmallD                                        8     2      6     409
;;                                              7 BANK0      8     2      6
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_SmallAG                                       9     3      6     480
;;                                              7 BANK0      9     3      6
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_SmallC                                        5     0      5     341
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_SmallB                                        5     0      5     341
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_LocationPutDegree                             4     0      4     372
;;                                              7 BANK0      4     0      4
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegDP                                        7     2      5     409
;;                                              7 BANK0      7     2      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegG                                         7     2      5     706
;;                                              7 BANK0      7     2      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegF                                         5     0      5     434
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegE                                         5     0      5     434
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegD                                         7     2      5     477
;;                                              7 BANK0      7     2      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegC                                         5     0      5     434
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegB                                         5     0      5     434
;;                                              7 BANK0      5     0      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_7SegA                                         7     2      5     477
;;                                              7 BANK0      7     2      5
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (2) _NOKIAclearScreen                                     4     4      0     477
;;                                              9 BANK0      4     4      0
;;              _NOKIAsetDataByAddress
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_SmallColon                                    7     1      6     527
;;                                              7 BANK0      6     0      6
;;                 _SPILCD_LocationSet
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (1) _ReadTemperatureDS18                                  6     4      2     665
;;                                              8 BANK0      6     4      2
;;                           _InitDS18
;;                      _OutByteToDS18
;;                   _ReadByteFromDS18
;; ---------------------------------------------------------------------------------
;; (1) _StartTemperatureDS18                                 0     0      0     418
;;                           _InitDS18
;;                      _OutByteToDS18
;; ---------------------------------------------------------------------------------
;; (2) _ReadByteFromDS18                                     3     3      0     210
;;                                              5 BANK0      3     3      0
;;                    _ReadBitFromDS18
;; ---------------------------------------------------------------------------------
;; (2) _OutByteToDS18                                        3     3      0     201
;;                                              4 BANK0      3     3      0
;;                       _OutBitToDS18
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_LocationSet                                   4     0      4     155
;;                                              3 BANK0      4     0      4
;;                     _SPILCD_command
;; ---------------------------------------------------------------------------------
;; (3) _NOKIAsetDataByAddress                                6     0      6     279
;;                                              3 BANK0      6     0      6
;;                     _SPILCD_command
;;                        _SPILCD_data
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_SleepDisplay                                  0     0      0     124
;;                     _SPILCD_command
;;                  _SPI_LCD_Delay10US
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_Normal                                        0     0      0      93
;;                     _SPILCD_command
;; ---------------------------------------------------------------------------------
;; (1) _SPILCD_Reverse                                       0     0      0      93
;;                     _SPILCD_command
;; ---------------------------------------------------------------------------------
;; (3) _ReadBitFromDS18                                      2     2      0     102
;;                                              3 BANK0      2     2      0
;;                       _DS18wait10us
;; ---------------------------------------------------------------------------------
;; (3) _OutBitToDS18                                         1     1      0      99
;;                                              3 BANK0      1     1      0
;;                       _DS18wait10us
;; ---------------------------------------------------------------------------------
;; (2) _InitDS18                                             3     3      0     217
;;                                              3 BANK0      3     3      0
;;                       _DS18wait10us
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_data                                          1     1      0      93
;;                                              2 BANK0      1     1      0
;;                  _SPI_LCD_Delay10US
;;                           _WriteSPI
;; ---------------------------------------------------------------------------------
;; (2) _SPILCD_command                                       1     1      0      93
;;                                              2 BANK0      1     1      0
;;                  _SPI_LCD_Delay10US
;;                           _WriteSPI
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     433
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              6 BANK0      9     5      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _DS18wait10us                                         3     3      0      68
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _WriteSPI                                             1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _SPI_LCD_Delay10US                                    2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _intr                                                 5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _StartTemperatureDS18
;;     _InitDS18
;;       _DS18wait10us
;;     _OutByteToDS18
;;       _OutBitToDS18
;;         _DS18wait10us
;;   _SPILCD_InitDisplay
;;     _SPI_LCD_Delay10US
;;     _SPILCD_command
;;       _SPI_LCD_Delay10US
;;       _WriteSPI
;;     _NOKIAclearScreen
;;       _NOKIAsetDataByAddress
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;     _SPILCD_LocationPut7Seg
;;       _SPILCD_7SegA
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegB
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegC
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegD
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegE
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegF
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegG
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_7SegDP
;;         _SPILCD_LocationSet
;;           _SPILCD_command
;;             _SPI_LCD_Delay10US
;;             _WriteSPI
;;         _SPILCD_data
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;     _SPILCD_LocationPutDegree
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;   _ReadTemperatureDS18
;;     _InitDS18
;;       _DS18wait10us
;;     _OutByteToDS18
;;       _OutBitToDS18
;;         _DS18wait10us
;;     _ReadByteFromDS18
;;       _ReadBitFromDS18
;;         _DS18wait10us
;;   ___awdiv
;;     ___wmul (ARG)
;;   ___awmod
;;   ___wmul
;;   _SPILCD_LocationPut7Seg
;;     _SPILCD_7SegA
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegB
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegC
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegD
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegE
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegF
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegG
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_7SegDP
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;   _SPILCD_Small7Seg
;;     _SPILCD_SmallAG
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_SmallB
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_SmallC
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_SmallD
;;       _SPILCD_LocationSet
;;         _SPILCD_command
;;           _SPI_LCD_Delay10US
;;           _WriteSPI
;;       _SPILCD_data
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     ___awdiv (ARG)
;;       ___wmul (ARG)
;;     ___awmod (ARG)
;;   _SPILCD_SmallColon
;;     _SPILCD_LocationSet
;;       _SPILCD_command
;;         _SPI_LCD_Delay10US
;;         _WriteSPI
;;     _SPILCD_data
;;       _SPI_LCD_Delay10US
;;       _WriteSPI
;;   _SPILCD_Reverse
;;     _SPILCD_command
;;       _SPI_LCD_Delay10US
;;       _WriteSPI
;;   _SPILCD_Normal
;;     _SPILCD_command
;;       _SPI_LCD_Delay10US
;;       _WriteSPI
;;   _SPILCD_SleepDisplay
;;     _SPILCD_command
;;       _SPI_LCD_Delay10US
;;       _WriteSPI
;;     _SPI_LCD_Delay10US
;;
;; _intr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      3B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1D      32       5       62.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      41      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 40 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               1    0        unsigned char 
;;  a               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_StartTemperatureDS18
;;		_SPILCD_InitDisplay
;;		_ReadTemperatureDS18
;;		___awdiv
;;		___awmod
;;		___wmul
;;		_SPILCD_LocationPut7Seg
;;		_SPILCD_Small7Seg
;;		_SPILCD_SmallColon
;;		_SPILCD_Reverse
;;		_SPILCD_Normal
;;		_SPILCD_SleepDisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
	line	40
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	41
	
l6035:	
# 41 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 41 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
	dw 0xFFFC & 0xFFFB & 0xFFFF & 0xFFFF & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
psect	maintext
	line	56
	
l6037:	
;main.c: 54: char a, b;
;main.c: 56: OSCCONbits.IRCF = 7;
	movlw	(07h & ((1<<3)-1))<<4
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(143)^080h,f	;volatile
	line	60
	
l6039:	
;main.c: 60: TRISB = 0xc3;
	movlw	(0C3h)
	movwf	(134)^080h	;volatile
	line	61
	
l6041:	
;main.c: 61: PORTB = 0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	65
	
l6043:	
;main.c: 65: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(155)^080h	;volatile
	line	71
	
l6045:	
;main.c: 71: TRISA = 0x21;
	movlw	(021h)
	movwf	(133)^080h	;volatile
	line	73
	
l6047:	
;main.c: 73: PORTA = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	75
	
l6049:	
;main.c: 75: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	76
	
l6051:	
;main.c: 76: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	78
	
l6053:	
;main.c: 78: INTCONbits.RBIF = 0;
	bcf	(11),0	;volatile
	line	81
	
l6055:	
;main.c: 81: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	86
	
l6057:	
;main.c: 86: OPTION_REG = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	88
	
l6059:	
;main.c: 88: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	92
	
l6061:	
;main.c: 92: T1CON = 0x35;
	movlw	(035h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	93
	
l6063:	
;main.c: 93: timer_int = 0;
	bcf	(_timer_int/8),(_timer_int)&7
	line	94
	
l6065:	
;main.c: 94: timer_07 = 0;
	clrf	(_timer_07)
	clrf	(_timer_07+1)
	line	95
	
l6067:	
;main.c: 95: timer_count = 0;
	clrf	(_timer_count)
	line	96
	
l6069:	
;main.c: 96: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	99
	
l6071:	
;main.c: 99: PR2 = 0xff;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	100
	
l6073:	
;main.c: 100: CCP1CON = 0x0c;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	101
	
l6075:	
;main.c: 101: CCPR1L = 127;
	movlw	(07Fh)
	movwf	(21)	;volatile
	line	105
	
l6077:	
;main.c: 105: T2CON = 0x05;
	movlw	(05h)
	movwf	(18)	;volatile
	line	107
	
l6079:	
;main.c: 107: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	111
	
l6081:	
;main.c: 111: SSPCON = 0x22;
	movlw	(022h)
	movwf	(20)	;volatile
	line	113
	
l6083:	
;main.c: 113: SSPSTAT = 0xc0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	114
	
l6085:	
;main.c: 114: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	115
	
l6087:	
;main.c: 115: SSPIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1123/8)^080h,(1123)&7
	line	116
	
l6089:	
;main.c: 116: spiEmpty = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_spiEmpty)
	bsf	status,0
	rlf	(_spiEmpty),f
	line	117
	
l6091:	
;main.c: 117: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	line	118
	
l6093:	
;main.c: 118: INT0IF = 0;
	bcf	(89/8),(89)&7
	line	119
	
l6095:	
;main.c: 119: INT0IE = 1;
	bsf	(92/8),(92)&7
	line	122
	
l6097:	
;main.c: 122: StartTemperatureDS18();
	fcall	_StartTemperatureDS18
	line	127
	
l6099:	
;main.c: 127: SPILCD_InitDisplay();
	fcall	_SPILCD_InitDisplay
	line	130
	
l6101:	
;main.c: 130: seconds = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_seconds)
	line	131
	
l6103:	
;main.c: 131: minutes = 0;
	clrf	(_minutes)
	line	132
	
l6105:	
;main.c: 132: sleepRequest = 0;
	bcf	(_sleepRequest/8),(_sleepRequest)&7
	line	133
	
l6107:	
;main.c: 133: maxTemperature = 0;
	clrf	(_maxTemperature)
	clrf	(_maxTemperature+1)
	line	134
	
l6109:	
;main.c: 134: timer_count = 3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_timer_count)
	goto	l6111
	line	136
;main.c: 136: while( 1 ) {
	
l659:	
	line	137
	
l6111:	
# 137 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
clrwdt ;#
psect	maintext
	line	139
	
l6113:	
;main.c: 139: if( timer_int ){
	btfss	(_timer_int/8),(_timer_int)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l6195
u4850:
	line	141
	
l6115:	
;main.c: 141: timer_int = 0;
	bcf	(_timer_int/8),(_timer_int)&7
	line	144
	
l6117:	
;main.c: 144: if( seconds == 0 || seconds < minutes){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_seconds),w
	skipz
	goto	u4860
	goto	l6121
u4860:
	
l6119:	
	movf	(_minutes),w
	subwf	(_seconds),w
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l6123
u4870:
	goto	l6121
	
l663:	
	line	145
	
l6121:	
;main.c: 145: T2CON = 0x05;
	movlw	(05h)
	movwf	(18)	;volatile
	goto	l6123
	line	146
	
l661:	
	line	151
	
l6123:	
;main.c: 146: }
;main.c: 151: for( counter = 0 ; counter < 2000; counter++ ){
	clrf	(_counter)
	clrf	(_counter+1)
	
l6125:	
	movf	(_counter+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07D0h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4885
	movlw	low(07D0h)
	subwf	(_counter),w
u4885:

	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l664
u4880:
	goto	l6133
	
l6127:	
	goto	l6133
	
l664:	
	line	152
# 152 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
clrwdt ;#
psect	maintext
	line	151
	
l6129:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_counter),f
	skipnc
	incf	(_counter+1),f
	movlw	high(01h)
	addwf	(_counter+1),f
	
l6131:	
	movf	(_counter+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07D0h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4895
	movlw	low(07D0h)
	subwf	(_counter),w
u4895:

	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l664
u4890:
	goto	l6133
	
l665:	
	line	158
	
l6133:	
;main.c: 153: }
;main.c: 158: for( counter = 0 ; counter < 5000; counter++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_counter)
	clrf	(_counter+1)
	
l6135:	
	movf	(_counter+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4905
	movlw	low(01388h)
	subwf	(_counter),w
u4905:

	skipc
	goto	u4901
	goto	u4900
u4901:
	goto	l666
u4900:
	goto	l6143
	
l6137:	
	goto	l6143
	
l666:	
	line	159
# 159 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
clrwdt ;#
psect	maintext
	line	158
	
l6139:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_counter),f
	skipnc
	incf	(_counter+1),f
	movlw	high(01h)
	addwf	(_counter+1),f
	
l6141:	
	movf	(_counter+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4915
	movlw	low(01388h)
	subwf	(_counter),w
u4915:

	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l666
u4910:
	goto	l6143
	
l667:	
	line	163
	
l6143:	
;main.c: 160: }
;main.c: 163: binTemperature = ReadTemperatureDS18() + 0x0012;
	fcall	_ReadTemperatureDS18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ReadTemperatureDS18)),w
	addlw	low(012h)
	movwf	(_binTemperature)
	movf	(1+(?_ReadTemperatureDS18)),w
	skipnc
	addlw	1
	addlw	high(012h)
	movwf	1+(_binTemperature)
	line	166
;main.c: 166: StartTemperatureDS18();
	fcall	_StartTemperatureDS18
	line	169
	
l6145:	
;main.c: 169: if( (minutes == 0) || (maxTemperature < binTemperature) )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_minutes),w
	skipz
	goto	u4920
	goto	l6149
u4920:
	
l6147:	
	movf	(_maxTemperature+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_binTemperature+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u4935
	movf	(_binTemperature),w
	subwf	(_maxTemperature),w
u4935:

	skipnc
	goto	u4931
	goto	u4930
u4931:
	goto	l6151
u4930:
	goto	l6149
	
l670:	
	line	170
	
l6149:	
;main.c: 170: maxTemperature = binTemperature;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_binTemperature+1),w
	clrf	(_maxTemperature+1)
	addwf	(_maxTemperature+1)
	movf	(_binTemperature),w
	clrf	(_maxTemperature)
	addwf	(_maxTemperature)

	goto	l6151
	
l668:	
	line	171
	
l6151:	
;main.c: 171: temperatureInt = ((maxTemperature >> 4) & 0x0fff);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_maxTemperature+1),w
	movwf	(??_main+0)+0+1
	movf	(_maxTemperature),w
	movwf	(??_main+0)+0
	movlw	04h
	movwf	btemp+1
u4945:
	rlf	(??_main+0)+1,w
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	btemp+1,f
	goto	u4945
	movlw	low(0FFFh)
	andwf	0+(??_main+0)+0,w
	movwf	(_temperatureInt)
	movlw	high(0FFFh)
	andwf	1+(??_main+0)+0,w
	movwf	1+(_temperatureInt)
	line	172
	
l6153:	
;main.c: 172: temperatureFrac = (maxTemperature & 0x000f);
	movlw	low(0Fh)
	andwf	(_maxTemperature),w
	movwf	(_temperatureFrac)
	movlw	high(0Fh)
	andwf	(_maxTemperature+1),w
	movwf	1+(_temperatureFrac)
	line	174
	
l6155:	
;main.c: 174: temperature100 = (temperatureInt / 100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_temperatureInt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temperatureInt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temperature100)
	line	175
	
l6157:	
;main.c: 175: temperatureInt %= 100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_temperatureInt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temperatureInt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_temperatureInt+1)
	addwf	(_temperatureInt+1)
	movf	(0+(?___awmod)),w
	clrf	(_temperatureInt)
	addwf	(_temperatureInt)

	line	176
	
l6159:	
;main.c: 176: temperature10 = (temperatureInt / 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_temperatureInt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_temperatureInt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temperature10)
	line	177
	
l6161:	
;main.c: 177: temperatureInt %= 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_temperatureInt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_temperatureInt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_temperatureInt+1)
	addwf	(_temperatureInt+1)
	movf	(0+(?___awmod)),w
	clrf	(_temperatureInt)
	addwf	(_temperatureInt)

	line	178
	
l6163:	
;main.c: 178: temperature01 = (temperatureFrac * 10 / 16);
	movlw	low(010h)
	movwf	(?___awdiv)
	movlw	high(010h)
	movwf	((?___awdiv))+1
	movf	(_temperatureFrac+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_temperatureFrac),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___wmul)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temperature01)
	line	188
	
l6165:	
;main.c: 188: SPILCD_LocationPut7Seg( 0, 0, temperature10, 0 );
	movlw	low(0)
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(0)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movf	(_temperature10),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?_SPILCD_LocationPut7Seg)+04h
	movf	1+(??_main+0)+0,w
	movwf	1+(?_SPILCD_LocationPut7Seg)+04h
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	189
	
l6167:	
;main.c: 189: SPILCD_LocationPut7Seg( 24, 0, temperatureInt, 1 );
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(018h)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movf	(_temperatureInt+1),w
	clrf	1+(?_SPILCD_LocationPut7Seg)+04h
	addwf	1+(?_SPILCD_LocationPut7Seg)+04h
	movf	(_temperatureInt),w
	clrf	0+(?_SPILCD_LocationPut7Seg)+04h
	addwf	0+(?_SPILCD_LocationPut7Seg)+04h

	movlw	low(01h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(01h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	190
	
l6169:	
;main.c: 190: SPILCD_LocationPut7Seg( 48, 0, temperature01, 0 );
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(030h)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movf	(_temperature01),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?_SPILCD_LocationPut7Seg)+04h
	movf	1+(??_main+0)+0,w
	movwf	1+(?_SPILCD_LocationPut7Seg)+04h
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	198
	
l6171:	
;main.c: 198: if( ++seconds == 60 ){
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_seconds),f
	movf	((_seconds)),w
	xorlw	03Ch
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l6179
u4950:
	line	199
	
l6173:	
;main.c: 199: seconds = 0;
	clrf	(_seconds)
	line	200
	
l6175:	
;main.c: 200: if( ++minutes == 5 ){
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_minutes),f
	movf	((_minutes)),w
	xorlw	05h
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l6179
u4960:
	line	202
	
l6177:	
;main.c: 202: sleepRequest = 1;
	bsf	(_sleepRequest/8),(_sleepRequest)&7
	line	203
;main.c: 203: minutes = 0;
	clrf	(_minutes)
	goto	l6179
	line	204
	
l672:	
	goto	l6179
	line	205
	
l671:	
	line	207
	
l6179:	
;main.c: 204: }
;main.c: 205: }
;main.c: 207: SPILCD_Small7Seg( 44, 4, minutes, 0 );
	movlw	low(02Ch)
	movwf	(?_SPILCD_Small7Seg)
	movlw	high(02Ch)
	movwf	((?_SPILCD_Small7Seg))+1
	movlw	low(04h)
	movwf	0+(?_SPILCD_Small7Seg)+02h
	movlw	high(04h)
	movwf	(0+(?_SPILCD_Small7Seg)+02h)+1
	movf	(_minutes),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?_SPILCD_Small7Seg)+04h
	movf	1+(??_main+0)+0,w
	movwf	1+(?_SPILCD_Small7Seg)+04h
	movlw	low(0)
	movwf	0+(?_SPILCD_Small7Seg)+06h
	movlw	high(0)
	movwf	(0+(?_SPILCD_Small7Seg)+06h)+1
	fcall	_SPILCD_Small7Seg
	line	208
	
l6181:	
;main.c: 208: SPILCD_SmallColon( 55, 4, 1 );
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_SmallColon)
	movlw	high(037h)
	movwf	((?_SPILCD_SmallColon))+1
	movlw	low(04h)
	movwf	0+(?_SPILCD_SmallColon)+02h
	movlw	high(04h)
	movwf	(0+(?_SPILCD_SmallColon)+02h)+1
	movlw	low(01h)
	movwf	0+(?_SPILCD_SmallColon)+04h
	movlw	high(01h)
	movwf	(0+(?_SPILCD_SmallColon)+04h)+1
	fcall	_SPILCD_SmallColon
	line	209
	
l6183:	
;main.c: 209: SPILCD_Small7Seg( 60, 4, seconds / 10, 0 );
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_Small7Seg)
	movlw	high(03Ch)
	movwf	((?_SPILCD_Small7Seg))+1
	movlw	low(04h)
	movwf	0+(?_SPILCD_Small7Seg)+02h
	movlw	high(04h)
	movwf	(0+(?_SPILCD_Small7Seg)+02h)+1
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_seconds),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	1+(?_SPILCD_Small7Seg)+04h
	addwf	1+(?_SPILCD_Small7Seg)+04h
	movf	(0+(?___awdiv)),w
	clrf	0+(?_SPILCD_Small7Seg)+04h
	addwf	0+(?_SPILCD_Small7Seg)+04h

	movlw	low(0)
	movwf	0+(?_SPILCD_Small7Seg)+06h
	movlw	high(0)
	movwf	(0+(?_SPILCD_Small7Seg)+06h)+1
	fcall	_SPILCD_Small7Seg
	line	210
	
l6185:	
;main.c: 210: SPILCD_Small7Seg( 72, 4, seconds % 10, 0 );
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_Small7Seg)
	movlw	high(048h)
	movwf	((?_SPILCD_Small7Seg))+1
	movlw	low(04h)
	movwf	0+(?_SPILCD_Small7Seg)+02h
	movlw	high(04h)
	movwf	(0+(?_SPILCD_Small7Seg)+02h)+1
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_seconds),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?_SPILCD_Small7Seg)+04h
	addwf	1+(?_SPILCD_Small7Seg)+04h
	movf	(0+(?___awmod)),w
	clrf	0+(?_SPILCD_Small7Seg)+04h
	addwf	0+(?_SPILCD_Small7Seg)+04h

	movlw	low(0)
	movwf	0+(?_SPILCD_Small7Seg)+06h
	movlw	high(0)
	movwf	(0+(?_SPILCD_Small7Seg)+06h)+1
	fcall	_SPILCD_Small7Seg
	line	213
	
l6187:	
;main.c: 213: if( minutes >= 3 ){
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_minutes),w
	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l6195
u4970:
	line	214
	
l6189:	
;main.c: 214: if( seconds & 0x01 ){
	btfss	(_seconds),(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l6193
u4980:
	line	215
	
l6191:	
;main.c: 215: SPILCD_Reverse();
	fcall	_SPILCD_Reverse
	line	216
;main.c: 216: } else {
	goto	l6195
	
l674:	
	line	217
	
l6193:	
;main.c: 217: SPILCD_Normal();
	fcall	_SPILCD_Normal
	goto	l6195
	line	218
	
l675:	
	goto	l6195
	line	219
	
l673:	
	goto	l6195
	line	220
	
l660:	
	line	223
	
l6195:	
;main.c: 218: }
;main.c: 219: }
;main.c: 220: }
;main.c: 223: if( timer_07 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_timer_07+1),w
	iorwf	(_timer_07),w
	skipnz
	goto	u4991
	goto	u4990
u4991:
	goto	l6201
u4990:
	line	224
	
l6197:	
;main.c: 224: timer_07 = 0;
	clrf	(_timer_07)
	clrf	(_timer_07+1)
	line	225
	
l6199:	
;main.c: 225: SPILCD_SmallColon( 55, 4, 0 );
	movlw	low(037h)
	movwf	(?_SPILCD_SmallColon)
	movlw	high(037h)
	movwf	((?_SPILCD_SmallColon))+1
	movlw	low(04h)
	movwf	0+(?_SPILCD_SmallColon)+02h
	movlw	high(04h)
	movwf	(0+(?_SPILCD_SmallColon)+02h)+1
	movlw	low(0)
	movwf	0+(?_SPILCD_SmallColon)+04h
	movlw	high(0)
	movwf	(0+(?_SPILCD_SmallColon)+04h)+1
	fcall	_SPILCD_SmallColon
	goto	l6201
	line	226
	
l676:	
	line	231
	
l6201:	
;main.c: 226: }
;main.c: 231: if( sleepRequest ){
	btfss	(_sleepRequest/8),(_sleepRequest)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l6111
u5000:
	line	232
	
l6203:	
;main.c: 232: SPILCD_SleepDisplay();
	fcall	_SPILCD_SleepDisplay
	line	233
	
l6205:	
;main.c: 233: OSCCONbits.IRCF = 0;
	movlw	((0 & ((1<<3)-1))<<4)|not (((1<<3)-1)<<4)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(143)^080h,f	;volatile
	line	234
	
l6207:	
# 234 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
sleep ;#
psect	maintext
	line	235
	
l6209:	
;main.c: 235: _nop();
	nop
	line	237
	
l6211:	
;main.c: 237: OSCCONbits.IRCF = 7;
	movlw	(07h & ((1<<3)-1))<<4
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(143)^080h,f	;volatile
	line	238
	
l6213:	
;main.c: 238: sleepRequest = 0;
	bcf	(_sleepRequest/8),(_sleepRequest)&7
	line	239
	
l6215:	
;main.c: 239: maxTemperature = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_maxTemperature)
	clrf	(_maxTemperature+1)
	line	240
	
l6217:	
;main.c: 240: SPILCD_InitDisplay();
	fcall	_SPILCD_InitDisplay
	line	241
	
l6219:	
;main.c: 241: timer_count = 3;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_timer_count)
	goto	l6111
	line	242
	
l677:	
	goto	l6111
	line	243
	
l678:	
	line	136
	goto	l6111
	
l679:	
	line	244
	
l680:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SPILCD_InitDisplay
psect	text1199,local,class=CODE,delta=2
global __ptext1199
__ptext1199:

;; *************** function _SPILCD_InitDisplay *****************
;; Defined at:
;;		line 527 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_SPI_LCD_Delay10US
;;		_SPILCD_command
;;		_NOKIAclearScreen
;;		_SPILCD_LocationPut7Seg
;;		_SPILCD_LocationPutDegree
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1199
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	527
	global	__size_of_SPILCD_InitDisplay
	__size_of_SPILCD_InitDisplay	equ	__end_of_SPILCD_InitDisplay-_SPILCD_InitDisplay
	
_SPILCD_InitDisplay:	
	opt	stack 1
; Regs used in _SPILCD_InitDisplay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	529
	
l6019:	
;nokia5100.c: 529: RA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	530
;nokia5100.c: 530: RA7 = 1;
	bsf	(47/8),(47)&7
	line	531
	
l6021:	
;nokia5100.c: 531: SPI_LCD_Delay10US( 1000 );
	movlw	low(03E8h)
	movwf	(?_SPI_LCD_Delay10US)
	movlw	high(03E8h)
	movwf	((?_SPI_LCD_Delay10US))+1
	fcall	_SPI_LCD_Delay10US
	line	532
	
l6023:	
;nokia5100.c: 532: RA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	533
;nokia5100.c: 533: SPI_LCD_Delay10US( 1000 );
	movlw	low(03E8h)
	movwf	(?_SPI_LCD_Delay10US)
	movlw	high(03E8h)
	movwf	((?_SPI_LCD_Delay10US))+1
	fcall	_SPI_LCD_Delay10US
	line	534
	
l6025:	
;nokia5100.c: 534: RA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	537
;nokia5100.c: 537: SPILCD_command( 0x21 );
	movlw	(021h)
	fcall	_SPILCD_command
	line	538
;nokia5100.c: 538: SPILCD_command( 0x90 );
	movlw	(090h)
	fcall	_SPILCD_command
	line	539
;nokia5100.c: 539: SPILCD_command( 0x20 );
	movlw	(020h)
	fcall	_SPILCD_command
	line	540
;nokia5100.c: 540: SPILCD_command( 0x0c );
	movlw	(0Ch)
	fcall	_SPILCD_command
	line	541
;nokia5100.c: 541: NOKIAclearScreen();
	fcall	_NOKIAclearScreen
	line	545
	
l6027:	
;nokia5100.c: 545: SPILCD_LocationPut7Seg( 0, 0, 8, 1 );
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(0)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movlw	low(08h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+04h
	movlw	high(08h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+04h)+1
	movlw	low(01h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(01h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	546
	
l6029:	
;nokia5100.c: 546: SPILCD_LocationPut7Seg( 24, 0, 8, 1 );
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(018h)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movlw	low(08h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+04h
	movlw	high(08h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+04h)+1
	movlw	low(01h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(01h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	547
	
l6031:	
;nokia5100.c: 547: SPILCD_LocationPut7Seg( 48, 0, 8, 1 );
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPut7Seg)
	movlw	high(030h)
	movwf	((?_SPILCD_LocationPut7Seg))+1
	movlw	low(0)
	movwf	0+(?_SPILCD_LocationPut7Seg)+02h
	movlw	high(0)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+02h)+1
	movlw	low(08h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+04h
	movlw	high(08h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+04h)+1
	movlw	low(01h)
	movwf	0+(?_SPILCD_LocationPut7Seg)+06h
	movlw	high(01h)
	movwf	(0+(?_SPILCD_LocationPut7Seg)+06h)+1
	fcall	_SPILCD_LocationPut7Seg
	line	548
	
l6033:	
;nokia5100.c: 548: SPILCD_LocationPutDegree( 72, 2 );
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPILCD_LocationPutDegree)
	movlw	high(048h)
	movwf	((?_SPILCD_LocationPutDegree))+1
	movlw	low(02h)
	movwf	0+(?_SPILCD_LocationPutDegree)+02h
	movlw	high(02h)
	movwf	(0+(?_SPILCD_LocationPutDegree)+02h)+1
	fcall	_SPILCD_LocationPutDegree
	line	550
	
l1439:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_InitDisplay
	__end_of_SPILCD_InitDisplay:
;; =============== function _SPILCD_InitDisplay ends ============

	signat	_SPILCD_InitDisplay,88
	global	_SPILCD_Small7Seg
psect	text1200,local,class=CODE,delta=2
global __ptext1200
__ptext1200:

;; *************** function _SPILCD_Small7Seg *****************
;; Defined at:
;;		line 491 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2   16[BANK0 ] int 
;;  y               2   18[BANK0 ] int 
;;  n               2   20[BANK0 ] int 
;;  dp              2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  ptn7seg         1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SPILCD_SmallAG
;;		_SPILCD_SmallB
;;		_SPILCD_SmallC
;;		_SPILCD_SmallD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1200
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	491
	global	__size_of_SPILCD_Small7Seg
	__size_of_SPILCD_Small7Seg	equ	__end_of_SPILCD_Small7Seg-_SPILCD_Small7Seg
	
_SPILCD_Small7Seg:	
	opt	stack 2
; Regs used in _SPILCD_Small7Seg: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	492
	
l6003:	
;nokia5100.c: 492: unsigned char ptn7seg = pattern7seg[ n ];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@n),w
	addlw	low((_pattern7seg-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	(SPILCD_Small7Seg@ptn7seg)
	line	494
	
l6005:	
;nokia5100.c: 494: SPILCD_SmallAG( x, y, ptn7seg & 0x80, ptn7seg & 0x02 );
	movf	(SPILCD_Small7Seg@x+1),w
	clrf	(?_SPILCD_SmallAG+1)
	addwf	(?_SPILCD_SmallAG+1)
	movf	(SPILCD_Small7Seg@x),w
	clrf	(?_SPILCD_SmallAG)
	addwf	(?_SPILCD_SmallAG)

	movf	(SPILCD_Small7Seg@y+1),w
	clrf	1+(?_SPILCD_SmallAG)+02h
	addwf	1+(?_SPILCD_SmallAG)+02h
	movf	(SPILCD_Small7Seg@y),w
	clrf	0+(?_SPILCD_SmallAG)+02h
	addwf	0+(?_SPILCD_SmallAG)+02h

	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	080h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallAG)+04h
	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	02h
	movwf	(??_SPILCD_Small7Seg+1)+0
	movf	(??_SPILCD_Small7Seg+1)+0,w
	movwf	0+(?_SPILCD_SmallAG)+05h
	fcall	_SPILCD_SmallAG
	line	495
	
l6007:	
;nokia5100.c: 495: SPILCD_SmallB( x + 6, y, ptn7seg & 0x40 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x),w
	addlw	low(06h)
	movwf	(?_SPILCD_SmallB)
	movf	(SPILCD_Small7Seg@x+1),w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(?_SPILCD_SmallB)
	movf	(SPILCD_Small7Seg@y+1),w
	clrf	1+(?_SPILCD_SmallB)+02h
	addwf	1+(?_SPILCD_SmallB)+02h
	movf	(SPILCD_Small7Seg@y),w
	clrf	0+(?_SPILCD_SmallB)+02h
	addwf	0+(?_SPILCD_SmallB)+02h

	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	040h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallB)+04h
	fcall	_SPILCD_SmallB
	line	496
	
l6009:	
;nokia5100.c: 496: SPILCD_SmallC( x + 6, y + 1, ptn7seg & 0x20 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x),w
	addlw	low(06h)
	movwf	(?_SPILCD_SmallC)
	movf	(SPILCD_Small7Seg@x+1),w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(?_SPILCD_SmallC)
	movf	(SPILCD_Small7Seg@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_SmallC)+02h
	movf	(SPILCD_Small7Seg@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_SmallC)+02h
	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	020h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallC)+04h
	fcall	_SPILCD_SmallC
	line	497
	
l6011:	
;nokia5100.c: 497: SPILCD_SmallD( x + 2, y + 1, ptn7seg & 0x10, 4 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x),w
	addlw	low(02h)
	movwf	(?_SPILCD_SmallD)
	movf	(SPILCD_Small7Seg@x+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(?_SPILCD_SmallD)
	movf	(SPILCD_Small7Seg@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_SmallD)+02h
	movf	(SPILCD_Small7Seg@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_SmallD)+02h
	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	010h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallD)+04h
	movlw	(04h)
	movwf	(??_SPILCD_Small7Seg+1)+0
	movf	(??_SPILCD_Small7Seg+1)+0,w
	movwf	0+(?_SPILCD_SmallD)+05h
	fcall	_SPILCD_SmallD
	line	498
	
l6013:	
;nokia5100.c: 498: SPILCD_SmallC( x, y + 1, ptn7seg & 0x08 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x+1),w
	clrf	(?_SPILCD_SmallC+1)
	addwf	(?_SPILCD_SmallC+1)
	movf	(SPILCD_Small7Seg@x),w
	clrf	(?_SPILCD_SmallC)
	addwf	(?_SPILCD_SmallC)

	movf	(SPILCD_Small7Seg@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_SmallC)+02h
	movf	(SPILCD_Small7Seg@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_SmallC)+02h
	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	08h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallC)+04h
	fcall	_SPILCD_SmallC
	line	499
	
l6015:	
;nokia5100.c: 499: SPILCD_SmallB( x, y, ptn7seg & 0x04 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x+1),w
	clrf	(?_SPILCD_SmallB+1)
	addwf	(?_SPILCD_SmallB+1)
	movf	(SPILCD_Small7Seg@x),w
	clrf	(?_SPILCD_SmallB)
	addwf	(?_SPILCD_SmallB)

	movf	(SPILCD_Small7Seg@y+1),w
	clrf	1+(?_SPILCD_SmallB)+02h
	addwf	1+(?_SPILCD_SmallB)+02h
	movf	(SPILCD_Small7Seg@y),w
	clrf	0+(?_SPILCD_SmallB)+02h
	addwf	0+(?_SPILCD_SmallB)+02h

	movf	(SPILCD_Small7Seg@ptn7seg),w
	andlw	04h
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallB)+04h
	fcall	_SPILCD_SmallB
	line	500
	
l6017:	
;nokia5100.c: 500: SPILCD_SmallD( x + 9, y + 1, dp, 2 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_Small7Seg@x),w
	addlw	low(09h)
	movwf	(?_SPILCD_SmallD)
	movf	(SPILCD_Small7Seg@x+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(?_SPILCD_SmallD)
	movf	(SPILCD_Small7Seg@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_SmallD)+02h
	movf	(SPILCD_Small7Seg@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_SmallD)+02h
	movf	(SPILCD_Small7Seg@dp),w
	movwf	(??_SPILCD_Small7Seg+0)+0
	movf	(??_SPILCD_Small7Seg+0)+0,w
	movwf	0+(?_SPILCD_SmallD)+04h
	movlw	(02h)
	movwf	(??_SPILCD_Small7Seg+1)+0
	movf	(??_SPILCD_Small7Seg+1)+0,w
	movwf	0+(?_SPILCD_SmallD)+05h
	fcall	_SPILCD_SmallD
	line	501
	
l1431:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_Small7Seg
	__end_of_SPILCD_Small7Seg:
;; =============== function _SPILCD_Small7Seg ends ============

	signat	_SPILCD_Small7Seg,16504
	global	_SPILCD_LocationPut7Seg
psect	text1201,local,class=CODE,delta=2
global __ptext1201
__ptext1201:

;; *************** function _SPILCD_LocationPut7Seg *****************
;; Defined at:
;;		line 377 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2   14[BANK0 ] int 
;;  y               2   16[BANK0 ] int 
;;  n               2   18[BANK0 ] int 
;;  dp              2   20[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  ptn7seg         1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SPILCD_7SegA
;;		_SPILCD_7SegB
;;		_SPILCD_7SegC
;;		_SPILCD_7SegD
;;		_SPILCD_7SegE
;;		_SPILCD_7SegF
;;		_SPILCD_7SegG
;;		_SPILCD_7SegDP
;; This function is called by:
;;		_main
;;		_SPILCD_InitDisplay
;; This function uses a non-reentrant model
;;
psect	text1201
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	377
	global	__size_of_SPILCD_LocationPut7Seg
	__size_of_SPILCD_LocationPut7Seg	equ	__end_of_SPILCD_LocationPut7Seg-_SPILCD_LocationPut7Seg
	
_SPILCD_LocationPut7Seg:	
	opt	stack 2
; Regs used in _SPILCD_LocationPut7Seg: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	378
	
l5985:	
;nokia5100.c: 378: unsigned char ptn7seg = pattern7seg[ n ];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@n),w
	addlw	low((_pattern7seg-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	(SPILCD_LocationPut7Seg@ptn7seg)
	line	380
	
l5987:	
;nokia5100.c: 380: SPILCD_7SegA( x, y, ptn7seg & 0x80 );
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegA+1)
	addwf	(?_SPILCD_7SegA+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegA)
	addwf	(?_SPILCD_7SegA)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegA)+02h
	addwf	1+(?_SPILCD_7SegA)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegA)+02h
	addwf	0+(?_SPILCD_7SegA)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	080h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegA)+04h
	fcall	_SPILCD_7SegA
	line	381
	
l5989:	
;nokia5100.c: 381: SPILCD_7SegB( x, y, ptn7seg & 0x40 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegB+1)
	addwf	(?_SPILCD_7SegB+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegB)
	addwf	(?_SPILCD_7SegB)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegB)+02h
	addwf	1+(?_SPILCD_7SegB)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegB)+02h
	addwf	0+(?_SPILCD_7SegB)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	040h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegB)+04h
	fcall	_SPILCD_7SegB
	line	382
	
l5991:	
;nokia5100.c: 382: SPILCD_7SegC( x, y, ptn7seg & 0x20 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegC+1)
	addwf	(?_SPILCD_7SegC+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegC)
	addwf	(?_SPILCD_7SegC)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegC)+02h
	addwf	1+(?_SPILCD_7SegC)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegC)+02h
	addwf	0+(?_SPILCD_7SegC)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	020h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegC)+04h
	fcall	_SPILCD_7SegC
	line	383
	
l5993:	
;nokia5100.c: 383: SPILCD_7SegD( x, y, ptn7seg & 0x10 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegD+1)
	addwf	(?_SPILCD_7SegD+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegD)
	addwf	(?_SPILCD_7SegD)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegD)+02h
	addwf	1+(?_SPILCD_7SegD)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegD)+02h
	addwf	0+(?_SPILCD_7SegD)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	010h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegD)+04h
	fcall	_SPILCD_7SegD
	line	384
	
l5995:	
;nokia5100.c: 384: SPILCD_7SegE( x, y, ptn7seg & 0x08 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegE+1)
	addwf	(?_SPILCD_7SegE+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegE)
	addwf	(?_SPILCD_7SegE)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegE)+02h
	addwf	1+(?_SPILCD_7SegE)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegE)+02h
	addwf	0+(?_SPILCD_7SegE)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	08h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegE)+04h
	fcall	_SPILCD_7SegE
	line	385
	
l5997:	
;nokia5100.c: 385: SPILCD_7SegF( x, y, ptn7seg & 0x04 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegF+1)
	addwf	(?_SPILCD_7SegF+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegF)
	addwf	(?_SPILCD_7SegF)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegF)+02h
	addwf	1+(?_SPILCD_7SegF)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegF)+02h
	addwf	0+(?_SPILCD_7SegF)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	04h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegF)+04h
	fcall	_SPILCD_7SegF
	line	386
	
l5999:	
;nokia5100.c: 386: SPILCD_7SegG( x, y, ptn7seg & 0x02 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegG+1)
	addwf	(?_SPILCD_7SegG+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegG)
	addwf	(?_SPILCD_7SegG)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegG)+02h
	addwf	1+(?_SPILCD_7SegG)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegG)+02h
	addwf	0+(?_SPILCD_7SegG)+02h

	movf	(SPILCD_LocationPut7Seg@ptn7seg),w
	andlw	02h
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegG)+04h
	fcall	_SPILCD_7SegG
	line	387
	
l6001:	
;nokia5100.c: 387: SPILCD_7SegDP( x, y, dp );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPut7Seg@x+1),w
	clrf	(?_SPILCD_7SegDP+1)
	addwf	(?_SPILCD_7SegDP+1)
	movf	(SPILCD_LocationPut7Seg@x),w
	clrf	(?_SPILCD_7SegDP)
	addwf	(?_SPILCD_7SegDP)

	movf	(SPILCD_LocationPut7Seg@y+1),w
	clrf	1+(?_SPILCD_7SegDP)+02h
	addwf	1+(?_SPILCD_7SegDP)+02h
	movf	(SPILCD_LocationPut7Seg@y),w
	clrf	0+(?_SPILCD_7SegDP)+02h
	addwf	0+(?_SPILCD_7SegDP)+02h

	movf	(SPILCD_LocationPut7Seg@dp),w
	movwf	(??_SPILCD_LocationPut7Seg+0)+0
	movf	(??_SPILCD_LocationPut7Seg+0)+0,w
	movwf	0+(?_SPILCD_7SegDP)+04h
	fcall	_SPILCD_7SegDP
	line	388
	
l1399:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_LocationPut7Seg
	__end_of_SPILCD_LocationPut7Seg:
;; =============== function _SPILCD_LocationPut7Seg ends ============

	signat	_SPILCD_LocationPut7Seg,16504
	global	_SPILCD_SmallD
psect	text1202,local,class=CODE,delta=2
global __ptext1202
__ptext1202:

;; *************** function _SPILCD_SmallD *****************
;; Defined at:
;;		line 475 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;;  length          1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  loop            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_Small7Seg
;; This function uses a non-reentrant model
;;
psect	text1202
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	475
	global	__size_of_SPILCD_SmallD
	__size_of_SPILCD_SmallD	equ	__end_of_SPILCD_SmallD-_SPILCD_SmallD
	
_SPILCD_SmallD:	
	opt	stack 2
; Regs used in _SPILCD_SmallD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	478
	
l5971:	
;nokia5100.c: 476: unsigned char loop;
;nokia5100.c: 478: SPILCD_LocationSet( x, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallD@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallD@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallD@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallD@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	479
	
l5973:	
;nokia5100.c: 479: for( loop = 0 ; loop < length ; loop++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_SmallD@loop)
	goto	l5983
	
l1424:	
	line	480
	
l5975:	
;nokia5100.c: 480: if( sFlag != 0 ){
	movf	(SPILCD_SmallD@sFlag),w
	skipz
	goto	u4830
	goto	l5979
u4830:
	line	482
	
l5977:	
;nokia5100.c: 482: SPILCD_data( 0x30 );
	movlw	(030h)
	fcall	_SPILCD_data
	line	483
;nokia5100.c: 483: } else {
	goto	l5981
	
l1425:	
	line	485
	
l5979:	
;nokia5100.c: 485: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l5981
	line	486
	
l1426:	
	line	479
	
l5981:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SPILCD_SmallD+0)+0
	movf	(??_SPILCD_SmallD+0)+0,w
	addwf	(SPILCD_SmallD@loop),f
	goto	l5983
	
l1423:	
	
l5983:	
	movf	(SPILCD_SmallD@length),w
	subwf	(SPILCD_SmallD@loop),w
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l5975
u4840:
	goto	l1428
	
l1427:	
	line	488
	
l1428:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SmallD
	__end_of_SPILCD_SmallD:
;; =============== function _SPILCD_SmallD ends ============

	signat	_SPILCD_SmallD,16504
	global	_SPILCD_SmallAG
psect	text1203,local,class=CODE,delta=2
global __ptext1203
__ptext1203:

;; *************** function _SPILCD_SmallAG *****************
;; Defined at:
;;		line 453 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  aFlag           1   11[BANK0 ] unsigned char 
;;  gFlag           1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1   15[BANK0 ] unsigned char 
;;  pattern         1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_Small7Seg
;; This function uses a non-reentrant model
;;
psect	text1203
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	453
	global	__size_of_SPILCD_SmallAG
	__size_of_SPILCD_SmallAG	equ	__end_of_SPILCD_SmallAG-_SPILCD_SmallAG
	
_SPILCD_SmallAG:	
	opt	stack 2
; Regs used in _SPILCD_SmallAG: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	457
	
l5949:	
;nokia5100.c: 454: unsigned char pattern;
;nokia5100.c: 455: unsigned char i;
;nokia5100.c: 457: if( aFlag ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallAG@aFlag),w
	skipz
	goto	u4790
	goto	l1415
u4790:
	line	458
	
l5951:	
;nokia5100.c: 458: pattern = 0x03;
	movlw	(03h)
	movwf	(??_SPILCD_SmallAG+0)+0
	movf	(??_SPILCD_SmallAG+0)+0,w
	movwf	(SPILCD_SmallAG@pattern)
	line	459
;nokia5100.c: 459: } else {
	goto	l5953
	
l1415:	
	line	460
;nokia5100.c: 460: pattern = 0;
	clrf	(SPILCD_SmallAG@pattern)
	goto	l5953
	line	461
	
l1416:	
	line	462
	
l5953:	
;nokia5100.c: 461: }
;nokia5100.c: 462: if( gFlag )
	movf	(SPILCD_SmallAG@gFlag),w
	skipz
	goto	u4800
	goto	l5957
u4800:
	line	463
	
l5955:	
;nokia5100.c: 463: pattern |= 0xc0;
	movlw	(0C0h)
	movwf	(??_SPILCD_SmallAG+0)+0
	movf	(??_SPILCD_SmallAG+0)+0,w
	iorwf	(SPILCD_SmallAG@pattern),f
	goto	l5957
	
l1417:	
	line	465
	
l5957:	
;nokia5100.c: 465: SPILCD_LocationSet( x + 2, y );
	movf	(SPILCD_SmallAG@x),w
	addlw	low(02h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_SmallAG@x+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_SmallAG@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallAG@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	466
	
l5959:	
;nokia5100.c: 466: for( i = 0 ; i < 4 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_SmallAG@i)
	
l5961:	
	movlw	(04h)
	subwf	(SPILCD_SmallAG@i),w
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l5965
u4810:
	goto	l1420
	
l5963:	
	goto	l1420
	
l1418:	
	line	467
	
l5965:	
;nokia5100.c: 467: SPILCD_data( pattern );
	movf	(SPILCD_SmallAG@pattern),w
	fcall	_SPILCD_data
	line	466
	
l5967:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SPILCD_SmallAG+0)+0
	movf	(??_SPILCD_SmallAG+0)+0,w
	addwf	(SPILCD_SmallAG@i),f
	
l5969:	
	movlw	(04h)
	subwf	(SPILCD_SmallAG@i),w
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l5965
u4820:
	goto	l1420
	
l1419:	
	line	469
	
l1420:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SmallAG
	__end_of_SPILCD_SmallAG:
;; =============== function _SPILCD_SmallAG ends ============

	signat	_SPILCD_SmallAG,16504
	global	_SPILCD_SmallC
psect	text1204,local,class=CODE,delta=2
global __ptext1204
__ptext1204:

;; *************** function _SPILCD_SmallC *****************
;; Defined at:
;;		line 436 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_Small7Seg
;; This function uses a non-reentrant model
;;
psect	text1204
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	436
	global	__size_of_SPILCD_SmallC
	__size_of_SPILCD_SmallC	equ	__end_of_SPILCD_SmallC-_SPILCD_SmallC
	
_SPILCD_SmallC:	
	opt	stack 2
; Regs used in _SPILCD_SmallC: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	437
	
l5941:	
;nokia5100.c: 437: SPILCD_LocationSet( x, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallC@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallC@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallC@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallC@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	438
	
l5943:	
;nokia5100.c: 438: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallC@sFlag),w
	skipz
	goto	u4780
	goto	l5947
u4780:
	line	440
	
l5945:	
;nokia5100.c: 440: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	441
;nokia5100.c: 441: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	442
;nokia5100.c: 442: } else {
	goto	l1412
	
l1410:	
	line	444
	
l5947:	
;nokia5100.c: 444: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	line	445
;nokia5100.c: 445: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1412
	line	446
	
l1411:	
	line	447
	
l1412:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SmallC
	__end_of_SPILCD_SmallC:
;; =============== function _SPILCD_SmallC ends ============

	signat	_SPILCD_SmallC,12408
	global	_SPILCD_SmallB
psect	text1205,local,class=CODE,delta=2
global __ptext1205
__ptext1205:

;; *************** function _SPILCD_SmallB *****************
;; Defined at:
;;		line 419 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_Small7Seg
;; This function uses a non-reentrant model
;;
psect	text1205
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	419
	global	__size_of_SPILCD_SmallB
	__size_of_SPILCD_SmallB	equ	__end_of_SPILCD_SmallB-_SPILCD_SmallB
	
_SPILCD_SmallB:	
	opt	stack 2
; Regs used in _SPILCD_SmallB: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	420
	
l5933:	
;nokia5100.c: 420: SPILCD_LocationSet( x, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallB@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallB@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallB@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallB@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	421
	
l5935:	
;nokia5100.c: 421: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallB@sFlag),w
	skipz
	goto	u4770
	goto	l5939
u4770:
	line	423
	
l5937:	
;nokia5100.c: 423: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	424
;nokia5100.c: 424: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	425
;nokia5100.c: 425: } else {
	goto	l1407
	
l1405:	
	line	427
	
l5939:	
;nokia5100.c: 427: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	line	428
;nokia5100.c: 428: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1407
	line	429
	
l1406:	
	line	430
	
l1407:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SmallB
	__end_of_SPILCD_SmallB:
;; =============== function _SPILCD_SmallB ends ============

	signat	_SPILCD_SmallB,12408
	global	_SPILCD_LocationPutDegree
psect	text1206,local,class=CODE,delta=2
global __ptext1206
__ptext1206:

;; *************** function _SPILCD_LocationPutDegree *****************
;; Defined at:
;;		line 391 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_InitDisplay
;; This function uses a non-reentrant model
;;
psect	text1206
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	391
	global	__size_of_SPILCD_LocationPutDegree
	__size_of_SPILCD_LocationPutDegree	equ	__end_of_SPILCD_LocationPutDegree-_SPILCD_LocationPutDegree
	
_SPILCD_LocationPutDegree:	
	opt	stack 2
; Regs used in _SPILCD_LocationPutDegree: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	393
	
l5931:	
;nokia5100.c: 393: SPILCD_LocationSet( x, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPutDegree@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_LocationPutDegree@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_LocationPutDegree@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_LocationPutDegree@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	394
;nokia5100.c: 394: SPILCD_data( 0x06 );
	movlw	(06h)
	fcall	_SPILCD_data
	line	395
;nokia5100.c: 395: SPILCD_data( 0x09 );
	movlw	(09h)
	fcall	_SPILCD_data
	line	396
;nokia5100.c: 396: SPILCD_data( 0x09 );
	movlw	(09h)
	fcall	_SPILCD_data
	line	397
;nokia5100.c: 397: SPILCD_data( 0xc6 );
	movlw	(0C6h)
	fcall	_SPILCD_data
	line	398
;nokia5100.c: 398: SPILCD_data( 0xe0 );
	movlw	(0E0h)
	fcall	_SPILCD_data
	line	399
;nokia5100.c: 399: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	400
;nokia5100.c: 400: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	401
;nokia5100.c: 401: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	403
;nokia5100.c: 403: SPILCD_LocationSet( x + 2, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationPutDegree@x),w
	addlw	low(02h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_LocationPutDegree@x+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_LocationPutDegree@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_LocationPutDegree@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	404
;nokia5100.c: 404: SPILCD_data( 0x0f );
	movlw	(0Fh)
	fcall	_SPILCD_data
	line	405
;nokia5100.c: 405: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	406
;nokia5100.c: 406: SPILCD_data( 0x70 );
	movlw	(070h)
	fcall	_SPILCD_data
	line	407
;nokia5100.c: 407: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	408
;nokia5100.c: 408: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	409
;nokia5100.c: 409: SPILCD_data( 0x60 );
	movlw	(060h)
	fcall	_SPILCD_data
	line	410
	
l1402:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_LocationPutDegree
	__end_of_SPILCD_LocationPutDegree:
;; =============== function _SPILCD_LocationPutDegree ends ============

	signat	_SPILCD_LocationPutDegree,8312
	global	_SPILCD_7SegDP
psect	text1207,local,class=CODE,delta=2
global __ptext1207
__ptext1207:

;; *************** function _SPILCD_7SegDP *****************
;; Defined at:
;;		line 358 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   12[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1207
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	358
	global	__size_of_SPILCD_7SegDP
	__size_of_SPILCD_7SegDP	equ	__end_of_SPILCD_7SegDP-_SPILCD_7SegDP
	
_SPILCD_7SegDP:	
	opt	stack 2
; Regs used in _SPILCD_7SegDP: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	361
	
l5913:	
;nokia5100.c: 359: int i;
;nokia5100.c: 361: SPILCD_LocationSet( x + 19, y + 3 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegDP@x),w
	addlw	low(013h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegDP@x+1),w
	skipnc
	addlw	1
	addlw	high(013h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegDP@y),w
	addlw	low(03h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegDP@y+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	362
	
l5915:	
;nokia5100.c: 362: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegDP@sFlag),w
	skipz
	goto	u4740
	goto	l5919
u4740:
	line	364
	
l5917:	
;nokia5100.c: 364: SPILCD_data( 0x30 );
	movlw	(030h)
	fcall	_SPILCD_data
	line	365
;nokia5100.c: 365: SPILCD_data( 0x78 );
	movlw	(078h)
	fcall	_SPILCD_data
	line	366
;nokia5100.c: 366: SPILCD_data( 0x78 );
	movlw	(078h)
	fcall	_SPILCD_data
	line	367
;nokia5100.c: 367: SPILCD_data( 0x30 );
	movlw	(030h)
	fcall	_SPILCD_data
	line	368
;nokia5100.c: 368: } else {
	goto	l1396
	
l1392:	
	line	370
	
l5919:	
;nokia5100.c: 370: for( i = 0 ; i < 4 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_7SegDP@i)
	clrf	(SPILCD_7SegDP@i+1)
	
l5921:	
	movf	(SPILCD_7SegDP@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4755
	movlw	low(04h)
	subwf	(SPILCD_7SegDP@i),w
u4755:

	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l5925
u4750:
	goto	l1396
	
l5923:	
	goto	l1396
	
l1394:	
	line	371
	
l5925:	
;nokia5100.c: 371: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	370
	
l5927:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegDP@i),f
	skipnc
	incf	(SPILCD_7SegDP@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegDP@i+1),f
	
l5929:	
	movf	(SPILCD_7SegDP@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4765
	movlw	low(04h)
	subwf	(SPILCD_7SegDP@i),w
u4765:

	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l5925
u4760:
	goto	l1396
	
l1395:	
	goto	l1396
	line	373
	
l1393:	
	line	374
	
l1396:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegDP
	__end_of_SPILCD_7SegDP:
;; =============== function _SPILCD_7SegDP ends ============

	signat	_SPILCD_7SegDP,12408
	global	_SPILCD_7SegG
psect	text1208,local,class=CODE,delta=2
global __ptext1208
__ptext1208:

;; *************** function _SPILCD_7SegG *****************
;; Defined at:
;;		line 323 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   12[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1208
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	323
	global	__size_of_SPILCD_7SegG
	__size_of_SPILCD_7SegG	equ	__end_of_SPILCD_7SegG-_SPILCD_7SegG
	
_SPILCD_7SegG:	
	opt	stack 2
; Regs used in _SPILCD_7SegG: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	327
	
l5857:	
;nokia5100.c: 324: int i;
;nokia5100.c: 327: SPILCD_LocationSet( x + 6, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegG@x),w
	addlw	low(06h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegG@x+1),w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegG@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegG@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	328
	
l5859:	
;nokia5100.c: 328: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegG@sFlag),w
	skipz
	goto	u4640
	goto	l5873
u4640:
	line	330
	
l5861:	
;nokia5100.c: 330: for( i = 0 ; i < 10 ; i++ ){
	clrf	(SPILCD_7SegG@i)
	clrf	(SPILCD_7SegG@i+1)
	
l5863:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4655
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4655:

	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l5867
u4650:
	goto	l5885
	
l5865:	
	goto	l5885
	
l1378:	
	line	331
	
l5867:	
;nokia5100.c: 331: SPILCD_data( 0xc0 );
	movlw	(0C0h)
	fcall	_SPILCD_data
	line	330
	
l5869:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegG@i),f
	skipnc
	incf	(SPILCD_7SegG@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegG@i+1),f
	
l5871:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4665
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4665:

	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l5867
u4660:
	goto	l5885
	
l1379:	
	line	333
;nokia5100.c: 332: }
;nokia5100.c: 333: } else {
	goto	l5885
	
l1377:	
	line	335
	
l5873:	
;nokia5100.c: 335: for( i = 0 ; i < 10 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_7SegG@i)
	clrf	(SPILCD_7SegG@i+1)
	
l5875:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4675
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4675:

	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l5879
u4670:
	goto	l5885
	
l5877:	
	goto	l5885
	
l1381:	
	line	336
	
l5879:	
;nokia5100.c: 336: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	335
	
l5881:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegG@i),f
	skipnc
	incf	(SPILCD_7SegG@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegG@i+1),f
	
l5883:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4685
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4685:

	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l5879
u4680:
	goto	l5885
	
l1382:	
	goto	l5885
	line	338
	
l1380:	
	line	340
	
l5885:	
;nokia5100.c: 337: }
;nokia5100.c: 338: }
;nokia5100.c: 340: SPILCD_LocationSet( x + 5, y + 2 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegG@x),w
	addlw	low(05h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegG@x+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegG@y),w
	addlw	low(02h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegG@y+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	341
	
l5887:	
;nokia5100.c: 341: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegG@sFlag),w
	skipz
	goto	u4690
	goto	l5901
u4690:
	line	343
	
l5889:	
;nokia5100.c: 343: for( i = 0 ; i < 10 ; i++ ){
	clrf	(SPILCD_7SegG@i)
	clrf	(SPILCD_7SegG@i+1)
	
l5891:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4705
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4705:

	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l5895
u4700:
	goto	l1389
	
l5893:	
	goto	l1389
	
l1384:	
	line	344
	
l5895:	
;nokia5100.c: 344: SPILCD_data( 0x03 );
	movlw	(03h)
	fcall	_SPILCD_data
	line	343
	
l5897:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegG@i),f
	skipnc
	incf	(SPILCD_7SegG@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegG@i+1),f
	
l5899:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4715
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4715:

	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l5895
u4710:
	goto	l1389
	
l1385:	
	line	346
;nokia5100.c: 345: }
;nokia5100.c: 346: } else {
	goto	l1389
	
l1383:	
	line	348
	
l5901:	
;nokia5100.c: 348: for( i = 0 ; i < 10 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_7SegG@i)
	clrf	(SPILCD_7SegG@i+1)
	
l5903:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4725
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4725:

	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l5907
u4720:
	goto	l1389
	
l5905:	
	goto	l1389
	
l1387:	
	line	349
	
l5907:	
;nokia5100.c: 349: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	348
	
l5909:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegG@i),f
	skipnc
	incf	(SPILCD_7SegG@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegG@i+1),f
	
l5911:	
	movf	(SPILCD_7SegG@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4735
	movlw	low(0Ah)
	subwf	(SPILCD_7SegG@i),w
u4735:

	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l5907
u4730:
	goto	l1389
	
l1388:	
	goto	l1389
	line	351
	
l1386:	
	line	352
	
l1389:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegG
	__end_of_SPILCD_7SegG:
;; =============== function _SPILCD_7SegG ends ============

	signat	_SPILCD_7SegG,12408
	global	_SPILCD_7SegF
psect	text1209,local,class=CODE,delta=2
global __ptext1209
__ptext1209:

;; *************** function _SPILCD_7SegF *****************
;; Defined at:
;;		line 286 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1209
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	286
	global	__size_of_SPILCD_7SegF
	__size_of_SPILCD_7SegF	equ	__end_of_SPILCD_7SegF-_SPILCD_7SegF
	
_SPILCD_7SegF:	
	opt	stack 2
; Regs used in _SPILCD_7SegF: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	288
	
l5843:	
;nokia5100.c: 288: SPILCD_LocationSet( x + 3, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegF@x),w
	addlw	low(03h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegF@x+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegF@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegF@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	289
	
l5845:	
;nokia5100.c: 289: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegF@sFlag),w
	skipz
	goto	u4620
	goto	l5849
u4620:
	line	291
	
l5847:	
;nokia5100.c: 291: SPILCD_data( 0xf8 );
	movlw	(0F8h)
	fcall	_SPILCD_data
	line	292
;nokia5100.c: 292: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	293
;nokia5100.c: 293: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	294
;nokia5100.c: 294: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	295
;nokia5100.c: 295: } else {
	goto	l1371
	
l1370:	
	line	297
	
l5849:	
;nokia5100.c: 297: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	298
;nokia5100.c: 298: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	299
;nokia5100.c: 299: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	300
;nokia5100.c: 300: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	301
	
l1371:	
	line	303
;nokia5100.c: 301: }
;nokia5100.c: 303: SPILCD_LocationSet( x + 2, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegF@x),w
	addlw	low(02h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegF@x+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegF@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegF@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	304
	
l5851:	
;nokia5100.c: 304: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegF@sFlag),w
	skipz
	goto	u4630
	goto	l5855
u4630:
	line	306
	
l5853:	
;nokia5100.c: 306: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	307
;nokia5100.c: 307: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	308
;nokia5100.c: 308: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	309
;nokia5100.c: 309: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	310
;nokia5100.c: 310: } else {
	goto	l1374
	
l1372:	
	line	312
	
l5855:	
;nokia5100.c: 312: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	313
;nokia5100.c: 313: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	314
;nokia5100.c: 314: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	315
;nokia5100.c: 315: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1374
	line	316
	
l1373:	
	line	317
	
l1374:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegF
	__end_of_SPILCD_7SegF:
;; =============== function _SPILCD_7SegF ends ============

	signat	_SPILCD_7SegF,12408
	global	_SPILCD_7SegE
psect	text1210,local,class=CODE,delta=2
global __ptext1210
__ptext1210:

;; *************** function _SPILCD_7SegE *****************
;; Defined at:
;;		line 249 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1210
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	249
	global	__size_of_SPILCD_7SegE
	__size_of_SPILCD_7SegE	equ	__end_of_SPILCD_7SegE-_SPILCD_7SegE
	
_SPILCD_7SegE:	
	opt	stack 2
; Regs used in _SPILCD_7SegE: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	251
	
l5829:	
;nokia5100.c: 251: SPILCD_LocationSet( x + 1, y + 2 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegE@x),w
	addlw	low(01h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegE@x+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegE@y),w
	addlw	low(02h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegE@y+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	252
	
l5831:	
;nokia5100.c: 252: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegE@sFlag),w
	skipz
	goto	u4600
	goto	l5835
u4600:
	line	254
	
l5833:	
;nokia5100.c: 254: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	255
;nokia5100.c: 255: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	256
;nokia5100.c: 256: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	257
;nokia5100.c: 257: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	258
;nokia5100.c: 258: } else {
	goto	l1364
	
l1363:	
	line	260
	
l5835:	
;nokia5100.c: 260: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	261
;nokia5100.c: 261: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	262
;nokia5100.c: 262: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	263
;nokia5100.c: 263: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	264
	
l1364:	
	line	266
;nokia5100.c: 264: }
;nokia5100.c: 266: SPILCD_LocationSet( x, y + 3 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegE@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_7SegE@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_7SegE@y),w
	addlw	low(03h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegE@y+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	267
	
l5837:	
;nokia5100.c: 267: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegE@sFlag),w
	skipz
	goto	u4610
	goto	l5841
u4610:
	line	269
	
l5839:	
;nokia5100.c: 269: SPILCD_data( 0x1f );
	movlw	(01Fh)
	fcall	_SPILCD_data
	line	270
;nokia5100.c: 270: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	271
;nokia5100.c: 271: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	272
;nokia5100.c: 272: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	273
;nokia5100.c: 273: } else {
	goto	l1367
	
l1365:	
	line	275
	
l5841:	
;nokia5100.c: 275: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	276
;nokia5100.c: 276: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	277
;nokia5100.c: 277: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	278
;nokia5100.c: 278: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1367
	line	279
	
l1366:	
	line	280
	
l1367:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegE
	__end_of_SPILCD_7SegE:
;; =============== function _SPILCD_7SegE ends ============

	signat	_SPILCD_7SegE,12408
	global	_SPILCD_7SegD
psect	text1211,local,class=CODE,delta=2
global __ptext1211
__ptext1211:

;; *************** function _SPILCD_7SegD *****************
;; Defined at:
;;		line 228 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   12[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1211
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	228
	global	__size_of_SPILCD_7SegD
	__size_of_SPILCD_7SegD	equ	__end_of_SPILCD_7SegD-_SPILCD_7SegD
	
_SPILCD_7SegD:	
	opt	stack 2
; Regs used in _SPILCD_7SegD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	231
	
l5801:	
;nokia5100.c: 229: int i;
;nokia5100.c: 231: SPILCD_LocationSet( x + 4, y + 3 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegD@x),w
	addlw	low(04h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegD@x+1),w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegD@y),w
	addlw	low(03h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegD@y+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	232
	
l5803:	
;nokia5100.c: 232: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegD@sFlag),w
	skipz
	goto	u4550
	goto	l5817
u4550:
	line	234
	
l5805:	
;nokia5100.c: 234: for( i = 0 ; i < 10 ; i++ ){
	clrf	(SPILCD_7SegD@i)
	clrf	(SPILCD_7SegD@i+1)
	
l5807:	
	movf	(SPILCD_7SegD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4565
	movlw	low(0Ah)
	subwf	(SPILCD_7SegD@i),w
u4565:

	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l5811
u4560:
	goto	l1360
	
l5809:	
	goto	l1360
	
l1355:	
	line	235
	
l5811:	
;nokia5100.c: 235: SPILCD_data( 0x78 );
	movlw	(078h)
	fcall	_SPILCD_data
	line	234
	
l5813:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegD@i),f
	skipnc
	incf	(SPILCD_7SegD@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegD@i+1),f
	
l5815:	
	movf	(SPILCD_7SegD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4575
	movlw	low(0Ah)
	subwf	(SPILCD_7SegD@i),w
u4575:

	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l5811
u4570:
	goto	l1360
	
l1356:	
	line	237
;nokia5100.c: 236: }
;nokia5100.c: 237: } else {
	goto	l1360
	
l1354:	
	line	239
	
l5817:	
;nokia5100.c: 239: for( i = 0 ; i < 10 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_7SegD@i)
	clrf	(SPILCD_7SegD@i+1)
	
l5819:	
	movf	(SPILCD_7SegD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4585
	movlw	low(0Ah)
	subwf	(SPILCD_7SegD@i),w
u4585:

	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l5823
u4580:
	goto	l1360
	
l5821:	
	goto	l1360
	
l1358:	
	line	240
	
l5823:	
;nokia5100.c: 240: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	239
	
l5825:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegD@i),f
	skipnc
	incf	(SPILCD_7SegD@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegD@i+1),f
	
l5827:	
	movf	(SPILCD_7SegD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4595
	movlw	low(0Ah)
	subwf	(SPILCD_7SegD@i),w
u4595:

	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l5823
u4590:
	goto	l1360
	
l1359:	
	goto	l1360
	line	242
	
l1357:	
	line	243
	
l1360:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegD
	__end_of_SPILCD_7SegD:
;; =============== function _SPILCD_7SegD ends ============

	signat	_SPILCD_7SegD,12408
	global	_SPILCD_7SegC
psect	text1212,local,class=CODE,delta=2
global __ptext1212
__ptext1212:

;; *************** function _SPILCD_7SegC *****************
;; Defined at:
;;		line 191 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1212
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	191
	global	__size_of_SPILCD_7SegC
	__size_of_SPILCD_7SegC	equ	__end_of_SPILCD_7SegC-_SPILCD_7SegC
	
_SPILCD_7SegC:	
	opt	stack 2
; Regs used in _SPILCD_7SegC: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	193
	
l5787:	
;nokia5100.c: 193: SPILCD_LocationSet( x + 15, y + 2 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegC@x),w
	addlw	low(0Fh)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegC@x+1),w
	skipnc
	addlw	1
	addlw	high(0Fh)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegC@y),w
	addlw	low(02h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegC@y+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	194
	
l5789:	
;nokia5100.c: 194: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegC@sFlag),w
	skipz
	goto	u4530
	goto	l5793
u4530:
	line	196
	
l5791:	
;nokia5100.c: 196: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	197
;nokia5100.c: 197: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	198
;nokia5100.c: 198: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	199
;nokia5100.c: 199: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	200
;nokia5100.c: 200: } else {
	goto	l1348
	
l1347:	
	line	202
	
l5793:	
;nokia5100.c: 202: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	203
;nokia5100.c: 203: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	204
;nokia5100.c: 204: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	205
;nokia5100.c: 205: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	206
	
l1348:	
	line	208
;nokia5100.c: 206: }
;nokia5100.c: 208: SPILCD_LocationSet( x + 14, y + 3 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegC@x),w
	addlw	low(0Eh)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegC@x+1),w
	skipnc
	addlw	1
	addlw	high(0Eh)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegC@y),w
	addlw	low(03h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegC@y+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	209
	
l5795:	
;nokia5100.c: 209: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegC@sFlag),w
	skipz
	goto	u4540
	goto	l5799
u4540:
	line	211
	
l5797:	
;nokia5100.c: 211: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	212
;nokia5100.c: 212: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	213
;nokia5100.c: 213: SPILCD_data( 0x3f );
	movlw	(03Fh)
	fcall	_SPILCD_data
	line	214
;nokia5100.c: 214: SPILCD_data( 0x1f );
	movlw	(01Fh)
	fcall	_SPILCD_data
	line	215
;nokia5100.c: 215: } else {
	goto	l1351
	
l1349:	
	line	217
	
l5799:	
;nokia5100.c: 217: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	218
;nokia5100.c: 218: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	219
;nokia5100.c: 219: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	220
;nokia5100.c: 220: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1351
	line	221
	
l1350:	
	line	222
	
l1351:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegC
	__end_of_SPILCD_7SegC:
;; =============== function _SPILCD_7SegC ends ============

	signat	_SPILCD_7SegC,12408
	global	_SPILCD_7SegB
psect	text1213,local,class=CODE,delta=2
global __ptext1213
__ptext1213:

;; *************** function _SPILCD_7SegB *****************
;; Defined at:
;;		line 154 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1213
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	154
	global	__size_of_SPILCD_7SegB
	__size_of_SPILCD_7SegB	equ	__end_of_SPILCD_7SegB-_SPILCD_7SegB
	
_SPILCD_7SegB:	
	opt	stack 2
; Regs used in _SPILCD_7SegB: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	156
	
l5773:	
;nokia5100.c: 156: SPILCD_LocationSet( x + 17, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegB@x),w
	addlw	low(011h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegB@x+1),w
	skipnc
	addlw	1
	addlw	high(011h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegB@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegB@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	157
	
l5775:	
;nokia5100.c: 157: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegB@sFlag),w
	skipz
	goto	u4510
	goto	l5779
u4510:
	line	159
	
l5777:	
;nokia5100.c: 159: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	160
;nokia5100.c: 160: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	161
;nokia5100.c: 161: SPILCD_data( 0xfc );
	movlw	(0FCh)
	fcall	_SPILCD_data
	line	162
;nokia5100.c: 162: SPILCD_data( 0xf8 );
	movlw	(0F8h)
	fcall	_SPILCD_data
	line	163
;nokia5100.c: 163: } else {
	goto	l1341
	
l1340:	
	line	165
	
l5779:	
;nokia5100.c: 165: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	166
;nokia5100.c: 166: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	167
;nokia5100.c: 167: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	168
;nokia5100.c: 168: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	169
	
l1341:	
	line	171
;nokia5100.c: 169: }
;nokia5100.c: 171: SPILCD_LocationSet( x + 16, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegB@x),w
	addlw	low(010h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegB@x+1),w
	skipnc
	addlw	1
	addlw	high(010h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegB@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegB@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	172
	
l5781:	
;nokia5100.c: 172: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegB@sFlag),w
	skipz
	goto	u4520
	goto	l5785
u4520:
	line	174
	
l5783:	
;nokia5100.c: 174: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	175
;nokia5100.c: 175: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	176
;nokia5100.c: 176: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	177
;nokia5100.c: 177: SPILCD_data( 0xff );
	movlw	(0FFh)
	fcall	_SPILCD_data
	line	178
;nokia5100.c: 178: } else {
	goto	l1344
	
l1342:	
	line	180
	
l5785:	
;nokia5100.c: 180: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	181
;nokia5100.c: 181: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	182
;nokia5100.c: 182: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	183
;nokia5100.c: 183: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1344
	line	184
	
l1343:	
	line	185
	
l1344:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegB
	__end_of_SPILCD_7SegB:
;; =============== function _SPILCD_7SegB ends ============

	signat	_SPILCD_7SegB,12408
	global	_SPILCD_7SegA
psect	text1214,local,class=CODE,delta=2
global __ptext1214
__ptext1214:

;; *************** function _SPILCD_7SegA *****************
;; Defined at:
;;		line 133 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  sFlag           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   12[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_SPILCD_LocationPut7Seg
;; This function uses a non-reentrant model
;;
psect	text1214
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	133
	global	__size_of_SPILCD_7SegA
	__size_of_SPILCD_7SegA	equ	__end_of_SPILCD_7SegA-_SPILCD_7SegA
	
_SPILCD_7SegA:	
	opt	stack 2
; Regs used in _SPILCD_7SegA: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	136
	
l5745:	
;nokia5100.c: 134: int i;
;nokia5100.c: 136: SPILCD_LocationSet( x + 7, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegA@x),w
	addlw	low(07h)
	movwf	(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegA@x+1),w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+(?_SPILCD_LocationSet)
	movf	(SPILCD_7SegA@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_7SegA@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	137
	
l5747:	
;nokia5100.c: 137: if( sFlag != 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_7SegA@sFlag),w
	skipz
	goto	u4460
	goto	l5761
u4460:
	line	139
	
l5749:	
;nokia5100.c: 139: for( i = 0 ; i < 10 ; i++ ){
	clrf	(SPILCD_7SegA@i)
	clrf	(SPILCD_7SegA@i+1)
	
l5751:	
	movf	(SPILCD_7SegA@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4475
	movlw	low(0Ah)
	subwf	(SPILCD_7SegA@i),w
u4475:

	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l5755
u4470:
	goto	l1337
	
l5753:	
	goto	l1337
	
l1332:	
	line	140
	
l5755:	
;nokia5100.c: 140: SPILCD_data( 0x1e );
	movlw	(01Eh)
	fcall	_SPILCD_data
	line	139
	
l5757:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegA@i),f
	skipnc
	incf	(SPILCD_7SegA@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegA@i+1),f
	
l5759:	
	movf	(SPILCD_7SegA@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4485
	movlw	low(0Ah)
	subwf	(SPILCD_7SegA@i),w
u4485:

	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l5755
u4480:
	goto	l1337
	
l1333:	
	line	142
;nokia5100.c: 141: }
;nokia5100.c: 142: } else {
	goto	l1337
	
l1331:	
	line	144
	
l5761:	
;nokia5100.c: 144: for( i = 0 ; i < 10 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SPILCD_7SegA@i)
	clrf	(SPILCD_7SegA@i+1)
	
l5763:	
	movf	(SPILCD_7SegA@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4495
	movlw	low(0Ah)
	subwf	(SPILCD_7SegA@i),w
u4495:

	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l5767
u4490:
	goto	l1337
	
l5765:	
	goto	l1337
	
l1335:	
	line	145
	
l5767:	
;nokia5100.c: 145: SPILCD_data( 0x00 );
	movlw	(0)
	fcall	_SPILCD_data
	line	144
	
l5769:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPILCD_7SegA@i),f
	skipnc
	incf	(SPILCD_7SegA@i+1),f
	movlw	high(01h)
	addwf	(SPILCD_7SegA@i+1),f
	
l5771:	
	movf	(SPILCD_7SegA@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4505
	movlw	low(0Ah)
	subwf	(SPILCD_7SegA@i),w
u4505:

	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l5767
u4500:
	goto	l1337
	
l1336:	
	goto	l1337
	line	147
	
l1334:	
	line	148
	
l1337:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_7SegA
	__end_of_SPILCD_7SegA:
;; =============== function _SPILCD_7SegA ends ============

	signat	_SPILCD_7SegA,12408
	global	_NOKIAclearScreen
psect	text1215,local,class=CODE,delta=2
global __ptext1215
__ptext1215:

;; *************** function _NOKIAclearScreen *****************
;; Defined at:
;;		line 111 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  y               2   11[BANK0 ] int 
;;  x               2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_NOKIAsetDataByAddress
;; This function is called by:
;;		_SPILCD_InitDisplay
;; This function uses a non-reentrant model
;;
psect	text1215
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	111
	global	__size_of_NOKIAclearScreen
	__size_of_NOKIAclearScreen	equ	__end_of_NOKIAclearScreen-_NOKIAclearScreen
	
_NOKIAclearScreen:	
	opt	stack 2
; Regs used in _NOKIAclearScreen: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	114
	
l5723:	
;nokia5100.c: 112: int x, y;
;nokia5100.c: 114: for( y = 0 ; y < 6 ; y++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(NOKIAclearScreen@y)
	clrf	(NOKIAclearScreen@y+1)
	
l5725:	
	movf	(NOKIAclearScreen@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4425
	movlw	low(06h)
	subwf	(NOKIAclearScreen@y),w
u4425:

	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l5729
u4420:
	goto	l1325
	
l5727:	
	goto	l1325
	
l1321:	
	line	115
	
l5729:	
;nokia5100.c: 115: for( x = 0 ; x < 84 ; x++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(NOKIAclearScreen@x)
	clrf	(NOKIAclearScreen@x+1)
	
l5731:	
	movf	(NOKIAclearScreen@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(054h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4435
	movlw	low(054h)
	subwf	(NOKIAclearScreen@x),w
u4435:

	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l5735
u4430:
	goto	l5741
	
l5733:	
	goto	l5741
	
l1323:	
	line	116
	
l5735:	
;nokia5100.c: 116: NOKIAsetDataByAddress( x, y, 0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(NOKIAclearScreen@x+1),w
	clrf	(?_NOKIAsetDataByAddress+1)
	addwf	(?_NOKIAsetDataByAddress+1)
	movf	(NOKIAclearScreen@x),w
	clrf	(?_NOKIAsetDataByAddress)
	addwf	(?_NOKIAsetDataByAddress)

	movf	(NOKIAclearScreen@y+1),w
	clrf	1+(?_NOKIAsetDataByAddress)+02h
	addwf	1+(?_NOKIAsetDataByAddress)+02h
	movf	(NOKIAclearScreen@y),w
	clrf	0+(?_NOKIAsetDataByAddress)+02h
	addwf	0+(?_NOKIAsetDataByAddress)+02h

	movlw	low(0)
	movwf	0+(?_NOKIAsetDataByAddress)+04h
	movlw	high(0)
	movwf	(0+(?_NOKIAsetDataByAddress)+04h)+1
	fcall	_NOKIAsetDataByAddress
	line	115
	
l5737:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(NOKIAclearScreen@x),f
	skipnc
	incf	(NOKIAclearScreen@x+1),f
	movlw	high(01h)
	addwf	(NOKIAclearScreen@x+1),f
	
l5739:	
	movf	(NOKIAclearScreen@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(054h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4445
	movlw	low(054h)
	subwf	(NOKIAclearScreen@x),w
u4445:

	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l5735
u4440:
	goto	l5741
	
l1324:	
	line	114
	
l5741:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(NOKIAclearScreen@y),f
	skipnc
	incf	(NOKIAclearScreen@y+1),f
	movlw	high(01h)
	addwf	(NOKIAclearScreen@y+1),f
	
l5743:	
	movf	(NOKIAclearScreen@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4455
	movlw	low(06h)
	subwf	(NOKIAclearScreen@y),w
u4455:

	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l5729
u4450:
	goto	l1325
	
l1322:	
	line	119
	
l1325:	
	return
	opt stack 0
GLOBAL	__end_of_NOKIAclearScreen
	__end_of_NOKIAclearScreen:
;; =============== function _NOKIAclearScreen ends ============

	signat	_NOKIAclearScreen,88
	global	_SPILCD_SmallColon
psect	text1216,local,class=CODE,delta=2
global __ptext1216
__ptext1216:

;; *************** function _SPILCD_SmallColon *****************
;; Defined at:
;;		line 504 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;;  y               2    9[BANK0 ] int 
;;  fDisp           2   11[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  pattern         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPILCD_LocationSet
;;		_SPILCD_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1216
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	504
	global	__size_of_SPILCD_SmallColon
	__size_of_SPILCD_SmallColon	equ	__end_of_SPILCD_SmallColon-_SPILCD_SmallColon
	
_SPILCD_SmallColon:	
	opt	stack 3
; Regs used in _SPILCD_SmallColon: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	506
	
l5717:	
;nokia5100.c: 505: unsigned char pattern;
;nokia5100.c: 506: if( fDisp ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallColon@fDisp+1),w
	iorwf	(SPILCD_SmallColon@fDisp),w
	skipnz
	goto	u4411
	goto	u4410
u4411:
	goto	l5721
u4410:
	line	507
	
l5719:	
;nokia5100.c: 507: SPILCD_LocationSet( x, y );
	movf	(SPILCD_SmallColon@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallColon@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallColon@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallColon@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	508
;nokia5100.c: 508: SPILCD_data( 0x18 );
	movlw	(018h)
	fcall	_SPILCD_data
	line	509
;nokia5100.c: 509: SPILCD_data( 0x18 );
	movlw	(018h)
	fcall	_SPILCD_data
	line	510
;nokia5100.c: 510: SPILCD_LocationSet( x, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallColon@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallColon@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallColon@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallColon@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	511
;nokia5100.c: 511: SPILCD_data( 0x06 );
	movlw	(06h)
	fcall	_SPILCD_data
	line	512
;nokia5100.c: 512: SPILCD_data( 0x06 );
	movlw	(06h)
	fcall	_SPILCD_data
	line	513
;nokia5100.c: 513: } else {
	goto	l1436
	
l1434:	
	line	514
	
l5721:	
;nokia5100.c: 514: SPILCD_LocationSet( x, y );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallColon@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallColon@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallColon@y+1),w
	clrf	1+(?_SPILCD_LocationSet)+02h
	addwf	1+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallColon@y),w
	clrf	0+(?_SPILCD_LocationSet)+02h
	addwf	0+(?_SPILCD_LocationSet)+02h

	fcall	_SPILCD_LocationSet
	line	515
;nokia5100.c: 515: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	line	516
;nokia5100.c: 516: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	line	517
;nokia5100.c: 517: SPILCD_LocationSet( x, y + 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_SmallColon@x+1),w
	clrf	(?_SPILCD_LocationSet+1)
	addwf	(?_SPILCD_LocationSet+1)
	movf	(SPILCD_SmallColon@x),w
	clrf	(?_SPILCD_LocationSet)
	addwf	(?_SPILCD_LocationSet)

	movf	(SPILCD_SmallColon@y),w
	addlw	low(01h)
	movwf	0+(?_SPILCD_LocationSet)+02h
	movf	(SPILCD_SmallColon@y+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+0+(?_SPILCD_LocationSet)+02h
	fcall	_SPILCD_LocationSet
	line	518
;nokia5100.c: 518: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	line	519
;nokia5100.c: 519: SPILCD_data( 0 );
	movlw	(0)
	fcall	_SPILCD_data
	goto	l1436
	line	520
	
l1435:	
	line	521
	
l1436:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SmallColon
	__end_of_SPILCD_SmallColon:
;; =============== function _SPILCD_SmallColon ends ============

	signat	_SPILCD_SmallColon,12408
	global	_ReadTemperatureDS18
psect	text1217,local,class=CODE,delta=2
global __ptext1217
__ptext1217:

;; *************** function _ReadTemperatureDS18 *****************
;; Defined at:
;;		line 129 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temperature     2   12[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_InitDS18
;;		_OutByteToDS18
;;		_ReadByteFromDS18
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1217
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	129
	global	__size_of_ReadTemperatureDS18
	__size_of_ReadTemperatureDS18	equ	__end_of_ReadTemperatureDS18-_ReadTemperatureDS18
	
_ReadTemperatureDS18:	
	opt	stack 3
; Regs used in _ReadTemperatureDS18: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	133
	
l5703:	
;ds18b20.c: 130: unsigned int temperature;
;ds18b20.c: 133: InitDS18();
	fcall	_InitDS18
	line	136
	
l5705:	
;ds18b20.c: 136: OutByteToDS18( 0xcc );
	movlw	(0CCh)
	fcall	_OutByteToDS18
	line	138
	
l5707:	
;ds18b20.c: 138: OutByteToDS18( 0xbe );
	movlw	(0BEh)
	fcall	_OutByteToDS18
	line	140
	
l5709:	
;ds18b20.c: 140: temperature = ReadByteFromDS18();
	fcall	_ReadByteFromDS18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadTemperatureDS18+0)+0
	clrf	(??_ReadTemperatureDS18+0)+0+1
	movf	0+(??_ReadTemperatureDS18+0)+0,w
	movwf	(ReadTemperatureDS18@temperature)
	movf	1+(??_ReadTemperatureDS18+0)+0,w
	movwf	(ReadTemperatureDS18@temperature+1)
	line	141
	
l5711:	
;ds18b20.c: 141: temperature += (ReadByteFromDS18() << 8 );
	fcall	_ReadByteFromDS18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadTemperatureDS18+0)+0
	clrf	(??_ReadTemperatureDS18+0)+0+1
	movf	(??_ReadTemperatureDS18+0)+0,w
	movwf	(??_ReadTemperatureDS18+0)+1
	clrf	(??_ReadTemperatureDS18+0)+0
	movf	0+(??_ReadTemperatureDS18+0)+0,w
	addwf	(ReadTemperatureDS18@temperature),f
	skipnc
	incf	(ReadTemperatureDS18@temperature+1),f
	movf	1+(??_ReadTemperatureDS18+0)+0,w
	addwf	(ReadTemperatureDS18@temperature+1),f
	line	143
	
l5713:	
;ds18b20.c: 143: return temperature;
	movf	(ReadTemperatureDS18@temperature+1),w
	clrf	(?_ReadTemperatureDS18+1)
	addwf	(?_ReadTemperatureDS18+1)
	movf	(ReadTemperatureDS18@temperature),w
	clrf	(?_ReadTemperatureDS18)
	addwf	(?_ReadTemperatureDS18)

	goto	l2086
	
l5715:	
	line	144
	
l2086:	
	return
	opt stack 0
GLOBAL	__end_of_ReadTemperatureDS18
	__end_of_ReadTemperatureDS18:
;; =============== function _ReadTemperatureDS18 ends ============

	signat	_ReadTemperatureDS18,90
	global	_StartTemperatureDS18
psect	text1218,local,class=CODE,delta=2
global __ptext1218
__ptext1218:

;; *************** function _StartTemperatureDS18 *****************
;; Defined at:
;;		line 118 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_InitDS18
;;		_OutByteToDS18
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1218
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	118
	global	__size_of_StartTemperatureDS18
	__size_of_StartTemperatureDS18	equ	__end_of_StartTemperatureDS18-_StartTemperatureDS18
	
_StartTemperatureDS18:	
	opt	stack 3
; Regs used in _StartTemperatureDS18: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	120
	
l5697:	
;ds18b20.c: 120: InitDS18();
	fcall	_InitDS18
	line	123
	
l5699:	
;ds18b20.c: 123: OutByteToDS18( 0xcc );
	movlw	(0CCh)
	fcall	_OutByteToDS18
	line	125
	
l5701:	
;ds18b20.c: 125: OutByteToDS18( 0x44 );
	movlw	(044h)
	fcall	_OutByteToDS18
	line	126
	
l2083:	
	return
	opt stack 0
GLOBAL	__end_of_StartTemperatureDS18
	__end_of_StartTemperatureDS18:
;; =============== function _StartTemperatureDS18 ends ============

	signat	_StartTemperatureDS18,88
	global	_ReadByteFromDS18
psect	text1219,local,class=CODE,delta=2
global __ptext1219
__ptext1219:

;; *************** function _ReadByteFromDS18 *****************
;; Defined at:
;;		line 103 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ci              1    7[BANK0 ] unsigned char 
;;  readByte        1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ReadBitFromDS18
;; This function is called by:
;;		_ReadTemperatureDS18
;; This function uses a non-reentrant model
;;
psect	text1219
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	103
	global	__size_of_ReadByteFromDS18
	__size_of_ReadByteFromDS18	equ	__end_of_ReadByteFromDS18-_ReadByteFromDS18
	
_ReadByteFromDS18:	
	opt	stack 3
; Regs used in _ReadByteFromDS18: [wreg+status,2+status,0+pclath+cstack]
	line	107
	
l5677:	
;ds18b20.c: 104: unsigned char readByte;
;ds18b20.c: 105: char ci;
;ds18b20.c: 107: readByte = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ReadByteFromDS18@readByte)
	line	108
;ds18b20.c: 108: for( ci = 0 ; ci < 8 ; ci++ ){
	clrf	(ReadByteFromDS18@ci)
	
l5679:	
	movlw	(08h)
	subwf	(ReadByteFromDS18@ci),w
	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l5683
u4380:
	goto	l5693
	
l5681:	
	goto	l5693
	
l2077:	
	line	109
	
l5683:	
;ds18b20.c: 109: readByte >>= 1;
	clrc
	rrf	(ReadByteFromDS18@readByte),f

	line	110
	
l5685:	
;ds18b20.c: 110: if( ReadBitFromDS18() ){
	fcall	_ReadBitFromDS18
	xorlw	0
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l5689
u4390:
	line	111
	
l5687:	
;ds18b20.c: 111: readByte |= 0x80;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(ReadByteFromDS18@readByte)+(7/8),(7)&7
	goto	l5689
	line	112
	
l2079:	
	line	108
	
l5689:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadByteFromDS18+0)+0
	movf	(??_ReadByteFromDS18+0)+0,w
	addwf	(ReadByteFromDS18@ci),f
	
l5691:	
	movlw	(08h)
	subwf	(ReadByteFromDS18@ci),w
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l5683
u4400:
	goto	l5693
	
l2078:	
	line	114
	
l5693:	
;ds18b20.c: 112: }
;ds18b20.c: 113: }
;ds18b20.c: 114: return readByte;
	movf	(ReadByteFromDS18@readByte),w
	goto	l2080
	
l5695:	
	line	115
	
l2080:	
	return
	opt stack 0
GLOBAL	__end_of_ReadByteFromDS18
	__end_of_ReadByteFromDS18:
;; =============== function _ReadByteFromDS18 ends ============

	signat	_ReadByteFromDS18,89
	global	_OutByteToDS18
psect	text1220,local,class=CODE,delta=2
global __ptext1220
__ptext1220:

;; *************** function _OutByteToDS18 *****************
;; Defined at:
;;		line 76 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;  byteData        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byteData        1    5[BANK0 ] unsigned char 
;;  ci              1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_OutBitToDS18
;; This function is called by:
;;		_StartTemperatureDS18
;;		_ReadTemperatureDS18
;; This function uses a non-reentrant model
;;
psect	text1220
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	76
	global	__size_of_OutByteToDS18
	__size_of_OutByteToDS18	equ	__end_of_OutByteToDS18-_OutByteToDS18
	
_OutByteToDS18:	
	opt	stack 3
; Regs used in _OutByteToDS18: [wreg+status,2+status,0+pclath+cstack]
;OutByteToDS18@byteData stored from wreg
	line	78
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(OutByteToDS18@byteData)
	
l5663:	
;ds18b20.c: 77: char ci;
;ds18b20.c: 78: for( ci = 0 ; ci < 8 ; ci++ ){
	clrf	(OutByteToDS18@ci)
	
l5665:	
	movlw	(08h)
	subwf	(OutByteToDS18@ci),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l5669
u4360:
	goto	l2071
	
l5667:	
	goto	l2071
	
l2069:	
	line	79
	
l5669:	
;ds18b20.c: 79: OutBitToDS18( byteData & 0x01 );
	movf	(OutByteToDS18@byteData),w
	andlw	01h
	fcall	_OutBitToDS18
	line	80
	
l5671:	
;ds18b20.c: 80: byteData >>= 1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(OutByteToDS18@byteData),f

	line	78
	
l5673:	
	movlw	(01h)
	movwf	(??_OutByteToDS18+0)+0
	movf	(??_OutByteToDS18+0)+0,w
	addwf	(OutByteToDS18@ci),f
	
l5675:	
	movlw	(08h)
	subwf	(OutByteToDS18@ci),w
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l5669
u4370:
	goto	l2071
	
l2070:	
	line	82
	
l2071:	
	return
	opt stack 0
GLOBAL	__end_of_OutByteToDS18
	__end_of_OutByteToDS18:
;; =============== function _OutByteToDS18 ends ============

	signat	_OutByteToDS18,4216
	global	_SPILCD_LocationSet
psect	text1221,local,class=CODE,delta=2
global __ptext1221
__ptext1221:

;; *************** function _SPILCD_LocationSet *****************
;; Defined at:
;;		line 122 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    3[BANK0 ] int 
;;  y               2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPILCD_command
;; This function is called by:
;;		_SPILCD_7SegA
;;		_SPILCD_7SegB
;;		_SPILCD_7SegC
;;		_SPILCD_7SegD
;;		_SPILCD_7SegE
;;		_SPILCD_7SegF
;;		_SPILCD_7SegG
;;		_SPILCD_7SegDP
;;		_SPILCD_LocationPutDegree
;;		_SPILCD_SmallB
;;		_SPILCD_SmallC
;;		_SPILCD_SmallAG
;;		_SPILCD_SmallD
;;		_SPILCD_SmallColon
;; This function uses a non-reentrant model
;;
psect	text1221
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	122
	global	__size_of_SPILCD_LocationSet
	__size_of_SPILCD_LocationSet	equ	__end_of_SPILCD_LocationSet-_SPILCD_LocationSet
	
_SPILCD_LocationSet:	
	opt	stack 3
; Regs used in _SPILCD_LocationSet: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	123
	
l5661:	
;nokia5100.c: 123: SPILCD_command( 0x0080 | (x & 0x007f));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationSet@x),w
	andlw	07Fh
	iorlw	080h
	fcall	_SPILCD_command
	line	124
;nokia5100.c: 124: SPILCD_command( 0x0040 | (y & 0x0007));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SPILCD_LocationSet@y),w
	andlw	07h
	iorlw	040h
	fcall	_SPILCD_command
	line	125
	
l1328:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_LocationSet
	__end_of_SPILCD_LocationSet:
;; =============== function _SPILCD_LocationSet ends ============

	signat	_SPILCD_LocationSet,8312
	global	_NOKIAsetDataByAddress
psect	text1222,local,class=CODE,delta=2
global __ptext1222
__ptext1222:

;; *************** function _NOKIAsetDataByAddress *****************
;; Defined at:
;;		line 104 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  x               2    3[BANK0 ] int 
;;  y               2    5[BANK0 ] int 
;;  data            2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPILCD_command
;;		_SPILCD_data
;; This function is called by:
;;		_NOKIAclearScreen
;; This function uses a non-reentrant model
;;
psect	text1222
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	104
	global	__size_of_NOKIAsetDataByAddress
	__size_of_NOKIAsetDataByAddress	equ	__end_of_NOKIAsetDataByAddress-_NOKIAsetDataByAddress
	
_NOKIAsetDataByAddress:	
	opt	stack 2
; Regs used in _NOKIAsetDataByAddress: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	105
	
l5659:	
;nokia5100.c: 105: SPILCD_command( 0x0080 | (x & 0x007f));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(NOKIAsetDataByAddress@x),w
	andlw	07Fh
	iorlw	080h
	fcall	_SPILCD_command
	line	106
;nokia5100.c: 106: SPILCD_command( 0x0040 | (y & 0x0007));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(NOKIAsetDataByAddress@y),w
	andlw	07h
	iorlw	040h
	fcall	_SPILCD_command
	line	107
;nokia5100.c: 107: SPILCD_data( data );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(NOKIAsetDataByAddress@data),w
	fcall	_SPILCD_data
	line	108
	
l1318:	
	return
	opt stack 0
GLOBAL	__end_of_NOKIAsetDataByAddress
	__end_of_NOKIAsetDataByAddress:
;; =============== function _NOKIAsetDataByAddress ends ============

	signat	_NOKIAsetDataByAddress,12408
	global	_SPILCD_SleepDisplay
psect	text1223,local,class=CODE,delta=2
global __ptext1223
__ptext1223:

;; *************** function _SPILCD_SleepDisplay *****************
;; Defined at:
;;		line 556 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPILCD_command
;;		_SPI_LCD_Delay10US
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1223
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	556
	global	__size_of_SPILCD_SleepDisplay
	__size_of_SPILCD_SleepDisplay	equ	__end_of_SPILCD_SleepDisplay-_SPILCD_SleepDisplay
	
_SPILCD_SleepDisplay:	
	opt	stack 4
; Regs used in _SPILCD_SleepDisplay: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	557
	
l5657:	
;nokia5100.c: 557: SPILCD_command( 0x24 );
	movlw	(024h)
	fcall	_SPILCD_command
	line	558
;nokia5100.c: 558: SPI_LCD_Delay10US( 100 );
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SPI_LCD_Delay10US)
	movlw	high(064h)
	movwf	((?_SPI_LCD_Delay10US))+1
	fcall	_SPI_LCD_Delay10US
	line	559
	
l1442:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_SleepDisplay
	__end_of_SPILCD_SleepDisplay:
;; =============== function _SPILCD_SleepDisplay ends ============

	signat	_SPILCD_SleepDisplay,88
	global	_SPILCD_Normal
psect	text1224,local,class=CODE,delta=2
global __ptext1224
__ptext1224:

;; *************** function _SPILCD_Normal *****************
;; Defined at:
;;		line 565 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPILCD_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1224
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	565
	global	__size_of_SPILCD_Normal
	__size_of_SPILCD_Normal	equ	__end_of_SPILCD_Normal-_SPILCD_Normal
	
_SPILCD_Normal:	
	opt	stack 4
; Regs used in _SPILCD_Normal: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	566
	
l5655:	
;nokia5100.c: 566: SPILCD_command( 0x0c );
	movlw	(0Ch)
	fcall	_SPILCD_command
	line	567
	
l1445:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_Normal
	__end_of_SPILCD_Normal:
;; =============== function _SPILCD_Normal ends ============

	signat	_SPILCD_Normal,88
	global	_SPILCD_Reverse
psect	text1225,local,class=CODE,delta=2
global __ptext1225
__ptext1225:

;; *************** function _SPILCD_Reverse *****************
;; Defined at:
;;		line 570 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPILCD_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1225
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	570
	global	__size_of_SPILCD_Reverse
	__size_of_SPILCD_Reverse	equ	__end_of_SPILCD_Reverse-_SPILCD_Reverse
	
_SPILCD_Reverse:	
	opt	stack 4
; Regs used in _SPILCD_Reverse: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	571
	
l5653:	
;nokia5100.c: 571: SPILCD_command( 0x0d );
	movlw	(0Dh)
	fcall	_SPILCD_command
	line	572
	
l1448:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_Reverse
	__end_of_SPILCD_Reverse:
;; =============== function _SPILCD_Reverse ends ============

	signat	_SPILCD_Reverse,88
	global	_ReadBitFromDS18
psect	text1226,local,class=CODE,delta=2
global __ptext1226
__ptext1226:

;; *************** function _ReadBitFromDS18 *****************
;; Defined at:
;;		line 85 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DS18wait10us
;; This function is called by:
;;		_ReadByteFromDS18
;; This function uses a non-reentrant model
;;
psect	text1226
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	85
	global	__size_of_ReadBitFromDS18
	__size_of_ReadBitFromDS18	equ	__end_of_ReadBitFromDS18-_ReadBitFromDS18
	
_ReadBitFromDS18:	
	opt	stack 3
; Regs used in _ReadBitFromDS18: [wreg+status,2+status,0+pclath+cstack]
	line	89
	
l5643:	
;ds18b20.c: 86: char data;
;ds18b20.c: 89: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	line	90
;ds18b20.c: 90: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	91
# 91 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
psect	text1226
	line	92
;ds18b20.c: 92: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	93
# 93 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
	line	94
# 94 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
	line	95
# 95 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
	line	96
# 96 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
psect	text1226
	line	97
	
l5645:	
;ds18b20.c: 97: data = RA4;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	movlw	1
	movwf	(??_ReadBitFromDS18+0)+0
	movf	(??_ReadBitFromDS18+0)+0,w
	movwf	(ReadBitFromDS18@data)
	line	98
	
l5647:	
;ds18b20.c: 98: DS18wait10us( 7 );
	movlw	(07h)
	fcall	_DS18wait10us
	line	99
	
l5649:	
;ds18b20.c: 99: return data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ReadBitFromDS18@data),w
	goto	l2074
	
l5651:	
	line	100
	
l2074:	
	return
	opt stack 0
GLOBAL	__end_of_ReadBitFromDS18
	__end_of_ReadBitFromDS18:
;; =============== function _ReadBitFromDS18 ends ============

	signat	_ReadBitFromDS18,89
	global	_OutBitToDS18
psect	text1227,local,class=CODE,delta=2
global __ptext1227
__ptext1227:

;; *************** function _OutBitToDS18 *****************
;; Defined at:
;;		line 61 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;  bitData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bitData         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DS18wait10us
;; This function is called by:
;;		_OutByteToDS18
;; This function uses a non-reentrant model
;;
psect	text1227
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	61
	global	__size_of_OutBitToDS18
	__size_of_OutBitToDS18	equ	__end_of_OutBitToDS18-_OutBitToDS18
	
_OutBitToDS18:	
	opt	stack 3
; Regs used in _OutBitToDS18: [wreg+status,2+status,0+pclath+cstack]
;OutBitToDS18@bitData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(OutBitToDS18@bitData)
	line	62
	
l5633:	
;ds18b20.c: 62: RA4 = 0;
	bcf	(44/8),(44)&7
	line	63
;ds18b20.c: 63: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	64
# 64 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
psect	text1227
	line	65
	
l5635:	
;ds18b20.c: 65: if( bitData == 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(OutBitToDS18@bitData),f
	skipz
	goto	u4351
	goto	u4350
u4351:
	goto	l2064
u4350:
	line	66
	
l5637:	
;ds18b20.c: 66: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	67
;ds18b20.c: 67: } else {
	goto	l5639
	
l2064:	
	line	68
;ds18b20.c: 68: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	goto	l5639
	line	69
	
l2065:	
	line	70
	
l5639:	
;ds18b20.c: 69: }
;ds18b20.c: 70: DS18wait10us( 7 );
	movlw	(07h)
	fcall	_DS18wait10us
	line	71
	
l5641:	
;ds18b20.c: 71: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	72
;ds18b20.c: 72: DS18wait10us( 1 );
	movlw	(01h)
	fcall	_DS18wait10us
	line	73
	
l2066:	
	return
	opt stack 0
GLOBAL	__end_of_OutBitToDS18
	__end_of_OutBitToDS18:
;; =============== function _OutBitToDS18 ends ============

	signat	_OutBitToDS18,4216
	global	_InitDS18
psect	text1228,local,class=CODE,delta=2
global __ptext1228
__ptext1228:

;; *************** function _InitDS18 *****************
;; Defined at:
;;		line 29 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    4[BANK0 ] int 
;;  exist           1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DS18wait10us
;; This function is called by:
;;		_StartTemperatureDS18
;;		_ReadTemperatureDS18
;; This function uses a non-reentrant model
;;
psect	text1228
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	29
	global	__size_of_InitDS18
	__size_of_InitDS18	equ	__end_of_InitDS18-_InitDS18
	
_InitDS18:	
	opt	stack 4
; Regs used in _InitDS18: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l5599:	
;ds18b20.c: 30: int i;
;ds18b20.c: 31: char exist = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(InitDS18@exist)
	line	34
;ds18b20.c: 34: RA4 = 0;
	bcf	(44/8),(44)&7
	line	35
;ds18b20.c: 35: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1068/8)^080h,(1068)&7
	line	36
	
l5601:	
;ds18b20.c: 36: DS18wait10us( 70 );
	movlw	(046h)
	fcall	_DS18wait10us
	line	37
	
l5603:	
;ds18b20.c: 37: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	38
;ds18b20.c: 38: DS18wait10us( 5 );
	movlw	(05h)
	fcall	_DS18wait10us
	line	41
	
l5605:	
;ds18b20.c: 41: for( i = 0 ; i < 70 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(InitDS18@i)
	clrf	(InitDS18@i+1)
	
l5607:	
	movf	(InitDS18@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(046h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4295
	movlw	low(046h)
	subwf	(InitDS18@i),w
u4295:

	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l2055
u4290:
	goto	l5619
	
l5609:	
	goto	l5619
	
l2055:	
	line	42
;ds18b20.c: 42: if( RA4 == 0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l5613
u4300:
	line	43
	
l5611:	
;ds18b20.c: 43: exist = 1;
	clrf	(InitDS18@exist)
	bsf	status,0
	rlf	(InitDS18@exist),f
	line	44
;ds18b20.c: 44: break;
	goto	l5619
	line	45
	
l2057:	
	line	46
	
l5613:	
;ds18b20.c: 45: }
;ds18b20.c: 46: DS18wait10us( 10 );
	movlw	(0Ah)
	fcall	_DS18wait10us
	line	41
	
l5615:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(InitDS18@i),f
	skipnc
	incf	(InitDS18@i+1),f
	movlw	high(01h)
	addwf	(InitDS18@i+1),f
	
l5617:	
	movf	(InitDS18@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(046h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4315
	movlw	low(046h)
	subwf	(InitDS18@i),w
u4315:

	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l2055
u4310:
	goto	l5619
	
l2056:	
	line	50
	
l5619:	
;ds18b20.c: 47: }
;ds18b20.c: 50: for( i = 0 ; i < 100 ; i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(InitDS18@i)
	clrf	(InitDS18@i+1)
	
l5621:	
	movf	(InitDS18@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4325
	movlw	low(064h)
	subwf	(InitDS18@i),w
u4325:

	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l2058
u4320:
	goto	l2061
	
l5623:	
	goto	l2061
	
l2058:	
	line	51
;ds18b20.c: 51: if( RA4 == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l5627
u4330:
	goto	l2061
	line	52
	
l5625:	
;ds18b20.c: 52: break;
	goto	l2061
	line	53
	
l2060:	
	line	54
	
l5627:	
;ds18b20.c: 53: }
;ds18b20.c: 54: DS18wait10us( 10 );
	movlw	(0Ah)
	fcall	_DS18wait10us
	line	50
	
l5629:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(InitDS18@i),f
	skipnc
	incf	(InitDS18@i+1),f
	movlw	high(01h)
	addwf	(InitDS18@i+1),f
	
l5631:	
	movf	(InitDS18@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4345
	movlw	low(064h)
	subwf	(InitDS18@i),w
u4345:

	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l2058
u4340:
	goto	l2061
	
l2059:	
	line	58
;ds18b20.c: 55: }
;ds18b20.c: 57: return exist;
;	Return value of _InitDS18 is never used
	
l2061:	
	return
	opt stack 0
GLOBAL	__end_of_InitDS18
	__end_of_InitDS18:
;; =============== function _InitDS18 ends ============

	signat	_InitDS18,89
	global	_SPILCD_data
psect	text1229,local,class=CODE,delta=2
global __ptext1229
__ptext1229:

;; *************** function _SPILCD_data *****************
;; Defined at:
;;		line 96 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  work            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  work            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SPI_LCD_Delay10US
;;		_WriteSPI
;; This function is called by:
;;		_NOKIAsetDataByAddress
;;		_SPILCD_7SegA
;;		_SPILCD_7SegB
;;		_SPILCD_7SegC
;;		_SPILCD_7SegD
;;		_SPILCD_7SegE
;;		_SPILCD_7SegF
;;		_SPILCD_7SegG
;;		_SPILCD_7SegDP
;;		_SPILCD_LocationPutDegree
;;		_SPILCD_SmallB
;;		_SPILCD_SmallC
;;		_SPILCD_SmallAG
;;		_SPILCD_SmallD
;;		_SPILCD_SmallColon
;; This function uses a non-reentrant model
;;
psect	text1229
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	96
	global	__size_of_SPILCD_data
	__size_of_SPILCD_data	equ	__end_of_SPILCD_data-_SPILCD_data
	
_SPILCD_data:	
	opt	stack 4
; Regs used in _SPILCD_data: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;SPILCD_data@work stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SPILCD_data@work)
	line	97
	
l5593:	
;nokia5100.c: 97: SPI_LCD_Delay10US( 10 );
	movlw	low(0Ah)
	movwf	(?_SPI_LCD_Delay10US)
	movlw	high(0Ah)
	movwf	((?_SPI_LCD_Delay10US))+1
	fcall	_SPI_LCD_Delay10US
	line	98
	
l5595:	
;nokia5100.c: 98: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	100
	
l5597:	
;nokia5100.c: 100: WriteSPI( work );
	movf	(SPILCD_data@work),w
	fcall	_WriteSPI
	line	101
	
l1315:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_data
	__end_of_SPILCD_data:
;; =============== function _SPILCD_data ends ============

	signat	_SPILCD_data,4216
	global	_SPILCD_command
psect	text1230,local,class=CODE,delta=2
global __ptext1230
__ptext1230:

;; *************** function _SPILCD_command *****************
;; Defined at:
;;		line 85 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  work            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  work            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SPI_LCD_Delay10US
;;		_WriteSPI
;; This function is called by:
;;		_NOKIAsetDataByAddress
;;		_SPILCD_LocationSet
;;		_SPILCD_InitDisplay
;;		_SPILCD_SleepDisplay
;;		_SPILCD_Normal
;;		_SPILCD_Reverse
;; This function uses a non-reentrant model
;;
psect	text1230
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	85
	global	__size_of_SPILCD_command
	__size_of_SPILCD_command	equ	__end_of_SPILCD_command-_SPILCD_command
	
_SPILCD_command:	
	opt	stack 4
; Regs used in _SPILCD_command: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;SPILCD_command@work stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SPILCD_command@work)
	line	86
	
l5587:	
;nokia5100.c: 86: SPI_LCD_Delay10US( 50 );
	movlw	low(032h)
	movwf	(?_SPI_LCD_Delay10US)
	movlw	high(032h)
	movwf	((?_SPI_LCD_Delay10US))+1
	fcall	_SPI_LCD_Delay10US
	line	87
	
l5589:	
;nokia5100.c: 87: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	89
	
l5591:	
;nokia5100.c: 89: WriteSPI( work );
	movf	(SPILCD_command@work),w
	fcall	_WriteSPI
	line	90
	
l1312:	
	return
	opt stack 0
GLOBAL	__end_of_SPILCD_command
	__end_of_SPILCD_command:
;; =============== function _SPILCD_command ends ============

	signat	_SPILCD_command,4216
	global	___awmod
psect	text1231,local,class=CODE,delta=2
global __ptext1231
__ptext1231:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1231
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5553:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4201
	goto	u4200
u4201:
	goto	l5557
u4200:
	line	10
	
l5555:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5557
	line	12
	
l2901:	
	line	13
	
l5557:	
	btfss	(___awmod@divisor+1),7
	goto	u4211
	goto	u4210
u4211:
	goto	l5561
u4210:
	line	14
	
l5559:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5561
	
l2902:	
	line	15
	
l5561:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4221
	goto	u4220
u4221:
	goto	l5579
u4220:
	line	16
	
l5563:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5569
	
l2905:	
	line	18
	
l5565:	
	movlw	01h
	
u4235:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4235
	line	19
	
l5567:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5569
	line	20
	
l2904:	
	line	17
	
l5569:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l5565
u4240:
	goto	l5571
	
l2906:	
	goto	l5571
	line	21
	
l2907:	
	line	22
	
l5571:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4255
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4255:
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l5575
u4250:
	line	23
	
l5573:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l5575
	
l2908:	
	line	24
	
l5575:	
	movlw	01h
	
u4265:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4265
	line	25
	
l5577:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l5571
u4270:
	goto	l5579
	
l2909:	
	goto	l5579
	line	26
	
l2903:	
	line	27
	
l5579:	
	movf	(___awmod@sign),w
	skipz
	goto	u4280
	goto	l5583
u4280:
	line	28
	
l5581:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5583
	
l2910:	
	line	29
	
l5583:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2911
	
l5585:	
	line	30
	
l2911:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text1232,local,class=CODE,delta=2
global __ptext1232
__ptext1232:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   13[BANK0 ] int 
;;  sign            1   12[BANK0 ] unsigned char 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1232
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4801:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3221
	goto	u3220
u3221:
	goto	l4805
u3220:
	line	11
	
l4803:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4805
	line	13
	
l2833:	
	line	14
	
l4805:	
	btfss	(___awdiv@dividend+1),7
	goto	u3231
	goto	u3230
u3231:
	goto	l4811
u3230:
	line	15
	
l4807:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4809:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l4811
	line	17
	
l2834:	
	line	18
	
l4811:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l4813:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3241
	goto	u3240
u3241:
	goto	l4833
u3240:
	line	20
	
l4815:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4821
	
l2837:	
	line	22
	
l4817:	
	movlw	01h
	
u3255:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3255
	line	23
	
l4819:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4821
	line	24
	
l2836:	
	line	21
	
l4821:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l4817
u3260:
	goto	l4823
	
l2838:	
	goto	l4823
	line	25
	
l2839:	
	line	26
	
l4823:	
	movlw	01h
	
u3275:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3275
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3285
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4829
u3280:
	line	28
	
l4825:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4827:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4829
	line	30
	
l2840:	
	line	31
	
l4829:	
	movlw	01h
	
u3295:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3295
	line	32
	
l4831:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l4823
u3300:
	goto	l4833
	
l2841:	
	goto	l4833
	line	33
	
l2835:	
	line	34
	
l4833:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3310
	goto	l4837
u3310:
	line	35
	
l4835:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4837
	
l2842:	
	line	36
	
l4837:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2843
	
l4839:	
	line	37
	
l2843:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text1233,local,class=CODE,delta=2
global __ptext1233
__ptext1233:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1233
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l5543
	line	6
	
l2693:	
	line	7
	
l5543:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l2694
u4160:
	line	8
	
l5545:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l2694:	
	line	9
	movlw	01h
	
u4175:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4175
	line	10
	
l5547:	
	movlw	01h
	
u4185:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4185
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l5543
u4190:
	goto	l5549
	
l2695:	
	line	12
	
l5549:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2696
	
l5551:	
	line	13
	
l2696:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_DS18wait10us
psect	text1234,local,class=CODE,delta=2
global __ptext1234
__ptext1234:

;; *************** function _DS18wait10us *****************
;; Defined at:
;;		line 17 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
;; Parameters:    Size  Location     Type
;;  loop            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  loop            1    1[BANK0 ] unsigned char 
;;  ci              1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitDS18
;;		_OutBitToDS18
;;		_ReadBitFromDS18
;; This function uses a non-reentrant model
;;
psect	text1234
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
	line	17
	global	__size_of_DS18wait10us
	__size_of_DS18wait10us	equ	__end_of_DS18wait10us-_DS18wait10us
	
_DS18wait10us:	
	opt	stack 3
; Regs used in _DS18wait10us: [wreg+status,2+status,0]
;DS18wait10us@loop stored from wreg
	line	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DS18wait10us@loop)
	
l5535:	
;ds18b20.c: 18: unsigned char ci;
;ds18b20.c: 20: for( ci = 0 ; ci < loop ; ci++ ){
	clrf	(DS18wait10us@ci)
	goto	l5539
	
l2050:	
	line	21
# 21 "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\ds18b20.c"
clrwdt ;#
psect	text1234
	line	20
	
l5537:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_DS18wait10us+0)+0
	movf	(??_DS18wait10us+0)+0,w
	addwf	(DS18wait10us@ci),f
	goto	l5539
	
l2049:	
	
l5539:	
	movf	(DS18wait10us@loop),w
	subwf	(DS18wait10us@ci),w
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l2050
u4150:
	goto	l2052
	
l2051:	
	line	23
	
l2052:	
	return
	opt stack 0
GLOBAL	__end_of_DS18wait10us
	__end_of_DS18wait10us:
;; =============== function _DS18wait10us ends ============

	signat	_DS18wait10us,4216
	global	_WriteSPI
psect	text1235,local,class=CODE,delta=2
global __ptext1235
__ptext1235:

;; *************** function _WriteSPI *****************
;; Defined at:
;;		line 70 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPILCD_command
;;		_SPILCD_data
;; This function uses a non-reentrant model
;;
psect	text1235
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	70
	global	__size_of_WriteSPI
	__size_of_WriteSPI	equ	__end_of_WriteSPI-_WriteSPI
	
_WriteSPI:	
	opt	stack 4
; Regs used in _WriteSPI: [wreg]
;WriteSPI@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(WriteSPI@data)
	line	72
	
l5529:	
;nokia5100.c: 72: while( spiEmpty == 0 )
	goto	l1306
	
l1307:	
	line	73
;nokia5100.c: 73: ;
	
l1306:	
	line	72
	movf	(_spiEmpty),w
	skipz
	goto	u4140
	goto	l1306
u4140:
	
l1308:	
	line	76
;nokia5100.c: 76: RA7 = 0;
	bcf	(47/8),(47)&7
	line	77
	
l5531:	
;nokia5100.c: 77: SSPBUF = data;
	movf	(WriteSPI@data),w
	movwf	(19)	;volatile
	line	78
	
l5533:	
;nokia5100.c: 78: spiEmpty = 0;
	clrf	(_spiEmpty)
	line	79
	
l1309:	
	return
	opt stack 0
GLOBAL	__end_of_WriteSPI
	__end_of_WriteSPI:
;; =============== function _WriteSPI ends ============

	signat	_WriteSPI,4216
	global	_SPI_LCD_Delay10US
psect	text1236,local,class=CODE,delta=2
global __ptext1236
__ptext1236:

;; *************** function _SPI_LCD_Delay10US *****************
;; Defined at:
;;		line 63 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
;; Parameters:    Size  Location     Type
;;  us              2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SPILCD_command
;;		_SPILCD_data
;;		_SPILCD_InitDisplay
;;		_SPILCD_SleepDisplay
;; This function uses a non-reentrant model
;;
psect	text1236
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\nokia5100.c"
	line	63
	global	__size_of_SPI_LCD_Delay10US
	__size_of_SPI_LCD_Delay10US	equ	__end_of_SPI_LCD_Delay10US-_SPI_LCD_Delay10US
	
_SPI_LCD_Delay10US:	
	opt	stack 5
; Regs used in _SPI_LCD_Delay10US: [wreg+btemp+1]
	line	64
	
l5525:	
;nokia5100.c: 64: while( --us > 0 ){
	goto	l5527
	
l1301:	
	goto	l5527
	line	66
	
l1300:	
	line	64
	
l5527:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SPI_LCD_Delay10US@us),f
	skipnc
	incf	(SPI_LCD_Delay10US@us+1),f
	movlw	high(-1)
	addwf	(SPI_LCD_Delay10US@us+1),f
	movf	((SPI_LCD_Delay10US@us+1)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4135
	movlw	low(01h)
	subwf	((SPI_LCD_Delay10US@us)),w
u4135:

	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l5527
u4130:
	goto	l1303
	
l1302:	
	line	67
	
l1303:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_LCD_Delay10US
	__end_of_SPI_LCD_Delay10US:
;; =============== function _SPI_LCD_Delay10US ends ============

	signat	_SPI_LCD_Delay10US,4216
	global	_intr
psect	text1237,local,class=CODE,delta=2
global __ptext1237
__ptext1237:

;; *************** function _intr *****************
;; Defined at:
;;		line 249 in file "C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1237
	file	"C:\Users\yamamo-s\Documents\GitHub\Themo16F88\source\main.c"
	line	249
	global	__size_of_intr
	__size_of_intr	equ	__end_of_intr-_intr
	
_intr:	
	opt	stack 1
; Regs used in _intr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_intr+1)
	movf	fsr0,w
	movwf	(??_intr+2)
	movf	pclath,w
	movwf	(??_intr+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_intr+4)
	ljmp	_intr
psect	text1237
	line	252
	
i1l4737:	
;main.c: 250: volatile static int intr_counter;
;main.c: 252: if ( INT0IF == 1 ) {
	btfss	(89/8),(89)&7
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l685
u306_20:
	line	255
	
i1l4739:	
;main.c: 255: INT0IF = 0;
	bcf	(89/8),(89)&7
	line	261
	
i1l685:	
	line	263
;main.c: 261: }
;main.c: 263: if ( SSPIF == 1 ){
	btfss	(99/8),(99)&7
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l4749
u307_20:
	line	265
	
i1l4741:	
;main.c: 265: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	266
	
i1l4743:	
;main.c: 266: dummy = SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_intr+0)+0
	movf	(??_intr+0)+0,w
	movwf	(_dummy)
	line	267
	
i1l4745:	
;main.c: 267: spiEmpty = 1;
	clrf	(_spiEmpty)
	bsf	status,0
	rlf	(_spiEmpty),f
	line	268
	
i1l4747:	
;main.c: 268: RA7 = 1;
	bsf	(47/8),(47)&7
	goto	i1l4749
	line	269
	
i1l686:	
	line	272
	
i1l4749:	
;main.c: 269: }
;main.c: 272: if ( TMR0IF == 1 ) {
	btfss	(90/8),(90)&7
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l687
u308_20:
	line	273
	
i1l4751:	
;main.c: 273: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	275
	
i1l687:	
	line	281
;main.c: 275: }
;main.c: 281: if ( PIR1bits.TMR1IF == 1 ) {
	btfss	(12),0	;volatile
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l4767
u309_20:
	line	282
	
i1l4753:	
;main.c: 282: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	285
	
i1l4755:	
;main.c: 285: TMR1H = 0x9e;
	movlw	(09Eh)
	movwf	(15)	;volatile
	line	286
;main.c: 286: TMR1L = 0x5a;
	movlw	(05Ah)
	movwf	(14)	;volatile
	line	287
	
i1l4757:	
;main.c: 287: if( ++timer_count == 10 ){
	movlw	(01h)
	movwf	(??_intr+0)+0
	movf	(??_intr+0)+0,w
	addwf	(_timer_count),f
	movf	((_timer_count)),w
	xorlw	0Ah
	skipz
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l4761
u310_20:
	line	288
	
i1l4759:	
;main.c: 288: timer_int = 1;
	bsf	(_timer_int/8),(_timer_int)&7
	line	289
;main.c: 289: timer_count = 0;
	clrf	(_timer_count)
	line	290
;main.c: 290: } else if( timer_count == 7 ){
	goto	i1l690
	
i1l689:	
	
i1l4761:	
	movf	(_timer_count),w
	xorlw	07h
	skipz
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l690
u311_20:
	line	291
	
i1l4763:	
;main.c: 291: timer_07 = 1;
	movlw	low(01h)
	movwf	(_timer_07)
	movlw	high(01h)
	movwf	((_timer_07))+1
	goto	i1l690
	line	292
	
i1l691:	
	line	294
	
i1l690:	
;main.c: 292: }
;main.c: 294: if( timer_count == 3 ){
	movf	(_timer_count),w
	xorlw	03h
	skipz
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l4767
u312_20:
	line	295
	
i1l4765:	
;main.c: 295: T2CON = 0;
	clrf	(18)	;volatile
	goto	i1l4767
	line	296
	
i1l692:	
	goto	i1l4767
	line	297
	
i1l688:	
	line	303
	
i1l4767:	
;main.c: 296: }
;main.c: 297: }
;main.c: 303: if ( PIR1bits.TMR2IF == 1 ) {
	btfss	(12),1	;volatile
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l693
u313_20:
	line	304
	
i1l4769:	
;main.c: 304: PIR1bits.TMR2IF = 0;
	bcf	(12),1	;volatile
	line	319
	
i1l693:	
	line	324
;main.c: 319: }
;main.c: 324: if( PIR1bits.ADIF == 1 ){
	btfss	(12),6	;volatile
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l695
u314_20:
	line	325
	
i1l4771:	
;main.c: 325: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	goto	i1l695
	line	326
	
i1l694:	
	line	330
;main.c: 326: }
;main.c: 328: return;
	
i1l695:	
	movf	(??_intr+4),w
	movwf	btemp+1
	movf	(??_intr+3),w
	movwf	pclath
	movf	(??_intr+2),w
	movwf	fsr0
	swapf	(??_intr+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_intr
	__end_of_intr:
;; =============== function _intr ends ============

	signat	_intr,88
psect	text1238,local,class=CODE,delta=2
global __ptext1238
__ptext1238:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
