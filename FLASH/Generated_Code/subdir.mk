################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Generated_Code/AS1.c" \
"../Generated_Code/AS2.c" \
"../Generated_Code/ASerialLdd1.c" \
"../Generated_Code/ASerialLdd2.c" \
"../Generated_Code/BitIoLdd1.c" \
"../Generated_Code/BitIoLdd2.c" \
"../Generated_Code/BitIoLdd3.c" \
"../Generated_Code/Cpu.c" \
"../Generated_Code/DA1.c" \
"../Generated_Code/DacLdd1.c" \
"../Generated_Code/FRTOS1.c" \
"../Generated_Code/LEDG.c" \
"../Generated_Code/LEDR.c" \
"../Generated_Code/LED_Blue.c" \
"../Generated_Code/LEDpin1.c" \
"../Generated_Code/LEDpin2.c" \
"../Generated_Code/LEDpin3.c" \
"../Generated_Code/MCUC1.c" \
"../Generated_Code/PE_LDD.c" \
"../Generated_Code/TSK1.c" \
"../Generated_Code/UTIL1.c" \
"../Generated_Code/Vectors.c" \
"../Generated_Code/WAIT1.c" \
"../Generated_Code/croutine.c" \
"../Generated_Code/event_groups.c" \
"../Generated_Code/heap_1.c" \
"../Generated_Code/heap_2.c" \
"../Generated_Code/heap_3.c" \
"../Generated_Code/heap_4.c" \
"../Generated_Code/heap_5.c" \
"../Generated_Code/heap_useNewlib.c" \
"../Generated_Code/list.c" \
"../Generated_Code/mpu_wrappers.c" \
"../Generated_Code/port.c" \
"../Generated_Code/queue.c" \
"../Generated_Code/tasks.c" \
"../Generated_Code/timers.c" \

C_SRCS += \
../Generated_Code/AS1.c \
../Generated_Code/AS2.c \
../Generated_Code/ASerialLdd1.c \
../Generated_Code/ASerialLdd2.c \
../Generated_Code/BitIoLdd1.c \
../Generated_Code/BitIoLdd2.c \
../Generated_Code/BitIoLdd3.c \
../Generated_Code/Cpu.c \
../Generated_Code/DA1.c \
../Generated_Code/DacLdd1.c \
../Generated_Code/FRTOS1.c \
../Generated_Code/LEDG.c \
../Generated_Code/LEDR.c \
../Generated_Code/LED_Blue.c \
../Generated_Code/LEDpin1.c \
../Generated_Code/LEDpin2.c \
../Generated_Code/LEDpin3.c \
../Generated_Code/MCUC1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/TSK1.c \
../Generated_Code/UTIL1.c \
../Generated_Code/Vectors.c \
../Generated_Code/WAIT1.c \
../Generated_Code/croutine.c \
../Generated_Code/event_groups.c \
../Generated_Code/heap_1.c \
../Generated_Code/heap_2.c \
../Generated_Code/heap_3.c \
../Generated_Code/heap_4.c \
../Generated_Code/heap_5.c \
../Generated_Code/heap_useNewlib.c \
../Generated_Code/list.c \
../Generated_Code/mpu_wrappers.c \
../Generated_Code/port.c \
../Generated_Code/queue.c \
../Generated_Code/tasks.c \
../Generated_Code/timers.c \

S_SRCS += \
../Generated_Code/portasm.s \

S_SRCS_QUOTED += \
"../Generated_Code/portasm.s" \

S_DEPS_QUOTED += \
"./Generated_Code/portasm.d" \

