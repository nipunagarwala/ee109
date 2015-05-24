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
// output_name:                                       altera_conduit_bfm
// role:width:direction:                              HEX4:7:input,HEX5:7:input,HEX6:7:input,HEX7:7:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm
(
   sig_HEX4,
   sig_HEX5,
   sig_HEX6,
   sig_HEX7
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input [6 : 0] sig_HEX4;
   input [6 : 0] sig_HEX5;
   input [6 : 0] sig_HEX6;
   input [6 : 0] sig_HEX7;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [6 : 0] ROLE_HEX4_t;
   typedef logic [6 : 0] ROLE_HEX5_t;
   typedef logic [6 : 0] ROLE_HEX6_t;
   typedef logic [6 : 0] ROLE_HEX7_t;

   logic [6 : 0] HEX4_in;
   logic [6 : 0] HEX4_local;
   logic [6 : 0] HEX5_in;
   logic [6 : 0] HEX5_local;
   logic [6 : 0] HEX6_in;
   logic [6 : 0] HEX6_local;
   logic [6 : 0] HEX7_in;
   logic [6 : 0] HEX7_local;

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
   
   event signal_input_HEX4_change;
   event signal_input_HEX5_change;
   event signal_input_HEX6_change;
   event signal_input_HEX7_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // HEX4
   // -------------------------------------------------------
   function automatic ROLE_HEX4_t get_HEX4();
   
      // Gets the HEX4 input value.
      $sformat(message, "%m: called get_HEX4");
      print(VERBOSITY_DEBUG, message);
      return HEX4_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX5
   // -------------------------------------------------------
   function automatic ROLE_HEX5_t get_HEX5();
   
      // Gets the HEX5 input value.
      $sformat(message, "%m: called get_HEX5");
      print(VERBOSITY_DEBUG, message);
      return HEX5_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX6
   // -------------------------------------------------------
   function automatic ROLE_HEX6_t get_HEX6();
   
      // Gets the HEX6 input value.
      $sformat(message, "%m: called get_HEX6");
      print(VERBOSITY_DEBUG, message);
      return HEX6_in;
      
   endfunction

   // -------------------------------------------------------
   // HEX7
   // -------------------------------------------------------
   function automatic ROLE_HEX7_t get_HEX7();
   
      // Gets the HEX7 input value.
      $sformat(message, "%m: called get_HEX7");
      print(VERBOSITY_DEBUG, message);
      return HEX7_in;
      
   endfunction

   assign HEX4_in = sig_HEX4;
   assign HEX5_in = sig_HEX5;
   assign HEX6_in = sig_HEX6;
   assign HEX7_in = sig_HEX7;


   always @(HEX4_in) begin
      if (HEX4_local != HEX4_in)
         -> signal_input_HEX4_change;
      HEX4_local = HEX4_in;
   end
   
   always @(HEX5_in) begin
      if (HEX5_local != HEX5_in)
         -> signal_input_HEX5_change;
      HEX5_local = HEX5_in;
   end
   
   always @(HEX6_in) begin
      if (HEX6_local != HEX6_in)
         -> signal_input_HEX6_change;
      HEX6_local = HEX6_in;
   end
   
   always @(HEX7_in) begin
      if (HEX7_local != HEX7_in)
         -> signal_input_HEX7_change;
      HEX7_local = HEX7_in;
   end
   


// synthesis translate_on

endmodule


