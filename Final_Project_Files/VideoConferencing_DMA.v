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
		//parameter AUTO_CLOCK_SINK_CLOCK_RATE = "-1"
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

`define STATUS 3'b0
`define GO 3'b001
`define SOURCE_LOWER 3'b010
`define SOURCE_UPPER 3'b011
`define DEST_LOWER 3'b100
`define DEST_UPPER 3'b101
`define DONE 3'b110

// Wire declarations
reg status;
reg go;
reg [63:0] source_macaddr;
reg [63:0] dest_macaddr;
reg [31:0] error;
wire go_to_dma;

// Memory mapped registers
always @(posedge clk) begin
	if (~resetn) begin
		status <= 1'b0;
		go <= 1'b0;
		source_macaddr <= 64'b0;
		dest_macaddr <= 64'b0;
		error <= 32'b0;
	end
	else if (slave_write) begin
		case (slave_address)
			`GO: go <= slave_writedata;
			`SOURCE_LOWER: source_macaddr[31:0] <= slave_writedata;
			`SOURCE_UPPER: source_macaddr [63:32] <= slave_writedata;
			`DEST_LOWER: dest_macaddr[31:0] <= slave_writedata;
			`DEST_UPPER: dest_macaddr[63:32] <= slave_writedata;
			`DONE: begin
				status <= slave_writedata;
				go <= 32'b0;
			end
			default: error <= slave_writedata;
		endcase
	end
end

assign go_to_dma = ~resetn ? 1'b0 : go;

Video_CustomDMA vidDMA (
	.clk (clk),			
	.resetn(resetn),
	.go(go_to_dma),
	.eth_rx_mod(eth_rx_mod),         //   avalon_streaming_sink.channel
	.eth_rx_data(eth_rx_data),        //                        .data
	.eth_rx_sop(eth_rx_sop),         //                        .startofpacket
	.eth_rx_error(eth_rx_error),       //                        .error
	.eth_rx_dval(eth_rx_dval),        //                        .valid
	.eth_rx_rdy(eth_rx_rdy),         //                        .ready
	.eth_rx_eop(eth_rx_eop),         //                        .endofpacket
	.eth_tx_error(eth_tx_error),       // avalon_streaming_source.error
	.eth_tx_rdy(eth_tx_rdy),         //                        .ready
	.eth_tx_data(eth_tx_data),        //                        .data
	.eth_tx_mod(eth_tx_mod),         //                        .channel
	.eth_tx_wren(eth_tx_wren),        //                        .valid
	.eth_tx_sop(eth_tx_sop),         //                        .startofpacket
	.eth_tx_eop(eth_tx_eop),         //                        .endofpacket
	.sram_address(sram_address),       //         avalon_master_2.address
	.sram_byteenable(sram_byteenable),    //                        .byteenable
	.sram_read(sram_read),          //                        .read
	.sram_readdata(sram_readdata),      //                        .readdata
	.sram_readdatavalid(sram_readdatavalid), //                        .readdatavalid
	.sram_waitrequest(sram_waitrequest)     //                        .waitrequest

	);




endmodule
