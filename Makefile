#################################################################
# AUTO GENERATE AT 2025-09-18 11:30:45 BY unify_builder v3.10.4.0
#################################################################

# Usage:
#  - Build:	make prebuild && make COMPILER_DIR=<dir path>
#  - Clean:	make clean

# Targets Dependences Chain:
#  prebuild
#  all -> postbuild -> bin -> elf -> *.o

# Use 'make V=1' to see the full commands
ifdef V
	Q = 
else
	Q = @
endif

COMPILER_DIR ?= /C/Users/admin/.eide/tools/gcc_arm
ifneq ($(COMPILER_DIR),)
	_PATH_TMP:=$(COMPILER_DIR)/bin:$(PATH)
	export PATH=$(_PATH_TMP)
endif

EXE?=
CC=$(COMPILER_DIR)/bin/arm-none-eabi-gcc$(EXE)
AS=$(COMPILER_DIR)/bin/arm-none-eabi-gcc$(EXE)
CXX=$(COMPILER_DIR)/bin/arm-none-eabi-g++$(EXE)
LD=$(COMPILER_DIR)/bin/arm-none-eabi-gcc$(EXE)
AR=$(COMPILER_DIR)/bin/arm-none-eabi-ar$(EXE)

###########################
# targets
###########################

COLOR_END=\033[0m
COLOR_ERR=\033[31;1m
COLOR_WRN=\033[33;1m
COLOR_SUC=\033[32;1m
COLOR_INF=\033[34;1m

.PHONY : all postbuild bin elf prebuild clean

all: postbuild
	@echo ==========
	@printf "$(COLOR_SUC)ALL DONE.$(COLOR_END)\n"
	@echo ==========

clean:
	-rm -fv ./build/stm32f1/*.elf ./build/stm32f1/*.axf ./build/stm32f1/*.out
	-rm -fv ./build/stm32f1/*.hex ./build/stm32f1/*.bin ./build/stm32f1/*.s19
	-rm -rfv ./build/stm32f1/.obj

prebuild:
	@printf "$(COLOR_INF)prebuild ...$(COLOR_END)\n"
	@echo nothing to prebuild.

./build/stm32f1/.obj/examples/stm32:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/examples/stm32/app.d
./build/stm32f1/.obj/examples/stm32/app.o: ./examples/stm32/app.c Makefile | ./build/stm32f1/.obj/examples/stm32
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/examples/stm32/app.o -MMD ./examples/stm32/app.c

./build/stm32f1/.obj/include/os_config:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/include/os_config/os_app_hooks.d
./build/stm32f1/.obj/include/os_config/os_app_hooks.o: ./include/os_config/os_app_hooks.c Makefile | ./build/stm32f1/.obj/include/os_config
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/include/os_config/os_app_hooks.o -MMD ./include/os_config/os_app_hooks.c

./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.d
./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o: ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.s Makefile | ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o -MMD ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.s

./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.d
./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o: ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.c Makefile | ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o -MMD ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.c

./build/stm32f1/.obj/libraries/uC-CPU-1.32.01:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/cpu_core.d
./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o: ./libraries/uC-CPU-1.32.01/cpu_core.c Makefile | ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o -MMD ./libraries/uC-CPU-1.32.01/cpu_core.c

./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o: ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.S Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o -MMD ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.S

./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o: ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o -MMD ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.c

./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o: ./libraries/uC-OS3-3.08.02/Source/os_cfg_app.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_cfg_app.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o: ./libraries/uC-OS3-3.08.02/Source/os_core.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_core.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o: ./libraries/uC-OS3-3.08.02/Source/os_dbg.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_dbg.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o: ./libraries/uC-OS3-3.08.02/Source/os_flag.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_flag.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o: ./libraries/uC-OS3-3.08.02/Source/os_mem.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_mem.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o: ./libraries/uC-OS3-3.08.02/Source/os_msg.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_msg.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o: ./libraries/uC-OS3-3.08.02/Source/os_mutex.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_mutex.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o: ./libraries/uC-OS3-3.08.02/Source/os_prio.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_prio.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o: ./libraries/uC-OS3-3.08.02/Source/os_q.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_q.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o: ./libraries/uC-OS3-3.08.02/Source/os_sem.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_sem.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o: ./libraries/uC-OS3-3.08.02/Source/os_stat.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_stat.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o: ./libraries/uC-OS3-3.08.02/Source/os_task.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_task.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o: ./libraries/uC-OS3-3.08.02/Source/os_tick.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_tick.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o: ./libraries/uC-OS3-3.08.02/Source/os_time.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_time.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o: ./libraries/uC-OS3-3.08.02/Source/os_tmr.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_tmr.c

-include ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.d
./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o: ./libraries/uC-OS3-3.08.02/Source/os_var.c Makefile | ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_var.c

./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.d
./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c

./build/stm32f1/.obj/source/board/stm32f1/Src:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/source/board/stm32f1/Src/gpio.d
./build/stm32f1/.obj/source/board/stm32f1/Src/gpio.o: ./source/board/stm32f1/Src/gpio.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Src/gpio.o -MMD ./source/board/stm32f1/Src/gpio.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Src/main.d
./build/stm32f1/.obj/source/board/stm32f1/Src/main.o: ./source/board/stm32f1/Src/main.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Src/main.o -MMD ./source/board/stm32f1/Src/main.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Src/rtc.d
./build/stm32f1/.obj/source/board/stm32f1/Src/rtc.o: ./source/board/stm32f1/Src/rtc.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Src/rtc.o -MMD ./source/board/stm32f1/Src/rtc.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Src/stm32f1xx_it.d
./build/stm32f1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o: ./source/board/stm32f1/Src/stm32f1xx_it.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o -MMD ./source/board/stm32f1/Src/stm32f1xx_it.c

-include ./build/stm32f1/.obj/source/board/stm32f1/Src/system_stm32f1xx.d
./build/stm32f1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o: ./source/board/stm32f1/Src/system_stm32f1xx.c Makefile | ./build/stm32f1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o -MMD ./source/board/stm32f1/Src/system_stm32f1xx.c

./build/stm32f1/.obj/source/board/stm32f1:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/source/board/stm32f1/startup_stm32f103xb.d
./build/stm32f1/.obj/source/board/stm32f1/startup_stm32f103xb.o: ./source/board/stm32f1/startup_stm32f103xb.s Makefile | ./build/stm32f1/.obj/source/board/stm32f1
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/board/stm32f1/startup_stm32f103xb.o -MMD ./source/board/stm32f1/startup_stm32f103xb.s

./build/stm32f1/.obj/source:
	$(Q)mkdir -p $@
-include ./build/stm32f1/.obj/source/bsp_cpu.d
./build/stm32f1/.obj/source/bsp_cpu.o: ./source/bsp_cpu.c Makefile | ./build/stm32f1/.obj/source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/stm32f1/.obj/source/bsp_cpu.o -MMD ./source/bsp_cpu.c

objs = ./build/stm32f1/.obj/examples/stm32/app.o ./build/stm32f1/.obj/include/os_config/os_app_hooks.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o ./build/stm32f1/.obj/source/board/stm32f1/Src/gpio.o ./build/stm32f1/.obj/source/board/stm32f1/Src/main.o ./build/stm32f1/.obj/source/board/stm32f1/Src/rtc.o ./build/stm32f1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o ./build/stm32f1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o ./build/stm32f1/.obj/source/board/stm32f1/startup_stm32f103xb.o ./build/stm32f1/.obj/source/bsp_cpu.o
elf: $(objs) Makefile
	@printf "$(COLOR_INF)linking ./build/stm32f1/stm32_ucos-iii-template.elf ...$(COLOR_END)\n"
	$(CC) -mthumb -mcpu=cortex-m3 -T source/board/stm32f1/linker.ld -Wl,--gc-sections -Wl,--print-memory-usage --specs=nosys.specs --specs=nano.specs -Wl,-Map=./build/stm32f1/stm32_ucos-iii-template.map -o ./build/stm32f1/stm32_ucos-iii-template.elf ./build/stm32f1/.obj/examples/stm32/app.o ./build/stm32f1/.obj/include/os_config/os_app_hooks.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o ./build/stm32f1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o ./build/stm32f1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o ./build/stm32f1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o ./build/stm32f1/.obj/source/board/stm32f1/Src/gpio.o ./build/stm32f1/.obj/source/board/stm32f1/Src/main.o ./build/stm32f1/.obj/source/board/stm32f1/Src/rtc.o ./build/stm32f1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o ./build/stm32f1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o ./build/stm32f1/.obj/source/board/stm32f1/startup_stm32f103xb.o ./build/stm32f1/.obj/source/bsp_cpu.o -lm

bin: elf Makefile
	@printf "$(COLOR_INF)output binary files ...$(COLOR_END)\n"
	$(COMPILER_DIR)/bin/arm-none-eabi-objcopy$(EXE) -O ihex ./build/stm32f1/stm32_ucos-iii-template.elf ./build/stm32f1/stm32_ucos-iii-template.hex

postbuild: bin
	@printf "$(COLOR_INF)postbuild ...$(COLOR_END)\n"
	@echo nothing to postbuild.

