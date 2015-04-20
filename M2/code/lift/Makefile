# Modified by zhiyb (Yubo Zhi)

TRG	= lift
SRC	= lift.c lift_code.c
SUBDIRS	= ../rtos
INCDIRS	= ../inc

PRGER		= c232hm
MCU_TARGET	= atmega162
MCU_FREQ	= 8000000

# FreeRTOS related
RTOSPORT	= ATMega162

LIBS	+= -lm

EFUSE	= 0xFF
HFUSE	= 0xD9
LFUSE	= 0x62

include ../Makefile.defs