OBJS += \
./Generated_Code/AS1.o \
./Generated_Code/AS2.o \
./Generated_Code/ASerialLdd1.o \
./Generated_Code/ASerialLdd2.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/BitIoLdd3.o \
./Generated_Code/Cpu.o \
./Generated_Code/DA1.o \
./Generated_Code/DacLdd1.o \
./Generated_Code/FRTOS1.o \
./Generated_Code/LEDG.o \
./Generated_Code/LEDR.o \
./Generated_Code/LED_Blue.o \
./Generated_Code/LEDpin1.o \
./Generated_Code/LEDpin2.o \
./Generated_Code/LEDpin3.o \
./Generated_Code/MCUC1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/TSK1.o \
./Generated_Code/UTIL1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \
./Generated_Code/croutine.o \
./Generated_Code/event_groups.o \
./Generated_Code/heap_1.o \
./Generated_Code/heap_2.o \
./Generated_Code/heap_3.o \
./Generated_Code/heap_4.o \
./Generated_Code/heap_5.o \
./Generated_Code/heap_useNewlib.o \
./Generated_Code/list.o \
./Generated_Code/mpu_wrappers.o \
./Generated_Code/port.o \
./Generated_Code/portasm.o \
./Generated_Code/queue.o \
./Generated_Code/tasks.o \
./Generated_Code/timers.o \

C_DEPS += \
./Generated_Code/AS1.d \
./Generated_Code/AS2.d \
./Generated_Code/ASerialLdd1.d \
./Generated_Code/ASerialLdd2.d \
./Generated_Code/BitIoLdd1.d \
./Generated_Code/BitIoLdd2.d \
./Generated_Code/BitIoLdd3.d \
./Generated_Code/Cpu.d \
./Generated_Code/DA1.d \
./Generated_Code/DacLdd1.d \
./Generated_Code/FRTOS1.d \
./Generated_Code/LEDG.d \
./Generated_Code/LEDR.d \
./Generated_Code/LED_Blue.d \
./Generated_Code/LEDpin1.d \
./Generated_Code/LEDpin2.d \
./Generated_Code/LEDpin3.d \
./Generated_Code/MCUC1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/TSK1.d \
./Generated_Code/UTIL1.d \
./Generated_Code/Vectors.d \
./Generated_Code/WAIT1.d \
./Generated_Code/croutine.d \
./Generated_Code/event_groups.d \
./Generated_Code/heap_1.d \
./Generated_Code/heap_2.d \
./Generated_Code/heap_3.d \
./Generated_Code/heap_4.d \
./Generated_Code/heap_5.d \
./Generated_Code/heap_useNewlib.d \
./Generated_Code/list.d \
./Generated_Code/mpu_wrappers.d \
./Generated_Code/port.d \
./Generated_Code/queue.d \
./Generated_Code/tasks.d \
./Generated_Code/timers.d \

S_DEPS += \
./Generated_Code/portasm.d \

OBJS_QUOTED += \
"./Generated_Code/AS1.o" \
"./Generated_Code/AS2.o" \
"./Generated_Code/ASerialLdd1.o" \
"./Generated_Code/ASerialLdd2.o" \
"./Generated_Code/BitIoLdd1.o" \
"./Generated_Code/BitIoLdd2.o" \
"./Generated_Code/BitIoLdd3.o" \
"./Generated_Code/Cpu.o" \
"./Generated_Code/DA1.o" \
"./Generated_Code/DacLdd1.o" \
"./Generated_Code/FRTOS1.o" \
"./Generated_Code/LEDG.o" \
"./Generated_Code/LEDR.o" \
"./Generated_Code/LED_Blue.o" \
"./Generated_Code/LEDpin1.o" \
"./Generated_Code/LEDpin2.o" \
"./Generated_Code/LEDpin3.o" \
"./Generated_Code/MCUC1.o" \
"./Generated_Code/PE_LDD.o" \
"./Generated_Code/TSK1.o" \
"./Generated_Code/UTIL1.o" \
"./Generated_Code/Vectors.o" \
"./Generated_Code/WAIT1.o" \
"./Generated_Code/croutine.o" \
"./Generated_Code/event_groups.o" \
"./Generated_Code/heap_1.o" \
"./Generated_Code/heap_2.o" \
"./Generated_Code/heap_3.o" \
"./Generated_Code/heap_4.o" \
"./Generated_Code/heap_5.o" \
"./Generated_Code/heap_useNewlib.o" \
"./Generated_Code/list.o" \
"./Generated_Code/mpu_wrappers.o" \
"./Generated_Code/port.o" \
"./Generated_Code/portasm.o" \
"./Generated_Code/queue.o" \
"./Generated_Code/tasks.o" \
"./Generated_Code/timers.o" \

