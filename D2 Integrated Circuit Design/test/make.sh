#! /bin/bash
SUBDIR=(Adder Sequencer Encoder Decoder Combine)
for ((i=0;i<${#SUBDIR[@]};i++)); do
	(cd ${SUBDIR[i]} && make -j4 $@)
done
