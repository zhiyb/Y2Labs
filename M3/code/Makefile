TRG	= sim
SRC	= main.cpp useful.cpp countcode.cpp
SRC	+= pipelinehazard.cpp branchhazard.cpp
ARG	= gcc.trace.csv

include ../Makefile.defs

.PHONY: run
run: $(TRG)
	./$< $(ARG)
