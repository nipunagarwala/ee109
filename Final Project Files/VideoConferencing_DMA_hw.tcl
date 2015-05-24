# TCL File Generated by Component Editor 13.0sp1
# Sat May 23 22:34:30 PDT 2015
# DO NOT MODIFY


# 
# VideoConferencing_DMA "VideoConferencing_DMA" v1.0
#  2015.05.23.22:34:30
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module VideoConferencing_DMA
# 
set_module_property DESCRIPTION ""
set_module_property NAME VideoConferencing_DMA
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME VideoConferencing_DMA
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL VideoConferencing_DMA
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file VideoConferencing_DMA.v VERILOG PATH VideoConferencing_DMA.v TOP_LEVEL_FILE
add_fileset_file Audio_CustomDMA.v VERILOG PATH Audio_CustomDMA.v
add_fileset_file Ethernet_DMA.v VERILOG PATH Ethernet_DMA.v
add_fileset_file Video_CustomDMA.v VERILOG PATH Video_CustomDMA.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL VideoConferencing_DMA
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file Audio_CustomDMA.v VERILOG PATH Audio_CustomDMA.v
add_fileset_file Ethernet_DMA.v VERILOG PATH Ethernet_DMA.v
add_fileset_file Video_CustomDMA.v VERILOG PATH Video_CustomDMA.v
add_fileset_file VideoConferencing_DMA.v VERILOG PATH VideoConferencing_DMA.v

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL VideoConferencing_DMA
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file Audio_CustomDMA.v VERILOG PATH Audio_CustomDMA.v
add_fileset_file Ethernet_DMA.v VERILOG PATH Ethernet_DMA.v
add_fileset_file Video_CustomDMA.v VERILOG PATH Video_CustomDMA.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock_sink
set_interface_property avalon_slave associatedReset reset_sink
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave slave_chipselect chipselect Input 1
add_interface_port avalon_slave slave_writedata writedata Input 32
add_interface_port avalon_slave slave_readdata readdata Output 32
add_interface_port avalon_slave slave_read read Input 1
add_interface_port avalon_slave slave_address address Input 8
add_interface_port avalon_slave slave_write write Input 1
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock clock_sink
set_interface_property avalon_master associatedReset reset_sink
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master master_waitrequest waitrequest Input 1
add_interface_port avalon_master master_address address Output 32
add_interface_port avalon_master master_write write Output 1
add_interface_port avalon_master master_byteenable byteenable Output 2
add_interface_port avalon_master master_writedata writedata Output 16


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end LEDR_conduit export Output 18
add_interface_port conduit_end LEDG_conduit export Output 8
add_interface_port conduit_end HEX0_conduit export Output 7
add_interface_port conduit_end HEX1_conduit export Output 7
add_interface_port conduit_end HEX2_conduit export Output 7
add_interface_port conduit_end HEX3_conduit export Output 7
add_interface_port conduit_end HEX4_conduit export Output 7
add_interface_port conduit_end HEX5_conduit export Output 7
add_interface_port conduit_end HEX6_conduit export Output 7
add_interface_port conduit_end HEX7_conduit export Output 7
add_interface_port conduit_end SW_conduit export Input 18


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clk clk Input 1


# 
# connection point avalon_streaming_sink
# 
add_interface avalon_streaming_sink avalon_streaming end
set_interface_property avalon_streaming_sink associatedClock clock_sink
set_interface_property avalon_streaming_sink associatedReset reset_sink
set_interface_property avalon_streaming_sink dataBitsPerSymbol 8
set_interface_property avalon_streaming_sink errorDescriptor ""
set_interface_property avalon_streaming_sink firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink maxChannel 0
set_interface_property avalon_streaming_sink readyLatency 0
set_interface_property avalon_streaming_sink ENABLED true
set_interface_property avalon_streaming_sink EXPORT_OF ""
set_interface_property avalon_streaming_sink PORT_NAME_MAP ""
set_interface_property avalon_streaming_sink SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_sink eth_rx_mod channel Input 2
add_interface_port avalon_streaming_sink eth_rx_data data Input 32
add_interface_port avalon_streaming_sink eth_rx_sop startofpacket Input 1
add_interface_port avalon_streaming_sink eth_rx_error error Input 6
add_interface_port avalon_streaming_sink eth_rx_dval valid Input 1
add_interface_port avalon_streaming_sink eth_rx_rdy ready Output 1
add_interface_port avalon_streaming_sink eth_rx_eop endofpacket Input 1


