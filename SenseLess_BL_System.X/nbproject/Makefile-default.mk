#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/canfd/plib_canfd1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Use_UART1.cpp Use_TMR1.cpp Use_GPIO.cpp SLBL_System.cpp ../src/main.cpp SLBL_IPD.cpp SLBL_OpenLoop.cpp Use_ADC.cpp Angle_Normalization.cpp User_PWM.cpp Mode_Transition.cpp SLBL_Motor.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Use_UART1.o ${OBJECTDIR}/Use_TMR1.o ${OBJECTDIR}/Use_GPIO.o ${OBJECTDIR}/SLBL_System.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/SLBL_IPD.o ${OBJECTDIR}/SLBL_OpenLoop.o ${OBJECTDIR}/Use_ADC.o ${OBJECTDIR}/Angle_Normalization.o ${OBJECTDIR}/User_PWM.o ${OBJECTDIR}/Mode_Transition.o ${OBJECTDIR}/SLBL_Motor.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/Use_UART1.o.d ${OBJECTDIR}/Use_TMR1.o.d ${OBJECTDIR}/Use_GPIO.o.d ${OBJECTDIR}/SLBL_System.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/SLBL_IPD.o.d ${OBJECTDIR}/SLBL_OpenLoop.o.d ${OBJECTDIR}/Use_ADC.o.d ${OBJECTDIR}/Angle_Normalization.o.d ${OBJECTDIR}/User_PWM.o.d ${OBJECTDIR}/Mode_Transition.o.d ${OBJECTDIR}/SLBL_Motor.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Use_UART1.o ${OBJECTDIR}/Use_TMR1.o ${OBJECTDIR}/Use_GPIO.o ${OBJECTDIR}/SLBL_System.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/SLBL_IPD.o ${OBJECTDIR}/SLBL_OpenLoop.o ${OBJECTDIR}/Use_ADC.o ${OBJECTDIR}/Angle_Normalization.o ${OBJECTDIR}/User_PWM.o ${OBJECTDIR}/Mode_Transition.o ${OBJECTDIR}/SLBL_Motor.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/canfd/plib_canfd1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Use_UART1.cpp Use_TMR1.cpp Use_GPIO.cpp SLBL_System.cpp ../src/main.cpp SLBL_IPD.cpp SLBL_OpenLoop.cpp Use_ADC.cpp Angle_Normalization.cpp User_PWM.cpp Mode_Transition.cpp SLBL_Motor.cpp



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MK0512MCJ048
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MK0512MCJ048.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/3ded6587be6c1ed223004092c9337593c4966808 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/b303d463bc11ef0e59789ff3e36fc80fe36be528 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/3f4fbf9df76d57208d630f348568d3d96119538d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/2cb6cd065543db9bce88dc5c595abafe5c3b4391 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/9a07d781115d7f4a42c5fe5861c54209b5119b41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/9908117cccde2fd8f2955673ea0b92e63f76a0fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/f2e70c91bcce7550cc031587a4f1e8192094ce24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/4bbfc5afe9569cbc42d3ab8d5534e3c22bb26a90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/2324d7e221adf83ec2af010f81f3e1ef688a3793 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/bea8930b16b5309498d5b47539ffeb849e2503dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/bcd02ff21793eabea8c876440419a1366753031 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/c268ba0976b50d4317c325c8a1d1a68d45113a67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/70ee953ae7b121973b4b6c205bf47cf3fe79213 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/2ee3c1c029f370fe0351fccfc62b0a89e96bdaf4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/e8ae68b1e6aa30409d0b14f30defb2a4821e0957 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/2abeb9e9381817509232dee26fda80d88fad21c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/367bb4000625027750dd4c7be074ce7fef590ab3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/8ce94d4e5b647dc02a68d7866db27aa12f0551e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/7a78db83817c92f28d9795577719ffae59ee085b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/3c609c5925a7a6a03b5a027942c9bbd25851a438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/8ae365520c9e183e0667f305c6be187cfae11487 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/682da57379a38c6dd0bcaf5a2a9ef2e3220e2f76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/3a5e0ec84fc5cecfbd86d9b9950ad3c85692f327 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/9337ab3132203955996c3331e9b22562a318f00e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/b0d1ac4dc57f842d1b048d164efeb5865a3aa70b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/6dc99bbf3494007de5e9e78857dcf692c91658a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/c1dd63894483007d20e72e754acb886b26e5041e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/cccaed8cc1e6b44e59de3bddff6134400f6bae68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/85330b5c72d5563b1c3b4dc8f934ac7f6ad6fd03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/4786665c1f1fbff4bc63ba6dc18c7eb3782cc9fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/74ea19ad41a8362fb32e9308624a2eadcfe879fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/9003de23d49ef5374376e82b926d9643c9d0813e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/bb06da8301d80897fc64f9eb6efcb5416ee0456d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/85599d2b4a560788e378fe8d5ca813d2027693bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/5c51569384b1371a568241a69c0cd4fd837c40b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/6ed3281b4999fd41024e178a3440e16ac43064cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/280870bf9310dba011b53c9a7641c25a2da06d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_Motor.o: SLBL_Motor.cpp  .generated_files/flags/default/287d0ad0c8cf8e807169c61495c8bd1ab20b1e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o.d 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_Motor.o.d" -o ${OBJECTDIR}/SLBL_Motor.o SLBL_Motor.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/f240241caf842dd5ffc7933d87b806bf311a7944 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/6e14b26eb334b0fddc8c6430b109f3982a2c374c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/b997cde4061ead56494452357f6edca1ee2d86ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/30b76c9ea8abb241340ac6c15d3bae51d0a2fe34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/4b5adc15cdf4b0660509802beab0577e3fb57783 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/7f2f0a36ebeb015ef1e04bcd1daa6128312b4fd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/87938627ec4bdae70590972edfb2a4cfe7176370 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/ab0e45329ecf9812f07abb38fa67cdfddc1336b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/6ebdbd279d89dd6001bef6b2838b6d2b65a8d3b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/2cd9928fd7a687d25ef3e911b9e175578fabf0ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/2c9d034ac9be86fc2c005080d25900206730f191 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_Motor.o: SLBL_Motor.cpp  .generated_files/flags/default/ccd07765038e71728526bce37e261daf24c5ef18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o.d 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_Motor.o.d" -o ${OBJECTDIR}/SLBL_Motor.o SLBL_Motor.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MK0512MCJ048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SNAP=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x36F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SNAP=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MK0512MCJ048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