C_DEPS_QUOTED += \
"./Generated_Code/AS1.d" \
"./Generated_Code/AS2.d" \
"./Generated_Code/ASerialLdd1.d" \
"./Generated_Code/ASerialLdd2.d" \
"./Generated_Code/BitIoLdd1.d" \
"./Generated_Code/BitIoLdd2.d" \
"./Generated_Code/BitIoLdd3.d" \
"./Generated_Code/Cpu.d" \
"./Generated_Code/DA1.d" \
"./Generated_Code/DacLdd1.d" \
"./Generated_Code/FRTOS1.d" \
"./Generated_Code/LEDG.d" \
"./Generated_Code/LEDR.d" \
"./Generated_Code/LED_Blue.d" \
"./Generated_Code/LEDpin1.d" \
"./Generated_Code/LEDpin2.d" \
"./Generated_Code/LEDpin3.d" \
"./Generated_Code/MCUC1.d" \
"./Generated_Code/PE_LDD.d" \
"./Generated_Code/TSK1.d" \
"./Generated_Code/UTIL1.d" \
"./Generated_Code/Vectors.d" \
"./Generated_Code/WAIT1.d" \
"./Generated_Code/croutine.d" \
"./Generated_Code/event_groups.d" \
"./Generated_Code/heap_1.d" \
"./Generated_Code/heap_2.d" \
"./Generated_Code/heap_3.d" \
"./Generated_Code/heap_4.d" \
"./Generated_Code/heap_5.d" \
"./Generated_Code/heap_useNewlib.d" \
"./Generated_Code/list.d" \
"./Generated_Code/mpu_wrappers.d" \
"./Generated_Code/port.d" \
"./Generated_Code/queue.d" \
"./Generated_Code/tasks.d" \
"./Generated_Code/timers.d" \

