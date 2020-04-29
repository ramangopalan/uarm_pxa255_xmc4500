################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../hempl/src/platform/cortex_utils.s 

C_SRCS += \
../hempl/src/platform/arm_cortex_interrupts.c 

OBJS += \
./hempl/src/platform/arm_cortex_interrupts.o \
./hempl/src/platform/cortex_utils.o 

S_DEPS += \
./hempl/src/platform/cortex_utils.d 

C_DEPS += \
./hempl/src/platform/arm_cortex_interrupts.d 


# Each subdirectory must supply rules for building sources it contributes
hempl/src/platform/%.o: ../hempl/src/platform/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/hempl/inc" -I"$(PROJECT_LOC)/hempl/inc/newlib" -I"$(PROJECT_LOC)/hempl/src/platform/xmc4000" -I"$(PROJECT_LOC)/Libraries" -I"$(PROJECT_LOC)/hempl/src/iv" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
hempl/src/platform/%.o: ../hempl/src/platform/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC Assembler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -x assembler-with-cpp -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -Wall -Wa,-adhlns="$@.lst" -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

