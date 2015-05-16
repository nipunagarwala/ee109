
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

# ACDS 13.0sp1 232 win32 2015.05.15.21:23:48

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios_system"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

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
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_External_Clocks.v"               -work External_Clocks        
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_sysid.vo"                        -work sysid                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU.vo"                          -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_sysclk.v"  -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_tck.v"     -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_wrapper.v" -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_mult_cell.v"                 -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_oci_test_bench.v"            -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_CPU_test_bench.v"                -work CPU                    
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"      -work VGA_Alpha_Blender      
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"      -work VGA_Alpha_Blender      
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Alpha_Blender.v"             -work VGA_Alpha_Blender      
  vlogan +v2k "$QSYS_SIMDIR/submodules/fpoint_wrapper.v"                            -work CPU_fpoint             
  vlogan +v2k "$QSYS_SIMDIR/submodules/fpoint_qsys.v"                               -work CPU_fpoint             
  vlogan +v2k "$QSYS_SIMDIR/submodules/fpoint_hw_qsys.v"                            -work CPU_fpoint             
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Dual_Clock_FIFO.v"           -work VGA_Dual_Clock_FIFO    
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"             -work VGA_Pixel_Scaler       
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"     -work VGA_Pixel_Scaler       
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"    -work VGA_Pixel_Scaler       
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_Scaler.v"              -work VGA_Pixel_Scaler       
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_RGB_Resampler.v"       -work VGA_Pixel_RGB_Resampler
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"         -work VGA_Controller         
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Controller.v"                -work VGA_Controller         
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"         -work VGA_Char_Buffer        
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"              -work VGA_Char_Buffer        
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_VGA_Char_Buffer.v"               -work VGA_Char_Buffer        
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_SRAM.v"                          -work SRAM                   
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_ps2.v"                             -work PS2_Port               
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_ps2_command_out.v"                 -work PS2_Port               
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_ps2_data_in.v"                     -work PS2_Port               
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_PS2_Port.v"                      -work PS2_Port               
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_character_lcd_communication.v"     -work Char_LCD_16x2          
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_character_lcd_initialization.v"    -work Char_LCD_16x2          
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Char_LCD_16x2.v"                 -work Char_LCD_16x2          
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v"               -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v"           -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v"            -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_clock_edge.v"                      -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                       -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Audio.v"                         -work Audio                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v" -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v"            -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v"             -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v"         -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v"         -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v"         -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v"         -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v"   -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v"  -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v"   -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v"  -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v"    -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v"  -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_OnBoard_AV.v"                    -work OnBoard_AV             
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                  -work Serial_Port            
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"           -work Serial_Port            
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"            -work Serial_Port            
  vlogan +v2k "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                       -work Serial_Port            
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Serial_Port.v"                   -work Serial_Port            
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Expansion_JP5.v"                 -work Expansion_JP5          
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Pushbuttons.v"                   -work Pushbuttons            
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Slider_Switches.v"               -work Slider_Switches        
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_HEX7_HEX4.v"                     -work HEX7_HEX4              
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_HEX3_HEX0.v"                     -work HEX3_HEX0              
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Green_LEDs.v"                    -work Green_LEDs             
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Red_LEDs.v"                      -work Red_LEDs               
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_SDRAM.v"                         -work SDRAM                  
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_Interval_Timer.v"                -work Interval_Timer         
  vlogan +v2k "$QSYS_SIMDIR/submodules/nios_system_JTAG_UART.v"                     -work JTAG_UART              
  vlogan +v2k "$QSYS_SIMDIR/nios_system.v"                                                                       
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
