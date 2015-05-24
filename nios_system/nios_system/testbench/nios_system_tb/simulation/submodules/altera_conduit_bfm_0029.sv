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
// output_name:                                       altera_conduit_bfm_0029
// role:width:direction:                              LEDR_conduit:18:input,LEDG_conduit:8:input,HEX0_conduit:7:input,HEX1_conduit:7:input,HEX2_conduit:7:input,HEX3_conduit:7:input,HEX4_conduit:7:input,HEX5_conduit:7:input,HEX6_conduit:7:input,HEX7_conduit:7:input,SW_conduit:18:output
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0029
(
   sig_LEDR_conduit,
   sig_LEDG_conduit,
   sig_HEX0_conduit,
   sig_HEX1_conduit,
   sig_HEX2_conduit,
   sig_HEX3_conduit,
   sig_HEX4_conduit,
   sig_HEX5_conduit,
   sig_HEX6_conduit,
   sig_HEX7_conduit,
   sig_SW_conduit
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input [17 : 0] sig_LEDR_conduit;
   input [7 : 0] sig_LEDG_conduit;
   input [6 : 0] sig_HEX0_conduit;
   input [6 : 0] sig_HEX1_conduit;
   input [6 : 0] sig_HEX2_conduit;
   input [6 : 0] sig_HEX3_conduit;
   input [6 : 0] sig_HEX4_conduit;
   input [6 : 0] sig_HEX5_conduit;
   input [6 : 0] sig_HEX6_conduit;
   input [6 : 0] sig_HEX7_conduit;
   output [17 : 0] sig_SW_conduit;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [17 : 0] ROLE_LEDR_conduit_t;
   typedef logic [7 : 0] ROLE_LEDG_conduit_t;
   typedef logic [6 : 0] ROLE_HEX0_conduit_t;
   typedef logic [6 : 0] ROLE_HEX1_conduit_t;
   typedef logic [6 : 0] ROLE_HEX2_conduit_t;
   typedef logic [6 : 0] ROLE_HEX3_conduit_t;
   typedef logic [6 : 0] ROLE_HEX4_conduit_t;
   typedef logic [6 : 0] ROLE_HEX5_conduit_t;
   typedef logic [6 : 0] ROLE_HEX6_conduit_t;
   typedef logic [6 : 0] ROLE_HEX7_conduit_t;
   typedef logic [17 : 0] ROLE_SW_conduit_t;

   logic [17 : 0] LEDR_conduit_in;
   logic [17 : 0] LEDR_conduit_local;
   logic [7 : 0] LEDG_conduit_in;
   logic [7 : 0] LEDG_conduit_local;
   logic [6 : 0] HEX0_conduit_in;
   logic [6 : 0] HEX0_conduit_local;
   logic [6 : 0] HEX1_conduit_in;
   logic [6 : 0] HEX1_conduit_local;
   logic [6 : 0] HEX2_conduit_in;
   logic [6 : 0] HEX2_conduit_local;
   logic [6 : 0] HEX3_conduit_in;
   logic [6 : 0] HEX3_conduit_local;
   logic [6 : 0] HEX4_conduit_in;
   logic [6 : 0] HEX4_conduit_local;
   logic [6 : 0] HEX5_conduit_in;
   logic [6 : 0] HEX5_conduit_local;
   logic [6 : 0] HEX6_conduit_in;
   logic [6 : 0] HEX6_conduit_local;
   logic [6 : 0] HEX7_conduit_in;
   logic [6 : 0] HEX7_conduit_local;
   reg [17 : 0] SW_conduit_temp;
   reg [17 : 0] SW_conduit_out;

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
   
   event signal_input_LEDR_conduit_change;
   event signal_input_LEDG_conduit_change;
   event signal_input_HEX0_conduit_change;
   event signal_input_HEX1_conduit_change;
   event signal_input_HEX2_conduit_change;
   event signal_input_HEX3_conduit_change;
   event signal_input_HEX4_conduit_change;
   event signal_input_HEX5_conduit_change;
   event signal_input_HEX6_conduit_change;
   event signal_input_HEX7_conduit_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // LEDR_conduit
   // -------------------------------------------------------
   function automatic ROLE_LEDR_conduit_t get_LEDR_conduit();
   
      // Gets the LEDR_conduit input value.
      $sformat(message, "%m: called get_LEDR_conduit");
      print(VERBOSITY_DEBUG, message);
      return LEDR_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // LEDG_conduit
   // -------------------------------------------------------
   function automatic ROLE_LEDG_conduit_t get_LEDG_conduit();
   
      // Gets the LEDG_conduit input value.
      $sformat(message, "%m: called get_LEDG_conduit");
      print(VERBOSITY_DEBUG, message);
      return LEDG_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX0_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX0_conduit_t get_HEX0_conduit();
   
      // Gets the HEX0_conduit input value.
      $sformat(message, "%m: called get_HEX0_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX0_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX1_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX1_conduit_t get_HEX1_conduit();
   
      // Gets the HEX1_conduit input value.
      $sformat(message, "%m: called get_HEX1_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX1_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX2_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX2_conduit_t get_HEX2_conduit();
   
      // Gets the HEX2_conduit input value.
      $sformat(message, "%m: called get_HEX2_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX2_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX3_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX3_conduit_t get_HEX3_conduit();
   
      // Gets the HEX3_conduit input value.
      $sformat(message, "%m: called get_HEX3_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX3_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX4_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX4_conduit_t get_HEX4_conduit();
   
      // Gets the HEX4_conduit input value.
      $sformat(message, "%m: called get_HEX4_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX4_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX5_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX5_conduit_t get_HEX5_conduit();
   
      // Gets the HEX5_conduit input value.
      $sformat(message, "%m: called get_HEX5_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX5_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX6_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX6_conduit_t get_HEX6_conduit();
   
      // Gets the HEX6_conduit input value.
      $sformat(message, "%m: called get_HEX6_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX6_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX7_conduit
   // -------------------------------------------------------
   function automatic ROLE_HEX7_conduit_t get_HEX7_conduit();
   
      // Gets the HEX7_conduit input value.
      $sformat(message, "%m: called get_HEX7_conduit");
      print(VERBOSITY_DEBUG, message);
      return HEX7_conduit_in;
      
   endfunction

   // -------------------------------------------------------
   // SW_conduit
   // -------------------------------------------------------

   function automatic void set_SW_conduit (
      ROLE_SW_conduit_t new_value
   );
      // Drive the new value to SW_conduit.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      SW_conduit_temp = new_value;
   endfunction

   assign LEDR_conduit_in = sig_LEDR_conduit;
   assign LEDG_conduit_in = sig_LEDG_conduit;
   assign HEX0_conduit_in = sig_HEX0_conduit;
   assign HEX1_conduit_in = sig_HEX1_conduit;
   assign HEX2_conduit_in = sig_HEX2_conduit;
   assign HEX3_conduit_in = sig_HEX3_conduit;
   assign HEX4_conduit_in = sig_HEX4_conduit;
   assign HEX5_conduit_in = sig_HEX5_conduit;
   assign HEX6_conduit_in = sig_HEX6_conduit;
   assign HEX7_conduit_in = sig_HEX7_conduit;
   assign sig_SW_conduit = SW_conduit_temp;


   always @(LEDR_conduit_in) begin
      if (LEDR_conduit_local != LEDR_conduit_in)
         -> signal_input_LEDR_conduit_change;
      LEDR_conduit_local = LEDR_conduit_in;
   end
   
   always @(LEDG_conduit_in) begin
      if (LEDG_conduit_local != LEDG_conduit_in)
         -> signal_input_LEDG_conduit_change;
      LEDG_conduit_local = LEDG_conduit_in;
   end
   
   always @(HEX0_conduit_in) begin
      if (HEX0_conduit_local != HEX0_conduit_in)
         -> signal_input_HEX0_conduit_change;
      HEX0_conduit_local = HEX0_conduit_in;
   end
   
   always @(HEX1_conduit_in) begin
      if (HEX1_conduit_local != HEX1_conduit_in)
         -> signal_input_HEX1_conduit_change;
      HEX1_conduit_local = HEX1_conduit_in;
   end
   
   always @(HEX2_conduit_in) begin
      if (HEX2_conduit_local != HEX2_conduit_in)
         -> signal_input_HEX2_conduit_change;
      HEX2_conduit_local = HEX2_conduit_in;
   end
   
   always @(HEX3_conduit_in) begin
      if (HEX3_conduit_local != HEX3_conduit_in)
         -> signal_input_HEX3_conduit_change;
      HEX3_conduit_local = HEX3_conduit_in;
   end
   
   always @(HEX4_conduit_in) begin
      if (HEX4_conduit_local != HEX4_conduit_in)
         -> signal_input_HEX4_conduit_change;
      HEX4_conduit_local = HEX4_conduit_in;
   end
   
   always @(HEX5_conduit_in) begin
      if (HEX5_conduit_local != HEX5_conduit_in)
         -> signal_input_HEX5_conduit_change;
      HEX5_conduit_local = HEX5_conduit_in;
   end
   
   always @(HEX6_conduit_in) begin
      if (HEX6_conduit_local != HEX6_conduit_in)
         -> signal_input_HEX6_conduit_change;
      HEX6_conduit_local = HEX6_conduit_in;
   end
   
   always @(HEX7_conduit_in) begin
      if (HEX7_conduit_local != HEX7_conduit_in)
         -> signal_input_HEX7_conduit_change;
      HEX7_conduit_local = HEX7_conduit_in;
   end
   


// synthesis translate_on

endmodule


