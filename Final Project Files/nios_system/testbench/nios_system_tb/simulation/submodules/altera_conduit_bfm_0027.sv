// (C) 2001-2013 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
// $Revision: #7 $
// $Date: 2010/08/05 $
// $Author: klong $
//-----------------------------------------------------------------------------
// =head1 NAME
// altera_conduit_bfm
// =head1 SYNOPSIS
// Bus Functional Model (BFM) for a Standard Conduit BFM
//-----------------------------------------------------------------------------
// =head1 DESCRIPTION
// This is a Bus Functional Model (BFM) for a Standard Conduit Master.
// This BFM sampled the input/bidirection port value or driving user's value to 
// output ports when user call the API.  
// This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
// Generation parameters:
// output_name:                                       altera_conduit_bfm_0027
// role:width:direction:                              xon_gen:1:output,xoff_gen:1:output,magic_wakeup:1:input,magic_sleep_n:1:output,ff_tx_crc_fwd:1:output,ff_tx_septy:1:input,tx_ff_uflow:1:input,ff_tx_a_full:1:input,ff_tx_a_empty:1:input,rx_err_stat:18:input,rx_frm_type:4:input,ff_rx_dsav:1:input,ff_rx_a_full:1:input,ff_rx_a_empty:1:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0027
(
   sig_xon_gen,
   sig_xoff_gen,
   sig_magic_wakeup,
   sig_magic_sleep_n,
   sig_ff_tx_crc_fwd,
   sig_ff_tx_septy,
   sig_tx_ff_uflow,
   sig_ff_tx_a_full,
   sig_ff_tx_a_empty,
   sig_rx_err_stat,
   sig_rx_frm_type,
   sig_ff_rx_dsav,
   sig_ff_rx_a_full,
   sig_ff_rx_a_empty
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_xon_gen;
   output sig_xoff_gen;
   input sig_magic_wakeup;
   output sig_magic_sleep_n;
   output sig_ff_tx_crc_fwd;
   input sig_ff_tx_septy;
   input sig_tx_ff_uflow;
   input sig_ff_tx_a_full;
   input sig_ff_tx_a_empty;
   input [17 : 0] sig_rx_err_stat;
   input [3 : 0] sig_rx_frm_type;
   input sig_ff_rx_dsav;
   input sig_ff_rx_a_full;
   input sig_ff_rx_a_empty;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_xon_gen_t;
   typedef logic ROLE_xoff_gen_t;
   typedef logic ROLE_magic_wakeup_t;
   typedef logic ROLE_magic_sleep_n_t;
   typedef logic ROLE_ff_tx_crc_fwd_t;
   typedef logic ROLE_ff_tx_septy_t;
   typedef logic ROLE_tx_ff_uflow_t;
   typedef logic ROLE_ff_tx_a_full_t;
   typedef logic ROLE_ff_tx_a_empty_t;
   typedef logic [17 : 0] ROLE_rx_err_stat_t;
   typedef logic [3 : 0] ROLE_rx_frm_type_t;
   typedef logic ROLE_ff_rx_dsav_t;
   typedef logic ROLE_ff_rx_a_full_t;
   typedef logic ROLE_ff_rx_a_empty_t;

   reg xon_gen_temp;
   reg xon_gen_out;
   reg xoff_gen_temp;
   reg xoff_gen_out;
   logic [0 : 0] magic_wakeup_in;
   logic [0 : 0] magic_wakeup_local;
   reg magic_sleep_n_temp;
   reg magic_sleep_n_out;
   reg ff_tx_crc_fwd_temp;
   reg ff_tx_crc_fwd_out;
   logic [0 : 0] ff_tx_septy_in;
   logic [0 : 0] ff_tx_septy_local;
   logic [0 : 0] tx_ff_uflow_in;
   logic [0 : 0] tx_ff_uflow_local;
   logic [0 : 0] ff_tx_a_full_in;
   logic [0 : 0] ff_tx_a_full_local;
   logic [0 : 0] ff_tx_a_empty_in;
   logic [0 : 0] ff_tx_a_empty_local;
   logic [17 : 0] rx_err_stat_in;
   logic [17 : 0] rx_err_stat_local;
   logic [3 : 0] rx_frm_type_in;
   logic [3 : 0] rx_frm_type_local;
   logic [0 : 0] ff_rx_dsav_in;
   logic [0 : 0] ff_rx_dsav_local;
   logic [0 : 0] ff_rx_a_full_in;
   logic [0 : 0] ff_rx_a_full_local;
   logic [0 : 0] ff_rx_a_empty_in;
   logic [0 : 0] ff_rx_a_empty_local;

   //--------------------------------------------------------------------------
   // =head1 Public Methods API
   // =pod
   // This section describes the public methods in the application programming
   // interface (API). The application program interface provides methods for 
   // a testbench which instantiates, controls and queries state in this BFM 
   // component. Test programs must only use these public access methods and 
   // events to communicate with this BFM component. The API and module pins
   // are the only interfaces of this component that are guaranteed to be
   // stable. The API will be maintained for the life of the product. 
   // While we cannot prevent a test program from directly accessing internal
   // tasks, functions, or data private to the BFM, there is no guarantee that
   // these will be present in the future. In fact, it is best for the user
   // to assume that the underlying implementation of this component can 
   // and will change.
   // =cut
   //--------------------------------------------------------------------------
   
   event signal_input_magic_wakeup_change;
   event signal_input_ff_tx_septy_change;
   event signal_input_tx_ff_uflow_change;
   event signal_input_ff_tx_a_full_change;
   event signal_input_ff_tx_a_empty_change;
   event signal_input_rx_err_stat_change;
   event signal_input_rx_frm_type_change;
   event signal_input_ff_rx_dsav_change;
   event signal_input_ff_rx_a_full_change;
   event signal_input_ff_rx_a_empty_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // xon_gen
   // -------------------------------------------------------

   function automatic void set_xon_gen (
      ROLE_xon_gen_t new_value
   );
      // Drive the new value to xon_gen.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      xon_gen_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // xoff_gen
   // -------------------------------------------------------

   function automatic void set_xoff_gen (
      ROLE_xoff_gen_t new_value
   );
      // Drive the new value to xoff_gen.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      xoff_gen_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // magic_wakeup
   // -------------------------------------------------------
   function automatic ROLE_magic_wakeup_t get_magic_wakeup();
   
      // Gets the magic_wakeup input value.
      $sformat(message, "%m: called get_magic_wakeup");
      print(VERBOSITY_DEBUG, message);
      return magic_wakeup_in;
      
   endfunction

   // -------------------------------------------------------
   // magic_sleep_n
   // -------------------------------------------------------

   function automatic void set_magic_sleep_n (
      ROLE_magic_sleep_n_t new_value
   );
      // Drive the new value to magic_sleep_n.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      magic_sleep_n_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // ff_tx_crc_fwd
   // -------------------------------------------------------

   function automatic void set_ff_tx_crc_fwd (
      ROLE_ff_tx_crc_fwd_t new_value
   );
      // Drive the new value to ff_tx_crc_fwd.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      ff_tx_crc_fwd_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // ff_tx_septy
   // -------------------------------------------------------
   function automatic ROLE_ff_tx_septy_t get_ff_tx_septy();
   
      // Gets the ff_tx_septy input value.
      $sformat(message, "%m: called get_ff_tx_septy");
      print(VERBOSITY_DEBUG, message);
      return ff_tx_septy_in;
      
   endfunction

   // -------------------------------------------------------
   // tx_ff_uflow
   // -------------------------------------------------------
   function automatic ROLE_tx_ff_uflow_t get_tx_ff_uflow();
   
      // Gets the tx_ff_uflow input value.
      $sformat(message, "%m: called get_tx_ff_uflow");
      print(VERBOSITY_DEBUG, message);
      return tx_ff_uflow_in;
      
   endfunction

   // -------------------------------------------------------
   // ff_tx_a_full
   // -------------------------------------------------------
   function automatic ROLE_ff_tx_a_full_t get_ff_tx_a_full();
   
      // Gets the ff_tx_a_full input value.
      $sformat(message, "%m: called get_ff_tx_a_full");
      print(VERBOSITY_DEBUG, message);
      return ff_tx_a_full_in;
      
   endfunction

   // -------------------------------------------------------
   // ff_tx_a_empty
   // -------------------------------------------------------
   function automatic ROLE_ff_tx_a_empty_t get_ff_tx_a_empty();
   
      // Gets the ff_tx_a_empty input value.
      $sformat(message, "%m: called get_ff_tx_a_empty");
      print(VERBOSITY_DEBUG, message);
      return ff_tx_a_empty_in;
      
   endfunction

   // -------------------------------------------------------
   // rx_err_stat
   // -------------------------------------------------------
   function automatic ROLE_rx_err_stat_t get_rx_err_stat();
   
      // Gets the rx_err_stat input value.
      $sformat(message, "%m: called get_rx_err_stat");
      print(VERBOSITY_DEBUG, message);
      return rx_err_stat_in;
      
   endfunction

   // -------------------------------------------------------
   // rx_frm_type
   // -------------------------------------------------------
   function automatic ROLE_rx_frm_type_t get_rx_frm_type();
   
      // Gets the rx_frm_type input value.
      $sformat(message, "%m: called get_rx_frm_type");
      print(VERBOSITY_DEBUG, message);
      return rx_frm_type_in;
      
   endfunction

   // -------------------------------------------------------
   // ff_rx_dsav
   // -------------------------------------------------------
   function automatic ROLE_ff_rx_dsav_t get_ff_rx_dsav();
   
      // Gets the ff_rx_dsav input value.
      $sformat(message, "%m: called get_ff_rx_dsav");
      print(VERBOSITY_DEBUG, message);
      return ff_rx_dsav_in;
      
   endfunction

   // -------------------------------------------------------
   // ff_rx_a_full
   // -------------------------------------------------------
   function automatic ROLE_ff_rx_a_full_t get_ff_rx_a_full();
   
      // Gets the ff_rx_a_full input value.
      $sformat(message, "%m: called get_ff_rx_a_full");
      print(VERBOSITY_DEBUG, message);
      return ff_rx_a_full_in;
      
   endfunction

   // -------------------------------------------------------
   // ff_rx_a_empty
   // -------------------------------------------------------
   function automatic ROLE_ff_rx_a_empty_t get_ff_rx_a_empty();
   
      // Gets the ff_rx_a_empty input value.
      $sformat(message, "%m: called get_ff_rx_a_empty");
      print(VERBOSITY_DEBUG, message);
      return ff_rx_a_empty_in;
      
   endfunction

   assign sig_xon_gen = xon_gen_temp;
   assign sig_xoff_gen = xoff_gen_temp;
   assign magic_wakeup_in = sig_magic_wakeup;
   assign sig_magic_sleep_n = magic_sleep_n_temp;
   assign sig_ff_tx_crc_fwd = ff_tx_crc_fwd_temp;
   assign ff_tx_septy_in = sig_ff_tx_septy;
   assign tx_ff_uflow_in = sig_tx_ff_uflow;
   assign ff_tx_a_full_in = sig_ff_tx_a_full;
   assign ff_tx_a_empty_in = sig_ff_tx_a_empty;
   assign rx_err_stat_in = sig_rx_err_stat;
   assign rx_frm_type_in = sig_rx_frm_type;
   assign ff_rx_dsav_in = sig_ff_rx_dsav;
   assign ff_rx_a_full_in = sig_ff_rx_a_full;
   assign ff_rx_a_empty_in = sig_ff_rx_a_empty;


   always @(magic_wakeup_in) begin
      if (magic_wakeup_local != magic_wakeup_in)
         -> signal_input_magic_wakeup_change;
      magic_wakeup_local = magic_wakeup_in;
   end
   
   always @(ff_tx_septy_in) begin
      if (ff_tx_septy_local != ff_tx_septy_in)
         -> signal_input_ff_tx_septy_change;
      ff_tx_septy_local = ff_tx_septy_in;
   end
   
   always @(tx_ff_uflow_in) begin
      if (tx_ff_uflow_local != tx_ff_uflow_in)
         -> signal_input_tx_ff_uflow_change;
      tx_ff_uflow_local = tx_ff_uflow_in;
   end
   
   always @(ff_tx_a_full_in) begin
      if (ff_tx_a_full_local != ff_tx_a_full_in)
         -> signal_input_ff_tx_a_full_change;
      ff_tx_a_full_local = ff_tx_a_full_in;
   end
   
   always @(ff_tx_a_empty_in) begin
      if (ff_tx_a_empty_local != ff_tx_a_empty_in)
         -> signal_input_ff_tx_a_empty_change;
      ff_tx_a_empty_local = ff_tx_a_empty_in;
   end
   
   always @(rx_err_stat_in) begin
      if (rx_err_stat_local != rx_err_stat_in)
         -> signal_input_rx_err_stat_change;
      rx_err_stat_local = rx_err_stat_in;
   end
   
   always @(rx_frm_type_in) begin
      if (rx_frm_type_local != rx_frm_type_in)
         -> signal_input_rx_frm_type_change;
      rx_frm_type_local = rx_frm_type_in;
   end
   
   always @(ff_rx_dsav_in) begin
      if (ff_rx_dsav_local != ff_rx_dsav_in)
         -> signal_input_ff_rx_dsav_change;
      ff_rx_dsav_local = ff_rx_dsav_in;
   end
   
   always @(ff_rx_a_full_in) begin
      if (ff_rx_a_full_local != ff_rx_a_full_in)
         -> signal_input_ff_rx_a_full_change;
      ff_rx_a_full_local = ff_rx_a_full_in;
   end
   
   always @(ff_rx_a_empty_in) begin
      if (ff_rx_a_empty_local != ff_rx_a_empty_in)
         -> signal_input_ff_rx_a_empty_change;
      ff_rx_a_empty_local = ff_rx_a_empty_in;
   end
   


// synthesis translate_on

endmodule


