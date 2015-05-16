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
// output_name:                                       altera_conduit_bfm_0018
// role:width:direction:                              TD_CLK27:1:output,TD_DATA:8:output,TD_HS:1:output,TD_VS:1:output,clk27_reset:1:output,TD_RESET:1:input,overflow_flag:1:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0018
(
   sig_TD_CLK27,
   sig_TD_DATA,
   sig_TD_HS,
   sig_TD_VS,
   sig_clk27_reset,
   sig_TD_RESET,
   sig_overflow_flag
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_TD_CLK27;
   output [7 : 0] sig_TD_DATA;
   output sig_TD_HS;
   output sig_TD_VS;
   output sig_clk27_reset;
   input sig_TD_RESET;
   input sig_overflow_flag;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_TD_CLK27_t;
   typedef logic [7 : 0] ROLE_TD_DATA_t;
   typedef logic ROLE_TD_HS_t;
   typedef logic ROLE_TD_VS_t;
   typedef logic ROLE_clk27_reset_t;
   typedef logic ROLE_TD_RESET_t;
   typedef logic ROLE_overflow_flag_t;

   reg TD_CLK27_temp;
   reg TD_CLK27_out;
   reg [7 : 0] TD_DATA_temp;
   reg [7 : 0] TD_DATA_out;
   reg TD_HS_temp;
   reg TD_HS_out;
   reg TD_VS_temp;
   reg TD_VS_out;
   reg clk27_reset_temp;
   reg clk27_reset_out;
   logic [0 : 0] TD_RESET_in;
   logic [0 : 0] TD_RESET_local;
   logic [0 : 0] overflow_flag_in;
   logic [0 : 0] overflow_flag_local;

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
   
   event signal_input_TD_RESET_change;
   event signal_input_overflow_flag_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // TD_CLK27
   // -------------------------------------------------------

   function automatic void set_TD_CLK27 (
      ROLE_TD_CLK27_t new_value
   );
      // Drive the new value to TD_CLK27.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      TD_CLK27_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // TD_DATA
   // -------------------------------------------------------

   function automatic void set_TD_DATA (
      ROLE_TD_DATA_t new_value
   );
      // Drive the new value to TD_DATA.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      TD_DATA_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // TD_HS
   // -------------------------------------------------------

   function automatic void set_TD_HS (
      ROLE_TD_HS_t new_value
   );
      // Drive the new value to TD_HS.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      TD_HS_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // TD_VS
   // -------------------------------------------------------

   function automatic void set_TD_VS (
      ROLE_TD_VS_t new_value
   );
      // Drive the new value to TD_VS.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      TD_VS_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // clk27_reset
   // -------------------------------------------------------

   function automatic void set_clk27_reset (
      ROLE_clk27_reset_t new_value
   );
      // Drive the new value to clk27_reset.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      clk27_reset_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // TD_RESET
   // -------------------------------------------------------
   function automatic ROLE_TD_RESET_t get_TD_RESET();
   
      // Gets the TD_RESET input value.
      $sformat(message, "%m: called get_TD_RESET");
      print(VERBOSITY_DEBUG, message);
      return TD_RESET_in;
      
   endfunction

   // -------------------------------------------------------
   // overflow_flag
   // -------------------------------------------------------
   function automatic ROLE_overflow_flag_t get_overflow_flag();
   
      // Gets the overflow_flag input value.
      $sformat(message, "%m: called get_overflow_flag");
      print(VERBOSITY_DEBUG, message);
      return overflow_flag_in;
      
   endfunction

   assign sig_TD_CLK27 = TD_CLK27_temp;
   assign sig_TD_DATA = TD_DATA_temp;
   assign sig_TD_HS = TD_HS_temp;
   assign sig_TD_VS = TD_VS_temp;
   assign sig_clk27_reset = clk27_reset_temp;
   assign TD_RESET_in = sig_TD_RESET;
   assign overflow_flag_in = sig_overflow_flag;


   always @(TD_RESET_in) begin
      if (TD_RESET_local != TD_RESET_in)
         -> signal_input_TD_RESET_change;
      TD_RESET_local = TD_RESET_in;
   end
   
   always @(overflow_flag_in) begin
      if (overflow_flag_local != overflow_flag_in)
         -> signal_input_overflow_flag_change;
      overflow_flag_local = overflow_flag_in;
   end
   


// synthesis translate_on

endmodule


