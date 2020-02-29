################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/third_party/kissfft.0/kiss_fft.c 

OBJS += \
./source/third_party/kissfft.0/kiss_fft.o 

C_DEPS += \
./source/third_party/kissfft.0/kiss_fft.d 


# Each subdirectory must supply rules for building sources it contributes
source/third_party/kissfft.0/%.o: ../source/third_party/kissfft.0/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DCPU_MIMXRT1011DAE5A -DCPU_MIMXRT1011DAE5A_cm7 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/board" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/drivers" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/device" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/CMSIS" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/xip" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/uart" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/serial_manager" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/lists" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/utilities" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/codec" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/i2c" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


