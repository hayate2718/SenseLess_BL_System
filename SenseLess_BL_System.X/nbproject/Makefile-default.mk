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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/canfd/plib_canfd1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Use_UART1.cpp Use_TMR1.cpp Use_GPIO.cpp SLBL_System.cpp ../src/main.cpp SLBL_IPD.cpp SLBL_OpenLoop.cpp Use_ADC.cpp Angle_Normalization.cpp User_PWM.cpp Mode_Transition.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Use_UART1.o ${OBJECTDIR}/Use_TMR1.o ${OBJECTDIR}/Use_GPIO.o ${OBJECTDIR}/SLBL_System.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/SLBL_IPD.o ${OBJECTDIR}/SLBL_OpenLoop.o ${OBJECTDIR}/Use_ADC.o ${OBJECTDIR}/Angle_Normalization.o ${OBJECTDIR}/User_PWM.o ${OBJECTDIR}/Mode_Transition.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/Use_UART1.o.d ${OBJECTDIR}/Use_TMR1.o.d ${OBJECTDIR}/Use_GPIO.o.d ${OBJECTDIR}/SLBL_System.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/SLBL_IPD.o.d ${OBJECTDIR}/SLBL_OpenLoop.o.d ${OBJECTDIR}/Use_ADC.o.d ${OBJECTDIR}/Angle_Normalization.o.d ${OBJECTDIR}/User_PWM.o.d ${OBJECTDIR}/Mode_Transition.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Use_UART1.o ${OBJECTDIR}/Use_TMR1.o ${OBJECTDIR}/Use_GPIO.o ${OBJECTDIR}/SLBL_System.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/SLBL_IPD.o ${OBJECTDIR}/SLBL_OpenLoop.o ${OBJECTDIR}/Use_ADC.o ${OBJECTDIR}/Angle_Normalization.o ${OBJECTDIR}/User_PWM.o ${OBJECTDIR}/Mode_Transition.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/canfd/plib_canfd1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Use_UART1.cpp Use_TMR1.cpp Use_GPIO.cpp SLBL_System.cpp ../src/main.cpp SLBL_IPD.cpp SLBL_OpenLoop.cpp Use_ADC.cpp Angle_Normalization.cpp User_PWM.cpp Mode_Transition.cpp



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
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/c78acc5e9eaf6001ff69bff7ba339e8722ee9cec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/ac31781ca0e747654f8bfc89ee8bf5b8a65c3196 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/d8984f5ff8c53122136b77fbd25a3fb6444776d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/4c70fe42808f4124e87cd010b24a56074906093 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/c715908a6d0075a5d6ac2aef72d1aa0780cc3227 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/404daa438fc455debc1112ce842605cffcf1e286 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/ee58aad4c9786a127abeaeebd09be88bc38f857a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/1830a6fb2ef808f184fac92db01db87bcade68ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/ba5520acb0c58e99a1ffe30abe03c626b06c9c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/e959e64d47ea78384e8eb1f4e85e1be16dc63eca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/ac688180625876d045316fef6951296694c1782a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/4573e84604463c9906f20ab20a034dd85732e3a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5225d1d341f065bd96803642e4331d65dfe0057c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/a886cfb96fae92857444343ee1491cde01afb856 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/46978a45e90ce10be2b2047b61d8227d7977e23f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/e18fd897183729ec0d3069fb98270d7f698321a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/5047f740728cd91a2d1cd6a6d933eca63ae0fc11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/3a75fe35674d774fcd599c0b168493590b51523f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/d1ccb0355d6a83cd42373f9217fd1211051e7981 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/1ed1434294ac8bc15172bd3f4d21b5a08e30f86e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/147fef40fd673fe29c564e424e5cdbb844f92a54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/ccb852bbb68e1c7cb770bf310f231d4ae7a80c65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/9fba14ebdfd3e7985299a511cd4b0ba52e7417a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/9c1bd580611efcd89f086757f3717179302dcad5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/6e854a643426069e99b1be480d0467073adbdb51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/dafdf53c0e9cc05cf0d91b4904c943c764e13866 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/QSpin" -I"../src/config/default/QSpin/Current_Calculation/" -I"../src/config/default/QSpin/Field_Oriented_Control/" -I"../src/config/default/QSpin/Hardware_Abstraction/" -I"../src/config/default/QSpin/Parameters/" -I"../src/config/default/QSpin/Rotor_Position_Calculation/" -I"../src/config/default/QSpin/Utilities/" -I"../src/config/default/QSpin/Voltage_Calculation/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/a411a8bac46cc5c58a3e48b72de7400e8b18fcae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/4aaace827e783e9da5d5300a5d802f542477a420 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/fd2a802d7b8ea80ae6b89ef4b37811c49523323 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/8fcd67e763f81b7950d83cb05c9506ca2b6bf265 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/ae1497d43be272a95cd95a541da49350f2b5fc3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/b4e499b74d1892591811c56daa0f8b280f1602e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/a049059c0a8e1be473f3cabec8ddc2007d4970b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/e588c0282d1718fee2d3df1efa73b06f212fc597 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/b27edc593b835d7ad571b4fcd1c571fb303bce60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/46d7a02f42df6fdec0f6d7505107a4e31031330e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/c7130a30df8d564b105e6f635c879564bae16ed2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/Use_UART1.o: Use_UART1.cpp  .generated_files/flags/default/ffcbdc1a317f909df95c537f2c457e8f84a9235c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_UART1.o.d 
	@${RM} ${OBJECTDIR}/Use_UART1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_UART1.o.d" -o ${OBJECTDIR}/Use_UART1.o Use_UART1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_TMR1.o: Use_TMR1.cpp  .generated_files/flags/default/77f0f511793f2790dd3a007f11c31b9b476d773e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_TMR1.o.d 
	@${RM} ${OBJECTDIR}/Use_TMR1.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_TMR1.o.d" -o ${OBJECTDIR}/Use_TMR1.o Use_TMR1.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_GPIO.o: Use_GPIO.cpp  .generated_files/flags/default/701dbcadfb1e37c336599a4496ead91541c96ba5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_GPIO.o.d 
	@${RM} ${OBJECTDIR}/Use_GPIO.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_GPIO.o.d" -o ${OBJECTDIR}/Use_GPIO.o Use_GPIO.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_System.o: SLBL_System.cpp  .generated_files/flags/default/70bccf355c52481b1376611542cf01683833280b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_System.o.d 
	@${RM} ${OBJECTDIR}/SLBL_System.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_System.o.d" -o ${OBJECTDIR}/SLBL_System.o SLBL_System.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.cpp  .generated_files/flags/default/ad2496f3b326bbf2ea26bd170fa5d2413816cb2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_IPD.o: SLBL_IPD.cpp  .generated_files/flags/default/77552910495f98a087d20dbc699d79f5f4251244 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o.d 
	@${RM} ${OBJECTDIR}/SLBL_IPD.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_IPD.o.d" -o ${OBJECTDIR}/SLBL_IPD.o SLBL_IPD.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/SLBL_OpenLoop.o: SLBL_OpenLoop.cpp  .generated_files/flags/default/be841b1a81d19cea921d848a29f66a0332dc537d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o.d 
	@${RM} ${OBJECTDIR}/SLBL_OpenLoop.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/SLBL_OpenLoop.o.d" -o ${OBJECTDIR}/SLBL_OpenLoop.o SLBL_OpenLoop.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Use_ADC.o: Use_ADC.cpp  .generated_files/flags/default/534bea3744c61db8ebf0f96ab5761ea278ed445f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Use_ADC.o.d 
	@${RM} ${OBJECTDIR}/Use_ADC.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Use_ADC.o.d" -o ${OBJECTDIR}/Use_ADC.o Use_ADC.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Angle_Normalization.o: Angle_Normalization.cpp  .generated_files/flags/default/ef61c835eeb2632f8b5abfee82c10b43e6c6abc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o.d 
	@${RM} ${OBJECTDIR}/Angle_Normalization.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Angle_Normalization.o.d" -o ${OBJECTDIR}/Angle_Normalization.o Angle_Normalization.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/User_PWM.o: User_PWM.cpp  .generated_files/flags/default/12b72a3040f876f30b079864451fd83fde8db425 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/User_PWM.o.d 
	@${RM} ${OBJECTDIR}/User_PWM.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/User_PWM.o.d" -o ${OBJECTDIR}/User_PWM.o User_PWM.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Mode_Transition.o: Mode_Transition.cpp  .generated_files/flags/default/14585bebd81c67398bfa523589120b752a2f804f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mode_Transition.o.d 
	@${RM} ${OBJECTDIR}/Mode_Transition.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../SenseLess_BL_System.X" -I"../src" -I"../src/config/default" -MP -MMD -MF "${OBJECTDIR}/Mode_Transition.o.d" -o ${OBJECTDIR}/Mode_Transition.o Mode_Transition.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MK0512MCJ048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/SenseLess_BL_System.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x36F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
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
