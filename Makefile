#################################################################
# AUTO GENERATE AT 2025-09-17 18:00:47 BY unify_builder v3.10.4.0
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
	-rm -fv ./build/STM32F1/*.elf ./build/STM32F1/*.axf ./build/STM32F1/*.out
	-rm -fv ./build/STM32F1/*.hex ./build/STM32F1/*.bin ./build/STM32F1/*.s19
	-rm -rfv ./build/STM32F1/.obj

prebuild:
	@printf "$(COLOR_INF)prebuild ...$(COLOR_END)\n"
	@echo nothing to prebuild.

./build/STM32F1/.obj/examples/stm32:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/examples/stm32/app.d
./build/STM32F1/.obj/examples/stm32/app.o: ./examples/stm32/app.c Makefile | ./build/STM32F1/.obj/examples/stm32
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/examples/stm32/app.o -MMD ./examples/stm32/app.c

./build/STM32F1/.obj/include/os_config:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/include/os_config/os_app_hooks.d
./build/STM32F1/.obj/include/os_config/os_app_hooks.o: ./include/os_config/os_app_hooks.c Makefile | ./build/STM32F1/.obj/include/os_config
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/include/os_config/os_app_hooks.o -MMD ./include/os_config/os_app_hooks.c

./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.d
./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o: ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.s Makefile | ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o -MMD ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.s

./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.d
./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o: ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.c Makefile | ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o -MMD ./libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.c

./build/STM32F1/.obj/libraries/uC-CPU-1.32.01:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/cpu_core.d
./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o: ./libraries/uC-CPU-1.32.01/cpu_core.c Makefile | ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o -MMD ./libraries/uC-CPU-1.32.01/cpu_core.c

./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o: ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.S Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o -MMD ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.S

./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o: ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o -MMD ./libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.c

./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o: ./libraries/uC-OS3-3.08.02/Source/os_cfg_app.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_cfg_app.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o: ./libraries/uC-OS3-3.08.02/Source/os_core.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_core.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o: ./libraries/uC-OS3-3.08.02/Source/os_dbg.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_dbg.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o: ./libraries/uC-OS3-3.08.02/Source/os_flag.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_flag.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o: ./libraries/uC-OS3-3.08.02/Source/os_mem.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_mem.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o: ./libraries/uC-OS3-3.08.02/Source/os_msg.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_msg.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o: ./libraries/uC-OS3-3.08.02/Source/os_mutex.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_mutex.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o: ./libraries/uC-OS3-3.08.02/Source/os_prio.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_prio.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o: ./libraries/uC-OS3-3.08.02/Source/os_q.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_q.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o: ./libraries/uC-OS3-3.08.02/Source/os_sem.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_sem.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o: ./libraries/uC-OS3-3.08.02/Source/os_stat.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_stat.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o: ./libraries/uC-OS3-3.08.02/Source/os_task.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_task.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o: ./libraries/uC-OS3-3.08.02/Source/os_tick.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_tick.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o: ./libraries/uC-OS3-3.08.02/Source/os_time.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_time.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o: ./libraries/uC-OS3-3.08.02/Source/os_tmr.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_tmr.c

-include ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.d
./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o: ./libraries/uC-OS3-3.08.02/Source/os_var.c Makefile | ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o -MMD ./libraries/uC-OS3-3.08.02/Source/os_var.c

./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.d
./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o: ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o -MMD ./source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.c

./build/STM32F1/.obj/source/board/stm32f1/Src:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/source/board/stm32f1/Src/gpio.d
./build/STM32F1/.obj/source/board/stm32f1/Src/gpio.o: ./source/board/stm32f1/Src/gpio.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Src/gpio.o -MMD ./source/board/stm32f1/Src/gpio.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Src/main.d
./build/STM32F1/.obj/source/board/stm32f1/Src/main.o: ./source/board/stm32f1/Src/main.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Src/main.o -MMD ./source/board/stm32f1/Src/main.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Src/rtc.d
./build/STM32F1/.obj/source/board/stm32f1/Src/rtc.o: ./source/board/stm32f1/Src/rtc.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Src/rtc.o -MMD ./source/board/stm32f1/Src/rtc.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Src/stm32f1xx_it.d
./build/STM32F1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o: ./source/board/stm32f1/Src/stm32f1xx_it.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o -MMD ./source/board/stm32f1/Src/stm32f1xx_it.c

-include ./build/STM32F1/.obj/source/board/stm32f1/Src/system_stm32f1xx.d
./build/STM32F1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o: ./source/board/stm32f1/Src/system_stm32f1xx.c Makefile | ./build/STM32F1/.obj/source/board/stm32f1/Src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o -MMD ./source/board/stm32f1/Src/system_stm32f1xx.c

./build/STM32F1/.obj/source/board/stm32f1:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/source/board/stm32f1/startup_stm32f103xb.d
./build/STM32F1/.obj/source/board/stm32f1/startup_stm32f103xb.o: ./source/board/stm32f1/startup_stm32f103xb.s Makefile | ./build/STM32F1/.obj/source/board/stm32f1
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -mcpu=cortex-m3 -g --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/board/stm32f1/startup_stm32f103xb.o -MMD ./source/board/stm32f1/startup_stm32f103xb.s

./build/STM32F1/.obj/source:
	$(Q)mkdir -p $@
-include ./build/STM32F1/.obj/source/bsp_cpu.d
./build/STM32F1/.obj/source/bsp_cpu.o: ./source/bsp_cpu.c Makefile | ./build/STM32F1/.obj/source
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -Iinclude -Iinclude/os_config -Isource -Isource/board/stm32f1/Drivers/CMSIS/Include -Isource/board/stm32f1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc -Isource/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -Isource/board/stm32f1/Inc -Ilibraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-OS3-3.08.02/Source -Ilibraries/uC-CPU-1.32.01 -Ilibraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU -Ilibraries/uC-LIB-1.39.01 -D"CPU_CFG_NVIC_PRIO_BITS=4" -D"USE_FULL_LL_DRIVER" -D"STM32F103xB" -D"HSE_VALUE=8000000" -D"HSE_STARTUP_TIMEOUT=100" -D"LSE_STARTUP_TIMEOUT=5000" -D"LSE_VALUE=32768" -D"HSI_VALUE=8000000" -D"LSI_VALUE=40000" -D"VDD_VALUE=3300" -D"PREFETCH_ENABLE=1" -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -funsigned-char --specs=nosys.specs --specs=nano.specs -o ./build/STM32F1/.obj/source/bsp_cpu.o -MMD ./source/bsp_cpu.c

objs = ./build/STM32F1/.obj/examples/stm32/app.o ./build/STM32F1/.obj/include/os_config/os_app_hooks.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o ./build/STM32F1/.obj/source/board/stm32f1/Src/gpio.o ./build/STM32F1/.obj/source/board/stm32f1/Src/main.o ./build/STM32F1/.obj/source/board/stm32f1/Src/rtc.o ./build/STM32F1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o ./build/STM32F1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o ./build/STM32F1/.obj/source/board/stm32f1/startup_stm32f103xb.o ./build/STM32F1/.obj/source/bsp_cpu.o
elf: $(objs) Makefile
	@printf "$(COLOR_INF)linking ./build/STM32F1/stm32_ucos-iii-template.elf ...$(COLOR_END)\n"
	$(CC) -mthumb -mcpu=cortex-m3 -T source/board/STM32F1/linker.ld -Wl,--gc-sections -Wl,--print-memory-usage --specs=nosys.specs --specs=nano.specs -Wl,-Map=./build/STM32F1/stm32_ucos-iii-template.map -o ./build/STM32F1/stm32_ucos-iii-template.elf ./build/STM32F1/.obj/examples/stm32/app.o ./build/STM32F1/.obj/include/os_config/os_app_hooks.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/GNU/cpu_a.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/ARM-Cortex-M/ARMv7-M/cpu_c.o ./build/STM32F1/.obj/libraries/uC-CPU-1.32.01/cpu_core.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/GNU/os_cpu_a.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Ports/ARM-Cortex-M/ARMv7-M/os_cpu_c.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_cfg_app.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_core.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_dbg.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_flag.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mem.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_msg.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_mutex.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_prio.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_q.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_sem.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_stat.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_task.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tick.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_time.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_tmr.o ./build/STM32F1/.obj/libraries/uC-OS3-3.08.02/Source/os_var.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_exti.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_gpio.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_pwr.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rcc.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_rtc.o ./build/STM32F1/.obj/source/board/stm32f1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_ll_utils.o ./build/STM32F1/.obj/source/board/stm32f1/Src/gpio.o ./build/STM32F1/.obj/source/board/stm32f1/Src/main.o ./build/STM32F1/.obj/source/board/stm32f1/Src/rtc.o ./build/STM32F1/.obj/source/board/stm32f1/Src/stm32f1xx_it.o ./build/STM32F1/.obj/source/board/stm32f1/Src/system_stm32f1xx.o ./build/STM32F1/.obj/source/board/stm32f1/startup_stm32f103xb.o ./build/STM32F1/.obj/source/bsp_cpu.o -lm

bin: elf Makefile
	@printf "$(COLOR_INF)output binary files ...$(COLOR_END)\n"
	$(COMPILER_DIR)/bin/arm-none-eabi-objcopy$(EXE) -O ihex ./build/STM32F1/stm32_ucos-iii-template.elf ./build/STM32F1/stm32_ucos-iii-template.hex

postbuild: bin
	@printf "$(COLOR_INF)postbuild ...$(COLOR_END)\n"
	@echo nothing to postbuild.

