################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include hempl/src/uARM/subdir.mk
-include hempl/src/shell/subdir.mk
-include hempl/src/platform/xmc4000/subdir.mk
-include hempl/src/platform/subdir.mk
-include hempl/src/newlib/subdir.mk
-include hempl/src/iv/subdir.mk
-include hempl/src/subdir.mk
-include Startup/subdir.mk
-include Libraries/XMCLib/src/subdir.mk
-include Libraries/Newlib/subdir.mk
-include Dave/Generated/UART/subdir.mk
-include Dave/Generated/SPI_MASTER/subdir.mk
-include Dave/Generated/SDMMC_BLOCK/subdir.mk
-include Dave/Generated/RTC/subdir.mk
-include Dave/Generated/GLOBAL_DMA/subdir.mk
-include Dave/Generated/FATFS/ff_Src/subdir.mk
-include Dave/Generated/FATFS/subdir.mk
-include Dave/Generated/CPU_CTRL_XMC4/subdir.mk
-include Dave/Generated/CLOCK_XMC4/subdir.mk
-include Dave/Generated/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \

SECONDARY_FLASH += \
uarm_pxa255_xmc4500.lst

SECONDARY_SIZE += \
uarm_pxa255_xmc4500.siz


LIST_FILES = $(addsuffix .o.lst, $(basename $(OBJS))) 
MAP_FILE = "uarm_pxa255_xmc4500.map"

TOOLCHAIN_ROOT=C:/DAVE-IDE-4.4.2-64Bit/eclipse/ARM-GCC-49
PROJECT_LOC=C:/DAVE-IDE-4.4.2-64Bit/uARM/uarm_pxa255_xmc4500

# All Target
all: uarm_pxa255_xmc4500.elf secondary-outputs

# Tool invocations
uarm_pxa255_xmc4500.elf: $(OBJS) ../linker_script.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	$(file >objects.rsp,$(OBJS))
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -T"../linker_script.ld" -nostartfiles -Xlinker --gc-sections -specs=nosys.specs -Wl,-Map,$(MAP_FILE) -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -mcpu=cortex-m4 -mthumb -g -gdwarf-2 -o "uarm_pxa255_xmc4500.elf" "@objects.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo.
uarm_pxa255_xmc4500.hex: uarm_pxa255_xmc4500.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objcopy" -O ihex "uarm_pxa255_xmc4500.elf" "uarm_pxa255_xmc4500.hex"
	@echo 'Finished building: $@'
	@echo.
uarm_pxa255_xmc4500.lst: uarm_pxa255_xmc4500.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objdump" -h -S "uarm_pxa255_xmc4500.elf" > "uarm_pxa255_xmc4500.lst"
	@echo 'Finished building: $@'
	@echo.
uarm_pxa255_xmc4500.siz: uarm_pxa255_xmc4500.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-size" --format=berkeley "uarm_pxa255_xmc4500.elf"
	@echo 'Finished building: $@'
	@echo.
