################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include xip/subdir.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/third_party/kissfft/tools/subdir.mk
-include source/third_party/kissfft/subdir.mk
-include source/tensorflow/lite/micro/memory_planner/subdir.mk
-include source/tensorflow/lite/micro/kernels/subdir.mk
-include source/tensorflow/lite/micro/subdir.mk
-include source/tensorflow/lite/kernels/internal/subdir.mk
-include source/tensorflow/lite/kernels/subdir.mk
-include source/tensorflow/lite/experimental/microfrontend/lib/subdir.mk
-include source/tensorflow/lite/core/api/subdir.mk
-include source/tensorflow/lite/c/subdir.mk
-include source/micro_features/subdir.mk
-include source/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/serial_manager/subdir.mk
-include component/lists/subdir.mk
-include component/i2c/subdir.mk
-include codec/subdir.mk
-include board/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: IMXRT1010_Speech_Recognition.axf

# Tool invocations
IMXRT1010_Speech_Recognition.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU C++ Linker'
	arm-none-eabi-c++ -nostdlib -Xlinker -Map="IMXRT1010_Speech_Recognition.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -T IMXRT1010_Speech_Recognition_Debug.ld -o "IMXRT1010_Speech_Recognition.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(CXX_DEPS)$(OBJS)$(CPP_DEPS)$(C_DEPS) IMXRT1010_Speech_Recognition.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "IMXRT1010_Speech_Recognition.axf"; # arm-none-eabi-objcopy -v -O binary "IMXRT1010_Speech_Recognition.axf" "IMXRT1010_Speech_Recognition.bin" ; # checksum -p MIMXRT1011xxxxx -d "IMXRT1010_Speech_Recognition.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