OBJS_OS_FORMAT += \
./Generated_Code/AS1.o \
./Generated_Code/AS2.o \
./Generated_Code/ASerialLdd1.o \
./Generated_Code/ASerialLdd2.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/BitIoLdd3.o \
./Generated_Code/Cpu.o \
./Generated_Code/DA1.o \
./Generated_Code/DacLdd1.o \
./Generated_Code/FRTOS1.o \
./Generated_Code/LEDG.o \
./Generated_Code/LEDR.o \
./Generated_Code/LED_Blue.o \
./Generated_Code/LEDpin1.o \
./Generated_Code/LEDpin2.o \
./Generated_Code/LEDpin3.o \
./Generated_Code/MCUC1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/TSK1.o \
./Generated_Code/UTIL1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \
./Generated_Code/croutine.o \
./Generated_Code/event_groups.o \
./Generated_Code/heap_1.o \
./Generated_Code/heap_2.o \
./Generated_Code/heap_3.o \
./Generated_Code/heap_4.o \
./Generated_Code/heap_5.o \
./Generated_Code/heap_useNewlib.o \
./Generated_Code/list.o \
./Generated_Code/mpu_wrappers.o \
./Generated_Code/port.o \
./Generated_Code/portasm.o \
./Generated_Code/queue.o \
./Generated_Code/tasks.o \
./Generated_Code/timers.o \


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/AS1.o: ../Generated_Code/AS1.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/AS1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/AS1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/AS2.o: ../Generated_Code/AS2.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/AS2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/AS2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/ASerialLdd1.o: ../Generated_Code/ASerialLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/ASerialLdd1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/ASerialLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/ASerialLdd2.o: ../Generated_Code/ASerialLdd2.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/ASerialLdd2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/ASerialLdd2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd1.o: ../Generated_Code/BitIoLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd2.o: ../Generated_Code/BitIoLdd2.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd3.o: ../Generated_Code/BitIoLdd3.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd3.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd3.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Cpu.o: ../Generated_Code/Cpu.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Cpu.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Cpu.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/DA1.o: ../Generated_Code/DA1.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/DA1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/DA1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/DacLdd1.o: ../Generated_Code/DacLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/DacLdd1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/DacLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/FRTOS1.o: ../Generated_Code/FRTOS1.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/FRTOS1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/FRTOS1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDG.o: ../Generated_Code/LEDG.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDG.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDG.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDR.o: ../Generated_Code/LEDR.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDR.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDR.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LED_Blue.o: ../Generated_Code/LED_Blue.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LED_Blue.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LED_Blue.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin1.o: ../Generated_Code/LEDpin1.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin2.o: ../Generated_Code/LEDpin2.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin3.o: ../Generated_Code/LEDpin3.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin3.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin3.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/MCUC1.o: ../Generated_Code/MCUC1.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/MCUC1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/MCUC1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/PE_LDD.o: ../Generated_Code/PE_LDD.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/PE_LDD.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/PE_LDD.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TSK1.o: ../Generated_Code/TSK1.c
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TSK1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TSK1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/UTIL1.o: ../Generated_Code/UTIL1.c
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/UTIL1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/UTIL1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Vectors.o: ../Generated_Code/Vectors.c
	@echo 'Building file: $<'
	@echo 'Executing target #29 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Vectors.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Vectors.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/WAIT1.o: ../Generated_Code/WAIT1.c
	@echo 'Building file: $<'
	@echo 'Executing target #30 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/WAIT1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/WAIT1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/croutine.o: ../Generated_Code/croutine.c
	@echo 'Building file: $<'
	@echo 'Executing target #31 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/croutine.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/croutine.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/event_groups.o: ../Generated_Code/event_groups.c
	@echo 'Building file: $<'
	@echo 'Executing target #32 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/event_groups.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/event_groups.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_1.o: ../Generated_Code/heap_1.c
	@echo 'Building file: $<'
	@echo 'Executing target #33 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_2.o: ../Generated_Code/heap_2.c
	@echo 'Building file: $<'
	@echo 'Executing target #34 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_3.o: ../Generated_Code/heap_3.c
	@echo 'Building file: $<'
	@echo 'Executing target #35 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_3.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_3.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_4.o: ../Generated_Code/heap_4.c
	@echo 'Building file: $<'
	@echo 'Executing target #36 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_4.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_4.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_5.o: ../Generated_Code/heap_5.c
	@echo 'Building file: $<'
	@echo 'Executing target #37 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_5.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_5.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/heap_useNewlib.o: ../Generated_Code/heap_useNewlib.c
	@echo 'Building file: $<'
	@echo 'Executing target #38 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/heap_useNewlib.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/heap_useNewlib.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/list.o: ../Generated_Code/list.c
	@echo 'Building file: $<'
	@echo 'Executing target #39 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/list.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/list.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/mpu_wrappers.o: ../Generated_Code/mpu_wrappers.c
	@echo 'Building file: $<'
	@echo 'Executing target #40 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/mpu_wrappers.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/mpu_wrappers.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/port.o: ../Generated_Code/port.c
	@echo 'Building file: $<'
	@echo 'Executing target #41 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/port.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/port.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/portasm.o: ../Generated_Code/portasm.s
	@echo 'Building file: $<'
	@echo 'Executing target #42 $<'
	@echo 'Invoking: ARM Ltd Windows GCC Assembler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/portasm.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/portasm.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/queue.o: ../Generated_Code/queue.c
	@echo 'Building file: $<'
	@echo 'Executing target #43 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/queue.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/queue.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/tasks.o: ../Generated_Code/tasks.c
	@echo 'Building file: $<'
	@echo 'Executing target #44 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/tasks.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/tasks.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/timers.o: ../Generated_Code/timers.c
	@echo 'Building file: $<'
	@echo 'Executing target #45 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/timers.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/timers.o"
	@echo 'Finished building: $<'
	@echo ' '


