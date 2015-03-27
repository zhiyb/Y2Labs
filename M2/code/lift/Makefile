# Modified by zhiyb (Yubo Zhi)

PRG	= lift
SRC	= lift.c lift_code.c util.c
SUBDIRS	= ../rtos
INCDIRS	= ../inc
VERSION	= 0.0.1

PRGER	= usbasp
MCU_TARGET	= atmega162
OPTIMIZE	= -Os

# FreeRTOS related
DEFS	+= -DGCC_MEGA_AVR_162

DEFS	+= -DF_CPU=8000000
LIBS	+= -lm
INCS	+= 

EFUSE	= 0xFF
HFUSE	= 0x9C
LFUSE	= 0xE7

LOG	= ~/.make_avr.log

include ../Makefile.inc
