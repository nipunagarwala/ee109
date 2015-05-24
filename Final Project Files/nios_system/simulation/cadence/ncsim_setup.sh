
# (C) 2001-2015 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2015.05.23.22:49:28

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios_system"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/timing_adapter_0/
mkdir -p ./libraries/channel_adapter_0/
mkdir -p ./libraries/data_format_adapter_0/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/width_adapter/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_015/
mkdir -p ./libraries/rsp_xbar_demux_013/
mkdir -p ./libraries/rsp_xbar_demux_001/
mkdir -p ./libraries/rsp_xbar_demux/
mkdir -p ./libraries/cmd_xbar_mux_015/
mkdir -p ./libraries/cmd_xbar_mux_001/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_003/
mkdir -p ./libraries/cmd_xbar_demux_002/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/burst_adapter/
mkdir -p ./libraries/limiter/
mkdir -p ./libraries/id_router_020/
mkdir -p ./libraries/id_router_015/
mkdir -p ./libraries/id_router_013/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router_001/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_008/
mkdir -p ./libraries/addr_router_003/
mkdir -p ./libraries/addr_router_002/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/CPU_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/CPU_jtag_debug_module_translator/
mkdir -p ./libraries/CPU_instruction_master_translator/
mkdir -p ./libraries/CPU_custom_instruction_master_multi_slave_translator0/
mkdir -p ./libraries/CPU_custom_instruction_master_multi_xconnect/
mkdir -p ./libraries/CPU_custom_instruction_master_translator/
mkdir -p ./libraries/VideoConferencing_DMA_0/
mkdir -p ./libraries/VGA_DMA_Controller/
mkdir -p ./libraries/LCD_DMA_Controller/
mkdir -p ./libraries/packet_memory/
mkdir -p ./libraries/descriptor_memory/
mkdir -p ./libraries/enet/
mkdir -p ./libraries/LCD_Char_Buffer/
mkdir -p ./libraries/USB/
mkdir -p ./libraries/Accelerometer/
mkdir -p ./libraries/Camera_DMA_Controller/
mkdir -p ./libraries/Video_In_DMA_Controller/
mkdir -p ./libraries/LCD_Dual_Clock_FIFO/
mkdir -p ./libraries/LCD_Scalar/
mkdir -p ./libraries/LCD_RGB_Resampler/
mkdir -p ./libraries/LCD_Controller/
mkdir -p ./libraries/Camera_Clipper/
mkdir -p ./libraries/Camera_Scaler/
mkdir -p ./libraries/Camera_Bayer_Resampler/
mkdir -p ./libraries/Camera_In/
mkdir -p ./libraries/Camera_Config/
mkdir -p ./libraries/Video_In_Scaler/
mkdir -p ./libraries/Video_In_Clipper/
mkdir -p ./libraries/Video_In_RGB_Resampler/
mkdir -p ./libraries/Video_In_CSC/
mkdir -p ./libraries/Video_In_Chroma_Resampler/
mkdir -p ./libraries/Video_In/
mkdir -p ./libraries/IrDA/
mkdir -p ./libraries/External_Clocks/
mkdir -p ./libraries/sysid/
mkdir -p ./libraries/CPU/
mkdir -p ./libraries/VGA_Alpha_Blender/
mkdir -p ./libraries/CPU_fpoint/
mkdir -p ./libraries/VGA_Dual_Clock_FIFO/
mkdir -p ./libraries/VGA_Pixel_Scaler/
mkdir -p ./libraries/VGA_Pixel_RGB_Resampler/
mkdir -p ./libraries/VGA_Controller/
mkdir -p ./libraries/VGA_Char_Buffer/
mkdir -p ./libraries/SRAM/
mkdir -p ./libraries/PS2_Port/
mkdir -p ./libraries/Char_LCD_16x2/
mkdir -p ./libraries/Audio/
mkdir -p ./libraries/OnBoard_AV/
mkdir -p ./libraries/Serial_Port/
mkdir -p ./libraries/Expansion_JP5/
mkdir -p ./libraries/Pushbuttons/
mkdir -p ./libraries/Slider_Switches/
mkdir -p ./libraries/HEX7_HEX4/
mkdir -p ./libraries/HEX3_HEX0/
mkdir -p ./libraries/Green_LEDs/
mkdir -p ./libraries/Red_LEDs/
mkdir -p ./libraries/SDRAM/
mkdir -p ./libraries/Interval_Timer/
mkdir -p ./libraries/JTAG_UART/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneive_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/nios_system_packet_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_descriptor_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  ncvlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_timing_adapter_0.v"        -work timing_adapter_0                                                         -cdslib ./cds_libs/timing_adapter_0.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_timing_adapter_0_fifo.v"   -work timing_adapter_0                                                         -cdslib ./cds_libs/timing_adapter_0.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_channel_adapter_0.v"       -work channel_adapter_0                                                        -cdslib ./cds_libs/channel_adapter_0.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_data_format_adapter_0.v"   -work data_format_adapter_0                                                    -cdslib ./cds_libs/data_format_adapter_0.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_error_adapter_0.v"             -work error_adapter_0                                                          -cdslib ./cds_libs/error_adapter_0.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_channel_adapter_0.v"           -work channel_adapter_0                                                        -cdslib ./cds_libs/channel_adapter_0.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_data_format_adapter_0.v"       -work data_format_adapter_0                                                    -cdslib ./cds_libs/data_format_adapter_0.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001.v"                         -work avalon_st_adapter_001                                                    -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter.v"                             -work avalon_st_adapter                                                        -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                                       
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_irq_mapper.sv"                                   -work irq_mapper                                                               -cdslib ./cds_libs/irq_mapper.cds.lib                                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                              -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                          -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                         -work width_adapter                                                            -cdslib ./cds_libs/width_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work rsp_xbar_mux_001                                                         -cdslib ./cds_libs/rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux_001.sv"                             -work rsp_xbar_mux_001                                                         -cdslib ./cds_libs/rsp_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work rsp_xbar_mux                                                             -cdslib ./cds_libs/rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux.sv"                                 -work rsp_xbar_mux                                                             -cdslib ./cds_libs/rsp_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_015.sv"                           -work rsp_xbar_demux_015                                                       -cdslib ./cds_libs/rsp_xbar_demux_015.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_013.sv"                           -work rsp_xbar_demux_013                                                       -cdslib ./cds_libs/rsp_xbar_demux_013.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_001.sv"                           -work rsp_xbar_demux_001                                                       -cdslib ./cds_libs/rsp_xbar_demux_001.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux.sv"                               -work rsp_xbar_demux                                                           -cdslib ./cds_libs/rsp_xbar_demux.cds.lib                                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux_015                                                         -cdslib ./cds_libs/cmd_xbar_mux_015.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux_015.sv"                             -work cmd_xbar_mux_015                                                         -cdslib ./cds_libs/cmd_xbar_mux_015.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux_001                                                         -cdslib ./cds_libs/cmd_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux_001.sv"                             -work cmd_xbar_mux_001                                                         -cdslib ./cds_libs/cmd_xbar_mux_001.cds.lib                                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux                                                             -cdslib ./cds_libs/cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux.sv"                                 -work cmd_xbar_mux                                                             -cdslib ./cds_libs/cmd_xbar_mux.cds.lib                                                            
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_003.sv"                           -work cmd_xbar_demux_003                                                       -cdslib ./cds_libs/cmd_xbar_demux_003.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_002.sv"                           -work cmd_xbar_demux_002                                                       -cdslib ./cds_libs/cmd_xbar_demux_002.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_001.sv"                           -work cmd_xbar_demux_001                                                       -cdslib ./cds_libs/cmd_xbar_demux_001.cds.lib                                                      
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux.sv"                               -work cmd_xbar_demux                                                           -cdslib ./cds_libs/cmd_xbar_demux.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                   -work rst_controller                                                           -cdslib ./cds_libs/rst_controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                 -work rst_controller                                                           -cdslib ./cds_libs/rst_controller.cds.lib                                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                              -work burst_adapter                                                            -cdslib ./cds_libs/burst_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                          -work burst_adapter                                                            -cdslib ./cds_libs/burst_adapter.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                            -work limiter                                                                  -cdslib ./cds_libs/limiter.cds.lib                                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                            -work limiter                                                                  -cdslib ./cds_libs/limiter.cds.lib                                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_020.sv"                                -work id_router_020                                                            -cdslib ./cds_libs/id_router_020.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_015.sv"                                -work id_router_015                                                            -cdslib ./cds_libs/id_router_015.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_013.sv"                                -work id_router_013                                                            -cdslib ./cds_libs/id_router_013.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_002.sv"                                -work id_router_002                                                            -cdslib ./cds_libs/id_router_002.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_001.sv"                                -work id_router_001                                                            -cdslib ./cds_libs/id_router_001.cds.lib                                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router.sv"                                    -work id_router                                                                -cdslib ./cds_libs/id_router.cds.lib                                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_008.sv"                              -work addr_router_008                                                          -cdslib ./cds_libs/addr_router_008.cds.lib                                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_003.sv"                              -work addr_router_003                                                          -cdslib ./cds_libs/addr_router_003.cds.lib                                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_002.sv"                              -work addr_router_002                                                          -cdslib ./cds_libs/addr_router_002.cds.lib                                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_001.sv"                              -work addr_router_001                                                          -cdslib ./cds_libs/addr_router_001.cds.lib                                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router.sv"                                  -work addr_router                                                              -cdslib ./cds_libs/addr_router.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                     -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -cdslib ./cds_libs/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.cds.lib
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                         -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent          -cdslib ./cds_libs/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent.cds.lib         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                               -work CPU_instruction_master_translator_avalon_universal_master_0_agent        -cdslib ./cds_libs/CPU_instruction_master_translator_avalon_universal_master_0_agent.cds.lib       
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                           -work CPU_jtag_debug_module_translator                                         -cdslib ./cds_libs/CPU_jtag_debug_module_translator.cds.lib                                        
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                          -work CPU_instruction_master_translator                                        -cdslib ./cds_libs/CPU_instruction_master_translator.cds.lib                                       
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                        -work CPU_custom_instruction_master_multi_slave_translator0                    -cdslib ./cds_libs/CPU_custom_instruction_master_multi_slave_translator0.cds.lib                   
  ncvlog -sv "$QSYS_SIMDIR/submodules/nios_system_CPU_custom_instruction_master_multi_xconnect.sv" -work CPU_custom_instruction_master_multi_xconnect                             -cdslib ./cds_libs/CPU_custom_instruction_master_multi_xconnect.cds.lib                            
  ncvlog     "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                        -work CPU_custom_instruction_master_translator                                 -cdslib ./cds_libs/CPU_custom_instruction_master_translator.cds.lib                                
  ncvlog     "$QSYS_SIMDIR/submodules/Audio_CustomDMA.v"                                           -work VideoConferencing_DMA_0                                                  -cdslib ./cds_libs/VideoConferencing_DMA_0.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/Ethernet_DMA.v"                                              -work VideoConferencing_DMA_0                                                  -cdslib ./cds_libs/VideoConferencing_DMA_0.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/Video_CustomDMA.v"                                           -work VideoConferencing_DMA_0                                                  -cdslib ./cds_libs/VideoConferencing_DMA_0.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/VideoConferencing_DMA.v"                                     -work VideoConferencing_DMA_0                                                  -cdslib ./cds_libs/VideoConferencing_DMA_0.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work VGA_DMA_Controller                                                       -cdslib ./cds_libs/VGA_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work VGA_DMA_Controller                                                       -cdslib ./cds_libs/VGA_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work VGA_DMA_Controller                                                       -cdslib ./cds_libs/VGA_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_DMA_Controller.v"                            -work VGA_DMA_Controller                                                       -cdslib ./cds_libs/VGA_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work LCD_DMA_Controller                                                       -cdslib ./cds_libs/LCD_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work LCD_DMA_Controller                                                       -cdslib ./cds_libs/LCD_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work LCD_DMA_Controller                                                       -cdslib ./cds_libs/LCD_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_DMA_Controller.v"                            -work LCD_DMA_Controller                                                       -cdslib ./cds_libs/LCD_DMA_Controller.cds.lib                                                      
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_packet_memory.v"                                 -work packet_memory                                                            -cdslib ./cds_libs/packet_memory.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_descriptor_memory.v"                             -work descriptor_memory                                                        -cdslib ./cds_libs/descriptor_memory.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_enet.v"                                          -work enet                                                                     -cdslib ./cds_libs/enet.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"                         -work LCD_Char_Buffer                                                          -cdslib ./cds_libs/LCD_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                              -work LCD_Char_Buffer                                                          -cdslib ./cds_libs/LCD_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Char_Buffer.v"                               -work LCD_Char_Buffer                                                          -cdslib ./cds_libs/LCD_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_USB.v"                                           -work USB                                                                      -cdslib ./cds_libs/USB.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_serial_bus_controller.v"         -work Accelerometer                                                            -cdslib ./cds_libs/Accelerometer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_slow_clock_generator.v"          -work Accelerometer                                                            -cdslib ./cds_libs/Accelerometer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_auto_init.v"                     -work Accelerometer                                                            -cdslib ./cds_libs/Accelerometer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_auto_init_ctrl.v"                -work Accelerometer                                                            -cdslib ./cds_libs/Accelerometer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Accelerometer.v"                                 -work Accelerometer                                                            -cdslib ./cds_libs/Accelerometer.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work Camera_DMA_Controller                                                    -cdslib ./cds_libs/Camera_DMA_Controller.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work Camera_DMA_Controller                                                    -cdslib ./cds_libs/Camera_DMA_Controller.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work Camera_DMA_Controller                                                    -cdslib ./cds_libs/Camera_DMA_Controller.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_DMA_Controller.v"                         -work Camera_DMA_Controller                                                    -cdslib ./cds_libs/Camera_DMA_Controller.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work Video_In_DMA_Controller                                                  -cdslib ./cds_libs/Video_In_DMA_Controller.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work Video_In_DMA_Controller                                                  -cdslib ./cds_libs/Video_In_DMA_Controller.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work Video_In_DMA_Controller                                                  -cdslib ./cds_libs/Video_In_DMA_Controller.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_DMA_Controller.v"                       -work Video_In_DMA_Controller                                                  -cdslib ./cds_libs/Video_In_DMA_Controller.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Dual_Clock_FIFO.v"                           -work LCD_Dual_Clock_FIFO                                                      -cdslib ./cds_libs/LCD_Dual_Clock_FIFO.cds.lib                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work LCD_Scalar                                                               -cdslib ./cds_libs/LCD_Scalar.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work LCD_Scalar                                                               -cdslib ./cds_libs/LCD_Scalar.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work LCD_Scalar                                                               -cdslib ./cds_libs/LCD_Scalar.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Scalar.v"                                    -work LCD_Scalar                                                               -cdslib ./cds_libs/LCD_Scalar.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_RGB_Resampler.v"                             -work LCD_RGB_Resampler                                                        -cdslib ./cds_libs/LCD_RGB_Resampler.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                         -work LCD_Controller                                                           -cdslib ./cds_libs/LCD_Controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Controller.v"                                -work LCD_Controller                                                           -cdslib ./cds_libs/LCD_Controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                               -work Camera_Clipper                                                           -cdslib ./cds_libs/Camera_Clipper.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                              -work Camera_Clipper                                                           -cdslib ./cds_libs/Camera_Clipper.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                          -work Camera_Clipper                                                           -cdslib ./cds_libs/Camera_Clipper.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Clipper.v"                                -work Camera_Clipper                                                           -cdslib ./cds_libs/Camera_Clipper.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work Camera_Scaler                                                            -cdslib ./cds_libs/Camera_Scaler.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work Camera_Scaler                                                            -cdslib ./cds_libs/Camera_Scaler.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work Camera_Scaler                                                            -cdslib ./cds_libs/Camera_Scaler.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Scaler.v"                                 -work Camera_Scaler                                                            -cdslib ./cds_libs/Camera_Scaler.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Bayer_Resampler.v"                        -work Camera_Bayer_Resampler                                                   -cdslib ./cds_libs/Camera_Bayer_Resampler.cds.lib                                                  
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                           -work Camera_In                                                                -cdslib ./cds_libs/Camera_In.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                   -work Camera_In                                                                -cdslib ./cds_libs/Camera_In.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                            -work Camera_In                                                                -cdslib ./cds_libs/Camera_In.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                           -work Camera_In                                                                -cdslib ./cds_libs/Camera_In.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_In.v"                                     -work Camera_In                                                                -cdslib ./cds_libs/Camera_In.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                 -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                            -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                             -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                         -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                         -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                         -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                         -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                   -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                  -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                   -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                  -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                    -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                  -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Config.v"                                 -work Camera_Config                                                            -cdslib ./cds_libs/Camera_Config.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work Video_In_Scaler                                                          -cdslib ./cds_libs/Video_In_Scaler.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work Video_In_Scaler                                                          -cdslib ./cds_libs/Video_In_Scaler.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work Video_In_Scaler                                                          -cdslib ./cds_libs/Video_In_Scaler.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Scaler.v"                               -work Video_In_Scaler                                                          -cdslib ./cds_libs/Video_In_Scaler.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                               -work Video_In_Clipper                                                         -cdslib ./cds_libs/Video_In_Clipper.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                              -work Video_In_Clipper                                                         -cdslib ./cds_libs/Video_In_Clipper.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                          -work Video_In_Clipper                                                         -cdslib ./cds_libs/Video_In_Clipper.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Clipper.v"                              -work Video_In_Clipper                                                         -cdslib ./cds_libs/Video_In_Clipper.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_RGB_Resampler.v"                        -work Video_In_RGB_Resampler                                                   -cdslib ./cds_libs/Video_In_RGB_Resampler.cds.lib                                                  
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_YCrCb_to_RGB_converter.v"                          -work Video_In_CSC                                                             -cdslib ./cds_libs/Video_In_CSC.cds.lib                                                            
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_RGB_to_YCrCb_converter.v"                          -work Video_In_CSC                                                             -cdslib ./cds_libs/Video_In_CSC.cds.lib                                                            
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_CSC.v"                                  -work Video_In_CSC                                                             -cdslib ./cds_libs/Video_In_CSC.cds.lib                                                            
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Chroma_Resampler.v"                     -work Video_In_Chroma_Resampler                                                -cdslib ./cds_libs/Video_In_Chroma_Resampler.cds.lib                                               
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                           -work Video_In                                                                 -cdslib ./cds_libs/Video_In.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                   -work Video_In                                                                 -cdslib ./cds_libs/Video_In.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                            -work Video_In                                                                 -cdslib ./cds_libs/Video_In.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                           -work Video_In                                                                 -cdslib ./cds_libs/Video_In.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In.v"                                      -work Video_In                                                                 -cdslib ./cds_libs/Video_In.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_irda_counters.v"                                   -work IrDA                                                                     -cdslib ./cds_libs/IrDA.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_irda_in_deserializer.v"                            -work IrDA                                                                     -cdslib ./cds_libs/IrDA.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_irda_out_serializer.v"                             -work IrDA                                                                     -cdslib ./cds_libs/IrDA.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work IrDA                                                                     -cdslib ./cds_libs/IrDA.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_IrDA.v"                                          -work IrDA                                                                     -cdslib ./cds_libs/IrDA.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_External_Clocks.v"                               -work External_Clocks                                                          -cdslib ./cds_libs/External_Clocks.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_sysid.vo"                                        -work sysid                                                                    -cdslib ./cds_libs/sysid.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU.vo"                                          -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_sysclk.v"                  -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_tck.v"                     -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_wrapper.v"                 -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_mult_cell.v"                                 -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_oci_test_bench.v"                            -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_test_bench.v"                                -work CPU                                                                      -cdslib ./cds_libs/CPU.cds.lib                                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"                      -work VGA_Alpha_Blender                                                        -cdslib ./cds_libs/VGA_Alpha_Blender.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"                      -work VGA_Alpha_Blender                                                        -cdslib ./cds_libs/VGA_Alpha_Blender.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Alpha_Blender.v"                             -work VGA_Alpha_Blender                                                        -cdslib ./cds_libs/VGA_Alpha_Blender.cds.lib                                                       
  ncvlog     "$QSYS_SIMDIR/submodules/fpoint_wrapper.v"                                            -work CPU_fpoint                                                               -cdslib ./cds_libs/CPU_fpoint.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/fpoint_qsys.v"                                               -work CPU_fpoint                                                               -cdslib ./cds_libs/CPU_fpoint.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/fpoint_hw_qsys.v"                                            -work CPU_fpoint                                                               -cdslib ./cds_libs/CPU_fpoint.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Dual_Clock_FIFO.v"                           -work VGA_Dual_Clock_FIFO                                                      -cdslib ./cds_libs/VGA_Dual_Clock_FIFO.cds.lib                                                     
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work VGA_Pixel_Scaler                                                         -cdslib ./cds_libs/VGA_Pixel_Scaler.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work VGA_Pixel_Scaler                                                         -cdslib ./cds_libs/VGA_Pixel_Scaler.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work VGA_Pixel_Scaler                                                         -cdslib ./cds_libs/VGA_Pixel_Scaler.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_Scaler.v"                              -work VGA_Pixel_Scaler                                                         -cdslib ./cds_libs/VGA_Pixel_Scaler.cds.lib                                                        
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_RGB_Resampler.v"                       -work VGA_Pixel_RGB_Resampler                                                  -cdslib ./cds_libs/VGA_Pixel_RGB_Resampler.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                         -work VGA_Controller                                                           -cdslib ./cds_libs/VGA_Controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Controller.v"                                -work VGA_Controller                                                           -cdslib ./cds_libs/VGA_Controller.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"                         -work VGA_Char_Buffer                                                          -cdslib ./cds_libs/VGA_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                              -work VGA_Char_Buffer                                                          -cdslib ./cds_libs/VGA_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Char_Buffer.v"                               -work VGA_Char_Buffer                                                          -cdslib ./cds_libs/VGA_Char_Buffer.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_SRAM.v"                                          -work SRAM                                                                     -cdslib ./cds_libs/SRAM.cds.lib                                                                    
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_ps2.v"                                             -work PS2_Port                                                                 -cdslib ./cds_libs/PS2_Port.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_ps2_command_out.v"                                 -work PS2_Port                                                                 -cdslib ./cds_libs/PS2_Port.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_ps2_data_in.v"                                     -work PS2_Port                                                                 -cdslib ./cds_libs/PS2_Port.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_PS2_Port.v"                                      -work PS2_Port                                                                 -cdslib ./cds_libs/PS2_Port.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_character_lcd_communication.v"                     -work Char_LCD_16x2                                                            -cdslib ./cds_libs/Char_LCD_16x2.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_character_lcd_initialization.v"                    -work Char_LCD_16x2                                                            -cdslib ./cds_libs/Char_LCD_16x2.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Char_LCD_16x2.v"                                 -work Char_LCD_16x2                                                            -cdslib ./cds_libs/Char_LCD_16x2.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v"                               -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v"                           -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v"                            -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_clock_edge.v"                                      -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Audio.v"                                         -work Audio                                                                    -cdslib ./cds_libs/Audio.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                 -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                            -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                             -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                         -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                         -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                         -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                         -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                   -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                  -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                   -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                  -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                    -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                  -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_OnBoard_AV.v"                                    -work OnBoard_AV                                                               -cdslib ./cds_libs/OnBoard_AV.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                                  -work Serial_Port                                                              -cdslib ./cds_libs/Serial_Port.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"                           -work Serial_Port                                                              -cdslib ./cds_libs/Serial_Port.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"                            -work Serial_Port                                                              -cdslib ./cds_libs/Serial_Port.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work Serial_Port                                                              -cdslib ./cds_libs/Serial_Port.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Serial_Port.v"                                   -work Serial_Port                                                              -cdslib ./cds_libs/Serial_Port.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Expansion_JP5.v"                                 -work Expansion_JP5                                                            -cdslib ./cds_libs/Expansion_JP5.cds.lib                                                           
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Pushbuttons.v"                                   -work Pushbuttons                                                              -cdslib ./cds_libs/Pushbuttons.cds.lib                                                             
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Slider_Switches.v"                               -work Slider_Switches                                                          -cdslib ./cds_libs/Slider_Switches.cds.lib                                                         
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_HEX7_HEX4.v"                                     -work HEX7_HEX4                                                                -cdslib ./cds_libs/HEX7_HEX4.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_HEX3_HEX0.v"                                     -work HEX3_HEX0                                                                -cdslib ./cds_libs/HEX3_HEX0.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Green_LEDs.v"                                    -work Green_LEDs                                                               -cdslib ./cds_libs/Green_LEDs.cds.lib                                                              
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Red_LEDs.v"                                      -work Red_LEDs                                                                 -cdslib ./cds_libs/Red_LEDs.cds.lib                                                                
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_SDRAM.v"                                         -work SDRAM                                                                    -cdslib ./cds_libs/SDRAM.cds.lib                                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_Interval_Timer.v"                                -work Interval_Timer                                                           -cdslib ./cds_libs/Interval_Timer.cds.lib                                                          
  ncvlog     "$QSYS_SIMDIR/submodules/nios_system_JTAG_UART.v"                                     -work JTAG_UART                                                                -cdslib ./cds_libs/JTAG_UART.cds.lib                                                               
  ncvlog     "$QSYS_SIMDIR/nios_system.v"                                                                                                                                                                                                                                            
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
