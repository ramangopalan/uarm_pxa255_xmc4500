################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hempl/src/newlib/devman.c \
../hempl/src/newlib/genstd.c \
../hempl/src/newlib/stdtcp.c \
../hempl/src/newlib/stubs.c 

OBJS += \
./hempl/src/newlib/devman.o \
./hempl/src/newlib/genstd.o \
./hempl/src/newlib/stdtcp.o \
./hempl/src/newlib/stubs.o 

C_DEPS += \
./hempl/src/newlib/devman.d \
./hempl/src/newlib/genstd.d \
./hempl/src/newlib/stdtcp.d \
./hempl/src/newlib/stubs.d 


# Each subdirectory must supply rules for building sources it contributes
hempl/src/newlib/%.o: ../hempl/src/newlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/hempl/inc" -I"$(PROJECT_LOC)/hempl/inc/newlib" -I"$(PROJECT_LOC)/hempl/src/platform/xmc4000" -I"$(PROJECT_LOC)/Libraries" -I"$(PROJECT_LOC)/hempl/src/iv" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

