TRG	= sim
SRC	= main.cpp useful.cpp countcode.cpp pipelinehazard.cpp
ARG	= gcc.trace.csv

include ../Makefile.defs

.PHONY: run
run: $(TRG)
	./$< $(ARG)
