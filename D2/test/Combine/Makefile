TRG	= Combine
SRC	= main.cpp

include ../Makefile.defs

vec:	$(TRG).vec
CLEAN_FILES	+= $(TRG).vec

$(TRG).vec:	$(TRG)
	rm -f $@
	./$(TRG) ../*/*.vec > $@
