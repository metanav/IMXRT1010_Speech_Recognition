################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../source/tensorflow/lite/micro/kernels/activations.cc \
../source/tensorflow/lite/micro/kernels/add.cc \
../source/tensorflow/lite/micro/kernels/all_ops_resolver.cc \
../source/tensorflow/lite/micro/kernels/arg_min_max.cc \
../source/tensorflow/lite/micro/kernels/ceil.cc \
../source/tensorflow/lite/micro/kernels/comparisons.cc \
../source/tensorflow/lite/micro/kernels/concatenation.cc \
../source/tensorflow/lite/micro/kernels/conv.cc \
../source/tensorflow/lite/micro/kernels/depthwise_conv.cc \
../source/tensorflow/lite/micro/kernels/dequantize.cc \
../source/tensorflow/lite/micro/kernels/elementwise.cc \
../source/tensorflow/lite/micro/kernels/floor.cc \
../source/tensorflow/lite/micro/kernels/fully_connected.cc \
../source/tensorflow/lite/micro/kernels/logical.cc \
../source/tensorflow/lite/micro/kernels/logistic.cc \
../source/tensorflow/lite/micro/kernels/maximum_minimum.cc \
../source/tensorflow/lite/micro/kernels/mul.cc \
../source/tensorflow/lite/micro/kernels/neg.cc \
../source/tensorflow/lite/micro/kernels/pack.cc \
../source/tensorflow/lite/micro/kernels/pad.cc \
../source/tensorflow/lite/micro/kernels/pooling.cc \
../source/tensorflow/lite/micro/kernels/prelu.cc \
../source/tensorflow/lite/micro/kernels/quantize.cc \
../source/tensorflow/lite/micro/kernels/reduce.cc \
../source/tensorflow/lite/micro/kernels/reshape.cc \
../source/tensorflow/lite/micro/kernels/round.cc \
../source/tensorflow/lite/micro/kernels/softmax.cc \
../source/tensorflow/lite/micro/kernels/split.cc \
../source/tensorflow/lite/micro/kernels/strided_slice.cc \
../source/tensorflow/lite/micro/kernels/svdf.cc \
../source/tensorflow/lite/micro/kernels/unpack.cc 

CC_DEPS += \
./source/tensorflow/lite/micro/kernels/activations.d \
./source/tensorflow/lite/micro/kernels/add.d \
./source/tensorflow/lite/micro/kernels/all_ops_resolver.d \
./source/tensorflow/lite/micro/kernels/arg_min_max.d \
./source/tensorflow/lite/micro/kernels/ceil.d \
./source/tensorflow/lite/micro/kernels/comparisons.d \
./source/tensorflow/lite/micro/kernels/concatenation.d \
./source/tensorflow/lite/micro/kernels/conv.d \
./source/tensorflow/lite/micro/kernels/depthwise_conv.d \
./source/tensorflow/lite/micro/kernels/dequantize.d \
./source/tensorflow/lite/micro/kernels/elementwise.d \
./source/tensorflow/lite/micro/kernels/floor.d \
./source/tensorflow/lite/micro/kernels/fully_connected.d \
./source/tensorflow/lite/micro/kernels/logical.d \
./source/tensorflow/lite/micro/kernels/logistic.d \
./source/tensorflow/lite/micro/kernels/maximum_minimum.d \
./source/tensorflow/lite/micro/kernels/mul.d \
./source/tensorflow/lite/micro/kernels/neg.d \
./source/tensorflow/lite/micro/kernels/pack.d \
./source/tensorflow/lite/micro/kernels/pad.d \
./source/tensorflow/lite/micro/kernels/pooling.d \
./source/tensorflow/lite/micro/kernels/prelu.d \
./source/tensorflow/lite/micro/kernels/quantize.d \
./source/tensorflow/lite/micro/kernels/reduce.d \
./source/tensorflow/lite/micro/kernels/reshape.d \
./source/tensorflow/lite/micro/kernels/round.d \
./source/tensorflow/lite/micro/kernels/softmax.d \
./source/tensorflow/lite/micro/kernels/split.d \
./source/tensorflow/lite/micro/kernels/strided_slice.d \
./source/tensorflow/lite/micro/kernels/svdf.d \
./source/tensorflow/lite/micro/kernels/unpack.d 

OBJS += \
./source/tensorflow/lite/micro/kernels/activations.o \
./source/tensorflow/lite/micro/kernels/add.o \
./source/tensorflow/lite/micro/kernels/all_ops_resolver.o \
./source/tensorflow/lite/micro/kernels/arg_min_max.o \
./source/tensorflow/lite/micro/kernels/ceil.o \
./source/tensorflow/lite/micro/kernels/comparisons.o \
./source/tensorflow/lite/micro/kernels/concatenation.o \
./source/tensorflow/lite/micro/kernels/conv.o \
./source/tensorflow/lite/micro/kernels/depthwise_conv.o \
./source/tensorflow/lite/micro/kernels/dequantize.o \
./source/tensorflow/lite/micro/kernels/elementwise.o \
./source/tensorflow/lite/micro/kernels/floor.o \
./source/tensorflow/lite/micro/kernels/fully_connected.o \
./source/tensorflow/lite/micro/kernels/logical.o \
./source/tensorflow/lite/micro/kernels/logistic.o \
./source/tensorflow/lite/micro/kernels/maximum_minimum.o \
./source/tensorflow/lite/micro/kernels/mul.o \
./source/tensorflow/lite/micro/kernels/neg.o \
./source/tensorflow/lite/micro/kernels/pack.o \
./source/tensorflow/lite/micro/kernels/pad.o \
./source/tensorflow/lite/micro/kernels/pooling.o \
./source/tensorflow/lite/micro/kernels/prelu.o \
./source/tensorflow/lite/micro/kernels/quantize.o \
./source/tensorflow/lite/micro/kernels/reduce.o \
./source/tensorflow/lite/micro/kernels/reshape.o \
./source/tensorflow/lite/micro/kernels/round.o \
./source/tensorflow/lite/micro/kernels/softmax.o \
./source/tensorflow/lite/micro/kernels/split.o \
./source/tensorflow/lite/micro/kernels/strided_slice.o \
./source/tensorflow/lite/micro/kernels/svdf.o \
./source/tensorflow/lite/micro/kernels/unpack.o 


# Each subdirectory must supply rules for building sources it contributes
source/tensorflow/lite/micro/kernels/%.o: ../source/tensorflow/lite/micro/kernels/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=c++11 -DCPU_MIMXRT1011DAE5A -DCPU_MIMXRT1011DAE5A_cm7 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DBOARD_USE_CODEC=1 -DCODEC_WM8960_ENABLE -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_I2C_BASED_COMPONENT_USED=1 -DDEBUG -D__NEWLIB__ -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/CMSIS" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/xip" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/codec" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/lists" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/drivers" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/uart" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/serial_manager" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/i2c" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/device" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/utilities" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/drivers" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/CMSIS" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/serial_manager" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/codec" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/i2c" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/uart" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/xip" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/component/lists" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/utilities" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/device" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/board" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/flatbuffers/include" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/gemmlowp" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source/third_party/kissfft" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition/source" -I"/Users/naveen/Documents/MCUXpressoIDE_11.1.0/workspace/IMXRT1010_Speech_Recognition" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -lm -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


