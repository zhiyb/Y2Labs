# Modified by zhiyb (Yubo Zhi)

PRG	:= inttest
SRC	:= inttest.c
LIB	:= 
LIBDIR	:= ../lib
VERSION	:= 0.0.1

PRGER	= usbasp
MCU_TARGET	= atmega162
OPTIMIZE	= -Os

DEFS	+= -DF_CPU=12000000
#DEFS	+= -DTFT_VERTICALSCROLLING
LIBS	+= -lm
INCS	+= -I. -I../inc

EFUSE	= 0xFF
HFUSE	= 0x9C
LFUSE	= 0xE7

LOG	= ~/.make_avr.log

include ../Makefile.inc
