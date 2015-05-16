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
// output_name:                                       altera_conduit_bfm_0019
// role:width:direction:                              I2C_SDAT:1:bidir,I2C_SCLK:1:input,exposure:16:output
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0019
(
   sig_I2C_SDAT,
   sig_I2C_SCLK,
   sig_exposure
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   inout wire sig_I2C_SDAT;
   input sig_I2C_SCLK;
   output [15 : 0] sig_exposure;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_I2C_SDAT_t;
   typedef logic ROLE_I2C_SCLK_t;
   typedef logic [15 : 0] ROLE_exposure_t;

   logic I2C_SDAT_oe;
   logic I2C_SDAT_oe_temp = 0;
   reg I2C_SDAT_temp;
   reg I2C_SDAT_out;
   logic [0 : 0] I2C_SDAT_in;
   logic [0 : 0] I2C_SDAT_local;
   logic [0 : 0] I2C_SCLK_in;
   logic [0 : 0] I2C_SCLK_local;
   reg [15 : 0] exposure_temp;
   reg [15 : 0] exposure_out;

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
   
   event signal_input_I2C_SDAT_change;
   event signal_input_I2C_SCLK_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // I2C_SDAT
   // -------------------------------------------------------
   function automatic ROLE_I2C_SDAT_t get_I2C_SDAT();
   
      // Gets the I2C_SDAT input value.
      $sformat(message, "%m: called get_I2C_SDAT");
      print(VERBOSITY_DEBUG, message);
      return I2C_SDAT_in;
      
   endfunction

   function automatic void set_I2C_SDAT (
      ROLE_I2C_SDAT_t new_value
   );
      // Drive the new value to I2C_SDAT.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      I2C_SDAT_temp = new_value;
   endfunction
   
   function automatic void set_I2C_SDAT_oe (
      bit enable
   );
      // bidir port I2C_SDAT will work as output port when set to 1.
      // bidir port I2C_SDAT will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      I2C_SDAT_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // I2C_SCLK
   // -------------------------------------------------------
   function automatic ROLE_I2C_SCLK_t get_I2C_SCLK();
   
      // Gets the I2C_SCLK input value.
      $sformat(message, "%m: called get_I2C_SCLK");
      print(VERBOSITY_DEBUG, message);
      return I2C_SCLK_in;
      
   endfunction

   // -------------------------------------------------------
   // exposure
   // -------------------------------------------------------

   function automatic void set_exposure (
      ROLE_exposure_t new_value
   );
      // Drive the new value to exposure.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      exposure_temp = new_value;
   endfunction

   assign I2C_SDAT_oe = I2C_SDAT_oe_temp;
   assign sig_I2C_SDAT = (I2C_SDAT_oe == 1)? I2C_SDAT_temp:'z;
   assign I2C_SDAT_in = (I2C_SDAT_oe == 0)? sig_I2C_SDAT:'z;
   assign I2C_SCLK_in = sig_I2C_SCLK;
   assign sig_exposure = exposure_temp;


   always @(I2C_SDAT_in) begin
      if (I2C_SDAT_oe == 0) begin
         if (I2C_SDAT_local != I2C_SDAT_in)
            -> signal_input_I2C_SDAT_change;
         I2C_SDAT_local = I2C_SDAT_in;
      end
   end
   
   always @(I2C_SCLK_in) begin
      if (I2C_SCLK_local != I2C_SCLK_in)
         -> signal_input_I2C_SCLK_change;
      I2C_SCLK_local = I2C_SCLK_in;
   end
   


// synthesis translate_on

endmodule


