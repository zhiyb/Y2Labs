TRG	= Sequencer
SRC	= main.cpp

#DEFS	= -DTEST_ALL

include ../Makefile.defs

vec:	$(TRG)_vec.xml
CLEAN_FILES	+= $(TRG)_vec.xml

$(TRG)_vec.xml:	$(TRG)
	./$(TRG) > $@
