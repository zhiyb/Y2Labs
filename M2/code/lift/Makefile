# Modified by zhiyb (Yubo Zhi)

TRG	= lift
SRC	= lift.c lift_code.c util.c
SUBDIRS	= ../rtos
INCDIRS	= ../inc

PRGER		= usbasp
MCU_TARGET	= atmega162
MCU_FREQ	= 8000000

# FreeRTOS related
RTOSPORT	= ATMega162

LIBS	+= -lm

EFUSE	= 0xFF
HFUSE	= 0x9C
LFUSE	= 0xE7

include ../Makefile.defs
