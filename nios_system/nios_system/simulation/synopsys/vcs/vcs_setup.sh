
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

# ACDS 13.0sp1 232 win32 2015.05.23.01:27:30

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="nios_system"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
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

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v \
  $QSYS_SIMDIR/submodules/nios_system_External_Clocks.v \
  $QSYS_SIMDIR/submodules/nios_system_sysid.vo \
  $QSYS_SIMDIR/submodules/nios_system_CPU.vo \
  $QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_sysclk.v \
  $QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_tck.v \
  $QSYS_SIMDIR/submodules/nios_system_CPU_jtag_debug_module_wrapper.v \
  $QSYS_SIMDIR/submodules/nios_system_CPU_mult_cell.v \
  $QSYS_SIMDIR/submodules/nios_system_CPU_oci_test_bench.v \
  $QSYS_SIMDIR/submodules/nios_system_CPU_test_bench.v \
  $QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v \
  $QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Alpha_Blender.v \
  $QSYS_SIMDIR/submodules/fpoint_wrapper.v \
  $QSYS_SIMDIR/submodules/fpoint_qsys.v \
  $QSYS_SIMDIR/submodules/fpoint_hw_qsys.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Dual_Clock_FIFO.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_Scaler.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Pixel_RGB_Resampler.v \
  $QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Controller.v \
  $QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v \
  $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v \
  $QSYS_SIMDIR/submodules/nios_system_VGA_Char_Buffer.v \
  $QSYS_SIMDIR/submodules/nios_system_SRAM.v \
  $QSYS_SIMDIR/submodules/altera_up_ps2.v \
  $QSYS_SIMDIR/submodules/altera_up_ps2_command_out.v \
  $QSYS_SIMDIR/submodules/altera_up_ps2_data_in.v \
  $QSYS_SIMDIR/submodules/nios_system_PS2_Port.v \
  $QSYS_SIMDIR/submodules/altera_up_character_lcd_communication.v \
  $QSYS_SIMDIR/submodules/altera_up_character_lcd_initialization.v \
  $QSYS_SIMDIR/submodules/nios_system_Char_LCD_16x2.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v \
  $QSYS_SIMDIR/submodules/altera_up_clock_edge.v \
  $QSYS_SIMDIR/submodules/altera_up_sync_fifo.v \
  $QSYS_SIMDIR/submodules/nios_system_Audio.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v \
  $QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_35.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_70.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v \
  $QSYS_SIMDIR/submodules/nios_system_OnBoard_AV.v \
  $QSYS_SIMDIR/submodules/altera_up_rs232_counters.v \
  $QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v \
  $QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v \
  $QSYS_SIMDIR/submodules/nios_system_Serial_Port.v \
  $QSYS_SIMDIR/submodules/nios_system_Expansion_JP5.v \
  $QSYS_SIMDIR/submodules/nios_system_Pushbuttons.v \
  $QSYS_SIMDIR/submodules/nios_system_Slider_Switches.v \
  $QSYS_SIMDIR/submodules/nios_system_HEX7_HEX4.v \
  $QSYS_SIMDIR/submodules/nios_system_HEX3_HEX0.v \
  $QSYS_SIMDIR/submodules/nios_system_Green_LEDs.v \
  $QSYS_SIMDIR/submodules/nios_system_Red_LEDs.v \
  $QSYS_SIMDIR/submodules/nios_system_SDRAM.v \
  $QSYS_SIMDIR/submodules/nios_system_Interval_Timer.v \
  $QSYS_SIMDIR/submodules/nios_system_JTAG_UART.v \
  $QSYS_SIMDIR/nios_system.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
