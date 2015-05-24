// VideoConferencing_DMA.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module VideoConferencing_DMA #(
		parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
	) (
		input  wire        slave_chipselect,   //            avalon_slave.chipselect
		input  wire [31:0] slave_writedata,    //                        .writedata
		output wire [31:0] slave_readdata,     //                        .readdata
		input  wire        slave_read,         //                        .read
		input  wire [7:0]  slave_address,      //                        .address
		input  wire        slave_write,        //                        .write
		input  wire        master_waitrequest, //           avalon_master.waitrequest
		output wire [31:0] master_address,     //                        .address
		output wire        master_write,       //                        .write
		output wire [1:0]  master_byteenable,  //                        .byteenable
		output wire [15:0] master_writedata,   //                        .writedata
		output wire [17:0] LEDR_conduit,       //             conduit_end.export
		output wire [7:0]  LEDG_conduit,       //                        .export
		output wire [6:0]  HEX0_conduit,       //                        .export
		output wire [6:0]  HEX1_conduit,       //                        .export
		output wire [6:0]  HEX2_conduit,       //                        .export
		output wire [6:0]  HEX3_conduit,       //                        .export
		output wire [6:0]  HEX4_conduit,       //                        .export
		output wire [6:0]  HEX5_conduit,       //                        .export
		output wire [6:0]  HEX6_conduit,       //                        .export
		output wire [6:0]  HEX7_conduit,       //                        .export
		input  wire [17:0] SW_conduit,         //                        .export
		input  wire        clk,                //              clock_sink.clk
		input  wire [1:0]  eth_rx_mod,         //   avalon_streaming_sink.channel
		input  wire [31:0] eth_rx_data,        //                        .data
		input  wire        eth_rx_sop,         //                        .startofpacket
		input  wire [5:0]  eth_rx_error,       //                        .error
		input  wire        eth_rx_dval,        //                        .valid
		output wire        eth_rx_rdy,         //                        .ready
		input  wire        eth_rx_eop,         //                        .endofpacket
		output wire [5:0]  eth_tx_error,       // avalon_streaming_source.error
		input  wire        eth_tx_rdy,         //                        .ready
		output wire [31:0] eth_tx_data,        //                        .data
		output wire [1:0]  eth_tx_mod,         //                        .channel
		output wire        eth_tx_wren,        //                        .valid
		output wire        eth_tx_sop,         //                        .startofpacket
		output wire        eth_tx_eop,         //                        .endofpacket
		input  wire        resetn,             //              reset_sink.reset_n
		output wire        audio_read,         //         avalon_master_1.read
		output wire        audio_write,        //                        .write
		output wire [31:0] audio_address,      //                        .address
		output wire        audio_chipselect,   //                        .chipselect
		output wire [31:0] audio_writedata,    //                        .writedata
		input  wire        audio_irq,          //                        .readdatavalid
		input  wire [31:0] audio_readdata,     //                        .readdata
		input  wire        audio_DACDAT,       //                        .waitrequest
		output wire [31:0] sram_address,       //         avalon_master_2.address
		output wire [1:0]  sram_byteenable,    //                        .byteenable
		output wire        sram_read,          //                        .read
		input  wire [15:0] sram_readdata,      //                        .readdata
		input  wire        sram_readdatavalid, //                        .readdatavalid
		input  wire        sram_waitrequest    //                        .waitrequest
	);

	// TODO: Auto-generated HDL template

	assign slave_readdata = 32'b00000000000000000000000000000000;

	assign master_writedata = 16'b0000000000000000;

	assign master_address = 32'b00000000000000000000000000000000;

	assign master_write = 1'b0;

	assign master_byteenable = 2'b00;

	assign LEDG_conduit = 8'b00000000;

	assign HEX6_conduit = 7'b0000000;

	assign HEX5_conduit = 7'b0000000;

	assign HEX7_conduit = 7'b0000000;

	assign HEX2_conduit = 7'b0000000;

	assign LEDR_conduit = 18'b000000000000000000;

	assign HEX0_conduit = 7'b0000000;

	assign HEX1_conduit = 7'b0000000;

	assign HEX4_conduit = 7'b0000000;

	assign HEX3_conduit = 7'b0000000;

	assign eth_rx_rdy = 1'b0;

	assign eth_tx_eop = 1'b0;

	assign eth_tx_wren = 1'b0;

	assign eth_tx_sop = 1'b0;

	assign eth_tx_error = 6'b000000;

	assign eth_tx_data = 32'b00000000000000000000000000000000;

	assign eth_tx_mod = 2'b00;

	assign audio_writedata = 32'b00000000000000000000000000000000;

	assign audio_address = 32'b00000000000000000000000000000000;

	assign audio_chipselect = 1'b0;

	assign audio_write = 1'b0;

	assign audio_read = 1'b0;

	assign sram_address = 32'b00000000000000000000000000000000;

	assign sram_read = 1'b0;

	assign sram_byteenable = 2'b00;

endmodule
