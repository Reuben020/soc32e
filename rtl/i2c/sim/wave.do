onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/clk
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/reset
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cCommand
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cWriteData
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cReadData
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/cycleDone
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cTransactionValid
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cBusy
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cWriteAck
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cReadDataValid
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cScl
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/i2cSda
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/state
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/nextState
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/bitCounter
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/bitCounterNext
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/bitsDone
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/dataReg
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/dataRegNext
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sclOutNext
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sclOut
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sclIn
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sdaOutNext
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sdaOut
add wave -noupdate -expand -group i2cUnit /i2cUnit_tb/dut/sdaIn
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/A0
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/A1
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/A2
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/ADDR_Rcvd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/BitCounter
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/CTRL_Rcvd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/ControlByte
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MACK_Rcvd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryBlock
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte00
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte01
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte02
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte03
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte04
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte05
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte06
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte07
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte08
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte09
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0A
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0B
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0C
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0D
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0E
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/MemoryByte0F
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/PageAddress
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/RESET
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/RdCycle
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/RdDataByte
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/RdPointer
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/RdWrBit
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SCL
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SDA
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SDA_DO
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SDA_DriveEnable
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SDA_DriveEnableDlyd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/SDA_OE
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/START_Rcvd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/STOP_Rcvd
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/ShiftRegister
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/StartAddress
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/TimingCheckEnable
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/WP
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/WrCounter
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/WrCycle
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/WrDataByte
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/WriteActive
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/tAA
add wave -noupdate -expand -group EEPROM /i2cUnit_tb/eeprom/tWC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6560000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 258
configure wave -valuecolwidth 82
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {265114650 ps} {304867650 ps}
