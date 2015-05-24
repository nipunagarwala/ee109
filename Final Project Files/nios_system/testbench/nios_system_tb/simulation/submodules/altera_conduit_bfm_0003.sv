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
// output_name:                                       altera_conduit_bfm_0003
// role:width:direction:                              DATA:8:bidir,ON:1:input,BLON:1:input,EN:1:input,RS:1:input,RW:1:input
// false
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module altera_conduit_bfm_0003
(
   sig_DATA,
   sig_ON,
   sig_BLON,
   sig_EN,
   sig_RS,
   sig_RW
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   inout wire [7 : 0] sig_DATA;
   input sig_ON;
   input sig_BLON;
   input sig_EN;
   input sig_RS;
   input sig_RW;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [7 : 0] ROLE_DATA_t;
   typedef logic ROLE_ON_t;
   typedef logic ROLE_BLON_t;
   typedef logic ROLE_EN_t;
   typedef logic ROLE_RS_t;
   typedef logic ROLE_RW_t;

   logic DATA_oe;
   logic DATA_oe_temp = 0;
   reg [7 : 0] DATA_temp;
   reg [7 : 0] DATA_out;
   logic [7 : 0] DATA_in;
   logic [7 : 0] DATA_local;
   logic [0 : 0] ON_in;
   logic [0 : 0] ON_local;
   logic [0 : 0] BLON_in;
   logic [0 : 0] BLON_local;
   logic [0 : 0] EN_in;
   logic [0 : 0] EN_local;
   logic [0 : 0] RS_in;
   logic [0 : 0] RS_local;
   logic [0 : 0] RW_in;
   logic [0 : 0] RW_local;

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
   event signal_input_ON_change;
   event signal_input_BLON_change;
   event signal_input_EN_change;
   event signal_input_RS_change;
   event signal_input_RW_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "13.0";
      return ret_version;
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
   // ON
   // -------------------------------------------------------
   function automatic ROLE_ON_t get_ON();
   
      // Gets the ON input value.
      $sformat(message, "%m: called get_ON");
      print(VERBOSITY_DEBUG, message);
      return ON_in;
      
   endfunction

   // -------------------------------------------------------
   // BLON
   // -------------------------------------------------------
   function automatic ROLE_BLON_t get_BLON();
   
      // Gets the BLON input value.
      $sformat(message, "%m: called get_BLON");
      print(VERBOSITY_DEBUG, message);
      return BLON_in;
      
   endfunction

   // -------------------------------------------------------
   // EN
   // -------------------------------------------------------
   function automatic ROLE_EN_t get_EN();
   
      // Gets the EN input value.
      $sformat(message, "%m: called get_EN");
      print(VERBOSITY_DEBUG, message);
      return EN_in;
      
   endfunction

   // -------------------------------------------------------
   // RS
   // -------------------------------------------------------
   function automatic ROLE_RS_t get_RS();
   
      // Gets the RS input value.
      $sformat(message, "%m: called get_RS");
      print(VERBOSITY_DEBUG, message);
      return RS_in;
      
   endfunction

   // -------------------------------------------------------
   // RW
   // -------------------------------------------------------
   function automatic ROLE_RW_t get_RW();
   
      // Gets the RW input value.
      $sformat(message, "%m: called get_RW");
      print(VERBOSITY_DEBUG, message);
      return RW_in;
      
   endfunction

   assign DATA_oe = DATA_oe_temp;
   assign sig_DATA = (DATA_oe == 1)? DATA_temp:'z;
   assign DATA_in = (DATA_oe == 0)? sig_DATA:'z;
   assign ON_in = sig_ON;
   assign BLON_in = sig_BLON;
   assign EN_in = sig_EN;
   assign RS_in = sig_RS;
   assign RW_in = sig_RW;


   always @(DATA_in) begin
      if (DATA_oe == 0) begin
         if (DATA_local != DATA_in)
            -> signal_input_DATA_change;
         DATA_local = DATA_in;
      end
   end
   
   always @(ON_in) begin
      if (ON_local != ON_in)
         -> signal_input_ON_change;
      ON_local = ON_in;
   end
   
   always @(BLON_in) begin
      if (BLON_local != BLON_in)
         -> signal_input_BLON_change;
      BLON_local = BLON_in;
   end
   
   always @(EN_in) begin
      if (EN_local != EN_in)
         -> signal_input_EN_change;
      EN_local = EN_in;
   end
   
   always @(RS_in) begin
      if (RS_local != RS_in)
         -> signal_input_RS_change;
      RS_local = RS_in;
   end
   
   always @(RW_in) begin
      if (RW_local != RW_in)
         -> signal_input_RW_change;
      RW_local = RW_in;
   end
   


// synthesis translate_on

endmodule


