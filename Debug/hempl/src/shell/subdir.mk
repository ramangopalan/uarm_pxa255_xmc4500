################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hempl/src/shell/shell.c \
../hempl/src/shell/shell_adv_cp_mv.c \
../hempl/src/shell/shell_adv_rm.c \
../hempl/src/shell/shell_cat.c \
../hempl/src/shell/shell_help.c \
../hempl/src/shell/shell_iv.c \
../hempl/src/shell/shell_ls.c \
../hempl/src/shell/shell_mkdir.c \
../hempl/src/shell/shell_recv.c \
../hempl/src/shell/shell_uarm.c \
../hempl/src/shell/shell_ver.c \
../hempl/src/shell/shell_wofmt.c 

OBJS += \
./hempl/src/shell/shell.o \
./hempl/src/shell/shell_adv_cp_mv.o \
./hempl/src/shell/shell_adv_rm.o \
./hempl/src/shell/shell_cat.o \
./hempl/src/shell/shell_help.o \
./hempl/src/shell/shell_iv.o \
./hempl/src/shell/shell_ls.o \
./hempl/src/shell/shell_mkdir.o \
./hempl/src/shell/shell_recv.o \
./hempl/src/shell/shell_uarm.o \
./hempl/src/shell/shell_ver.o \
./hempl/src/shell/shell_wofmt.o 

C_DEPS += \
./hempl/src/shell/shell.d \
./hempl/src/shell/shell_adv_cp_mv.d \
./hempl/src/shell/shell_adv_rm.d \
./hempl/src/shell/shell_cat.d \
./hempl/src/shell/shell_help.d \
./hempl/src/shell/shell_iv.d \
./hempl/src/shell/shell_ls.d \
./hempl/src/shell/shell_mkdir.d \
./hempl/src/shell/shell_recv.d \
./hempl/src/shell/shell_uarm.d \
./hempl/src/shell/shell_ver.d \
./hempl/src/shell/shell_wofmt.d 


# Each subdirectory must supply rules for building sources it contributes
hempl/src/shell/%.o: ../hempl/src/shell/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_E144x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/hempl/inc" -I"$(PROJECT_LOC)/hempl/inc/newlib" -I"$(PROJECT_LOC)/hempl/src/platform/xmc4000" -I"$(PROJECT_LOC)/Libraries" -I"$(PROJECT_LOC)/hempl/src/iv" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