# 
# connection point avalon_streaming_source
# 
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock_sink
set_interface_property avalon_streaming_source associatedReset reset_sink
set_interface_property avalon_streaming_source dataBitsPerSymbol 8
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 0
set_interface_property avalon_streaming_source ENABLED true
set_interface_property avalon_streaming_source EXPORT_OF ""
set_interface_property avalon_streaming_source PORT_NAME_MAP ""
set_interface_property avalon_streaming_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_source eth_tx_error error Output 6
add_interface_port avalon_streaming_source eth_tx_rdy ready Input 1
add_interface_port avalon_streaming_source eth_tx_data data Output 32
add_interface_port avalon_streaming_source eth_tx_mod channel Output 2
add_interface_port avalon_streaming_source eth_tx_wren valid Output 1
add_interface_port avalon_streaming_source eth_tx_sop startofpacket Output 1
add_interface_port avalon_streaming_source eth_tx_eop endofpacket Output 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink resetn reset_n Input 1


# 
# connection point avalon_master_1
# 
add_interface avalon_master_1 avalon start
set_interface_property avalon_master_1 addressUnits SYMBOLS
set_interface_property avalon_master_1 associatedClock clock_sink
set_interface_property avalon_master_1 associatedReset reset_sink
set_interface_property avalon_master_1 bitsPerSymbol 8
set_interface_property avalon_master_1 burstOnBurstBoundariesOnly false
set_interface_property avalon_master_1 burstcountUnits WORDS
set_interface_property avalon_master_1 doStreamReads false
set_interface_property avalon_master_1 doStreamWrites false
set_interface_property avalon_master_1 holdTime 0
set_interface_property avalon_master_1 linewrapBursts false
set_interface_property avalon_master_1 maximumPendingReadTransactions 0
set_interface_property avalon_master_1 readLatency 0
set_interface_property avalon_master_1 readWaitTime 1
set_interface_property avalon_master_1 setupTime 0
set_interface_property avalon_master_1 timingUnits Cycles
set_interface_property avalon_master_1 writeWaitTime 0
set_interface_property avalon_master_1 ENABLED true
set_interface_property avalon_master_1 EXPORT_OF ""
set_interface_property avalon_master_1 PORT_NAME_MAP ""
set_interface_property avalon_master_1 SVD_ADDRESS_GROUP ""

add_interface_port avalon_master_1 audio_read read Output 1
add_interface_port avalon_master_1 audio_write write Output 1
add_interface_port avalon_master_1 audio_address address Output 32
add_interface_port avalon_master_1 audio_chipselect chipselect Output 1
add_interface_port avalon_master_1 audio_writedata writedata Output 32
add_interface_port avalon_master_1 audio_irq readdatavalid Input 1
add_interface_port avalon_master_1 audio_readdata readdata Input 32
add_interface_port avalon_master_1 audio_DACDAT waitrequest Input 1


# 
# connection point avalon_master_2
# 
add_interface avalon_master_2 avalon start
set_interface_property avalon_master_2 addressUnits SYMBOLS
set_interface_property avalon_master_2 associatedClock clock_sink
set_interface_property avalon_master_2 associatedReset reset_sink
set_interface_property avalon_master_2 bitsPerSymbol 8
set_interface_property avalon_master_2 burstOnBurstBoundariesOnly false
set_interface_property avalon_master_2 burstcountUnits WORDS
set_interface_property avalon_master_2 doStreamReads false
set_interface_property avalon_master_2 doStreamWrites false
set_interface_property avalon_master_2 holdTime 0
set_interface_property avalon_master_2 linewrapBursts false
set_interface_property avalon_master_2 maximumPendingReadTransactions 0
set_interface_property avalon_master_2 readLatency 0
set_interface_property avalon_master_2 readWaitTime 1
set_interface_property avalon_master_2 setupTime 0
set_interface_property avalon_master_2 timingUnits Cycles
set_interface_property avalon_master_2 writeWaitTime 0
set_interface_property avalon_master_2 ENABLED true
set_interface_property avalon_master_2 EXPORT_OF ""
set_interface_property avalon_master_2 PORT_NAME_MAP ""
set_interface_property avalon_master_2 SVD_ADDRESS_GROUP ""

add_interface_port avalon_master_2 sram_address address Output 32
add_interface_port avalon_master_2 sram_byteenable byteenable Output 2
add_interface_port avalon_master_2 sram_read read Output 1
add_interface_port avalon_master_2 sram_readdata readdata Input 16
add_interface_port avalon_master_2 sram_readdatavalid readdatavalid Input 1
add_interface_port avalon_master_2 sram_waitrequest waitrequest Input 1
