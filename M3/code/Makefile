TRG	= sim
SRC	= main.cpp useful.cpp countcode.cpp
SRC	+= pipelinehazard.cpp branchhazard.cpp cache.cpp
#ARG	= gcc.trace.csv
ARG	= abs.mixed.trace.csv

#ARG	= "X:\simulation\hmmer.trace.csv"
#ARG	= "X:\simulation\mcf.trace.csv"
#ARG	= "X:\simulation\gcc.trace.csv"
#ARG	= "X:\simulation\libquantum.trace.csv"
#ARG	= "X:\simulation\abs.mixed.trace.csv"

include ../Makefile.defs

.PHONY: run
run: $(TRG)
	./$< $(ARG)
