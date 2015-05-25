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
// role:width:direction:                              CLK:1:input,HS:1:input,VS:1:input,DATA_EN:1:input,R:8:input,G:8:input,B:8:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0020
(
   sig_CLK,
   sig_HS,
   sig_VS,
   sig_DATA_EN,
   sig_R,
   sig_G,
   sig_B
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input sig_CLK;
   input sig_HS;
   input sig_VS;
   input sig_DATA_EN;
   input [7 : 0] sig_R;
   input [7 : 0] sig_G;
   input [7 : 0] sig_B;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_CLK_t;
   typedef logic ROLE_HS_t;
   typedef logic ROLE_VS_t;
   typedef logic ROLE_DATA_EN_t;
   typedef logic [7 : 0] ROLE_R_t;
   typedef logic [7 : 0] ROLE_G_t;
   typedef logic [7 : 0] ROLE_B_t;

   logic [0 : 0] CLK_in;
   logic [0 : 0] CLK_local;
   logic [0 : 0] HS_in;
   logic [0 : 0] HS_local;
   logic [0 : 0] VS_in;
   logic [0 : 0] VS_local;
   logic [0 : 0] DATA_EN_in;
   logic [0 : 0] DATA_EN_local;
   logic [7 : 0] R_in;
   logic [7 : 0] R_local;
   logic [7 : 0] G_in;
   logic [7 : 0] G_local;
   logic [7 : 0] B_in;
   logic [7 : 0] B_local;

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
   event signal_input_HS_change;
   event signal_input_VS_change;
   event signal_input_DATA_EN_change;
   event signal_input_R_change;
   event signal_input_G_change;
   event signal_input_B_change;
   
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

   // -------------------------------------------------------
   // HS
   // -------------------------------------------------------
   function automatic ROLE_HS_t get_HS();
   
      // Gets the HS input value.
      $sformat(message, "%m: called get_HS");
      print(VERBOSITY_DEBUG, message);
      return HS_in;
      
   endfunction

   // -------------------------------------------------------
   // VS
   // -------------------------------------------------------
   function automatic ROLE_VS_t get_VS();
   
      // Gets the VS input value.
      $sformat(message, "%m: called get_VS");
      print(VERBOSITY_DEBUG, message);
      return VS_in;
      
   endfunction

   // -------------------------------------------------------
   // DATA_EN
   // -------------------------------------------------------
   function automatic ROLE_DATA_EN_t get_DATA_EN();
   
      // Gets the DATA_EN input value.
      $sformat(message, "%m: called get_DATA_EN");
      print(VERBOSITY_DEBUG, message);
      return DATA_EN_in;
      
   endfunction

   // -------------------------------------------------------
   // R
   // -------------------------------------------------------
   function automatic ROLE_R_t get_R();
   
      // Gets the R input value.
      $sformat(message, "%m: called get_R");
      print(VERBOSITY_DEBUG, message);
      return R_in;
      
   endfunction

   // -------------------------------------------------------
   // G
   // -------------------------------------------------------
   function automatic ROLE_G_t get_G();
   
      // Gets the G input value.
      $sformat(message, "%m: called get_G");
      print(VERBOSITY_DEBUG, message);
      return G_in;
      
   endfunction

   // -------------------------------------------------------
   // B
   // -------------------------------------------------------
   function automatic ROLE_B_t get_B();
   
      // Gets the B input value.
      $sformat(message, "%m: called get_B");
      print(VERBOSITY_DEBUG, message);
      return B_in;
      
   endfunction

   assign CLK_in = sig_CLK;
   assign HS_in = sig_HS;
   assign VS_in = sig_VS;
   assign DATA_EN_in = sig_DATA_EN;
   assign R_in = sig_R;
   assign G_in = sig_G;
   assign B_in = sig_B;


   always @(CLK_in) begin
      if (CLK_local != CLK_in)
         -> signal_input_CLK_change;
      CLK_local = CLK_in;
   end
   
   always @(HS_in) begin
      if (HS_local != HS_in)
         -> signal_input_HS_change;
      HS_local = HS_in;
   end
   
   always @(VS_in) begin
      if (VS_local != VS_in)
         -> signal_input_VS_change;
      VS_local = VS_in;
   end
   
   always @(DATA_EN_in) begin
      if (DATA_EN_local != DATA_EN_in)
         -> signal_input_DATA_EN_change;
      DATA_EN_local = DATA_EN_in;
   end
   
   always @(R_in) begin
      if (R_local != R_in)
         -> signal_input_R_change;
      R_local = R_in;
   end
   
   always @(G_in) begin
      if (G_local != G_in)
         -> signal_input_G_change;
      G_local = G_in;
   end
   
   always @(B_in) begin
      if (B_local != B_in)
         -> signal_input_B_change;
      B_local = B_in;
   end
   


// synthesis translate_on

endmodule


