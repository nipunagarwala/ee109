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
// output_name:                                       altera_conduit_bfm_0012
// role:width:direction:                              SDAT:1:bidir,SCLK:1:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0012
(
   sig_SDAT,
   sig_SCLK
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   inout wire sig_SDAT;
   input sig_SCLK;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_SDAT_t;
   typedef logic ROLE_SCLK_t;

   logic SDAT_oe;
   logic SDAT_oe_temp = 0;
   reg SDAT_temp;
   reg SDAT_out;
   logic [0 : 0] SDAT_in;
   logic [0 : 0] SDAT_local;
   logic [0 : 0] SCLK_in;
   logic [0 : 0] SCLK_local;

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
   
   event signal_input_SDAT_change;
   event signal_input_SCLK_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // SDAT
   // -------------------------------------------------------
   function automatic ROLE_SDAT_t get_SDAT();
   
      // Gets the SDAT input value.
      $sformat(message, "%m: called get_SDAT");
      print(VERBOSITY_DEBUG, message);
      return SDAT_in;
      
   endfunction

   function automatic void set_SDAT (
      ROLE_SDAT_t new_value
   );
      // Drive the new value to SDAT.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      SDAT_temp = new_value;
   endfunction
   
   function automatic void set_SDAT_oe (
      bit enable
   );
      // bidir port SDAT will work as output port when set to 1.
      // bidir port SDAT will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      SDAT_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // SCLK
   // -------------------------------------------------------
   function automatic ROLE_SCLK_t get_SCLK();
   
      // Gets the SCLK input value.
      $sformat(message, "%m: called get_SCLK");
      print(VERBOSITY_DEBUG, message);
      return SCLK_in;
      
   endfunction

   assign SDAT_oe = SDAT_oe_temp;
   assign sig_SDAT = (SDAT_oe == 1)? SDAT_temp:'z;
   assign SDAT_in = (SDAT_oe == 0)? sig_SDAT:'z;
   assign SCLK_in = sig_SCLK;


   always @(SDAT_in) begin
      if (SDAT_oe == 0) begin
         if (SDAT_local != SDAT_in)
            -> signal_input_SDAT_change;
         SDAT_local = SDAT_in;
      end
   end
   
   always @(SCLK_in) begin
      if (SCLK_local != SCLK_in)
         -> signal_input_SCLK_change;
      SCLK_local = SCLK_in;
   end
   


// synthesis translate_on

endmodule


