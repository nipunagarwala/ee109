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
// output_name:                                       altera_conduit_bfm_0005
// role:width:direction:                              ADCDAT:1:output,ADCLRCK:1:output,BCLK:1:output,DACDAT:1:input,DACLRCK:1:output
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0005
(
   sig_ADCDAT,
   sig_ADCLRCK,
   sig_BCLK,
   sig_DACDAT,
   sig_DACLRCK
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_ADCDAT;
   output sig_ADCLRCK;
   output sig_BCLK;
   input sig_DACDAT;
   output sig_DACLRCK;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_ADCDAT_t;
   typedef logic ROLE_ADCLRCK_t;
   typedef logic ROLE_BCLK_t;
   typedef logic ROLE_DACDAT_t;
   typedef logic ROLE_DACLRCK_t;

   reg ADCDAT_temp;
   reg ADCDAT_out;
   reg ADCLRCK_temp;
   reg ADCLRCK_out;
   reg BCLK_temp;
   reg BCLK_out;
   logic [0 : 0] DACDAT_in;
   logic [0 : 0] DACDAT_local;
   reg DACLRCK_temp;
   reg DACLRCK_out;

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
   
   event signal_input_DACDAT_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // ADCDAT
   // -------------------------------------------------------

   function automatic void set_ADCDAT (
      ROLE_ADCDAT_t new_value
   );
      // Drive the new value to ADCDAT.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      ADCDAT_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // ADCLRCK
   // -------------------------------------------------------

   function automatic void set_ADCLRCK (
      ROLE_ADCLRCK_t new_value
   );
      // Drive the new value to ADCLRCK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      ADCLRCK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // BCLK
   // -------------------------------------------------------

   function automatic void set_BCLK (
      ROLE_BCLK_t new_value
   );
      // Drive the new value to BCLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      BCLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // DACDAT
   // -------------------------------------------------------
   function automatic ROLE_DACDAT_t get_DACDAT();
   
      // Gets the DACDAT input value.
      $sformat(message, "%m: called get_DACDAT");
      print(VERBOSITY_DEBUG, message);
      return DACDAT_in;
      
   endfunction

   // -------------------------------------------------------
   // DACLRCK
   // -------------------------------------------------------

   function automatic void set_DACLRCK (
      ROLE_DACLRCK_t new_value
   );
      // Drive the new value to DACLRCK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      DACLRCK_temp = new_value;
   endfunction

   assign sig_ADCDAT = ADCDAT_temp;
   assign sig_ADCLRCK = ADCLRCK_temp;
   assign sig_BCLK = BCLK_temp;
   assign DACDAT_in = sig_DACDAT;
   assign sig_DACLRCK = DACLRCK_temp;


   always @(DACDAT_in) begin
      if (DACDAT_local != DACDAT_in)
         -> signal_input_DACDAT_change;
      DACDAT_local = DACDAT_in;
   end
   


// synthesis translate_on

endmodule


