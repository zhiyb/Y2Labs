TRG	= Decoder
SRC	= main.cpp

include ../Makefile.defs

vec:	$(TRG)_vec.xml
CLEAN_FILES	+= $(TRG)_vec.xml

$(TRG)_vec.xml:	$(TRG)
	./$(TRG) > $@
