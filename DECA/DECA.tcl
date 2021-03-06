# Copyright (C) 2017  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: DECA.tcl
# Generated on: Fri Jun 15 23:00:40 2018

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "DECA"]} {
		puts "Project DECA is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists DECA]} {
		project_open -revision DECA DECA
	} else {
		project_new -revision DECA DECA
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "MAX 10"
	set_global_assignment -name DEVICE 10M50DAF484C6GES
	set_global_assignment -name TOP_LEVEL_ENTITY DECA_top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 14.1
	set_global_assignment -name LAST_QUARTUS_VERSION "17.1.0 Lite Edition"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "21:41:11 MAY 14,2018"
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name AUTO_RESTART_CONFIGURATION OFF
	set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
	set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name TIMEQUEST_MULTICORNER_ANALYSIS ON
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name OPTIMIZATION_MODE "HIGH PERFORMANCE EFFORT"
	set_global_assignment -name ALLOW_REGISTER_RETIMING OFF
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name EXTERNAL_FLASH_FALLBACK_ADDRESS 00000000
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "PASSIVE SERIAL"
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name INTERNAL_FLASH_UPDATE_MODE "SINGLE IMAGE WITH ERAM"
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE debug.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334530" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_PIPELINE=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_PIPELINE=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_COUNTER_PIPELINE=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=45" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=0000000000000000000000000000000" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=31" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=16384" -section_id ethernetSmi_debug
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=16384" -section_id ethernetSmi_debug
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2sSlave/rtl/i2sSlaveUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2sSlave/rtl/i2sSlaveCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2sSlave/rtl/i2sSlave.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ram/rtl/systemRamBlock.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/synchronizer.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/grayToBinary.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/grayCounter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ethernet/rtl/smi/ethernetSmiUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ethernet/rtl/smi/ethernetSmiCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ethernet/rtl/smi/ethernetSmiClockUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ethernet/rtl/smi/ethernetSmi.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/singlePortMemory.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/simpleDualPortMemory.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/simpleDualPortDualClockMemory.sv
	set_global_assignment -name VERILOG_FILE ocflash/rtl/ocflash.v -library ocflash
	set_global_assignment -name QIP_FILE ocflash/rtl/ocflash.qip
	set_global_assignment -name SDC_FILE DECA_top.sdc
	set_global_assignment -name SYSTEMVERILOG_FILE DECA_top.sv
	set_global_assignment -name SYSTEMVERILOG_FILE DECA_soc_interconnect.sv
	set_global_assignment -name SYSTEMVERILOG_FILE DECA_soc.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/transaction.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/system.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/result.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/registerFile.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/programCounter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/load.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/globals.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/exceptionTrigger.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/exceptionState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/exceptionEncoder.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/exception.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/debugPkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/data.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/cpu32e2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/boolPkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/architecture.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/address.sv
	set_global_assignment -name SDC_FILE ../parts/cpu32e2/cpu32e2.sdc
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/transactionOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/systemOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/stallLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/resultOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/resultFlagsOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/regfileBOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/regfileAOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/programCounterOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/loadOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/instructionDecoder.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/executeOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/exceptionTriggerOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/exceptionOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/dataOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/controllerState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/controllerPkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/controller.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/conditionCheckLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/controller/addressOutputLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/alu/rtl/aluPkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/alu/rtl/alu.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/remainderState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/divisorState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/divider2Pkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/divider2Controller.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/divider2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/divider2/rtl/dividendState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/multiplier/rtl/multiplier.sv
	set_global_assignment -name QIP_FILE ../parts/cpu32e2/rtl/execute/multiplier/rtl/dspMultiplier.qip
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shifterPkg.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shifter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shift16.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shift8.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shift4.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shift2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/execute/shifter/rtl/shift1.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/regfile/rtl/regfileLiveValueTable.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/regfile/rtl/regfileInputRegisters.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/regfile/rtl/regfileDebug.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/regfile/rtl/regfileBank.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/cpu32e2/rtl/regfile/rtl/regfile.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2c/rtl/i2cUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2c/rtl/i2cCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2c/rtl/i2cClockUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/i2c/rtl/i2c.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/interrupt/rtl/interruptState.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/interrupt/rtl/interruptController.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/io/rtl/io.sv
	set_global_assignment -name VERILOG_FILE ../parts/pll/rtl/pll2.v
	set_global_assignment -name QIP_FILE ../parts/pll/rtl/pll2.qip
	set_global_assignment -name QIP_FILE ../parts/pll/rtl/pll.qip
	set_global_assignment -name QIP_FILE ../parts/ram/rtl/systemRam.qip
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/ram/rtl/ram.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/random/rtl/randomCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/random/rtl/random.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/resetCore/rtl/resetSync.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/resetCore/rtl/resetMasterSync.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/resetCore/rtl/resetCore.sv
	set_global_assignment -name VERILOG_FILE ../parts/sdram/rtl/soc32e_sdram_test_component.v
	set_global_assignment -name VERILOG_FILE ../parts/sdram/rtl/soc32e_sdram.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sdram/rtl/sdram.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sound/rtl/soundCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sound/rtl/sound.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sound/rtl/sigmaDeltaUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sound/rtl/pwmUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/sound/rtl/buffer.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/spi/rtl/spiWithFifos.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/spi/rtl/spiUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/spi/rtl/spiCoreWithFifos.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/spi/rtl/spiCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/spi/rtl/spi.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/timer/rtl/timerUnit.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/timer/rtl/timerCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/timer/rtl/timer.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uartTransmitter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uartReceiver2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uartReceiver.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uartCore2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uartCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uart2.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/uart/rtl/uart.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/vgaDriver.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/vgaCore.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/vga.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/sdramArbiterFifoMemory.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/sdramArbiterFifo.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/sdramArbiter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/lineFetchController.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/vga/rtl/lineBuffer.sv
	set_global_assignment -name MIF_FILE ocFlashContents.mif
	set_global_assignment -name SIGNALTAP_FILE debug.stp
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/fifo/singleClockFifo.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/fifo/dualClockFifo/writeLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/fifo/dualClockFifo/readLogic.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/fifo/dualClockFifo/dualClockFifo.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/trueDualPortMemory.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/trueDualPortDualClockMemory.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../parts/library/memoryBlock/singlePortByteEnMemory.sv
	set_global_assignment -name SLD_FILE db/debug_auto_stripped.stp
	set_location_assignment PIN_M9 -to ADC_CLK_10
	set_location_assignment PIN_M8 -to MAX10_CLK1_50
	set_location_assignment PIN_P11 -to MAX10_CLK2_50
	set_location_assignment PIN_H21 -to KEY[0]
	set_location_assignment PIN_H22 -to KEY[1]
	set_location_assignment PIN_C7 -to LED[0]
	set_location_assignment PIN_C8 -to LED[1]
	set_location_assignment PIN_A6 -to LED[2]
	set_location_assignment PIN_B7 -to LED[3]
	set_location_assignment PIN_C4 -to LED[4]
	set_location_assignment PIN_A5 -to LED[5]
	set_location_assignment PIN_B4 -to LED[6]
	set_location_assignment PIN_C5 -to LED[7]
	set_location_assignment PIN_R14 -to AUDIO_BCLK
	set_location_assignment PIN_P15 -to AUDIO_DIN_MFP1
	set_location_assignment PIN_P18 -to AUDIO_DOUT_MFP2
	set_location_assignment PIN_M22 -to AUDIO_GPIO_MFP5
	set_location_assignment PIN_P14 -to AUDIO_MCLK
	set_location_assignment PIN_N21 -to AUDIO_MISO_MFP4
	set_location_assignment PIN_M21 -to AUDIO_RESET_n
	set_location_assignment PIN_P19 -to AUDIO_SCLK_MFP3
	set_location_assignment PIN_N22 -to AUDIO_SPI_SELECT
	set_location_assignment PIN_R15 -to AUDIO_WCLK
	set_location_assignment PIN_E21 -to DDR3_A[0]
	set_location_assignment PIN_V20 -to DDR3_A[1]
	set_location_assignment PIN_V21 -to DDR3_A[2]
	set_location_assignment PIN_C20 -to DDR3_A[3]
	set_location_assignment PIN_Y21 -to DDR3_A[4]
	set_location_assignment PIN_J14 -to DDR3_A[5]
	set_location_assignment PIN_V18 -to DDR3_A[6]
	set_location_assignment PIN_U20 -to DDR3_A[7]
	set_location_assignment PIN_Y20 -to DDR3_A[8]
	set_location_assignment PIN_W22 -to DDR3_A[9]
	set_location_assignment PIN_C22 -to DDR3_A[10]
	set_location_assignment PIN_Y22 -to DDR3_A[11]
	set_location_assignment PIN_N18 -to DDR3_A[12]
	set_location_assignment PIN_V22 -to DDR3_A[13]
	set_location_assignment PIN_W20 -to DDR3_A[14]
	set_location_assignment PIN_D19 -to DDR3_BA[0]
	set_location_assignment PIN_W19 -to DDR3_BA[1]
	set_location_assignment PIN_F19 -to DDR3_BA[2]
	set_location_assignment PIN_E20 -to DDR3_CAS_n
	set_location_assignment PIN_B22 -to DDR3_CKE
	set_location_assignment PIN_E18 -to DDR3_CK_n
	set_location_assignment PIN_D18 -to DDR3_CK_p
	set_location_assignment PIN_N15 -to DDR3_CLK_50
	set_location_assignment PIN_F22 -to DDR3_CS_n
	set_location_assignment PIN_N19 -to DDR3_DM[0]
	set_location_assignment PIN_J15 -to DDR3_DM[1]
	set_location_assignment PIN_L20 -to DDR3_DQ[0]
	set_location_assignment PIN_L19 -to DDR3_DQ[1]
	set_location_assignment PIN_L18 -to DDR3_DQ[2]
	set_location_assignment PIN_M15 -to DDR3_DQ[3]
	set_location_assignment PIN_M18 -to DDR3_DQ[4]
	set_location_assignment PIN_M14 -to DDR3_DQ[5]
	set_location_assignment PIN_M20 -to DDR3_DQ[6]
	set_location_assignment PIN_N20 -to DDR3_DQ[7]
	set_location_assignment PIN_K19 -to DDR3_DQ[8]
	set_location_assignment PIN_K18 -to DDR3_DQ[9]
	set_location_assignment PIN_J18 -to DDR3_DQ[10]
	set_location_assignment PIN_K20 -to DDR3_DQ[11]
	set_location_assignment PIN_H18 -to DDR3_DQ[12]
	set_location_assignment PIN_J20 -to DDR3_DQ[13]
	set_location_assignment PIN_H20 -to DDR3_DQ[14]
	set_location_assignment PIN_H19 -to DDR3_DQ[15]
	set_location_assignment PIN_L14 -to DDR3_DQS_p[0]
	set_location_assignment PIN_K14 -to DDR3_DQS_p[1]
	set_location_assignment PIN_G22 -to DDR3_ODT
	set_location_assignment PIN_D22 -to DDR3_RAS_n
	set_location_assignment PIN_U19 -to DDR3_RESET_n
	set_location_assignment PIN_E22 -to DDR3_WE_n
	set_location_assignment PIN_P12 -to FLASH_DATA[0]
	set_location_assignment PIN_V4 -to FLASH_DATA[1]
	set_location_assignment PIN_V5 -to FLASH_DATA[2]
	set_location_assignment PIN_P10 -to FLASH_DATA[3]
	set_location_assignment PIN_R12 -to FLASH_DCLK
	set_location_assignment PIN_R10 -to FLASH_NCSO
	set_location_assignment PIN_W10 -to FLASH_RESET_n
	set_location_assignment PIN_E9 -to G_SENSOR_CS_n
	set_location_assignment PIN_E8 -to G_SENSOR_INT1
	set_location_assignment PIN_D5 -to G_SENSOR_SDO
	set_location_assignment PIN_D7 -to G_SENSOR_INT2
	set_location_assignment PIN_C10 -to HDMI_I2C_SCL
	set_location_assignment PIN_B15 -to HDMI_I2C_SDA
	set_location_assignment PIN_A9 -to HDMI_I2S[0]
	set_location_assignment PIN_A11 -to HDMI_I2S[1]
	set_location_assignment PIN_A8 -to HDMI_I2S[2]
	set_location_assignment PIN_B8 -to HDMI_I2S[3]
	set_location_assignment PIN_A10 -to HDMI_LRCLK
	set_location_assignment PIN_A7 -to HDMI_MCLK
	set_location_assignment PIN_D12 -to HDMI_SCLK
	set_location_assignment PIN_A20 -to HDMI_TX_CLK
	set_location_assignment PIN_C18 -to HDMI_TX_D[0]
	set_location_assignment PIN_D17 -to HDMI_TX_D[1]
	set_location_assignment PIN_C17 -to HDMI_TX_D[2]
	set_location_assignment PIN_C19 -to HDMI_TX_D[3]
	set_location_assignment PIN_D14 -to HDMI_TX_D[4]
	set_location_assignment PIN_B19 -to HDMI_TX_D[5]
	set_location_assignment PIN_D13 -to HDMI_TX_D[6]
	set_location_assignment PIN_A19 -to HDMI_TX_D[7]
	set_location_assignment PIN_C14 -to HDMI_TX_D[8]
	set_location_assignment PIN_A17 -to HDMI_TX_D[9]
	set_location_assignment PIN_B16 -to HDMI_TX_D[10]
	set_location_assignment PIN_C15 -to HDMI_TX_D[11]
	set_location_assignment PIN_A14 -to HDMI_TX_D[12]
	set_location_assignment PIN_A15 -to HDMI_TX_D[13]
	set_location_assignment PIN_A12 -to HDMI_TX_D[14]
	set_location_assignment PIN_A16 -to HDMI_TX_D[15]
	set_location_assignment PIN_A13 -to HDMI_TX_D[16]
	set_location_assignment PIN_C16 -to HDMI_TX_D[17]
	set_location_assignment PIN_C12 -to HDMI_TX_D[18]
	set_location_assignment PIN_B17 -to HDMI_TX_D[19]
	set_location_assignment PIN_B12 -to HDMI_TX_D[20]
	set_location_assignment PIN_B14 -to HDMI_TX_D[21]
	set_location_assignment PIN_A18 -to HDMI_TX_D[22]
	set_location_assignment PIN_C13 -to HDMI_TX_D[23]
	set_location_assignment PIN_C9 -to HDMI_TX_DE
	set_location_assignment PIN_B11 -to HDMI_TX_HS
	set_location_assignment PIN_B10 -to HDMI_TX_INT
	set_location_assignment PIN_C11 -to HDMI_TX_VS
	set_location_assignment PIN_AA9 -to LIGHT_INT
	set_location_assignment PIN_V3 -to MIPI_CORE_EN
	set_location_assignment PIN_M1 -to MIPI_I2C_SCL
	set_location_assignment PIN_M2 -to MIPI_I2C_SDA
	set_location_assignment PIN_E10 -to MIPI_LP_MC_n
	set_location_assignment PIN_E11 -to MIPI_LP_MC_p
	set_location_assignment PIN_A3 -to MIPI_LP_MD_n[0]
	set_location_assignment PIN_C2 -to MIPI_LP_MD_n[1]
	set_location_assignment PIN_B2 -to MIPI_LP_MD_n[2]
	set_location_assignment PIN_A2 -to MIPI_LP_MD_n[3]
	set_location_assignment PIN_A4 -to MIPI_LP_MD_p[0]
	set_location_assignment PIN_C3 -to MIPI_LP_MD_p[1]
	set_location_assignment PIN_B1 -to MIPI_LP_MD_p[2]
	set_location_assignment PIN_B3 -to MIPI_LP_MD_p[3]
	set_location_assignment PIN_U3 -to MIPI_MCLK
	set_location_assignment PIN_N5 -to MIPI_MC_p
	set_location_assignment PIN_R2 -to MIPI_MD_p[0]
	set_location_assignment PIN_N1 -to MIPI_MD_p[1]
	set_location_assignment PIN_T2 -to MIPI_MD_p[2]
	set_location_assignment PIN_N2 -to MIPI_MD_p[3]
	set_location_assignment PIN_T3 -to MIPI_RESET_n
	set_location_assignment PIN_U1 -to MIPI_WP
	set_location_assignment PIN_R4 -to NET_COL
	set_location_assignment PIN_P5 -to NET_CRS
	set_location_assignment PIN_R5 -to NET_MDC
	set_location_assignment PIN_N8 -to NET_MDIO
	set_location_assignment PIN_V9 -to NET_PCF_EN
	set_location_assignment PIN_R3 -to NET_RESET_n
	set_location_assignment PIN_U5 -to NET_RXD[0]
	set_location_assignment PIN_U4 -to NET_RXD[1]
	set_location_assignment PIN_R7 -to NET_RXD[2]
	set_location_assignment PIN_P8 -to NET_RXD[3]
	set_location_assignment PIN_T6 -to NET_RX_CLK
	set_location_assignment PIN_P4 -to NET_RX_DV
	set_location_assignment PIN_V1 -to NET_RX_ER
	set_location_assignment PIN_U2 -to NET_TXD[0]
	set_location_assignment PIN_W1 -to NET_TXD[1]
	set_location_assignment PIN_N9 -to NET_TXD[2]
	set_location_assignment PIN_W2 -to NET_TXD[3]
	set_location_assignment PIN_T5 -to NET_TX_CLK
	set_location_assignment PIN_P3 -to NET_TX_EN
	set_location_assignment PIN_Y4 -to PMONITOR_ALERT
	set_location_assignment PIN_AB9 -to RH_TEMP_DRDY_n
	set_location_assignment PIN_T20 -to SD_CLK
	set_location_assignment PIN_T21 -to SD_CMD
	set_location_assignment PIN_U22 -to SD_CMD_DIR
	set_location_assignment PIN_T22 -to SD_D0_DIR
	set_location_assignment PIN_U21 -to SD_D123_DIR
	set_location_assignment PIN_R18 -to SD_DAT[0]
	set_location_assignment PIN_T18 -to SD_DAT[1]
	set_location_assignment PIN_T19 -to SD_DAT[2]
	set_location_assignment PIN_R20 -to SD_DAT[3]
	set_location_assignment PIN_R22 -to SD_FB_CLK
	set_location_assignment PIN_P13 -to SD_SEL
	set_location_assignment PIN_J21 -to SW[0]
	set_location_assignment PIN_J22 -to SW[1]
	set_location_assignment PIN_AB4 -to TEMP_CS_n
	set_location_assignment PIN_AA1 -to TEMP_SC
	set_location_assignment PIN_Y2 -to TEMP_SIO
	set_location_assignment PIN_H11 -to USB_CLKIN
	set_location_assignment PIN_J11 -to USB_CS
	set_location_assignment PIN_E12 -to USB_DATA[0]
	set_location_assignment PIN_E13 -to USB_DATA[1]
	set_location_assignment PIN_H13 -to USB_DATA[2]
	set_location_assignment PIN_E14 -to USB_DATA[3]
	set_location_assignment PIN_H14 -to USB_DATA[4]
	set_location_assignment PIN_D15 -to USB_DATA[5]
	set_location_assignment PIN_E15 -to USB_DATA[6]
	set_location_assignment PIN_F15 -to USB_DATA[7]
	set_location_assignment PIN_J13 -to USB_DIR
	set_location_assignment PIN_D8 -to USB_FAULT_n
	set_location_assignment PIN_H12 -to USB_NXT
	set_location_assignment PIN_E16 -to USB_RESET_n
	set_location_assignment PIN_J12 -to USB_STP
	set_location_assignment PIN_Y5 -to GPIO1_D[0]
	set_location_assignment PIN_Y6 -to GPIO1_D[1]
	set_location_assignment PIN_W6 -to GPIO1_D[2]
	set_location_assignment PIN_W7 -to GPIO1_D[3]
	set_location_assignment PIN_W8 -to GPIO1_D[4]
	set_location_assignment PIN_V8 -to GPIO1_D[5]
	set_location_assignment PIN_AB8 -to GPIO1_D[6]
	set_location_assignment PIN_V7 -to GPIO1_D[7]
	set_location_assignment PIN_R11 -to GPIO1_D[8]
	set_location_assignment PIN_AB7 -to GPIO1_D[9]
	set_location_assignment PIN_AB6 -to GPIO1_D[10]
	set_location_assignment PIN_AA7 -to GPIO1_D[11]
	set_location_assignment PIN_AA6 -to GPIO1_D[12]
	set_location_assignment PIN_Y7 -to GPIO1_D[13]
	set_location_assignment PIN_V10 -to GPIO1_D[14]
	set_location_assignment PIN_U7 -to GPIO1_D[15]
	set_location_assignment PIN_W9 -to GPIO1_D[16]
	set_location_assignment PIN_W5 -to GPIO1_D[17]
	set_location_assignment PIN_R9 -to GPIO1_D[18]
	set_location_assignment PIN_W4 -to GPIO1_D[19]
	set_location_assignment PIN_P9 -to GPIO1_D[20]
	set_location_assignment PIN_V17 -to GPIO1_D[21]
	set_location_assignment PIN_W3 -to GPIO1_D[22]
	set_location_assignment PIN_U6 -to BBB_PWR_BUT
	set_location_assignment PIN_AA2 -to BBB_SYS_RESET_n
	set_location_assignment PIN_W18 -to rx
	set_location_assignment PIN_Y18 -to tx
	set_location_assignment PIN_Y10 -to scl[0]
	set_location_assignment PIN_AA10 -to sda[0]
	set_location_assignment PIN_Y19 -to scl[1]
	set_location_assignment PIN_AA17 -to sda[1]
	set_location_assignment PIN_P20 -to scl[2]
	set_location_assignment PIN_P21 -to sda[2]
	set_location_assignment PIN_AB2 -to scl[3]
	set_location_assignment PIN_AB3 -to sda[3]
	set_location_assignment PIN_Y8 -to scl[4]
	set_location_assignment PIN_AA8 -to sda[4]
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|clk" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|receiveValid" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[0]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[1]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[2]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[3]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[4]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|bitCounter[5]" -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[0]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[10]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[11]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[12]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[13]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[14]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[15]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[1]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[2]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[3]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[4]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[5]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[6]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[7]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[8]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|lowerDataReg[9]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|mdc" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|mdio" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|mdioIn" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|mdioOutEnReg" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|mdioOutReg" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|opcodeReg[0]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|opcodeReg[1]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[0]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[10]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[11]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[12]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[13]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[14]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[15]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[1]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[2]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[3]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[4]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[5]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[6]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[7]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[8]" -section_id ethernetSmi_debug
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to "DECA_soc:DECA_soc|ethernetSmi:ethernetSmi|ethernetSmiCore:ethernetSmiCore|ethernetSmiUnit:ethernetSmiUnit|upperDataReg[9]" -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to ethernetSmi_debug|vcc -section_id ethernetSmi_debug
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to ethernetSmi_debug|gnd -section_id ethernetSmi_debug
	set_instance_assignment -name IO_STANDARD "2.5 V" -to ADC_CLK_10
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MAX10_CLK1_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to MAX10_CLK2_50
	set_instance_assignment -name IO_STANDARD "1.5 V SCHMITT TRIGGER" -to KEY[0]
	set_instance_assignment -name IO_STANDARD "1.5 V SCHMITT TRIGGER" -to KEY[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[0]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[2]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[3]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[4]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[5]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[6]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to LED[7]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_BCLK
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_DIN_MFP1
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_DOUT_MFP2
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_GPIO_MFP5
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_MCLK
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_MISO_MFP4
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_RESET_n
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_SCLK_MFP3
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_SPI_SELECT
	set_instance_assignment -name IO_STANDARD "1.5 V" -to AUDIO_WCLK
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[0]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[1]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[2]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[3]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[4]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[5]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[6]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[7]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[8]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[9]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[10]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[11]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[12]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[13]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_A[14]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_BA[0]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_BA[1]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_BA[2]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_CAS_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_CKE
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_CK_n
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_CK_p
	set_instance_assignment -name IO_STANDARD "1.5 V" -to DDR3_CLK_50
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_CS_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DM[0]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DM[1]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[0]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[1]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[2]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[3]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[4]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[5]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[6]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[7]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[8]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[9]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[10]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[11]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[12]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[13]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[14]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_DQ[15]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_DQS_n[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_DQS_n[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_DQS_p[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to DDR3_DQS_p[1]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_ODT
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_RAS_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_RESET_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to DDR3_WE_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_DATA[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_DATA[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_DATA[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_DATA[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_DCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_NCSO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FLASH_RESET_n
	set_instance_assignment -name IO_STANDARD "1.2 V" -to G_SENSOR_CS_n
	set_instance_assignment -name IO_STANDARD "1.2 V" -to G_SENSOR_INT1
	set_instance_assignment -name IO_STANDARD "1.2 V" -to G_SENSOR_SDO
	set_instance_assignment -name IO_STANDARD "1.2 V" -to G_SENSOR_INT2
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2C_SCL
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2C_SDA
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2S[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2S[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2S[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_I2S[3]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_LRCLK
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_MCLK
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_SCLK
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_CLK
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[3]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[4]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[5]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[6]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[7]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[8]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[9]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[10]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[11]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[12]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[13]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[14]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[15]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[16]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[17]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[18]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[19]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[20]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[21]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[22]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_D[23]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_DE
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_HS
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_INT
	set_instance_assignment -name IO_STANDARD "1.8 V" -to HDMI_TX_VS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LIGHT_INT
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_CORE_EN
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_I2C_SCL
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_I2C_SDA
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MC_n
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MC_p
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_n[0]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_n[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_n[2]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_n[3]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_p[0]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_p[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_p[2]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to MIPI_LP_MD_p[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_MCLK
	set_instance_assignment -name IO_STANDARD LVDS -to MIPI_MC_p
	set_instance_assignment -name IO_STANDARD LVDS -to MIPI_MD_p[0]
	set_instance_assignment -name IO_STANDARD LVDS -to MIPI_MD_p[1]
	set_instance_assignment -name IO_STANDARD LVDS -to MIPI_MD_p[2]
	set_instance_assignment -name IO_STANDARD LVDS -to MIPI_MD_p[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_RESET_n
	set_instance_assignment -name IO_STANDARD "2.5 V" -to MIPI_WP
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_COL
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_CRS
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_MDC
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_MDIO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to NET_PCF_EN
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RESET_n
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RXD[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RXD[1]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RXD[2]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RXD[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RX_CLK
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RX_DV
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_RX_ER
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TXD[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TXD[1]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TXD[2]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TXD[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TX_CLK
	set_instance_assignment -name IO_STANDARD "2.5 V" -to NET_TX_EN
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PMONITOR_ALERT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to RH_TEMP_DRDY_n
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_CLK
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_CMD
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_CMD_DIR
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_D0_DIR
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_D123_DIR
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_DAT[0]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_DAT[1]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_DAT[2]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_DAT[3]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to SD_FB_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_SEL
	set_instance_assignment -name IO_STANDARD "1.5 V SCHMITT TRIGGER" -to SW[0]
	set_instance_assignment -name IO_STANDARD "1.5 V SCHMITT TRIGGER" -to SW[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TEMP_CS_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TEMP_SC
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TEMP_SIO
	set_instance_assignment -name IO_STANDARD "1.2 V" -to USB_CLKIN
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_CS
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[3]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[4]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[5]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[6]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DATA[7]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_DIR
	set_instance_assignment -name IO_STANDARD "1.2 V" -to USB_FAULT_n
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_NXT
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_RESET_n
	set_instance_assignment -name IO_STANDARD "1.8 V" -to USB_STP
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[13]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[14]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[15]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[16]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[17]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[18]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[19]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[20]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[21]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO1_D[22]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BBB_PWR_BUT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BBB_SYS_RESET_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rx
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to tx
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to scl[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sda[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to scl[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sda[1]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to scl[2]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to sda[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to scl[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sda[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to scl[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sda[4]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
