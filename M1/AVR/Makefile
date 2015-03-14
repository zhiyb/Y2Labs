# Modified by zhiyb (Yubo Zhi)

PRG	:= EXM
SRC	:= main.c
LIB	:= 
LIBDIR	:= ../lib
VERSION	:= 0.0.1

PRGER	= c232hm
MCU_TARGET	= atmega162
OPTIMIZE	= -Os

DEFS	+= -DF_CPU=8000000
LIBS	+= -lm
INCS	+= -I.

EFUSE	= 0xFF
HFUSE	= 0xD9
LFUSE	= 0xE2

LOG	= ~/.make_avr.log

include Makefile.inc
