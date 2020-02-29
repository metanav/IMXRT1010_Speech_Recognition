################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../source/tensorflow/lite/micro/debug_log.cc \
../source/tensorflow/lite/micro/memory_helpers.cc \
../source/tensorflow/lite/micro/micro_allocator.cc \
../source/tensorflow/lite/micro/micro_error_reporter.cc \
../source/tensorflow/lite/micro/micro_interpreter.cc \
../source/tensorflow/lite/micro/micro_optional_debug_tools.cc \
../source/tensorflow/lite/micro/micro_string.cc \
../source/tensorflow/lite/micro/micro_utils.cc \
../source/tensorflow/lite/micro/simple_memory_allocator.cc \
../source/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./source/tensorflow/lite/micro/debug_log.d \
./source/tensorflow/lite/micro/memory_helpers.d \
./source/tensorflow/lite/micro/micro_allocator.d \
./source/tensorflow/lite/micro/micro_error_reporter.d \
./source/tensorflow/lite/micro/micro_interpreter.d \
./source/tensorflow/lite/micro/micro_optional_debug_tools.d \
./source/tensorflow/lite/micro/micro_string.d \
./source/tensorflow/lite/micro/micro_utils.d \
./source/tensorflow/lite/micro/simple_memory_allocator.d \
./source/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./source/tensorflow/lite/micro/debug_log.o \
./source/tensorflow/lite/micro/memory_helpers.o \
./source/tensorflow/lite/micro/micro_allocator.o \
./source/tensorflow/lite/micro/micro_error_reporter.o \
./source/tensorflow/lite/micro/micro_interpreter.o \
./source/tensorflow/lite/micro/micro_optional_debug_tools.o \
./source/tensorflow/lite/micro/micro_string.o \
./source/tensorflow/lite/micro/micro_utils.o \
./source/tensorflow/lite/micro/simple_memory_allocator.o \
./source/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
source/tensorflow/lite/micro/%.o: ../source/tensorflow/lite/micro/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=c++11 -DCPU_MIMXRT1011DAE5A -DCPU_MIMXRT1011DAE5A_cm7 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DBOARD_USE_CODEC=1 -DBOARD_USE_CODEC=1 -DCODEC_WM8960_ENABLE -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_I2C_BASED_COMPONENT_USED=1 -DDEBUG -D__NEWLIB__ -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/board" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/flatbuffers/include" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/gemmlowp" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/kissfft" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/drivers" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/device" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/CMSIS" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/xip" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/uart" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/serial_manager" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/lists" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/utilities" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/codec" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/i2c" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -lm -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


