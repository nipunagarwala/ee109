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
// output_name:                                       altera_conduit_bfm_0020
// role:width:direction:                              PIXEL_CLK:1:output,LINE_VALID:1:output,FRAME_VALID:1:output,pixel_clk_reset:1:output,PIXEL_DATA:12:output
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0020
(
   sig_PIXEL_CLK,
   sig_LINE_VALID,
   sig_FRAME_VALID,
   sig_pixel_clk_reset,
   sig_PIXEL_DATA
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_PIXEL_CLK;
   output sig_LINE_VALID;
   output sig_FRAME_VALID;
   output sig_pixel_clk_reset;
   output [11 : 0] sig_PIXEL_DATA;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_PIXEL_CLK_t;
   typedef logic ROLE_LINE_VALID_t;
   typedef logic ROLE_FRAME_VALID_t;
   typedef logic ROLE_pixel_clk_reset_t;
   typedef logic [11 : 0] ROLE_PIXEL_DATA_t;

   reg PIXEL_CLK_temp;
   reg PIXEL_CLK_out;
   reg LINE_VALID_temp;
   reg LINE_VALID_out;
   reg FRAME_VALID_temp;
   reg FRAME_VALID_out;
   reg pixel_clk_reset_temp;
   reg pixel_clk_reset_out;
   reg [11 : 0] PIXEL_DATA_temp;
   reg [11 : 0] PIXEL_DATA_out;

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
   
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // PIXEL_CLK
   // -------------------------------------------------------

   function automatic void set_PIXEL_CLK (
      ROLE_PIXEL_CLK_t new_value
   );
      // Drive the new value to PIXEL_CLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      PIXEL_CLK_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // LINE_VALID
   // -------------------------------------------------------

   function automatic void set_LINE_VALID (
      ROLE_LINE_VALID_t new_value
   );
      // Drive the new value to LINE_VALID.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      LINE_VALID_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // FRAME_VALID
   // -------------------------------------------------------

   function automatic void set_FRAME_VALID (
      ROLE_FRAME_VALID_t new_value
   );
      // Drive the new value to FRAME_VALID.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      FRAME_VALID_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // pixel_clk_reset
   // -------------------------------------------------------

   function automatic void set_pixel_clk_reset (
      ROLE_pixel_clk_reset_t new_value
   );
      // Drive the new value to pixel_clk_reset.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      pixel_clk_reset_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // PIXEL_DATA
   // -------------------------------------------------------

   function automatic void set_PIXEL_DATA (
      ROLE_PIXEL_DATA_t new_value
   );
      // Drive the new value to PIXEL_DATA.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      PIXEL_DATA_temp = new_value;
   endfunction

   assign sig_PIXEL_CLK = PIXEL_CLK_temp;
   assign sig_LINE_VALID = LINE_VALID_temp;
   assign sig_FRAME_VALID = FRAME_VALID_temp;
   assign sig_pixel_clk_reset = pixel_clk_reset_temp;
   assign sig_PIXEL_DATA = PIXEL_DATA_temp;




// synthesis translate_on

endmodule


