# Modified by zhiyb (Yubo Zhi)

TRG	= lift
SRC	= lift.c lift_code.c
LIBDIR	= ../lib
SUBDIRS	= ../../rtos
INCDIRS	= ../inc

PRGER		= usbasp
MCU_TARGET	= atmega644p
MCU_FREQ	= 12000000

# FreeRTOS related
RTOSPORT	= ATMega644P

LIBS	+= -lm

EFUSE	= 0xFF
HFUSE	= 0x9C
LFUSE	= 0xE7

include ../../Makefile.defs
