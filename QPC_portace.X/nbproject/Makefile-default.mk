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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Blinking/Blinky.c ../bsp/bsp.c Display/LEDDisplay.c Keyboard/Keyboard.c ../qep/source/qep.c ../qep/source/qfsm_dis.c ../qep/source/qfsm_ini.c ../qep/source/qhsm_dis.c ../qep/source/qhsm_in.c ../qep/source/qhsm_ini.c ../qep/source/qhsm_top.c ../qf/source/qa_defer.c ../qf/source/qa_fifo.c ../qf/source/qa_get_.c ../qf/source/qa_lifo.c ../qf/source/qa_sub.c ../qf/source/qa_usub.c ../qf/source/qa_usuba.c ../qf/source/qeq_fifo.c ../qf/source/qeq_get.c ../qf/source/qeq_init.c ../qf/source/qeq_lifo.c ../qf/source/qf_act.c ../qf/source/qf_gc.c ../qf/source/qf_log2.c ../qf/source/qf_new.c ../qf/source/qf_pool.c ../qf/source/qf_psini.c ../qf/source/qf_pspub.c ../qf/source/qf_pwr2.c ../qf/source/qf_tick.c ../qf/source/qmp_get.c ../qf/source/qmp_init.c ../qf/source/qmp_put.c ../qf/source/qte_arm.c ../qf/source/qte_ctor.c ../qf/source/qte_ctr.c ../qf/source/qte_darm.c ../qf/source/qte_rarm.c ../qf/source/qvanilla.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Blinking/Blinky.o ${OBJECTDIR}/_ext/1360920944/bsp.o ${OBJECTDIR}/Display/LEDDisplay.o ${OBJECTDIR}/Keyboard/Keyboard.o ${OBJECTDIR}/_ext/633907107/qep.o ${OBJECTDIR}/_ext/633907107/qfsm_dis.o ${OBJECTDIR}/_ext/633907107/qfsm_ini.o ${OBJECTDIR}/_ext/633907107/qhsm_dis.o ${OBJECTDIR}/_ext/633907107/qhsm_in.o ${OBJECTDIR}/_ext/633907107/qhsm_ini.o ${OBJECTDIR}/_ext/633907107/qhsm_top.o ${OBJECTDIR}/_ext/1396818886/qa_defer.o ${OBJECTDIR}/_ext/1396818886/qa_fifo.o ${OBJECTDIR}/_ext/1396818886/qa_get_.o ${OBJECTDIR}/_ext/1396818886/qa_lifo.o ${OBJECTDIR}/_ext/1396818886/qa_sub.o ${OBJECTDIR}/_ext/1396818886/qa_usub.o ${OBJECTDIR}/_ext/1396818886/qa_usuba.o ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o ${OBJECTDIR}/_ext/1396818886/qeq_get.o ${OBJECTDIR}/_ext/1396818886/qeq_init.o ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o ${OBJECTDIR}/_ext/1396818886/qf_act.o ${OBJECTDIR}/_ext/1396818886/qf_gc.o ${OBJECTDIR}/_ext/1396818886/qf_log2.o ${OBJECTDIR}/_ext/1396818886/qf_new.o ${OBJECTDIR}/_ext/1396818886/qf_pool.o ${OBJECTDIR}/_ext/1396818886/qf_psini.o ${OBJECTDIR}/_ext/1396818886/qf_pspub.o ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o ${OBJECTDIR}/_ext/1396818886/qf_tick.o ${OBJECTDIR}/_ext/1396818886/qmp_get.o ${OBJECTDIR}/_ext/1396818886/qmp_init.o ${OBJECTDIR}/_ext/1396818886/qmp_put.o ${OBJECTDIR}/_ext/1396818886/qte_arm.o ${OBJECTDIR}/_ext/1396818886/qte_ctor.o ${OBJECTDIR}/_ext/1396818886/qte_ctr.o ${OBJECTDIR}/_ext/1396818886/qte_darm.o ${OBJECTDIR}/_ext/1396818886/qte_rarm.o ${OBJECTDIR}/_ext/1396818886/qvanilla.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Blinking/Blinky.o.d ${OBJECTDIR}/_ext/1360920944/bsp.o.d ${OBJECTDIR}/Display/LEDDisplay.o.d ${OBJECTDIR}/Keyboard/Keyboard.o.d ${OBJECTDIR}/_ext/633907107/qep.o.d ${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d ${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d ${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d ${OBJECTDIR}/_ext/633907107/qhsm_in.o.d ${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d ${OBJECTDIR}/_ext/633907107/qhsm_top.o.d ${OBJECTDIR}/_ext/1396818886/qa_defer.o.d ${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d ${OBJECTDIR}/_ext/1396818886/qa_get_.o.d ${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d ${OBJECTDIR}/_ext/1396818886/qa_sub.o.d ${OBJECTDIR}/_ext/1396818886/qa_usub.o.d ${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d ${OBJECTDIR}/_ext/1396818886/qeq_get.o.d ${OBJECTDIR}/_ext/1396818886/qeq_init.o.d ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d ${OBJECTDIR}/_ext/1396818886/qf_act.o.d ${OBJECTDIR}/_ext/1396818886/qf_gc.o.d ${OBJECTDIR}/_ext/1396818886/qf_log2.o.d ${OBJECTDIR}/_ext/1396818886/qf_new.o.d ${OBJECTDIR}/_ext/1396818886/qf_pool.o.d ${OBJECTDIR}/_ext/1396818886/qf_psini.o.d ${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d ${OBJECTDIR}/_ext/1396818886/qf_tick.o.d ${OBJECTDIR}/_ext/1396818886/qmp_get.o.d ${OBJECTDIR}/_ext/1396818886/qmp_init.o.d ${OBJECTDIR}/_ext/1396818886/qmp_put.o.d ${OBJECTDIR}/_ext/1396818886/qte_arm.o.d ${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d ${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d ${OBJECTDIR}/_ext/1396818886/qte_darm.o.d ${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d ${OBJECTDIR}/_ext/1396818886/qvanilla.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Blinking/Blinky.o ${OBJECTDIR}/_ext/1360920944/bsp.o ${OBJECTDIR}/Display/LEDDisplay.o ${OBJECTDIR}/Keyboard/Keyboard.o ${OBJECTDIR}/_ext/633907107/qep.o ${OBJECTDIR}/_ext/633907107/qfsm_dis.o ${OBJECTDIR}/_ext/633907107/qfsm_ini.o ${OBJECTDIR}/_ext/633907107/qhsm_dis.o ${OBJECTDIR}/_ext/633907107/qhsm_in.o ${OBJECTDIR}/_ext/633907107/qhsm_ini.o ${OBJECTDIR}/_ext/633907107/qhsm_top.o ${OBJECTDIR}/_ext/1396818886/qa_defer.o ${OBJECTDIR}/_ext/1396818886/qa_fifo.o ${OBJECTDIR}/_ext/1396818886/qa_get_.o ${OBJECTDIR}/_ext/1396818886/qa_lifo.o ${OBJECTDIR}/_ext/1396818886/qa_sub.o ${OBJECTDIR}/_ext/1396818886/qa_usub.o ${OBJECTDIR}/_ext/1396818886/qa_usuba.o ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o ${OBJECTDIR}/_ext/1396818886/qeq_get.o ${OBJECTDIR}/_ext/1396818886/qeq_init.o ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o ${OBJECTDIR}/_ext/1396818886/qf_act.o ${OBJECTDIR}/_ext/1396818886/qf_gc.o ${OBJECTDIR}/_ext/1396818886/qf_log2.o ${OBJECTDIR}/_ext/1396818886/qf_new.o ${OBJECTDIR}/_ext/1396818886/qf_pool.o ${OBJECTDIR}/_ext/1396818886/qf_psini.o ${OBJECTDIR}/_ext/1396818886/qf_pspub.o ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o ${OBJECTDIR}/_ext/1396818886/qf_tick.o ${OBJECTDIR}/_ext/1396818886/qmp_get.o ${OBJECTDIR}/_ext/1396818886/qmp_init.o ${OBJECTDIR}/_ext/1396818886/qmp_put.o ${OBJECTDIR}/_ext/1396818886/qte_arm.o ${OBJECTDIR}/_ext/1396818886/qte_ctor.o ${OBJECTDIR}/_ext/1396818886/qte_ctr.o ${OBJECTDIR}/_ext/1396818886/qte_darm.o ${OBJECTDIR}/_ext/1396818886/qte_rarm.o ${OBJECTDIR}/_ext/1396818886/qvanilla.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=Blinking/Blinky.c ../bsp/bsp.c Display/LEDDisplay.c Keyboard/Keyboard.c ../qep/source/qep.c ../qep/source/qfsm_dis.c ../qep/source/qfsm_ini.c ../qep/source/qhsm_dis.c ../qep/source/qhsm_in.c ../qep/source/qhsm_ini.c ../qep/source/qhsm_top.c ../qf/source/qa_defer.c ../qf/source/qa_fifo.c ../qf/source/qa_get_.c ../qf/source/qa_lifo.c ../qf/source/qa_sub.c ../qf/source/qa_usub.c ../qf/source/qa_usuba.c ../qf/source/qeq_fifo.c ../qf/source/qeq_get.c ../qf/source/qeq_init.c ../qf/source/qeq_lifo.c ../qf/source/qf_act.c ../qf/source/qf_gc.c ../qf/source/qf_log2.c ../qf/source/qf_new.c ../qf/source/qf_pool.c ../qf/source/qf_psini.c ../qf/source/qf_pspub.c ../qf/source/qf_pwr2.c ../qf/source/qf_tick.c ../qf/source/qmp_get.c ../qf/source/qmp_init.c ../qf/source/qmp_put.c ../qf/source/qte_arm.c ../qf/source/qte_ctor.c ../qf/source/qte_ctr.c ../qf/source/qte_darm.c ../qf/source/qte_rarm.c ../qf/source/qvanilla.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart1.c main.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA204
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA204.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Blinking/Blinky.o: Blinking/Blinky.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Blinking" 
	@${RM} ${OBJECTDIR}/Blinking/Blinky.o.d 
	@${RM} ${OBJECTDIR}/Blinking/Blinky.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Blinking/Blinky.c  -o ${OBJECTDIR}/Blinking/Blinky.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Blinking/Blinky.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Blinking/Blinky.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/bsp.o: ../bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/bsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/bsp.c  -o ${OBJECTDIR}/_ext/1360920944/bsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/bsp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/bsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Display/LEDDisplay.o: Display/LEDDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/LEDDisplay.o.d 
	@${RM} ${OBJECTDIR}/Display/LEDDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Display/LEDDisplay.c  -o ${OBJECTDIR}/Display/LEDDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Display/LEDDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Display/LEDDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Keyboard/Keyboard.o: Keyboard/Keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Keyboard" 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o.d 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Keyboard/Keyboard.c  -o ${OBJECTDIR}/Keyboard/Keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Keyboard/Keyboard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Keyboard/Keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qep.o: ../qep/source/qep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qep.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qep.c  -o ${OBJECTDIR}/_ext/633907107/qep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qep.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qep.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qfsm_dis.o: ../qep/source/qfsm_dis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_dis.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qfsm_dis.c  -o ${OBJECTDIR}/_ext/633907107/qfsm_dis.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qfsm_ini.o: ../qep/source/qfsm_ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_ini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qfsm_ini.c  -o ${OBJECTDIR}/_ext/633907107/qfsm_ini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_dis.o: ../qep/source/qhsm_dis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_dis.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_dis.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_dis.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_in.o: ../qep/source/qhsm_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_in.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_in.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_in.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_in.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_in.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_in.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_ini.o: ../qep/source/qhsm_ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_ini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_ini.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_ini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_top.o: ../qep/source/qhsm_top.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_top.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_top.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_top.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_top.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_top.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_top.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_defer.o: ../qf/source/qa_defer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_defer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_defer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_defer.c  -o ${OBJECTDIR}/_ext/1396818886/qa_defer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_defer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_defer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_fifo.o: ../qf/source/qa_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_fifo.c  -o ${OBJECTDIR}/_ext/1396818886/qa_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_get_.o: ../qf/source/qa_get_.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_get_.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_get_.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_get_.c  -o ${OBJECTDIR}/_ext/1396818886/qa_get_.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_get_.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_get_.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_lifo.o: ../qf/source/qa_lifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_lifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_lifo.c  -o ${OBJECTDIR}/_ext/1396818886/qa_lifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_sub.o: ../qf/source/qa_sub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_sub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_sub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_sub.c  -o ${OBJECTDIR}/_ext/1396818886/qa_sub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_sub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_sub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_usub.o: ../qf/source/qa_usub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_usub.c  -o ${OBJECTDIR}/_ext/1396818886/qa_usub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_usub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_usub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_usuba.o: ../qf/source/qa_usuba.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usuba.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_usuba.c  -o ${OBJECTDIR}/_ext/1396818886/qa_usuba.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_fifo.o: ../qf/source/qeq_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_fifo.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_get.o: ../qf/source/qeq_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_get.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_get.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_get.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_get.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_get.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_init.o: ../qf/source/qeq_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_init.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_init.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_lifo.o: ../qf/source/qeq_lifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_lifo.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_act.o: ../qf/source/qf_act.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_act.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_act.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_act.c  -o ${OBJECTDIR}/_ext/1396818886/qf_act.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_act.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_act.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_gc.o: ../qf/source/qf_gc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_gc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_gc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_gc.c  -o ${OBJECTDIR}/_ext/1396818886/qf_gc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_gc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_gc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_log2.o: ../qf/source/qf_log2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_log2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_log2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_log2.c  -o ${OBJECTDIR}/_ext/1396818886/qf_log2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_log2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_log2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_new.o: ../qf/source/qf_new.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_new.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_new.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_new.c  -o ${OBJECTDIR}/_ext/1396818886/qf_new.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_new.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_new.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pool.o: ../qf/source/qf_pool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pool.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pool.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pool.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pool.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pool.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_psini.o: ../qf/source/qf_psini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_psini.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_psini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_psini.c  -o ${OBJECTDIR}/_ext/1396818886/qf_psini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_psini.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_psini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pspub.o: ../qf/source/qf_pspub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pspub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pspub.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pspub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pwr2.o: ../qf/source/qf_pwr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pwr2.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_tick.o: ../qf/source/qf_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_tick.c  -o ${OBJECTDIR}/_ext/1396818886/qf_tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_tick.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_get.o: ../qf/source/qmp_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_get.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_get.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_get.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_get.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_get.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_init.o: ../qf/source/qmp_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_init.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_init.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_put.o: ../qf/source/qmp_put.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_put.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_put.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_put.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_put.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_put.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_put.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_arm.o: ../qf/source/qte_arm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_arm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_arm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_arm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_arm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_arm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_arm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_ctor.o: ../qf/source/qte_ctor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_ctor.c  -o ${OBJECTDIR}/_ext/1396818886/qte_ctor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_ctr.o: ../qf/source/qte_ctr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_ctr.c  -o ${OBJECTDIR}/_ext/1396818886/qte_ctr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_darm.o: ../qf/source/qte_darm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_darm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_darm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_darm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_darm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_darm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_darm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_rarm.o: ../qf/source/qte_rarm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_rarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_rarm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_rarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qvanilla.o: ../qf/source/qvanilla.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qvanilla.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qvanilla.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qvanilla.c  -o ${OBJECTDIR}/_ext/1396818886/qvanilla.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qvanilla.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qvanilla.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/Blinking/Blinky.o: Blinking/Blinky.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Blinking" 
	@${RM} ${OBJECTDIR}/Blinking/Blinky.o.d 
	@${RM} ${OBJECTDIR}/Blinking/Blinky.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Blinking/Blinky.c  -o ${OBJECTDIR}/Blinking/Blinky.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Blinking/Blinky.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Blinking/Blinky.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/bsp.o: ../bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/bsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/bsp.c  -o ${OBJECTDIR}/_ext/1360920944/bsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/bsp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/bsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Display/LEDDisplay.o: Display/LEDDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/LEDDisplay.o.d 
	@${RM} ${OBJECTDIR}/Display/LEDDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Display/LEDDisplay.c  -o ${OBJECTDIR}/Display/LEDDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Display/LEDDisplay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Display/LEDDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Keyboard/Keyboard.o: Keyboard/Keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Keyboard" 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o.d 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Keyboard/Keyboard.c  -o ${OBJECTDIR}/Keyboard/Keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Keyboard/Keyboard.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Keyboard/Keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qep.o: ../qep/source/qep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qep.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qep.c  -o ${OBJECTDIR}/_ext/633907107/qep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qep.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qep.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qfsm_dis.o: ../qep/source/qfsm_dis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_dis.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qfsm_dis.c  -o ${OBJECTDIR}/_ext/633907107/qfsm_dis.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qfsm_dis.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qfsm_ini.o: ../qep/source/qfsm_ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qfsm_ini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qfsm_ini.c  -o ${OBJECTDIR}/_ext/633907107/qfsm_ini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qfsm_ini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_dis.o: ../qep/source/qhsm_dis.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_dis.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_dis.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_dis.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_dis.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_in.o: ../qep/source/qhsm_in.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_in.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_in.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_in.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_in.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_in.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_in.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_ini.o: ../qep/source/qhsm_ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_ini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_ini.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_ini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_ini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/633907107/qhsm_top.o: ../qep/source/qhsm_top.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/633907107" 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_top.o.d 
	@${RM} ${OBJECTDIR}/_ext/633907107/qhsm_top.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qep/source/qhsm_top.c  -o ${OBJECTDIR}/_ext/633907107/qhsm_top.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/633907107/qhsm_top.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/633907107/qhsm_top.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_defer.o: ../qf/source/qa_defer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_defer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_defer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_defer.c  -o ${OBJECTDIR}/_ext/1396818886/qa_defer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_defer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_defer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_fifo.o: ../qf/source/qa_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_fifo.c  -o ${OBJECTDIR}/_ext/1396818886/qa_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_get_.o: ../qf/source/qa_get_.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_get_.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_get_.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_get_.c  -o ${OBJECTDIR}/_ext/1396818886/qa_get_.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_get_.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_get_.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_lifo.o: ../qf/source/qa_lifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_lifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_lifo.c  -o ${OBJECTDIR}/_ext/1396818886/qa_lifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_lifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_sub.o: ../qf/source/qa_sub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_sub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_sub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_sub.c  -o ${OBJECTDIR}/_ext/1396818886/qa_sub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_sub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_sub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_usub.o: ../qf/source/qa_usub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_usub.c  -o ${OBJECTDIR}/_ext/1396818886/qa_usub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_usub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_usub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qa_usuba.o: ../qf/source/qa_usuba.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qa_usuba.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qa_usuba.c  -o ${OBJECTDIR}/_ext/1396818886/qa_usuba.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qa_usuba.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_fifo.o: ../qf/source/qeq_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_fifo.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_get.o: ../qf/source/qeq_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_get.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_get.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_get.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_get.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_get.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_init.o: ../qf/source/qeq_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_init.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qeq_lifo.o: ../qf/source/qeq_lifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qeq_lifo.c  -o ${OBJECTDIR}/_ext/1396818886/qeq_lifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qeq_lifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_act.o: ../qf/source/qf_act.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_act.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_act.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_act.c  -o ${OBJECTDIR}/_ext/1396818886/qf_act.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_act.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_act.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_gc.o: ../qf/source/qf_gc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_gc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_gc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_gc.c  -o ${OBJECTDIR}/_ext/1396818886/qf_gc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_gc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_gc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_log2.o: ../qf/source/qf_log2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_log2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_log2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_log2.c  -o ${OBJECTDIR}/_ext/1396818886/qf_log2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_log2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_log2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_new.o: ../qf/source/qf_new.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_new.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_new.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_new.c  -o ${OBJECTDIR}/_ext/1396818886/qf_new.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_new.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_new.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pool.o: ../qf/source/qf_pool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pool.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pool.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pool.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pool.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pool.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_psini.o: ../qf/source/qf_psini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_psini.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_psini.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_psini.c  -o ${OBJECTDIR}/_ext/1396818886/qf_psini.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_psini.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_psini.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pspub.o: ../qf/source/qf_pspub.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pspub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pspub.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pspub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pspub.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_pwr2.o: ../qf/source/qf_pwr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_pwr2.c  -o ${OBJECTDIR}/_ext/1396818886/qf_pwr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_pwr2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qf_tick.o: ../qf/source/qf_tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qf_tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qf_tick.c  -o ${OBJECTDIR}/_ext/1396818886/qf_tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qf_tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qf_tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_get.o: ../qf/source/qmp_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_get.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_get.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_get.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_get.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_get.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_init.o: ../qf/source/qmp_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_init.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qmp_put.o: ../qf/source/qmp_put.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_put.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qmp_put.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qmp_put.c  -o ${OBJECTDIR}/_ext/1396818886/qmp_put.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qmp_put.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qmp_put.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_arm.o: ../qf/source/qte_arm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_arm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_arm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_arm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_arm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_arm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_arm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_ctor.o: ../qf/source/qte_ctor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_ctor.c  -o ${OBJECTDIR}/_ext/1396818886/qte_ctor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_ctor.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_ctr.o: ../qf/source/qte_ctr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_ctr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_ctr.c  -o ${OBJECTDIR}/_ext/1396818886/qte_ctr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_ctr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_darm.o: ../qf/source/qte_darm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_darm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_darm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_darm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_darm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_darm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_darm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qte_rarm.o: ../qf/source/qte_rarm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qte_rarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qte_rarm.c  -o ${OBJECTDIR}/_ext/1396818886/qte_rarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qte_rarm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1396818886/qvanilla.o: ../qf/source/qvanilla.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1396818886" 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qvanilla.o.d 
	@${RM} ${OBJECTDIR}/_ext/1396818886/qvanilla.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qf/source/qvanilla.c  -o ${OBJECTDIR}/_ext/1396818886/qvanilla.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1396818886/qvanilla.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1396818886/qvanilla.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -mlarge-code -mlarge-data -O0 -I"../include" -I"../port" -I"../qep" -I"../qf" -I"../bsp" -I"Keyboard" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=256,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=256,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/QPC_portace.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
