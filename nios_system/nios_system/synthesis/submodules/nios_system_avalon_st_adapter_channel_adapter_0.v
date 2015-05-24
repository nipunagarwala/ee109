// --------------------------------------------------------------------------------
//| Avalon Streaming Channel Adapter
// --------------------------------------------------------------------------------

`timescale 1ns / 100ps
module nios_system_avalon_st_adapter_channel_adapter_0 (
    
      // Interface: clk
      input              clk,
      // Interface: reset
      input              reset_n,
      // Interface: in
      output reg         in_ready,
      input              in_valid,
      input      [31: 0] in_data,
      input      [ 5: 0] in_error,
      input              in_startofpacket,
      input              in_endofpacket,
      // Interface: out
      input              out_ready,
      output reg         out_valid,
      output reg [31: 0] out_data,
      output reg [ 5: 0] out_error,
      output reg         out_startofpacket,
      output reg         out_endofpacket,
      output reg [ 1: 0] out_channel
);


   reg          in_channel = 0;

   // ---------------------------------------------------------------------
   //| Payload Mapping
   // ---------------------------------------------------------------------
   always @* begin
      in_ready = out_ready;
      out_valid = in_valid;
      out_data = in_data;
      out_error = in_error;
      out_startofpacket = in_startofpacket;
      out_endofpacket = in_endofpacket;

      out_channel = 0;
      out_channel        = in_channel;
   end

endmodule

