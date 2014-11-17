# http://www.nongnu.org/avr-libc/user-manual/group__demo__project.html
# Modified by zhiyb (Yubo Zhi)

PRG	= Adder
OBJ	= main.o ascii.o tft.o
MCU_TARGET	= atmega644p
OPTIMIZE	= -Os
VERSION	= 0.0.1
EXT = cpp

DEFS	= -DF_CPU=12000000
LIBS	=

PRGER	= usbasp

EFUSE	= 0xFF
HFUSE	= 0x9C
LFUSE	= 0xE7

LOG	= ~/.make_avr.log

TARFLAGS	= -jc
ARCHIVE	= $(PRG)-$(VERSION).tar.bz2

# You should not have to change anything below here.

CC	= avr-gcc

# Override is only needed by avr-lib build system.

override CFLAGS	= -g -Werror -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) $(DEFS)
override LDFLAGS	= -Wl,-Map,$(PRG).map

OBJCOPY	= avr-objcopy
OBJDUMP	= avr-objdump
SIZE	= avr-size

all: $(PRG).elf lst text eeprom

$(PRG).elf: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(SIZE) $@

%.o: %.$(EXT)
	$(CC) $(CFLAGS) -c -o $@ $<

# Dependency:

-include $(OBJ:.o=.d)

%.d: %.$(EXT)
	@set -e; rm -f $@; \
	$(CC) -MM $(CFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

clean:
	rm -rf *.o *.d *.d.* $(PRG).elf *.eps *.png *.pdf *.bak
	rm -rf *.lst *.map $(EXTRA_CLEAN_FILES)

lst: $(PRG).lst

%.lst: %.elf
	$(OBJDUMP) -h -S $< > $@

# Rules for building the .text rom images

# Only hex is needed; Others: bin, srec
text: hex

EXTRA_CLEAN_FILES	+= $(PRG).hex

hex: $(PRG).hex
bin: $(PRG).bin
srec: $(PRG).srec

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

%.srec: %.elf
	$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@

# Rules for building the .eeprom rom images

# Only ehex is needed; Others: ebin, esrec
eeprom:	ehex

EXTRA_CLEAN_FILES	+= $(PRG)_eeprom.hex

ehex: $(PRG)_eeprom.hex
ebin: $(PRG)_eeprom.bin
esrec: $(PRG)_eeprom.srec

%_eeprom.hex: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O ihex $< $@
#	|| { echo empty $@ not generated; exit 0; }

%_eeprom.srec: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O srec $< $@
#	|| { echo empty $@ not generated; exit 0; }

%_eeprom.bin: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O binary $< $@
#	|| { echo empty $@ not generated; exit 0; }

# For program MCU with avrdude.

AVRDUDE	= avrdude
EEPFILE := $(PRG)_eeprom.hex

flash: hex
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U flash:w:$(PRG).hex
	echo $(shell date '+%Y-%m-%d %H:%M:%S'), $(PRGER), $(MCU_TARGET), flash, $(PWD), $(PRG).hex >> $(LOG)

eep: ehex
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U eeprom:w:$(EEPFILE)
	echo $(shell date '+%Y-%m-%d %H:%M:%S'), $(PRGER), $(MCU_TARGET), eep, $(PWD), $(PRG)_eeprom.hex >> $(LOG)

readeep:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U eeprom:r:$(EEPFILE)
	echo $(shell date '+%Y-%m-%d %H:%M:%S'), $(PRGER), $(MCU_TARGET), readeep, $(PWD), $(PRG)_eeprom.hex >> $(LOG)

fuse:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U efuse:w:$(EFUSE):m \
		-U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m
	echo $(shell date '+%Y-%m-%d %H:%M:%S'), $(PRGER), $(MCU_TARGET), fuse, $(EFUSE), $(HFUSE), $(LFUSE), $(PWD) >> $(LOG)

knock:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET)

# Public: source code & hex target archive

TAR	= tar
EXTRA_CLEAN_FILES	+= $(ARCHIVE)

archive: hex ehex
	$(TAR) $(TARFLAGS) -f $(ARCHIVE) $(OBJ:.o=.$(EXT)) *.h $(PRG).hex $(PRG)_eeprom.hex Makefile

# Every thing below here is used by avr-libc's build system and can be ignored
# by the casual user.

FIG2DEV	= fig2dev

dox: eps png pdf

eps: $(PRG).eps
png: $(PRG).png
pdf: $(PRG).pdf

%.eps: %.fig
	$(FIG2DEV) -L eps $< $@

%.pdf: %.fig
	$(FIG2DEV) -L pdf $< $@

%.png: %.fig
	$(FIG2DEV) -L png $< $@
