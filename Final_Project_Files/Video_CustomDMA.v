`timescale 1 ps / 1 ps

module Video_CustomDMA (

	input clk,
	input resetn,
	input wire go,
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
	output wire [31:0] sram_address,       //         avalon_master_2.address
	output wire [1:0]  sram_byteenable,    //                        .byteenable
	output wire        sram_read,          //                        .read
	input  wire [15:0] sram_readdata,      //                        .readdata
	input  wire        sram_readdatavalid, //                        .readdatavalid
	input  wire        sram_waitrequest    //                        .waitrequest

	);


`define IDLE 2'b00
`define INIT 2'b01
`define DMA_ON 2'b10

endmodule