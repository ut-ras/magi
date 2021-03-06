# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

firmwares := sender receiver

SUFFIXES := .
Debug ?= @
GCC_BIN := 
PROJECT := frdm-magi
OBJECTS := $(addprefix bin/, XBeeLib/FrameBuffer/FrameBuffer.o XBeeLib/FrameHandlers/FH_AtCmdResp.o XBeeLib/FrameHandlers/FH_IoDataSample802.o XBeeLib/FrameHandlers/FH_IoDataSampleZB.o XBeeLib/FrameHandlers/FH_ModemStatus.o XBeeLib/FrameHandlers/FH_RxPacket802.o XBeeLib/FrameHandlers/FH_RxPacketZB.o XBeeLib/FrameHandlers/FrameHandler.o XBeeLib/Frames/802_Frames.o XBeeLib/Frames/ApiFrame.o XBeeLib/Frames/AtCmdFrame.o XBeeLib/Frames/ZigbeeFrames.o XBeeLib/IO/IOSample802.o XBeeLib/IO/IOSampleZB.o XBeeLib/RemoteXBee/RemoteXBee.o XBeeLib/Utils/Utils.o XBeeLib/XBee/AtCommands.o XBeeLib/XBee/RadioConfig.o XBeeLib/XBee/XBee.o XBeeLib/XBee802/XBee802.o XBeeLib/XBeeZB/XBeeZB.o XBeeLib/DigiLogger/DigiLogger.o XBeeLib/DigiLogger/DigiLoggerMbedSerial.o)
OBJECTS +=  $(patsubst %.cpp,bin/%.o,$(wildcard mbed-rtos/rtos/*.cpp))
OBJECTS +=  $(patsubst %.c,bin/%.o,$(wildcard mbed-rtos/rtos/*.c))
OBJECTS +=  $(patsubst %.c,bin/%.o,$(wildcard mbed-rtos/rtx/TARGET_CORTEX_M/*.c))
OBJECTS +=  $(patsubst %.S,bin/%.o,$(wildcard mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/*.S))
OBJECTS +=  $(patsubst %.cpp,bin/%.o,$(wildcard periph/*.cpp))
OBJECTS +=  bin/radio/radio.o
OBJECTS +=  bin/L3GD20/L3GD20.o
OBJECTS +=  bin/LSM303DLHC/LSM303DLHC.o
SYS_OBJECTS =  mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/board.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/cmsis_nvic.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/mbed_overrides.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/retarget.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/startup_MK64F12.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/system_MK64F12.o
INCLUDE_PATHS = -I. -I./XBeeLib -I./XBeeLib/FrameBuffer -I./XBeeLib/FrameHandlers -I./XBeeLib/Frames -I./XBeeLib/IO -I./XBeeLib/RemoteXBee -I./XBeeLib/Utils -I./XBeeLib/XBee -I./XBeeLib/XBee802 -I./XBeeLib/XBeeZB -I./XBeeLib/DigiLogger -I./mbed -I./mbed/TARGET_K64F -I./mbed/TARGET_K64F/TARGET_Freescale -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/common -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/common/phyksz8081 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/clock -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/enet -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/interrupt -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/pit -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/pit/common -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/adc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/can -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dac -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dmamux -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dspi -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/edma -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/enet -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/flextimer -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/gpio -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/i2c -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/llwu -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/lptmr -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/lpuart -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/mcg -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/mpu -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/osc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pdb -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pit -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pmc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/port -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/rcm -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/rtc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sai -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sdhc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sim -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/smc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/uart -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/wdog -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/utilities -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/MK64F12 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/TARGET_FRDM -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/MK64F12 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/device -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/device/MK64F12 -I./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM  -I./mbed-rtos/rtos -I./mbed-rtos/rtx/TARGET_CORTEX_M/
INCLUDE_PATHS += -I./radio
INCLUDE_PATHS += -I./L3GD20
INCLUDE_PATHS += -I./LSM303DLHC
INCLUDE_PATHS += -I./periph
LIBRARY_PATHS = -L./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM 
LIBRARIES = -lmbed 
LINKER_SCRIPT = ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/K64FN1M0xxx12.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 

ifeq ($(HARDFP),1)
	FLOAT_ABI = hard
else
	FLOAT_ABI = softfp
endif


CPU = -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=$(FLOAT_ABI) 
CC_FLAGS = $(CPU) -c -g -fno-common -fmessage-length=0 -Wall -Wextra -fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer -MMD -MP
CC_SYMBOLS = -DTARGET_RTOS_M4_M7 -DTARGET_FF_ARDUINO -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DTARGET_KPSDK_MCUS -DTARGET_KPSDK_CODE -DTARGET_FRDM -DTARGET_CORTEX_M -DCPU_MK64FN1M0VMD12 -D__FPU_PRESENT=1 -DMBED_BUILD_TIMESTAMP=1456084230.65 -DTARGET_Freescale -DTARGET_M4 -D__MBED__=1 -DTARGET_K64F -DTARGET_LIKE_CORTEX_M4 -D__CORTEX_M4 -DFSL_RTOS_MBED -DTARGET_MCU_K64F -DARM_MATH_CM4 -DTARGET_LIKE_MBED 

LD_FLAGS = $(CPU) -Wl,--gc-sections --specs=nano.specs -u _printf_float -u _scanf_float -Wl,--wrap,main -Wl,-Map=$(PROJECT).map,--cref
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys

$(eval $(shell [ -d XBeeLib ] || hg clone https://developer.mbed.org/teams/Digi-International-Inc/code/XBeeLib/ > /dev/null 2>/dev/null))
$(eval $(shell [ -d XBeeLib/DigiLogger ] || hg clone https://developer.mbed.org/teams/Digi-International-Inc/code/DigiLogger/ XBeeLib/DigiLogger > /dev/null 2> /dev/null))
$(eval $(shell [ -d mbed-rtos ] || hg clone https://developer.mbed.org/users/mbed_official/code/mbed-rtos/ mbed-rtos > /dev/null 2> /dev/null))

ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif

.PHONY: all clean lst size sender receiver flash-all

all:  $(firmwares) size
flash-all: all
	$(Debug)./flash-boards.py bin/${PROJECT}-*.bin

clean:
	rm -fr bin


bin/%.o: %.asm
	$(Debug)echo AS $<
	$(Debug)[ -d $(dir $@) ] || mkdir -p $(dir $@)
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<
bin/%.o: %.s
	$(Debug)echo AS $<
	$(Debug)[ -d $(dir $@) ] || mkdir -p $(dir $@)
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<
bin/%.o: %.S
	$(Debug)echo AS $<
	$(Debug)[ -d $(dir $@) ] || mkdir -p $(dir $@)
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<

bin/%.o: %.c
	$(Debug)echo CC $<
	$(Debug)[ -d $(dir $@) ] || mkdir -p $(dir $@)
	$(Debug)$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) -std=gnu99   $(INCLUDE_PATHS) -o $@ $<

bin/%.o: %.cpp
	$(Debug)echo C++ $<
	$(Debug)[ -d $(dir $@) ] || mkdir -p $(dir $@)
	$(Debug)$(CPP) $(CC_FLAGS) $(CC_SYMBOLS) -std=gnu++98 -fno-rtti $(INCLUDE_PATHS) -o $@ $<

define target-template =
bin/$(PROJECT)-$(1).elf: $(OBJECTS) $(SYS_OBJECTS) $(patsubst %.cpp,bin/%.o,$(wildcard $(1)/*.cpp))
	$(Debug)echo LD $$@
	$(Debug)$(LD) $(LD_FLAGS) -T$(LINKER_SCRIPT) $(LIBRARY_PATHS) -o $$@ $$^ $(LIBRARIES) $(LD_SYS_LIBS) $(LIBRARIES) $(LD_SYS_LIBS)
.PHONY: flash-$(1)
flash-$(1): bin/$(PROJECT)-$(1).bin
	$(Debug)./flash-boards.py bin/$(PROJECT)-$(1).bin
$(1) : bin/$(PROJECT)-$(1).bin
endef
$(foreach way,$(firmwares),$(eval $(call target-template,$(way))))


bin/%.bin: bin/%.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJCOPY) -O binary $< $@

bin/%.hex: bin/%.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJCOPY) -O ihex $< $@

bin/%.lst: bin/%.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJDUMP) -Sdh $< > $@

lst: bin/$(PROJECT)-receiver.lst bin/$(PROJECT)-sender.lst

size: bin/$(PROJECT)-receiver.elf bin/$(PROJECT)-sender.elf
	$(Debug)$(SIZE) $^

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d) $(Objects-sender:.o=.d) $(Objects-receiver:.o=.d)
-include $(DEPS)
