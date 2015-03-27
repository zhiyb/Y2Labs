# http://www.nongnu.org/avr-libc/user-manual/group__demo__project.html
# Modified by zhiyb (Yubo Zhi)

# Subdirectories
define inc_subdir
DIR	= $(1)
include $(1)/Makefile
SRC	+= $$(NSRC:%=$$(DIR)/%)
LIB	+= $$(NLIB)
LIBS	+= $$(NLIBS)
DEFS	+= $$(NDEFS)
INCDIRS	+= $$(NINCDIRS:%=$$(DIR)/%)
endef

$(foreach dir,$(SUBDIRS),$(eval $(call inc_subdir,$(dir))))

LIBDIRS	= $(LIB:%=$(LIBDIR)/lib%)
LIBFILES	= $(foreach lib,$(LIB),$(lib:%=$(LIBDIR)/lib%)/$(lib:%=lib%.a))

export DEFS
DEFS	+=
#DEFS	+= -fpack-struct -fshort-enums
#DEFS	+= -funsigned-bitfields -funsigned-char
NEWLIBS	= $(LIBDIRS:%=-L%) $(LIB:%=-l%)
INCS	+= $(LIBDIRS:%=-I%)
INCS	+= $(INCDIRS:%=-I%)

OBJS	= $(subst .S,.o,$(subst .c,.o,$(SRC:.cpp=.o)))
DEPS	= $(OBJS:.o=.d)

AS	= avr-gcc
CC	= avr-gcc
CXX	= avr-g++
LD	= avr-gcc
OBJCOPY	= avr-objcopy
OBJDUMP	= avr-objdump
SIZE	= avr-size
AVRDUDE	= avrdude
REMOVE	= rm -f

FLAGS	+= -g -Wall -Werror
FLAGS	+= $(OPTIMIZE)
FLAGS	+= -mmcu=$(MCU_TARGET)

# Override is only needed by avr-lib build system.
override ASFLAGS	= $(DEFS) $(INCS) $(FLAGS)
override CFLAGS		= $(DEFS) $(INCS) $(FLAGS)
override CXXFLAGS	= $(DEFS) $(INCS) $(FLAGS)
override LDFLAGS	= $(FLAGS) -Wl,-Map,$(PRG).map

# Rules
all: elf lst text eeprom
PHONYTRGS	+= elf lst map

CLEAN_FILES	+= $(OBJS)
$(PRG).elf: $(OBJS) $(LIBFILES)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(NEWLIBS) $(LIBS)
	$(SIZE) $@

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

%.o: %.S
	$(AS) $(ASFLAGS) -c -o $@ $<

%.lst: %.elf
	$(OBJDUMP) -h -S $< > $@

# Libraries
$(LIBFILES): %:
	$(MAKE) -C $(dir $@)

# Dependency
CLEAN_FILES	+= $(DEPS) $(DEPS:%=%.*)
-include $(DEPS)

%.d: %.c
	@set -e; rm -f $@; \
	$(CC) -MM $(CFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

%.d: %.cpp
	@set -e; rm -f $@; \
	$(CXX) -MM $(CXXFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

# Clean up
CLEAN_DIRS	+= $(LIBDIRS:%=clean-%)
.PHONY: $(CLEAN_DIRS)
$(CLEAN_DIRS):
	$(MAKE) -C $(@:clean-%=%) clean

.PHONY: clean
clean: $(CLEAN_DIRS)
	$(REMOVE) $(CLEAN_FILES)

# Rules for building the .text rom images
# Only hex is needed; Others: bin, srec
.PHONY: text
text: hex
PHONYTRGS	+= hex bin srec

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

%.srec: %.elf
	$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@

# Rules for building the .eeprom rom images
# Only ehex is needed; Others: ebin, esrec
.PHONY: eeprom
eeprom:	ehex
EEPFILE ?= $(PRG)_eeprom.hex

EEPTRGS	+= ehex ebin esrec
CLEAN_FILES	+= $(EEPTRGS:e%=$(PRG)_eeprom.%)
.PHONY: $(EEPTRGS)
$(EEPTRGS): e%: $(PRG)_eeprom.%

%_eeprom.hex: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O ihex $< $@

%_eeprom.srec: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O srec $< $@

%_eeprom.bin: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O binary $< $@

# For program MCU with avrdude.
AVROPS	= flash readflash eep readeep fuse flashall
.PHONY: $(AVROPS) $(AVROPS:%=avr-%) knock

$(AVROPS): %: avr-%
	echo $(shell date '+%Y-%m-%d %H:%M:%S'), $(PRGER), $(MCU_TARGET), $@, $(PWD), $(PRG).hex >> $(LOG)

avr-flash: hex
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U flash:w:$(PRG).hex

avr-flashall: hex ehex
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U flash:w:$(PRG).hex -U eeprom:w:$(EEPFILE)

avr-readflash:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U flash:r:$(PRG).hex:i

avr-eep: ehex
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U eeprom:w:$(EEPFILE)

avr-readeep:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U eeprom:r:$(EEPFILE):i

avr-fuse:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET) -U efuse:w:$(EFUSE):m -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

knock:
	$(AVRDUDE) -c $(PRGER) -p $(MCU_TARGET)

# PHONY targets
.PHONY: $(PHONYTRGS)
$(PHONYTRGS): %: $(PRG).%
CLEAN_FILES	+= $(PHONYTRGS:%=$(PRG).%)
