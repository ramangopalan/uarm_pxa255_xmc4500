################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hempl/src/uARM/CPU.c \
../hempl/src/uARM/MMU.c \
../hempl/src/uARM/RAM.c \
../hempl/src/uARM/SoC.c \
../hempl/src/uARM/callout_RAM.c \
../hempl/src/uARM/cp14.c \
../hempl/src/uARM/cp15.c \
../hempl/src/uARM/dcache.c \
../hempl/src/uARM/icache.c \
../hempl/src/uARM/main_pc.c \
../hempl/src/uARM/math64.c \
../hempl/src/uARM/mem.c \
../hempl/src/uARM/pxa255_DMA.c \
../hempl/src/uARM/pxa255_DSP.c \
../hempl/src/uARM/pxa255_GPIO.c \
../hempl/src/uARM/pxa255_IC.c \
../hempl/src/uARM/pxa255_LCD.c \
../hempl/src/uARM/pxa255_PwrClk.c \
../hempl/src/uARM/pxa255_RTC.c \
../hempl/src/uARM/pxa255_TIMR.c \
../hempl/src/uARM/pxa255_UART.c \
../hempl/src/uARM/rt.c 

OBJS += \
./hempl/src/uARM/CPU.o \
./hempl/src/uARM/MMU.o \
./hempl/src/uARM/RAM.o \
./hempl/src/uARM/SoC.o \
./hempl/src/uARM/callout_RAM.o \
./hempl/src/uARM/cp14.o \
./hempl/src/uARM/cp15.o \
./hempl/src/uARM/dcache.o \
./hempl/src/uARM/icache.o \
./hempl/src/uARM/main_pc.o \
./hempl/src/uARM/math64.o \
./hempl/src/uARM/mem.o \
./hempl/src/uARM/pxa255_DMA.o \
./hempl/src/uARM/pxa255_DSP.o \
./hempl/src/uARM/pxa255_GPIO.o \
./hempl/src/uARM/pxa255_IC.o \
./hempl/src/uARM/pxa255_LCD.o \
./hempl/src/uARM/pxa255_PwrClk.o \
./hempl/src/uARM/pxa255_RTC.o \
./hempl/src/uARM/pxa255_TIMR.o \
./hempl/src/uARM/pxa255_UART.o \
./hempl/src/uARM/rt.o 

C_DEPS += \
./hempl/src/uARM/CPU.d \
./hempl/src/uARM/MMU.d \
./hempl/src/uARM/RAM.d \
./hempl/src/uARM/SoC.d \
./hempl/src/uARM/callout_RAM.d \
./hempl/src/uARM/cp14.d \
./hempl/src/uARM/cp15.d \
./hempl/src/uARM/dcache.d \
./hempl/src/uARM/icache.d \
./hempl/src/uARM/main_pc.d \
./hempl/src/uARM/math64.d \
./hempl/src/uARM/mem.d \
./hempl/src/uARM/pxa255_DMA.d \
./hempl/src/uARM/pxa255_DSP.d \
./hempl/src/uARM/pxa255_GPIO.d \
./hempl/src/uARM/pxa255_IC.d \
./hempl/src/uARM/pxa255_LCD.d \
./hempl/src/uARM/pxa255_PwrClk.d \
./hempl/src/uARM/pxa255_RTC.d \
./hempl/src/uARM/pxa255_TIMR.d \
./hempl/src/uARM/pxa255_UART.d \
./hempl/src/uARM/rt.d 


# Each subdirectory must supply rules for building sources it contributes
hempl/src/uARM/%.o: ../hempl/src/uARM/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/hempl/inc" -I"$(PROJECT_LOC)/hempl/inc/newlib" -I"$(PROJECT_LOC)/hempl/src/platform/xmc4000" -I"$(PROJECT_LOC)/Libraries" -I"$(PROJECT_LOC)/hempl/src/iv" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

