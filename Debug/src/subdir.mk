################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClientSocket.cpp \
../src/Socket.cpp \
../src/client.cpp 

OBJS += \
./src/ClientSocket.o \
./src/Socket.o \
./src/client.o 

CPP_DEPS += \
./src/ClientSocket.d \
./src/Socket.d \
./src/client.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I"/home/tomek/eclipse-workspace/SqqtCppCli/src" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


