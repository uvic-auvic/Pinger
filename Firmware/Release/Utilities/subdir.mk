################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/stm32f0_discovery.c 

OBJS += \
./Utilities/stm32f0_discovery.o 

C_DEPS += \
./Utilities/stm32f0_discovery.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/%.o: ../Utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32F051R8Tx -DSTM32F0 -DSTM32 -DSTM32F0DISCOVERY -DUSE_STDPERIPH_DRIVER -DSTM32F051 -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/inc" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/CMSIS/core" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/CMSIS/device" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/StdPeriph_Driver/inc" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/Utilities" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/RTOS/inc" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