# Other Targets
clean:
	-$(RM) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)
	-$(RM) Dave/Generated/CLOCK_XMC4/clock_xmc4.o Dave/Generated/CLOCK_XMC4/clock_xmc4_conf.o Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4.o Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4_conf.o Dave/Generated/DAVE.o Dave/Generated/FATFS/fatfs.o Dave/Generated/FATFS/fatfs_conf.o Dave/Generated/FATFS/sltha.o Dave/Generated/FATFS/ff_Src/ff.o Dave/Generated/FATFS/ff_Src/ffsystem.o Dave/Generated/FATFS/ff_Src/ffunicode.o Dave/Generated/GLOBAL_DMA/global_dma.o Dave/Generated/GLOBAL_DMA/global_dma_conf.o Dave/Generated/RTC/rtc.o Dave/Generated/RTC/rtc_conf.o Dave/Generated/SDMMC_BLOCK/sdmmc_block.o Dave/Generated/SDMMC_BLOCK/sdmmc_block_conf.o Dave/Generated/SDMMC_BLOCK/sdmmc_block_private_spi.o Dave/Generated/SPI_MASTER/spi_master.o Dave/Generated/SPI_MASTER/spi_master_conf.o Dave/Generated/UART/uart.o Dave/Generated/UART/uart_conf.o Libraries/Newlib/syscalls.o Libraries/XMCLib/src/xmc4_eru.o Libraries/XMCLib/src/xmc4_flash.o Libraries/XMCLib/src/xmc4_gpio.o Libraries/XMCLib/src/xmc4_rtc.o Libraries/XMCLib/src/xmc4_scu.o Libraries/XMCLib/src/xmc_can.o Libraries/XMCLib/src/xmc_ccu4.o Libraries/XMCLib/src/xmc_ccu8.o Libraries/XMCLib/src/xmc_common.o Libraries/XMCLib/src/xmc_dac.o Libraries/XMCLib/src/xmc_dma.o Libraries/XMCLib/src/xmc_dsd.o Libraries/XMCLib/src/xmc_ebu.o Libraries/XMCLib/src/xmc_ecat.o Libraries/XMCLib/src/xmc_eru.o Libraries/XMCLib/src/xmc_eth_mac.o Libraries/XMCLib/src/xmc_eth_phy_dp83848.o Libraries/XMCLib/src/xmc_eth_phy_ksz8031rnl.o Libraries/XMCLib/src/xmc_eth_phy_ksz8081rnb.o Libraries/XMCLib/src/xmc_fce.o Libraries/XMCLib/src/xmc_gpio.o Libraries/XMCLib/src/xmc_hrpwm.o Libraries/XMCLib/src/xmc_i2c.o Libraries/XMCLib/src/xmc_i2s.o Libraries/XMCLib/src/xmc_ledts.o Libraries/XMCLib/src/xmc_posif.o Libraries/XMCLib/src/xmc_rtc.o Libraries/XMCLib/src/xmc_sdmmc.o Libraries/XMCLib/src/xmc_spi.o Libraries/XMCLib/src/xmc_uart.o Libraries/XMCLib/src/xmc_usbd.o Libraries/XMCLib/src/xmc_usbh.o 
	-$(RM) Libraries/XMCLib/src/xmc_usic.o Libraries/XMCLib/src/xmc_vadc.o Libraries/XMCLib/src/xmc_wdt.o Startup/startup_XMC4500.o Startup/system_XMC4500.o hempl/src/buf.o hempl/src/common.o hempl/src/common_fs.o hempl/src/common_tmr.o hempl/src/common_uart.o hempl/src/dlmalloc.o hempl/src/elua_adc.o hempl/src/elua_int.o hempl/src/linenoise.o hempl/src/mmcfs.o hempl/src/salloc.o hempl/src/term.o hempl/src/xmodem.o hempl/src/iv/iv.o hempl/src/newlib/devman.o hempl/src/newlib/genstd.o hempl/src/newlib/stdtcp.o hempl/src/newlib/stubs.o hempl/src/platform/arm_cortex_interrupts.o hempl/src/platform/cortex_utils.o hempl/src/platform/xmc4000/ebu.o hempl/src/platform/xmc4000/platform.o hempl/src/shell/shell.o hempl/src/shell/shell_adv_cp_mv.o hempl/src/shell/shell_adv_rm.o hempl/src/shell/shell_cat.o hempl/src/shell/shell_help.o hempl/src/shell/shell_iv.o hempl/src/shell/shell_ls.o hempl/src/shell/shell_mkdir.o hempl/src/shell/shell_recv.o hempl/src/shell/shell_uarm.o hempl/src/shell/shell_ver.o hempl/src/shell/shell_wofmt.o hempl/src/uARM/CPU.o hempl/src/uARM/MMU.o hempl/src/uARM/RAM.o hempl/src/uARM/SoC.o hempl/src/uARM/callout_RAM.o hempl/src/uARM/cp14.o hempl/src/uARM/cp15.o hempl/src/uARM/dcache.o hempl/src/uARM/icache.o hempl/src/uARM/main_pc.o hempl/src/uARM/math64.o hempl/src/uARM/mem.o hempl/src/uARM/pxa255_DMA.o hempl/src/uARM/pxa255_DSP.o hempl/src/uARM/pxa255_GPIO.o hempl/src/uARM/pxa255_IC.o hempl/src/uARM/pxa255_LCD.o hempl/src/uARM/pxa255_PwrClk.o hempl/src/uARM/pxa255_RTC.o hempl/src/uARM/pxa255_TIMR.o hempl/src/uARM/pxa255_UART.o hempl/src/uARM/rt.o main.o  uarm_pxa255_xmc4500.elf $(LIST_FILES) $(MAP_FILE) objects.rsp
	-@echo.
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
