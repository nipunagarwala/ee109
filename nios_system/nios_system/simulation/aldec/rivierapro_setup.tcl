
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

# ACDS 13.0sp1 232 win32 2015.05.23.01:27:31

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

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
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
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneive_ver  
vmap       cycloneive_ver   ./libraries/cycloneive_ver  
ensure_lib                         ./libraries/External_Clocks        
vmap       External_Clocks         ./libraries/External_Clocks        
ensure_lib                         ./libraries/sysid                  
vmap       sysid                   ./libraries/sysid                  
ensure_lib                         ./libraries/CPU                    
vmap       CPU                     ./libraries/CPU                    
ensure_lib                         ./libraries/VGA_Alpha_Blender      
vmap       VGA_Alpha_Blender       ./libraries/VGA_Alpha_Blender      
ensure_lib                         ./libraries/CPU_fpoint             
vmap       CPU_fpoint              ./libraries/CPU_fpoint             
ensure_lib                         ./libraries/VGA_Dual_Clock_FIFO    
vmap       VGA_Dual_Clock_FIFO     ./libraries/VGA_Dual_Clock_FIFO    
ensure_lib                         ./libraries/VGA_Pixel_Scaler       
vmap       VGA_Pixel_Scaler        ./libraries/VGA_Pixel_Scaler       
ensure_lib                         ./libraries/VGA_Pixel_RGB_Resampler
vmap       VGA_Pixel_RGB_Resampler ./libraries/VGA_Pixel_RGB_Resampler
ensure_lib                         ./libraries/VGA_Controller         
vmap       VGA_Controller          ./libraries/VGA_Controller         
ensure_lib                         ./libraries/VGA_Char_Buffer        
vmap       VGA_Char_Buffer         ./libraries/VGA_Char_Buffer        
ensure_lib                         ./libraries/SRAM                   
vmap       SRAM                    ./libraries/SRAM                   
ensure_lib                         ./libraries/PS2_Port               
vmap       PS2_Port                ./libraries/PS2_Port               
ensure_lib                         ./libraries/Char_LCD_16x2          
vmap       Char_LCD_16x2           ./libraries/Char_LCD_16x2          
ensure_lib                         ./libraries/Audio                  
vmap       Audio                   ./libraries/Audio                  
ensure_lib                         ./libraries/OnBoard_AV             
vmap       OnBoard_AV              ./libraries/OnBoard_AV             
ensure_lib                         ./libraries/Serial_Port            
vmap       Serial_Port             ./libraries/Serial_Port            
ensure_lib                         ./libraries/Expansion_JP5          
vmap       Expansion_JP5           ./libraries/Expansion_JP5          
ensure_lib                         ./libraries/Pushbuttons            
vmap       Pushbuttons             ./libraries/Pushbuttons            
ensure_lib                         ./libraries/Slider_Switches        
vmap       Slider_Switches         ./libraries/Slider_Switches        
ensure_lib                         ./libraries/HEX7_HEX4              
vmap       HEX7_HEX4               ./libraries/HEX7_HEX4              
ensure_lib                         ./libraries/HEX3_HEX0              
vmap       HEX3_HEX0               ./libraries/HEX3_HEX0              
ensure_lib                         ./libraries/Green_LEDs             
vmap       Green_LEDs              ./libraries/Green_LEDs             
ensure_lib                         ./libraries/Red_LEDs               
vmap       Red_LEDs                ./libraries/Red_LEDs               
ensure_lib                         ./libraries/SDRAM                  
vmap       SDRAM                   ./libraries/SDRAM                  
ensure_lib                         ./libraries/Interval_Timer         
vmap       Interval_Timer          ./libraries/Interval_Timer         
ensure_lib                         ./libraries/JTAG_UART              
vmap       JTAG_UART               ./libraries/JTAG_UART              

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog "$QSYS_SIMDIR/submodules/nios_system_External_Clocks.v"               -work External_Clocks        
  vlog "$QSYS_SIMDIR/submodules/nios_system_sysid.vo"                        -work sysid                  
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU.vo"                          -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_sysclk.v"  -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_tck.v"     -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_wrapper.v" -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_mult_cell.v"                 -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_oci_test_bench.v"            -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/nios_system_CPU_test_bench.v"                -work CPU                    
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"      -work VGA_Alpha_Blender      
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"      -work VGA_Alpha_Blender      
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Alpha_Blender.v"             -work VGA_Alpha_Blender      
  vlog "$QSYS_SIMDIR/submodules/fpoint_wrapper.v"                            -work CPU_fpoint             
  vlog "$QSYS_SIMDIR/submodules/fpoint_qsys.v"                               -work CPU_fpoint             
  vlog "$QSYS_SIMDIR/submodules/fpoint_hw_qsys.v"                            -work CPU_fpoint             
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Dual_Clock_FIFO.v"           -work VGA_Dual_Clock_FIFO    
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"             -work VGA_Pixel_Scaler       
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"     -work VGA_Pixel_Scaler       
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"    -work VGA_Pixel_Scaler       
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_Scaler.v"              -work VGA_Pixel_Scaler       
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_RGB_Resampler.v"       -work VGA_Pixel_RGB_Resampler
  vlog "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"         -work VGA_Controller         
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Controller.v"                -work VGA_Controller         
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"         -work VGA_Char_Buffer        
  vlog "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"              -work VGA_Char_Buffer        
  vlog "$QSYS_SIMDIR/submodules/nios_system_VGA_Char_Buffer.v"               -work VGA_Char_Buffer        
  vlog "$QSYS_SIMDIR/submodules/nios_system_SRAM.v"                          -work SRAM                   
  vlog "$QSYS_SIMDIR/submodules/altera_up_ps2.v"                             -work PS2_Port               
  vlog "$QSYS_SIMDIR/submodules/altera_up_ps2_command_out.v"                 -work PS2_Port               
  vlog "$QSYS_SIMDIR/submodules/altera_up_ps2_data_in.v"                     -work PS2_Port               
  vlog "$QSYS_SIMDIR/submodules/nios_system_PS2_Port.v"                      -work PS2_Port               
  vlog "$QSYS_SIMDIR/submodules/altera_up_character_lcd_communication.v"     -work Char_LCD_16x2          
  vlog "$QSYS_SIMDIR/submodules/altera_up_character_lcd_initialization.v"    -work Char_LCD_16x2          
  vlog "$QSYS_SIMDIR/submodules/nios_system_Char_LCD_16x2.v"                 -work Char_LCD_16x2          
  vlog "$QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v"               -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v"           -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v"            -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/altera_up_clock_edge.v"                      -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                       -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/nios_system_Audio.v"                         -work Audio                  
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v" -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"            -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"             -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"         -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"         -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"         -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"         -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"   -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"  -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"   -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"  -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"    -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"  -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/nios_system_OnBoard_AV.v"                    -work OnBoard_AV             
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                  -work Serial_Port            
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"           -work Serial_Port            
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"            -work Serial_Port            
  vlog "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                       -work Serial_Port            
  vlog "$QSYS_SIMDIR/submodules/nios_system_Serial_Port.v"                   -work Serial_Port            
  vlog "$QSYS_SIMDIR/submodules/nios_system_Expansion_JP5.v"                 -work Expansion_JP5          
  vlog "$QSYS_SIMDIR/submodules/nios_system_Pushbuttons.v"                   -work Pushbuttons            
  vlog "$QSYS_SIMDIR/submodules/nios_system_Slider_Switches.v"               -work Slider_Switches        
  vlog "$QSYS_SIMDIR/submodules/nios_system_HEX7_HEX4.v"                     -work HEX7_HEX4              
  vlog "$QSYS_SIMDIR/submodules/nios_system_HEX3_HEX0.v"                     -work HEX3_HEX0              
  vlog "$QSYS_SIMDIR/submodules/nios_system_Green_LEDs.v"                    -work Green_LEDs             
  vlog "$QSYS_SIMDIR/submodules/nios_system_Red_LEDs.v"                      -work Red_LEDs               
  vlog "$QSYS_SIMDIR/submodules/nios_system_SDRAM.v"                         -work SDRAM                  
  vlog "$QSYS_SIMDIR/submodules/nios_system_Interval_Timer.v"                -work Interval_Timer         
  vlog "$QSYS_SIMDIR/submodules/nios_system_JTAG_UART.v"                     -work JTAG_UART              
  vlog "$QSYS_SIMDIR/nios_system.v"                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L External_Clocks -L sysid -L CPU -L VGA_Alpha_Blender -L CPU_fpoint -L VGA_Dual_Clock_FIFO -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler -L VGA_Controller -L VGA_Char_Buffer -L SRAM -L PS2_Port -L Char_LCD_16x2 -L Audio -L OnBoard_AV -L Serial_Port -L Expansion_JP5 -L Pushbuttons -L Slider_Switches -L HEX7_HEX4 -L HEX3_HEX0 -L Green_LEDs -L Red_LEDs -L SDRAM -L Interval_Timer -L JTAG_UART -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L External_Clocks -L sysid -L CPU -L VGA_Alpha_Blender -L CPU_fpoint -L VGA_Dual_Clock_FIFO -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler -L VGA_Controller -L VGA_Char_Buffer -L SRAM -L PS2_Port -L Char_LCD_16x2 -L Audio -L OnBoard_AV -L Serial_Port -L Expansion_JP5 -L Pushbuttons -L Slider_Switches -L HEX7_HEX4 -L HEX3_HEX0 -L Green_LEDs -L Red_LEDs -L SDRAM -L Interval_Timer -L JTAG_UART -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
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
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
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
