################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTOS/src/croutine.c \
../RTOS/src/event_groups.c \
../RTOS/src/heap_2.c \
../RTOS/src/list.c \
../RTOS/src/port.c \
../RTOS/src/queue.c \
../RTOS/src/task.c \
../RTOS/src/timers.c 

OBJS += \
./RTOS/src/croutine.o \
./RTOS/src/event_groups.o \
./RTOS/src/heap_2.o \
./RTOS/src/list.o \
./RTOS/src/port.o \
./RTOS/src/queue.o \
./RTOS/src/task.o \
./RTOS/src/timers.o 

C_DEPS += \
./RTOS/src/croutine.d \
./RTOS/src/event_groups.d \
./RTOS/src/heap_2.d \
./RTOS/src/list.d \
./RTOS/src/port.d \
./RTOS/src/queue.d \
./RTOS/src/task.d \
./RTOS/src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
RTOS/src/%.o: ../RTOS/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32F051R8Tx -DSTM32F0 -DSTM32 -DSTM32F0DISCOVERY -DUSE_STDPERIPH_DRIVER -DSTM32F051 -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/inc" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/CMSIS/core" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/CMSIS/device" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/StdPeriph_Driver/inc" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/Utilities" -I"C:/Users/amann/Desktop/AUVIC Work/Power_Board_1.0/RTOS/inc" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


