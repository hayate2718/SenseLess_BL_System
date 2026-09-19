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
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/87a435d0259035985dfb6965ed2179f7e0569a07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/fb1147b02f25f5202a8c96cf8e1c9ac5e7829806 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/628143c0ab36f03d8f5e8ab92c2b6aa607d098dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/636fcccd2d54369470b08114547d68a70217f5b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/456b9791c815ec6651b9d50d75a29f28e1f88b63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/cba7acc78c388f19ac5c8f2c740e04b0374c4bdf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/b9c8d09720f8077e3c98024e9a34b9bba0975cf7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/2c6d645eee3d32e74bd1a7a8dd134e4a46227b92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/6d7233cfd804d7e82d808332050f10b1cab64323 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/c02cc98a116c281bf36dcda9761f5869b603fda9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/3ab2f9b78adbf70cbc5a4151286ec1ae04662153 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/c9e1b4d8c070af6fec266c543053a77066145731 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/b539b585b9b49ba5417eb54dabe7443353eb8ac4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/480d0827599c88fa802d411d42198ed80bd88e6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/757f3a959d63e992d851a3e62f26cedfa2fd5fc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/836aab59a31f9adce8189af29a39b7a962e6d938 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/a118bbe55e5a32984ab62042242494affddb6f01 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/ef0fb895f9e8ee31fedd9950c57ff8f5d530f390 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/ba39f84b362093e1a378046c0f9472f362e3b091 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/6bc5be12f64c031e0d3385db41991f08d5fabaaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/75d9920d3a35ac9d83fda3b6fca883fb1b684e7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/fe4530973c4b7eb884865089d8d7e68a93f9f6d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/732356f0ca6bbe95d760e17fc4703004998031ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/ae672a22982a75712b80649207b3f216984030fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_Motor.o: SLBL_Motor.cpp  .generated_files/flags/default/372b9c2b55339276e5b22f4821bb4b481b19044e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o.d 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_Motor.o.d" -o ${OBJECTDIR}/SLBL_Motor.o SLBL_Motor.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/47de0431eca5fc47bbcba6c3ff024e8fc7893dce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/3222aea4c311572576dac31358b203e5c28ee0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/aee530c0983140dad00dcabc31f2ba67c04fa89f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/4f96a235e3e6e29c3468ca8e578060988de12868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/687c406a2decf5370ed5054322aa4901aea5315e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/e25eae4d2897f52df8c4ae85b36c3e905fe38bd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/30cbf29e1ae2b3057b7fe6d2470b87251d938ec9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/de4af468921e983528e0e8f733365d38bc852ced .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/f744e781ecf67559724402be92f0e6f7d41db5fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/a3a2e614b375ebbb2b8bf6f85c2e0ab6b1803309 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/37e6b1881087d78e25f5d671d0b329445d5cab87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/eb8b384f484522c10566749385a5a50295f2d663 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/a4401c4a4d7221275fa4cb5b239a34c592b32aff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/608fa73a9fae37de2739d12a66c1cd03a5fa6ffb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/a5758f64ca67ce305a2f30c92d4841d7dd34848a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/d2b17e6e1663fa79bb126d4020d7ea9b4af5d4dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/c2710edde518bfe09278f1866ec4aefa7612a5d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/bf1515bcd7e34faa29913a4034882ecc2537d11b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/44d9d214c55d90cc94a62593818b022a3c0a8b5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/63db3d574896594a48d3a034880d1d92dcb9e401 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/453e5f793a5df19aa532b4da275d9ff001a2205e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/48c8aed2792148b39fcce72649eeaacdc333def5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/ad555467d8384051327249d78c14ed85482e4ce6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/68ecd4e45bad88ce1828a98c18fa66936f0a9cef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_Motor.o: SLBL_Motor.cpp  .generated_files/flags/default/6c760cabd559e84ca2376d0e12b132cf36a58e69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o.d 
	@${RM} ${OBJECTDIR}/SLBL_Motor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/SLBL_Motor.o.d" -o ${OBJECTDIR}/SLBL_Motor.o SLBL_Motor.cpp    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MK0512MCJ048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SNAP=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x36F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SNAP=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MK0512MCJ048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
