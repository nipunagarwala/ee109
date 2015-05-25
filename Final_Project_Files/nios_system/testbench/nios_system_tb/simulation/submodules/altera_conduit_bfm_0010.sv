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
// output_name:                                       altera_conduit_bfm_0010
// role:width:direction:                              CLK:1:bidir,DAT:1:bidir
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0010
(
   sig_CLK,
   sig_DAT
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   inout wire sig_CLK;
   inout wire sig_DAT;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_CLK_t;
   typedef logic ROLE_DAT_t;

   logic CLK_oe;
   logic CLK_oe_temp = 0;
   reg CLK_temp;
   reg CLK_out;
   logic [0 : 0] CLK_in;
   logic [0 : 0] CLK_local;
   logic DAT_oe;
   logic DAT_oe_temp = 0;
   reg DAT_temp;
   reg DAT_out;
   logic [0 : 0] DAT_in;
   logic [0 : 0] DAT_local;

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
   
   event signal_input_CLK_change;
   event signal_input_DAT_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // CLK
   // -------------------------------------------------------
   function automatic ROLE_CLK_t get_CLK();
   
      // Gets the CLK input value.
      $sformat(message, "%m: called get_CLK");
      print(VERBOSITY_DEBUG, message);
      return CLK_in;
      
   endfunction

   function automatic void set_CLK (
      ROLE_CLK_t new_value
   );
      // Drive the new value to CLK.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      CLK_temp = new_value;
   endfunction
   
   function automatic void set_CLK_oe (
      bit enable
   );
      // bidir port CLK will work as output port when set to 1.
      // bidir port CLK will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      CLK_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // DAT
   // -------------------------------------------------------
   function automatic ROLE_DAT_t get_DAT();
   
      // Gets the DAT input value.
      $sformat(message, "%m: called get_DAT");
      print(VERBOSITY_DEBUG, message);
      return DAT_in;
      
   endfunction

   function automatic void set_DAT (
      ROLE_DAT_t new_value
   );
      // Drive the new value to DAT.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      DAT_temp = new_value;
   endfunction
   
   function automatic void set_DAT_oe (
      bit enable
   );
      // bidir port DAT will work as output port when set to 1.
      // bidir port DAT will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      DAT_oe_temp = enable;
   endfunction

   assign CLK_oe = CLK_oe_temp;
   assign sig_CLK = (CLK_oe == 1)? CLK_temp:'z;
   assign CLK_in = (CLK_oe == 0)? sig_CLK:'z;
   assign DAT_oe = DAT_oe_temp;
   assign sig_DAT = (DAT_oe == 1)? DAT_temp:'z;
   assign DAT_in = (DAT_oe == 0)? sig_DAT:'z;


   always @(CLK_in) begin
      if (CLK_oe == 0) begin
         if (CLK_local != CLK_in)
            -> signal_input_CLK_change;
         CLK_local = CLK_in;
      end
   end
   
   always @(DAT_in) begin
      if (DAT_oe == 0) begin
         if (DAT_local != DAT_in)
            -> signal_input_DAT_change;
         DAT_local = DAT_in;
      end
   end
   


// synthesis translate_on

endmodule


