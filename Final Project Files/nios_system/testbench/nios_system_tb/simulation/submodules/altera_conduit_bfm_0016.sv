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
// output_name:                                       altera_conduit_bfm_0016
// role:width:direction:                              b_SD_cmd:1:bidir,b_SD_dat:1:bidir,b_SD_dat3:1:bidir,o_SD_clock:1:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0016
(
   sig_b_SD_cmd,
   sig_b_SD_dat,
   sig_b_SD_dat3,
   sig_o_SD_clock
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   inout wire sig_b_SD_cmd;
   inout wire sig_b_SD_dat;
   inout wire sig_b_SD_dat3;
   input sig_o_SD_clock;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_b_SD_cmd_t;
   typedef logic ROLE_b_SD_dat_t;
   typedef logic ROLE_b_SD_dat3_t;
   typedef logic ROLE_o_SD_clock_t;

   logic b_SD_cmd_oe;
   logic b_SD_cmd_oe_temp = 0;
   reg b_SD_cmd_temp;
   reg b_SD_cmd_out;
   logic [0 : 0] b_SD_cmd_in;
   logic [0 : 0] b_SD_cmd_local;
   logic b_SD_dat_oe;
   logic b_SD_dat_oe_temp = 0;
   reg b_SD_dat_temp;
   reg b_SD_dat_out;
   logic [0 : 0] b_SD_dat_in;
   logic [0 : 0] b_SD_dat_local;
   logic b_SD_dat3_oe;
   logic b_SD_dat3_oe_temp = 0;
   reg b_SD_dat3_temp;
   reg b_SD_dat3_out;
   logic [0 : 0] b_SD_dat3_in;
   logic [0 : 0] b_SD_dat3_local;
   logic [0 : 0] o_SD_clock_in;
   logic [0 : 0] o_SD_clock_local;

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
   
   event signal_input_b_SD_cmd_change;
   event signal_input_b_SD_dat_change;
   event signal_input_b_SD_dat3_change;
   event signal_input_o_SD_clock_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // b_SD_cmd
   // -------------------------------------------------------
   function automatic ROLE_b_SD_cmd_t get_b_SD_cmd();
   
      // Gets the b_SD_cmd input value.
      $sformat(message, "%m: called get_b_SD_cmd");
      print(VERBOSITY_DEBUG, message);
      return b_SD_cmd_in;
      
   endfunction

   function automatic void set_b_SD_cmd (
      ROLE_b_SD_cmd_t new_value
   );
      // Drive the new value to b_SD_cmd.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_cmd_temp = new_value;
   endfunction
   
   function automatic void set_b_SD_cmd_oe (
      bit enable
   );
      // bidir port b_SD_cmd will work as output port when set to 1.
      // bidir port b_SD_cmd will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_cmd_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // b_SD_dat
   // -------------------------------------------------------
   function automatic ROLE_b_SD_dat_t get_b_SD_dat();
   
      // Gets the b_SD_dat input value.
      $sformat(message, "%m: called get_b_SD_dat");
      print(VERBOSITY_DEBUG, message);
      return b_SD_dat_in;
      
   endfunction

   function automatic void set_b_SD_dat (
      ROLE_b_SD_dat_t new_value
   );
      // Drive the new value to b_SD_dat.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_dat_temp = new_value;
   endfunction
   
   function automatic void set_b_SD_dat_oe (
      bit enable
   );
      // bidir port b_SD_dat will work as output port when set to 1.
      // bidir port b_SD_dat will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_dat_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // b_SD_dat3
   // -------------------------------------------------------
   function automatic ROLE_b_SD_dat3_t get_b_SD_dat3();
   
      // Gets the b_SD_dat3 input value.
      $sformat(message, "%m: called get_b_SD_dat3");
      print(VERBOSITY_DEBUG, message);
      return b_SD_dat3_in;
      
   endfunction

   function automatic void set_b_SD_dat3 (
      ROLE_b_SD_dat3_t new_value
   );
      // Drive the new value to b_SD_dat3.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_dat3_temp = new_value;
   endfunction
   
   function automatic void set_b_SD_dat3_oe (
      bit enable
   );
      // bidir port b_SD_dat3 will work as output port when set to 1.
      // bidir port b_SD_dat3 will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      b_SD_dat3_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // o_SD_clock
   // -------------------------------------------------------
   function automatic ROLE_o_SD_clock_t get_o_SD_clock();
   
      // Gets the o_SD_clock input value.
      $sformat(message, "%m: called get_o_SD_clock");
      print(VERBOSITY_DEBUG, message);
      return o_SD_clock_in;
      
   endfunction

   assign b_SD_cmd_oe = b_SD_cmd_oe_temp;
   assign sig_b_SD_cmd = (b_SD_cmd_oe == 1)? b_SD_cmd_temp:'z;
   assign b_SD_cmd_in = (b_SD_cmd_oe == 0)? sig_b_SD_cmd:'z;
   assign b_SD_dat_oe = b_SD_dat_oe_temp;
   assign sig_b_SD_dat = (b_SD_dat_oe == 1)? b_SD_dat_temp:'z;
   assign b_SD_dat_in = (b_SD_dat_oe == 0)? sig_b_SD_dat:'z;
   assign b_SD_dat3_oe = b_SD_dat3_oe_temp;
   assign sig_b_SD_dat3 = (b_SD_dat3_oe == 1)? b_SD_dat3_temp:'z;
   assign b_SD_dat3_in = (b_SD_dat3_oe == 0)? sig_b_SD_dat3:'z;
   assign o_SD_clock_in = sig_o_SD_clock;


   always @(b_SD_cmd_in) begin
      if (b_SD_cmd_oe == 0) begin
         if (b_SD_cmd_local != b_SD_cmd_in)
            -> signal_input_b_SD_cmd_change;
         b_SD_cmd_local = b_SD_cmd_in;
      end
   end
   
   always @(b_SD_dat_in) begin
      if (b_SD_dat_oe == 0) begin
         if (b_SD_dat_local != b_SD_dat_in)
            -> signal_input_b_SD_dat_change;
         b_SD_dat_local = b_SD_dat_in;
      end
   end
   
   always @(b_SD_dat3_in) begin
      if (b_SD_dat3_oe == 0) begin
         if (b_SD_dat3_local != b_SD_dat3_in)
            -> signal_input_b_SD_dat3_change;
         b_SD_dat3_local = b_SD_dat3_in;
      end
   end
   
   always @(o_SD_clock_in) begin
      if (o_SD_clock_local != o_SD_clock_in)
         -> signal_input_o_SD_clock_change;
      o_SD_clock_local = o_SD_clock_in;
   end
   


// synthesis translate_on

endmodule


