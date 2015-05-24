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
// output_name:                                       altera_conduit_bfm_0022
// role:width:direction:                              INT1:1:output,DATA:16:bidir,RST_N:1:input,ADDR:2:input,CS_N:1:input,RD_N:1:input,WR_N:1:input,INT0:1:output
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0022
(
   sig_INT1,
   sig_DATA,
   sig_RST_N,
   sig_ADDR,
   sig_CS_N,
   sig_RD_N,
   sig_WR_N,
   sig_INT0
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output sig_INT1;
   inout wire [15 : 0] sig_DATA;
   input sig_RST_N;
   input [1 : 0] sig_ADDR;
   input sig_CS_N;
   input sig_RD_N;
   input sig_WR_N;
   output sig_INT0;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_INT1_t;
   typedef logic [15 : 0] ROLE_DATA_t;
   typedef logic ROLE_RST_N_t;
   typedef logic [1 : 0] ROLE_ADDR_t;
   typedef logic ROLE_CS_N_t;
   typedef logic ROLE_RD_N_t;
   typedef logic ROLE_WR_N_t;
   typedef logic ROLE_INT0_t;

   reg INT1_temp;
   reg INT1_out;
   logic DATA_oe;
   logic DATA_oe_temp = 0;
   reg [15 : 0] DATA_temp;
   reg [15 : 0] DATA_out;
   logic [15 : 0] DATA_in;
   logic [15 : 0] DATA_local;
   logic [0 : 0] RST_N_in;
   logic [0 : 0] RST_N_local;
   logic [1 : 0] ADDR_in;
   logic [1 : 0] ADDR_local;
   logic [0 : 0] CS_N_in;
   logic [0 : 0] CS_N_local;
   logic [0 : 0] RD_N_in;
   logic [0 : 0] RD_N_local;
   logic [0 : 0] WR_N_in;
   logic [0 : 0] WR_N_local;
   reg INT0_temp;
   reg INT0_out;

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
   
   event signal_input_DATA_change;
   event signal_input_RST_N_change;
   event signal_input_ADDR_change;
   event signal_input_CS_N_change;
   event signal_input_RD_N_change;
   event signal_input_WR_N_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // INT1
   // -------------------------------------------------------

   function automatic void set_INT1 (
      ROLE_INT1_t new_value
   );
      // Drive the new value to INT1.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      INT1_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // DATA
   // -------------------------------------------------------
   function automatic ROLE_DATA_t get_DATA();
   
      // Gets the DATA input value.
      $sformat(message, "%m: called get_DATA");
      print(VERBOSITY_DEBUG, message);
      return DATA_in;
      
   endfunction

   function automatic void set_DATA (
      ROLE_DATA_t new_value
   );
      // Drive the new value to DATA.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      DATA_temp = new_value;
   endfunction
   
   function automatic void set_DATA_oe (
      bit enable
   );
      // bidir port DATA will work as output port when set to 1.
      // bidir port DATA will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      DATA_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // RST_N
   // -------------------------------------------------------
   function automatic ROLE_RST_N_t get_RST_N();
   
      // Gets the RST_N input value.
      $sformat(message, "%m: called get_RST_N");
      print(VERBOSITY_DEBUG, message);
      return RST_N_in;
      
   endfunction

   // -------------------------------------------------------
   // ADDR
   // -------------------------------------------------------
   function automatic ROLE_ADDR_t get_ADDR();
   
      // Gets the ADDR input value.
      $sformat(message, "%m: called get_ADDR");
      print(VERBOSITY_DEBUG, message);
      return ADDR_in;
      
   endfunction

   // -------------------------------------------------------
   // CS_N
   // -------------------------------------------------------
   function automatic ROLE_CS_N_t get_CS_N();
   
      // Gets the CS_N input value.
      $sformat(message, "%m: called get_CS_N");
      print(VERBOSITY_DEBUG, message);
      return CS_N_in;
      
   endfunction

   // -------------------------------------------------------
   // RD_N
   // -------------------------------------------------------
   function automatic ROLE_RD_N_t get_RD_N();
   
      // Gets the RD_N input value.
      $sformat(message, "%m: called get_RD_N");
      print(VERBOSITY_DEBUG, message);
      return RD_N_in;
      
   endfunction

   // -------------------------------------------------------
   // WR_N
   // -------------------------------------------------------
   function automatic ROLE_WR_N_t get_WR_N();
   
      // Gets the WR_N input value.
      $sformat(message, "%m: called get_WR_N");
      print(VERBOSITY_DEBUG, message);
      return WR_N_in;
      
   endfunction

   // -------------------------------------------------------
   // INT0
   // -------------------------------------------------------

   function automatic void set_INT0 (
      ROLE_INT0_t new_value
   );
      // Drive the new value to INT0.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      INT0_temp = new_value;
   endfunction

   assign sig_INT1 = INT1_temp;
   assign DATA_oe = DATA_oe_temp;
   assign sig_DATA = (DATA_oe == 1)? DATA_temp:'z;
   assign DATA_in = (DATA_oe == 0)? sig_DATA:'z;
   assign RST_N_in = sig_RST_N;
   assign ADDR_in = sig_ADDR;
   assign CS_N_in = sig_CS_N;
   assign RD_N_in = sig_RD_N;
   assign WR_N_in = sig_WR_N;
   assign sig_INT0 = INT0_temp;


   always @(DATA_in) begin
      if (DATA_oe == 0) begin
         if (DATA_local != DATA_in)
            -> signal_input_DATA_change;
         DATA_local = DATA_in;
      end
   end
   
   always @(RST_N_in) begin
      if (RST_N_local != RST_N_in)
         -> signal_input_RST_N_change;
      RST_N_local = RST_N_in;
   end
   
   always @(ADDR_in) begin
      if (ADDR_local != ADDR_in)
         -> signal_input_ADDR_change;
      ADDR_local = ADDR_in;
   end
   
   always @(CS_N_in) begin
      if (CS_N_local != CS_N_in)
         -> signal_input_CS_N_change;
      CS_N_local = CS_N_in;
   end
   
   always @(RD_N_in) begin
      if (RD_N_local != RD_N_in)
         -> signal_input_RD_N_change;
      RD_N_local = RD_N_in;
   end
   
   always @(WR_N_in) begin
      if (WR_N_local != WR_N_in)
         -> signal_input_WR_N_change;
      WR_N_local = WR_N_in;
   end
   


// synthesis translate_on

endmodule


