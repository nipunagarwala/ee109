
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

# ACDS 13.0sp1 232 win32 2015.05.23.22:49:27

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "nios_system"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/nios_system_packet_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_descriptor_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_CPU_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneive_ver/  
  vmap       cycloneive_ver   ./libraries/cycloneive_ver/  
}
ensure_lib                                                                          ./libraries/timing_adapter_0/                                                        
vmap       timing_adapter_0                                                         ./libraries/timing_adapter_0/                                                        
ensure_lib                                                                          ./libraries/channel_adapter_0/                                                       
vmap       channel_adapter_0                                                        ./libraries/channel_adapter_0/                                                       
ensure_lib                                                                          ./libraries/data_format_adapter_0/                                                   
vmap       data_format_adapter_0                                                    ./libraries/data_format_adapter_0/                                                   
ensure_lib                                                                          ./libraries/error_adapter_0/                                                         
vmap       error_adapter_0                                                          ./libraries/error_adapter_0/                                                         
ensure_lib                                                                          ./libraries/i_tse_mac/                                                               
vmap       i_tse_mac                                                                ./libraries/i_tse_mac/                                                               
ensure_lib                                                                          ./libraries/avalon_st_adapter_001/                                                   
vmap       avalon_st_adapter_001                                                    ./libraries/avalon_st_adapter_001/                                                   
ensure_lib                                                                          ./libraries/avalon_st_adapter/                                                       
vmap       avalon_st_adapter                                                        ./libraries/avalon_st_adapter/                                                       
ensure_lib                                                                          ./libraries/irq_mapper/                                                              
vmap       irq_mapper                                                               ./libraries/irq_mapper/                                                              
ensure_lib                                                                          ./libraries/width_adapter/                                                           
vmap       width_adapter                                                            ./libraries/width_adapter/                                                           
ensure_lib                                                                          ./libraries/rsp_xbar_mux_001/                                                        
vmap       rsp_xbar_mux_001                                                         ./libraries/rsp_xbar_mux_001/                                                        
ensure_lib                                                                          ./libraries/rsp_xbar_mux/                                                            
vmap       rsp_xbar_mux                                                             ./libraries/rsp_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/rsp_xbar_demux_015/                                                      
vmap       rsp_xbar_demux_015                                                       ./libraries/rsp_xbar_demux_015/                                                      
ensure_lib                                                                          ./libraries/rsp_xbar_demux_013/                                                      
vmap       rsp_xbar_demux_013                                                       ./libraries/rsp_xbar_demux_013/                                                      
ensure_lib                                                                          ./libraries/rsp_xbar_demux_001/                                                      
vmap       rsp_xbar_demux_001                                                       ./libraries/rsp_xbar_demux_001/                                                      
ensure_lib                                                                          ./libraries/rsp_xbar_demux/                                                          
vmap       rsp_xbar_demux                                                           ./libraries/rsp_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/cmd_xbar_mux_015/                                                        
vmap       cmd_xbar_mux_015                                                         ./libraries/cmd_xbar_mux_015/                                                        
ensure_lib                                                                          ./libraries/cmd_xbar_mux_001/                                                        
vmap       cmd_xbar_mux_001                                                         ./libraries/cmd_xbar_mux_001/                                                        
ensure_lib                                                                          ./libraries/cmd_xbar_mux/                                                            
vmap       cmd_xbar_mux                                                             ./libraries/cmd_xbar_mux/                                                            
ensure_lib                                                                          ./libraries/cmd_xbar_demux_003/                                                      
vmap       cmd_xbar_demux_003                                                       ./libraries/cmd_xbar_demux_003/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux_002/                                                      
vmap       cmd_xbar_demux_002                                                       ./libraries/cmd_xbar_demux_002/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux_001/                                                      
vmap       cmd_xbar_demux_001                                                       ./libraries/cmd_xbar_demux_001/                                                      
ensure_lib                                                                          ./libraries/cmd_xbar_demux/                                                          
vmap       cmd_xbar_demux                                                           ./libraries/cmd_xbar_demux/                                                          
ensure_lib                                                                          ./libraries/rst_controller/                                                          
vmap       rst_controller                                                           ./libraries/rst_controller/                                                          
ensure_lib                                                                          ./libraries/burst_adapter/                                                           
vmap       burst_adapter                                                            ./libraries/burst_adapter/                                                           
ensure_lib                                                                          ./libraries/limiter/                                                                 
vmap       limiter                                                                  ./libraries/limiter/                                                                 
ensure_lib                                                                          ./libraries/id_router_020/                                                           
vmap       id_router_020                                                            ./libraries/id_router_020/                                                           
ensure_lib                                                                          ./libraries/id_router_015/                                                           
vmap       id_router_015                                                            ./libraries/id_router_015/                                                           
ensure_lib                                                                          ./libraries/id_router_013/                                                           
vmap       id_router_013                                                            ./libraries/id_router_013/                                                           
ensure_lib                                                                          ./libraries/id_router_002/                                                           
vmap       id_router_002                                                            ./libraries/id_router_002/                                                           
ensure_lib                                                                          ./libraries/id_router_001/                                                           
vmap       id_router_001                                                            ./libraries/id_router_001/                                                           
ensure_lib                                                                          ./libraries/id_router/                                                               
vmap       id_router                                                                ./libraries/id_router/                                                               
ensure_lib                                                                          ./libraries/addr_router_008/                                                         
vmap       addr_router_008                                                          ./libraries/addr_router_008/                                                         
ensure_lib                                                                          ./libraries/addr_router_003/                                                         
vmap       addr_router_003                                                          ./libraries/addr_router_003/                                                         
ensure_lib                                                                          ./libraries/addr_router_002/                                                         
vmap       addr_router_002                                                          ./libraries/addr_router_002/                                                         
ensure_lib                                                                          ./libraries/addr_router_001/                                                         
vmap       addr_router_001                                                          ./libraries/addr_router_001/                                                         
ensure_lib                                                                          ./libraries/addr_router/                                                             
vmap       addr_router                                                              ./libraries/addr_router/                                                             
ensure_lib                                                                          ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                          ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
vmap       CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
ensure_lib                                                                          ./libraries/CPU_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       CPU_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/CPU_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                          ./libraries/CPU_jtag_debug_module_translator/                                        
vmap       CPU_jtag_debug_module_translator                                         ./libraries/CPU_jtag_debug_module_translator/                                        
ensure_lib                                                                          ./libraries/CPU_instruction_master_translator/                                       
vmap       CPU_instruction_master_translator                                        ./libraries/CPU_instruction_master_translator/                                       
ensure_lib                                                                          ./libraries/CPU_custom_instruction_master_multi_slave_translator0/                   
vmap       CPU_custom_instruction_master_multi_slave_translator0                    ./libraries/CPU_custom_instruction_master_multi_slave_translator0/                   
ensure_lib                                                                          ./libraries/CPU_custom_instruction_master_multi_xconnect/                            
vmap       CPU_custom_instruction_master_multi_xconnect                             ./libraries/CPU_custom_instruction_master_multi_xconnect/                            
ensure_lib                                                                          ./libraries/CPU_custom_instruction_master_translator/                                
vmap       CPU_custom_instruction_master_translator                                 ./libraries/CPU_custom_instruction_master_translator/                                
ensure_lib                                                                          ./libraries/VideoConferencing_DMA_0/                                                 
vmap       VideoConferencing_DMA_0                                                  ./libraries/VideoConferencing_DMA_0/                                                 
ensure_lib                                                                          ./libraries/VGA_DMA_Controller/                                                      
vmap       VGA_DMA_Controller                                                       ./libraries/VGA_DMA_Controller/                                                      
ensure_lib                                                                          ./libraries/LCD_DMA_Controller/                                                      
vmap       LCD_DMA_Controller                                                       ./libraries/LCD_DMA_Controller/                                                      
ensure_lib                                                                          ./libraries/packet_memory/                                                           
vmap       packet_memory                                                            ./libraries/packet_memory/                                                           
ensure_lib                                                                          ./libraries/descriptor_memory/                                                       
vmap       descriptor_memory                                                        ./libraries/descriptor_memory/                                                       
ensure_lib                                                                          ./libraries/enet/                                                                    
vmap       enet                                                                     ./libraries/enet/                                                                    
ensure_lib                                                                          ./libraries/LCD_Char_Buffer/                                                         
vmap       LCD_Char_Buffer                                                          ./libraries/LCD_Char_Buffer/                                                         
ensure_lib                                                                          ./libraries/USB/                                                                     
vmap       USB                                                                      ./libraries/USB/                                                                     
ensure_lib                                                                          ./libraries/Accelerometer/                                                           
vmap       Accelerometer                                                            ./libraries/Accelerometer/                                                           
ensure_lib                                                                          ./libraries/Camera_DMA_Controller/                                                   
vmap       Camera_DMA_Controller                                                    ./libraries/Camera_DMA_Controller/                                                   
ensure_lib                                                                          ./libraries/Video_In_DMA_Controller/                                                 
vmap       Video_In_DMA_Controller                                                  ./libraries/Video_In_DMA_Controller/                                                 
ensure_lib                                                                          ./libraries/LCD_Dual_Clock_FIFO/                                                     
vmap       LCD_Dual_Clock_FIFO                                                      ./libraries/LCD_Dual_Clock_FIFO/                                                     
ensure_lib                                                                          ./libraries/LCD_Scalar/                                                              
vmap       LCD_Scalar                                                               ./libraries/LCD_Scalar/                                                              
ensure_lib                                                                          ./libraries/LCD_RGB_Resampler/                                                       
vmap       LCD_RGB_Resampler                                                        ./libraries/LCD_RGB_Resampler/                                                       
ensure_lib                                                                          ./libraries/LCD_Controller/                                                          
vmap       LCD_Controller                                                           ./libraries/LCD_Controller/                                                          
ensure_lib                                                                          ./libraries/Camera_Clipper/                                                          
vmap       Camera_Clipper                                                           ./libraries/Camera_Clipper/                                                          
ensure_lib                                                                          ./libraries/Camera_Scaler/                                                           
vmap       Camera_Scaler                                                            ./libraries/Camera_Scaler/                                                           
ensure_lib                                                                          ./libraries/Camera_Bayer_Resampler/                                                  
vmap       Camera_Bayer_Resampler                                                   ./libraries/Camera_Bayer_Resampler/                                                  
ensure_lib                                                                          ./libraries/Camera_In/                                                               
vmap       Camera_In                                                                ./libraries/Camera_In/                                                               
ensure_lib                                                                          ./libraries/Camera_Config/                                                           
vmap       Camera_Config                                                            ./libraries/Camera_Config/                                                           
ensure_lib                                                                          ./libraries/Video_In_Scaler/                                                         
vmap       Video_In_Scaler                                                          ./libraries/Video_In_Scaler/                                                         
ensure_lib                                                                          ./libraries/Video_In_Clipper/                                                        
vmap       Video_In_Clipper                                                         ./libraries/Video_In_Clipper/                                                        
ensure_lib                                                                          ./libraries/Video_In_RGB_Resampler/                                                  
vmap       Video_In_RGB_Resampler                                                   ./libraries/Video_In_RGB_Resampler/                                                  
ensure_lib                                                                          ./libraries/Video_In_CSC/                                                            
vmap       Video_In_CSC                                                             ./libraries/Video_In_CSC/                                                            
ensure_lib                                                                          ./libraries/Video_In_Chroma_Resampler/                                               
vmap       Video_In_Chroma_Resampler                                                ./libraries/Video_In_Chroma_Resampler/                                               
ensure_lib                                                                          ./libraries/Video_In/                                                                
vmap       Video_In                                                                 ./libraries/Video_In/                                                                
ensure_lib                                                                          ./libraries/IrDA/                                                                    
vmap       IrDA                                                                     ./libraries/IrDA/                                                                    
ensure_lib                                                                          ./libraries/External_Clocks/                                                         
vmap       External_Clocks                                                          ./libraries/External_Clocks/                                                         
ensure_lib                                                                          ./libraries/sysid/                                                                   
vmap       sysid                                                                    ./libraries/sysid/                                                                   
ensure_lib                                                                          ./libraries/CPU/                                                                     
vmap       CPU                                                                      ./libraries/CPU/                                                                     
ensure_lib                                                                          ./libraries/VGA_Alpha_Blender/                                                       
vmap       VGA_Alpha_Blender                                                        ./libraries/VGA_Alpha_Blender/                                                       
ensure_lib                                                                          ./libraries/CPU_fpoint/                                                              
vmap       CPU_fpoint                                                               ./libraries/CPU_fpoint/                                                              
ensure_lib                                                                          ./libraries/VGA_Dual_Clock_FIFO/                                                     
vmap       VGA_Dual_Clock_FIFO                                                      ./libraries/VGA_Dual_Clock_FIFO/                                                     
ensure_lib                                                                          ./libraries/VGA_Pixel_Scaler/                                                        
vmap       VGA_Pixel_Scaler                                                         ./libraries/VGA_Pixel_Scaler/                                                        
ensure_lib                                                                          ./libraries/VGA_Pixel_RGB_Resampler/                                                 
vmap       VGA_Pixel_RGB_Resampler                                                  ./libraries/VGA_Pixel_RGB_Resampler/                                                 
ensure_lib                                                                          ./libraries/VGA_Controller/                                                          
vmap       VGA_Controller                                                           ./libraries/VGA_Controller/                                                          
ensure_lib                                                                          ./libraries/VGA_Char_Buffer/                                                         
vmap       VGA_Char_Buffer                                                          ./libraries/VGA_Char_Buffer/                                                         
ensure_lib                                                                          ./libraries/SRAM/                                                                    
vmap       SRAM                                                                     ./libraries/SRAM/                                                                    
ensure_lib                                                                          ./libraries/PS2_Port/                                                                
vmap       PS2_Port                                                                 ./libraries/PS2_Port/                                                                
ensure_lib                                                                          ./libraries/Char_LCD_16x2/                                                           
vmap       Char_LCD_16x2                                                            ./libraries/Char_LCD_16x2/                                                           
ensure_lib                                                                          ./libraries/Audio/                                                                   
vmap       Audio                                                                    ./libraries/Audio/                                                                   
ensure_lib                                                                          ./libraries/OnBoard_AV/                                                              
vmap       OnBoard_AV                                                               ./libraries/OnBoard_AV/                                                              
ensure_lib                                                                          ./libraries/Serial_Port/                                                             
vmap       Serial_Port                                                              ./libraries/Serial_Port/                                                             
ensure_lib                                                                          ./libraries/Expansion_JP5/                                                           
vmap       Expansion_JP5                                                            ./libraries/Expansion_JP5/                                                           
ensure_lib                                                                          ./libraries/Pushbuttons/                                                             
vmap       Pushbuttons                                                              ./libraries/Pushbuttons/                                                             
ensure_lib                                                                          ./libraries/Slider_Switches/                                                         
vmap       Slider_Switches                                                          ./libraries/Slider_Switches/                                                         
ensure_lib                                                                          ./libraries/HEX7_HEX4/                                                               
vmap       HEX7_HEX4                                                                ./libraries/HEX7_HEX4/                                                               
ensure_lib                                                                          ./libraries/HEX3_HEX0/                                                               
vmap       HEX3_HEX0                                                                ./libraries/HEX3_HEX0/                                                               
ensure_lib                                                                          ./libraries/Green_LEDs/                                                              
vmap       Green_LEDs                                                               ./libraries/Green_LEDs/                                                              
ensure_lib                                                                          ./libraries/Red_LEDs/                                                                
vmap       Red_LEDs                                                                 ./libraries/Red_LEDs/                                                                
ensure_lib                                                                          ./libraries/SDRAM/                                                                   
vmap       SDRAM                                                                    ./libraries/SDRAM/                                                                   
ensure_lib                                                                          ./libraries/Interval_Timer/                                                          
vmap       Interval_Timer                                                           ./libraries/Interval_Timer/                                                          
ensure_lib                                                                          ./libraries/JTAG_UART/                                                               
vmap       JTAG_UART                                                                ./libraries/JTAG_UART/                                                               

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_timing_adapter_0.v"        -work timing_adapter_0                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_timing_adapter_0_fifo.v"   -work timing_adapter_0                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_channel_adapter_0.v"       -work channel_adapter_0                                                       
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001_data_format_adapter_0.v"   -work data_format_adapter_0                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_error_adapter_0.v"             -work error_adapter_0                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_channel_adapter_0.v"           -work channel_adapter_0                                                       
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_data_format_adapter_0.v"       -work data_format_adapter_0                                                   
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_mac.v"                                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_clk_cntl.v"                                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328checker.v"                           -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328generator.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32ctl8.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32galois8.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_gmii_io.v"                                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_read_cntl.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_wrt_cntl.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_hashing.v"                                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control_small.v"                      -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_control.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map_small.v"                      -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_counter_cntl.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_mac_control.v"                      -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_register_map.v"                     -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_counter_cntl.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lfsr_10.v"                                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_loopback_ff.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_altshifttaps.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_rx.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_rx.v"                                  -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_tx.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_tx.v"                                  -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_magic_detection.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio.v"                                    -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_clk_gen.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_cntl.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_mdio.v"                                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_rx_if.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_tx_if.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_base.v"                           -work i_tse_mac                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_stage.sv"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_16x32.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_8x32.v"                              -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_quad_16x32.v"                              -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_quad_8x32.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_retransmit_cntl.v"                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_retransmit_cntl.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in1.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in4.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_module.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out1.v"                              -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out4.v"                              -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff.v"                                   -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_min_ff.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32.v"                          -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32_shift16.v"                  -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_length.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_stat_extract.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter32.v"                        -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter8.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo32.v"                   -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo8.v"                    -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_1geth.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_fifoless_1geth.v"                      -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo.v"                              -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo_10_100_1000.v"                  -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo_10_100_1000.v"                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_woff.v"                                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_gen_host.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff.v"                                   -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_min_ff.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl.v"                             -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32.v"                          -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32_shift16.v"                  -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_length.v"                            -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_read_cntl.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_stat_extract.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_false_path_marker.v"                       -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_reset_synchronizer.v"                      -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_clock_crosser.v"                           -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_13.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_24.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_34.v"                               -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_1246.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_14_44.v"                        -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_36_10.v"                        -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_gray_cnt.v"                                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_altsyncram.v"                         -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_altsyncram_dpm_fifo.v"                     -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_bin_cnt.v"                                 -work i_tse_mac                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_tse_ph_calculator.sv"                          -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_gen.v"                                -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dc_fifo.v"                                 -work i_tse_mac                                                               
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter_001.v"                         -work avalon_st_adapter_001                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_avalon_st_adapter.v"                             -work avalon_st_adapter                                                       
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_irq_mapper.sv"                                   -work irq_mapper                                                              
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                              -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                          -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                         -work width_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work rsp_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux_001.sv"                             -work rsp_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work rsp_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux.sv"                                 -work rsp_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_015.sv"                           -work rsp_xbar_demux_015                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_013.sv"                           -work rsp_xbar_demux_013                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_001.sv"                           -work rsp_xbar_demux_001                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux.sv"                               -work rsp_xbar_demux                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux_015                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux_015.sv"                             -work cmd_xbar_mux_015                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux_001.sv"                             -work cmd_xbar_mux_001                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                 -work cmd_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux.sv"                                 -work cmd_xbar_mux                                                            
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_003.sv"                           -work cmd_xbar_demux_003                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_002.sv"                           -work cmd_xbar_demux_002                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_001.sv"                           -work cmd_xbar_demux_001                                                      
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux.sv"                               -work cmd_xbar_demux                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                   -work rst_controller                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                 -work rst_controller                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                              -work burst_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                          -work burst_adapter                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                            -work limiter                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                            -work limiter                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_020.sv"                                -work id_router_020                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_015.sv"                                -work id_router_015                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_013.sv"                                -work id_router_013                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_002.sv"                                -work id_router_002                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_001.sv"                                -work id_router_001                                                           
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router.sv"                                    -work id_router                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_008.sv"                              -work addr_router_008                                                         
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_003.sv"                              -work addr_router_003                                                         
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_002.sv"                              -work addr_router_002                                                         
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_001.sv"                              -work addr_router_001                                                         
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router.sv"                                  -work addr_router                                                             
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                     -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                         -work CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                               -work CPU_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                           -work CPU_jtag_debug_module_translator                                        
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                          -work CPU_instruction_master_translator                                       
  vlog -sv "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                        -work CPU_custom_instruction_master_multi_slave_translator0                   
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_CPU_custom_instruction_master_multi_xconnect.sv" -work CPU_custom_instruction_master_multi_xconnect                            
  vlog     "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                        -work CPU_custom_instruction_master_translator                                
  vlog     "$QSYS_SIMDIR/submodules/Audio_CustomDMA.v"                                           -work VideoConferencing_DMA_0                                                 
  vlog     "$QSYS_SIMDIR/submodules/Ethernet_DMA.v"                                              -work VideoConferencing_DMA_0                                                 
  vlog     "$QSYS_SIMDIR/submodules/Video_CustomDMA.v"                                           -work VideoConferencing_DMA_0                                                 
  vlog     "$QSYS_SIMDIR/submodules/VideoConferencing_DMA.v"                                     -work VideoConferencing_DMA_0                                                 
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work VGA_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work VGA_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work VGA_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_DMA_Controller.v"                            -work VGA_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work LCD_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work LCD_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work LCD_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_DMA_Controller.v"                            -work LCD_DMA_Controller                                                      
  vlog     "$QSYS_SIMDIR/submodules/nios_system_packet_memory.v"                                 -work packet_memory                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_descriptor_memory.v"                             -work descriptor_memory                                                       
  vlog     "$QSYS_SIMDIR/submodules/nios_system_enet.v"                                          -work enet                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"                         -work LCD_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                              -work LCD_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Char_Buffer.v"                               -work LCD_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_USB.v"                                           -work USB                                                                     
  vlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_serial_bus_controller.v"         -work Accelerometer                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_slow_clock_generator.v"          -work Accelerometer                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_auto_init.v"                     -work Accelerometer                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_accelerometer_spi_auto_init_ctrl.v"                -work Accelerometer                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Accelerometer.v"                                 -work Accelerometer                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work Camera_DMA_Controller                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work Camera_DMA_Controller                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work Camera_DMA_Controller                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_DMA_Controller.v"                         -work Camera_DMA_Controller                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_control_slave.v"                         -work Video_In_DMA_Controller                                                 
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_memory.v"                             -work Video_In_DMA_Controller                                                 
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dma_to_stream.v"                             -work Video_In_DMA_Controller                                                 
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_DMA_Controller.v"                       -work Video_In_DMA_Controller                                                 
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Dual_Clock_FIFO.v"                           -work LCD_Dual_Clock_FIFO                                                     
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work LCD_Scalar                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work LCD_Scalar                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work LCD_Scalar                                                              
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Scalar.v"                                    -work LCD_Scalar                                                              
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_RGB_Resampler.v"                             -work LCD_RGB_Resampler                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                         -work LCD_Controller                                                          
  vlog     "$QSYS_SIMDIR/submodules/nios_system_LCD_Controller.v"                                -work LCD_Controller                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                               -work Camera_Clipper                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                              -work Camera_Clipper                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                          -work Camera_Clipper                                                          
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Clipper.v"                                -work Camera_Clipper                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work Camera_Scaler                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work Camera_Scaler                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work Camera_Scaler                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Scaler.v"                                 -work Camera_Scaler                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Bayer_Resampler.v"                        -work Camera_Bayer_Resampler                                                  
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                           -work Camera_In                                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                   -work Camera_In                                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                            -work Camera_In                                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                           -work Camera_In                                                               
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_In.v"                                     -work Camera_In                                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                 -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                            -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                             -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                         -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                         -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                         -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                         -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                   -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                  -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                   -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                  -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                    -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                  -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Camera_Config.v"                                 -work Camera_Config                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work Video_In_Scaler                                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work Video_In_Scaler                                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work Video_In_Scaler                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Scaler.v"                               -work Video_In_Scaler                                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_add.v"                               -work Video_In_Clipper                                                        
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_drop.v"                              -work Video_In_Clipper                                                        
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_clipper_counters.v"                          -work Video_In_Clipper                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Clipper.v"                              -work Video_In_Clipper                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_RGB_Resampler.v"                        -work Video_In_RGB_Resampler                                                  
  vlog     "$QSYS_SIMDIR/submodules/altera_up_YCrCb_to_RGB_converter.v"                          -work Video_In_CSC                                                            
  vlog     "$QSYS_SIMDIR/submodules/altera_up_RGB_to_YCrCb_converter.v"                          -work Video_In_CSC                                                            
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_CSC.v"                                  -work Video_In_CSC                                                            
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In_Chroma_Resampler.v"                     -work Video_In_Chroma_Resampler                                               
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_itu_656_decoder.v"                           -work Video_In                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_decoder_add_endofpacket.v"                   -work Video_In                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_camera_decoder.v"                            -work Video_In                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_dual_clock_fifo.v"                           -work Video_In                                                                
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Video_In.v"                                      -work Video_In                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_irda_counters.v"                                   -work IrDA                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_irda_in_deserializer.v"                            -work IrDA                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_irda_out_serializer.v"                             -work IrDA                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work IrDA                                                                    
  vlog     "$QSYS_SIMDIR/submodules/nios_system_IrDA.v"                                          -work IrDA                                                                    
  vlog     "$QSYS_SIMDIR/submodules/nios_system_External_Clocks.v"                               -work External_Clocks                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_sysid.vo"                                        -work sysid                                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU.vo"                                          -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_sysclk.v"                  -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_tck.v"                     -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_wrapper.v"                 -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_mult_cell.v"                                 -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_oci_test_bench.v"                            -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_CPU_test_bench.v"                                -work CPU                                                                     
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"                      -work VGA_Alpha_Blender                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"                      -work VGA_Alpha_Blender                                                       
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Alpha_Blender.v"                             -work VGA_Alpha_Blender                                                       
  vlog     "$QSYS_SIMDIR/submodules/fpoint_wrapper.v"                                            -work CPU_fpoint                                                              
  vlog     "$QSYS_SIMDIR/submodules/fpoint_qsys.v"                                               -work CPU_fpoint                                                              
  vlog     "$QSYS_SIMDIR/submodules/fpoint_hw_qsys.v"                                            -work CPU_fpoint                                                              
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Dual_Clock_FIFO.v"                           -work VGA_Dual_Clock_FIFO                                                     
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                             -work VGA_Pixel_Scaler                                                        
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                     -work VGA_Pixel_Scaler                                                        
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                    -work VGA_Pixel_Scaler                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_Scaler.v"                              -work VGA_Pixel_Scaler                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_RGB_Resampler.v"                       -work VGA_Pixel_RGB_Resampler                                                 
  vlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                         -work VGA_Controller                                                          
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Controller.v"                                -work VGA_Controller                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"                         -work VGA_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                              -work VGA_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_VGA_Char_Buffer.v"                               -work VGA_Char_Buffer                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_SRAM.v"                                          -work SRAM                                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_ps2.v"                                             -work PS2_Port                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_ps2_command_out.v"                                 -work PS2_Port                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_ps2_data_in.v"                                     -work PS2_Port                                                                
  vlog     "$QSYS_SIMDIR/submodules/nios_system_PS2_Port.v"                                      -work PS2_Port                                                                
  vlog     "$QSYS_SIMDIR/submodules/altera_up_character_lcd_communication.v"                     -work Char_LCD_16x2                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_character_lcd_initialization.v"                    -work Char_LCD_16x2                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Char_LCD_16x2.v"                                 -work Char_LCD_16x2                                                           
  vlog     "$QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v"                               -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v"                           -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v"                            -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_clock_edge.v"                                      -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Audio.v"                                         -work Audio                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v"                 -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"                            -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"                             -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"                         -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"                         -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"                         -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"                         -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"                   -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"                  -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"                   -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"                  -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"                    -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"                  -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/nios_system_OnBoard_AV.v"                                    -work OnBoard_AV                                                              
  vlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                                  -work Serial_Port                                                             
  vlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"                           -work Serial_Port                                                             
  vlog     "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"                            -work Serial_Port                                                             
  vlog     "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                       -work Serial_Port                                                             
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Serial_Port.v"                                   -work Serial_Port                                                             
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Expansion_JP5.v"                                 -work Expansion_JP5                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Pushbuttons.v"                                   -work Pushbuttons                                                             
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Slider_Switches.v"                               -work Slider_Switches                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_HEX7_HEX4.v"                                     -work HEX7_HEX4                                                               
  vlog     "$QSYS_SIMDIR/submodules/nios_system_HEX3_HEX0.v"                                     -work HEX3_HEX0                                                               
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Green_LEDs.v"                                    -work Green_LEDs                                                              
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Red_LEDs.v"                                      -work Red_LEDs                                                                
  vlog     "$QSYS_SIMDIR/submodules/nios_system_SDRAM.v"                                         -work SDRAM                                                                   
  vlog     "$QSYS_SIMDIR/submodules/nios_system_Interval_Timer.v"                                -work Interval_Timer                                                          
  vlog     "$QSYS_SIMDIR/submodules/nios_system_JTAG_UART.v"                                     -work JTAG_UART                                                               
  vlog     "$QSYS_SIMDIR/nios_system.v"                                                                                                                                        
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L timing_adapter_0 -L channel_adapter_0 -L data_format_adapter_0 -L error_adapter_0 -L i_tse_mac -L avalon_st_adapter_001 -L avalon_st_adapter -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_015 -L rsp_xbar_demux_013 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_015 -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_003 -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_020 -L id_router_015 -L id_router_013 -L id_router_002 -L id_router_001 -L id_router -L addr_router_008 -L addr_router_003 -L addr_router_002 -L addr_router_001 -L addr_router -L CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent -L CPU_instruction_master_translator_avalon_universal_master_0_agent -L CPU_jtag_debug_module_translator -L CPU_instruction_master_translator -L CPU_custom_instruction_master_multi_slave_translator0 -L CPU_custom_instruction_master_multi_xconnect -L CPU_custom_instruction_master_translator -L VideoConferencing_DMA_0 -L VGA_DMA_Controller -L LCD_DMA_Controller -L packet_memory -L descriptor_memory -L enet -L LCD_Char_Buffer -L USB -L Accelerometer -L Camera_DMA_Controller -L Video_In_DMA_Controller -L LCD_Dual_Clock_FIFO -L LCD_Scalar -L LCD_RGB_Resampler -L LCD_Controller -L Camera_Clipper -L Camera_Scaler -L Camera_Bayer_Resampler -L Camera_In -L Camera_Config -L Video_In_Scaler -L Video_In_Clipper -L Video_In_RGB_Resampler -L Video_In_CSC -L Video_In_Chroma_Resampler -L Video_In -L IrDA -L External_Clocks -L sysid -L CPU -L VGA_Alpha_Blender -L CPU_fpoint -L VGA_Dual_Clock_FIFO -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler -L VGA_Controller -L VGA_Char_Buffer -L SRAM -L PS2_Port -L Char_LCD_16x2 -L Audio -L OnBoard_AV -L Serial_Port -L Expansion_JP5 -L Pushbuttons -L Slider_Switches -L HEX7_HEX4 -L HEX3_HEX0 -L Green_LEDs -L Red_LEDs -L SDRAM -L Interval_Timer -L JTAG_UART -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L timing_adapter_0 -L channel_adapter_0 -L data_format_adapter_0 -L error_adapter_0 -L i_tse_mac -L avalon_st_adapter_001 -L avalon_st_adapter -L irq_mapper -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_015 -L rsp_xbar_demux_013 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_015 -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_003 -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_020 -L id_router_015 -L id_router_013 -L id_router_002 -L id_router_001 -L id_router -L addr_router_008 -L addr_router_003 -L addr_router_002 -L addr_router_001 -L addr_router -L CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L CPU_jtag_debug_module_translator_avalon_universal_slave_0_agent -L CPU_instruction_master_translator_avalon_universal_master_0_agent -L CPU_jtag_debug_module_translator -L CPU_instruction_master_translator -L CPU_custom_instruction_master_multi_slave_translator0 -L CPU_custom_instruction_master_multi_xconnect -L CPU_custom_instruction_master_translator -L VideoConferencing_DMA_0 -L VGA_DMA_Controller -L LCD_DMA_Controller -L packet_memory -L descriptor_memory -L enet -L LCD_Char_Buffer -L USB -L Accelerometer -L Camera_DMA_Controller -L Video_In_DMA_Controller -L LCD_Dual_Clock_FIFO -L LCD_Scalar -L LCD_RGB_Resampler -L LCD_Controller -L Camera_Clipper -L Camera_Scaler -L Camera_Bayer_Resampler -L Camera_In -L Camera_Config -L Video_In_Scaler -L Video_In_Clipper -L Video_In_RGB_Resampler -L Video_In_CSC -L Video_In_Chroma_Resampler -L Video_In -L IrDA -L External_Clocks -L sysid -L CPU -L VGA_Alpha_Blender -L CPU_fpoint -L VGA_Dual_Clock_FIFO -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler -L VGA_Controller -L VGA_Char_Buffer -L SRAM -L PS2_Port -L Char_LCD_16x2 -L Audio -L OnBoard_AV -L Serial_Port -L Expansion_JP5 -L Pushbuttons -L Slider_Switches -L HEX7_HEX4 -L HEX3_HEX0 -L Green_LEDs -L Red_LEDs -L SDRAM -L Interval_Timer -L JTAG_UART -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
