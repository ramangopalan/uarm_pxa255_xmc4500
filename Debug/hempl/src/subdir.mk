################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hempl/src/buf.c \
../hempl/src/common.c \
../hempl/src/common_fs.c \
../hempl/src/common_tmr.c \
../hempl/src/common_uart.c \
../hempl/src/dlmalloc.c \
../hempl/src/elua_adc.c \
../hempl/src/elua_int.c \
../hempl/src/linenoise.c \
../hempl/src/mmcfs.c \
../hempl/src/salloc.c \
../hempl/src/term.c \
../hempl/src/xmodem.c 

OBJS += \
./hempl/src/buf.o \
./hempl/src/common.o \
./hempl/src/common_fs.o \
./hempl/src/common_tmr.o \
./hempl/src/common_uart.o \
./hempl/src/dlmalloc.o \
./hempl/src/elua_adc.o \
./hempl/src/elua_int.o \
./hempl/src/linenoise.o \
./hempl/src/mmcfs.o \
./hempl/src/salloc.o \
./hempl/src/term.o \
./hempl/src/xmodem.o 

C_DEPS += \
./hempl/src/buf.d \
./hempl/src/common.d \
./hempl/src/common_fs.d \
./hempl/src/common_tmr.d \
./hempl/src/common_uart.d \
./hempl/src/dlmalloc.d \
./hempl/src/elua_adc.d \
./hempl/src/elua_int.d \
./hempl/src/linenoise.d \
./hempl/src/mmcfs.d \
./hempl/src/salloc.d \
./hempl/src/term.d \
./hempl/src/xmodem.d 


# Each subdirectory must supply rules for building sources it contributes
hempl/src/%.o: ../hempl/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/hempl/inc" -I"$(PROJECT_LOC)/hempl/inc/newlib" -I"$(PROJECT_LOC)/hempl/src/platform/xmc4000" -I"$(PROJECT_LOC)/Libraries" -I"$(PROJECT_LOC)/hempl/src/iv" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

