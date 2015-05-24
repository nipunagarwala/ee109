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
// output_name:                                       altera_conduit_bfm_0014
// role:width:direction:                              HEX0:7:input,HEX1:7:input,HEX2:7:input,HEX3:7:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0014
(
   sig_HEX0,
   sig_HEX1,
   sig_HEX2,
   sig_HEX3
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input [6 : 0] sig_HEX0;
   input [6 : 0] sig_HEX1;
   input [6 : 0] sig_HEX2;
   input [6 : 0] sig_HEX3;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [6 : 0] ROLE_HEX0_t;
   typedef logic [6 : 0] ROLE_HEX1_t;
   typedef logic [6 : 0] ROLE_HEX2_t;
   typedef logic [6 : 0] ROLE_HEX3_t;

   logic [6 : 0] HEX0_in;
   logic [6 : 0] HEX0_local;
   logic [6 : 0] HEX1_in;
   logic [6 : 0] HEX1_local;
   logic [6 : 0] HEX2_in;
   logic [6 : 0] HEX2_local;
   logic [6 : 0] HEX3_in;
   logic [6 : 0] HEX3_local;

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
   
   event signal_input_HEX0_change;
   event signal_input_HEX1_change;
   event signal_input_HEX2_change;
   event signal_input_HEX3_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // HEX0
   // -------------------------------------------------------
   function automatic ROLE_HEX0_t get_HEX0();
   
      // Gets the HEX0 input value.
      $sformat(message, "%m: called get_HEX0");
      print(VERBOSITY_DEBUG, message);
      return HEX0_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX1
   // -------------------------------------------------------
   function automatic ROLE_HEX1_t get_HEX1();
   
      // Gets the HEX1 input value.
      $sformat(message, "%m: called get_HEX1");
      print(VERBOSITY_DEBUG, message);
      return HEX1_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX2
   // -------------------------------------------------------
   function automatic ROLE_HEX2_t get_HEX2();
   
      // Gets the HEX2 input value.
      $sformat(message, "%m: called get_HEX2");
      print(VERBOSITY_DEBUG, message);
      return HEX2_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX3
   // -------------------------------------------------------
   function automatic ROLE_HEX3_t get_HEX3();
   
      // Gets the HEX3 input value.
      $sformat(message, "%m: called get_HEX3");
      print(VERBOSITY_DEBUG, message);
      return HEX3_in;
      
   endfunction

   assign HEX0_in = sig_HEX0;
   assign HEX1_in = sig_HEX1;
   assign HEX2_in = sig_HEX2;
   assign HEX3_in = sig_HEX3;


   always @(HEX0_in) begin
      if (HEX0_local != HEX0_in)
         -> signal_input_HEX0_change;
      HEX0_local = HEX0_in;
   end
   
   always @(HEX1_in) begin
      if (HEX1_local != HEX1_in)
         -> signal_input_HEX1_change;
      HEX1_local = HEX1_in;
   end
   
   always @(HEX2_in) begin
      if (HEX2_local != HEX2_in)
         -> signal_input_HEX2_change;
      HEX2_local = HEX2_in;
   end
   
   always @(HEX3_in) begin
      if (HEX3_local != HEX3_in)
         -> signal_input_HEX3_change;
      HEX3_local = HEX3_in;
   end
   


// synthesis translate_on

endmodule


