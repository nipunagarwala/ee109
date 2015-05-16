module tse_1588_top(
		input  wire [15:0] avalon_anti_master_0_address,                                             //                               avalon_anti_master_0.address
		output wire        avalon_anti_master_0_waitrequest,                                         //                                                   .waitrequest
		input  wire        avalon_anti_master_0_read,                                                //                                                   .read
		output wire [31:0] avalon_anti_master_0_readdata,                                            //                                                   .readdata
		input  wire        avalon_anti_master_0_write,                                               //                                                   .write
		input  wire [31:0] avalon_anti_master_0_writedata,                                           //                                                   .writedata

		input  wire        reset_50_reset_n,                                                         //                                           reset_50.reset_n
		input  wire        reset_n,                                                         			 //                                           tod reset_n

		input  wire        pcs_phase_measure_clk_clk,                                                //                              pcs_phase_measure_clk.clk
		input  wire        clk_50_clk,                                                               //                                             clk_50.clk
		input  wire        ref_clk,                                             					//                               conduit_connection_0.ref_clk

		output wire        tx_clock_connection_0_clk,                                                //                              tx_clock_connection_0.clk
		output wire        rx_clock_connection_0_clk,                                                //                              rx_clock_connection_0.clk
		output wire        conduit_connection_0_rx_recovclkout_0,                                    //                                                   .rx_recovclkout_0
		
		output wire        conduit_connection_0_led_an_0,                                            //                                                   .led_an_0
		output wire        conduit_connection_0_led_char_err_0,                                      //                                                   .led_char_err_0
		output wire        conduit_connection_0_led_link_0,                                          //                                                   .led_link_0
		output wire        conduit_connection_0_led_disp_err_0,                                      //                                                   .led_disp_err_0
		output wire        conduit_connection_0_led_crs_0,                                           //                                                   .led_crs_0
		output wire        conduit_connection_0_led_col_0,                                           //                                                   .led_col_0

		output wire        conduit_connection_0_txp_0,                                               //                                                   .txp_0
		input  wire        conduit_connection_0_rxp_0,                                               //                                                   .rxp_0

		output wire [7:0]  receive_0_data,                                                           //                                          receive_0.data
		output wire        receive_0_valid,                                                          //                                                   .valid
		input  wire        receive_0_ready,                                                          //                                                   .ready
		output wire        receive_0_endofpacket,                                                    //                                                   .endofpacket
		output wire        receive_0_startofpacket,                                                  //                                                   .startofpacket
		output wire [4:0]  receive_0_error,                                                          //                                                   .error

		output wire [4:0]  receive_packet_type_0_data,                                               //                              receive_packet_type_0.data
		output wire        receive_packet_type_0_valid,                                              //                                                   .valid
		input  wire [0:0]  receive_fifo_status_channel,                                              //                                receive_fifo_status.channel
		input  wire [1:0]  receive_fifo_status_data,                                                 //                                                   .data
		input  wire        receive_fifo_status_valid,                                                //                                                   .valid

		input  wire [7:0]  transmit_0_data,                                                          //                                         transmit_0.data
		input  wire        transmit_0_endofpacket,                                                   //                                                   .endofpacket
		input  wire        transmit_0_error,                                                         //                                                   .error
		output wire        transmit_0_ready,                                                         //                                                   .ready
		input  wire        transmit_0_startofpacket,                                                 //                                                   .startofpacket
		input  wire        transmit_0_valid,                                                         //                                                   .valid

		output wire        reconfig_busy_reconfig_busy,                                              //                                      reconfig_busy.reconfig_busy


		output wire        triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_valid,                 // triple_speed_ethernet_0_rx_ingress_timestamp_96b_0.valid
		output wire [95:0] triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_data,                  //                                                   .data
		output wire        triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_valid,                 // triple_speed_ethernet_0_rx_ingress_timestamp_64b_0.valid
		output wire [63:0] triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_data,                  //                                                   .data
		
		output wire        triple_speed_ethernet_0_tx_egress_timestamp_96b_0_valid,                  //  triple_speed_ethernet_0_tx_egress_timestamp_96b_0.valid
		output wire [95:0] triple_speed_ethernet_0_tx_egress_timestamp_96b_0_data,                   //                                                   .data
		output wire [3:0]  triple_speed_ethernet_0_tx_egress_timestamp_96b_0_fingerprint,            //                                                   .fingerprint
		output wire        triple_speed_ethernet_0_tx_egress_timestamp_64b_0_valid,                  //  triple_speed_ethernet_0_tx_egress_timestamp_64b_0.valid
		output wire [63:0] triple_speed_ethernet_0_tx_egress_timestamp_64b_0_data,                   //                                                   .data
		output wire [3:0]  triple_speed_ethernet_0_tx_egress_timestamp_64b_0_fingerprint,             //                                                   .fingerprint

		output wire		   pps_out,																	// 1 pps output
		
		//input to load TOD with new value during TOD synchronization
		input  wire [95:0] tod_time_of_day_96b_load_data,                                             //                               tod_time_of_day_96b_load.data
		input  wire        tod_time_of_day_96b_load_valid,                                            //                                                       .valid
		input  wire [63:0] tod_time_of_day_64b_load_data,                                             //                               tod_time_of_day_64b_load.data
		input  wire        tod_time_of_day_64b_load_valid, 											  //                                                       .valid
		
		//the port packet classifier
		input  wire [1:0]  eth_packet_classifier_0_clock_operation_mode_mode, 		
		input  wire        eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_update,       
		input  wire [95:0] eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_96b, 		
		input  wire [63:0] eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_64b,       
		input  wire        eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_calc_format,  
		input  wire        eth_packet_classifier_0_pkt_with_crc_mode,                                  
		input  wire        eth_packet_classifier_0_tx_egress_timestamp_request_in_valid,               
		input  wire [3:0]  eth_packet_classifier_0_tx_egress_timestamp_request_in_fingerprint         

		
		);

	wire [95:0]	tod_time_of_day_96b_data;
	wire [63:0]	tod_time_of_day_64b_data;
	wire		tod_period_clock_clk;
	
    
	
	
	assign tod_period_clock_clk = ref_clk; 
	
    // 10ms requires  1250000 cycles for 125 MHz
    altera_eth_1588_pps #(
        .PULSE_CYCLE (1250000)
    ) pps (
        .clk                (tod_period_clock_clk),
        .reset              (~reset_n),
        .time_of_day_96b    (tod_time_of_day_96b_data),
        .pulse_per_second   (pps_out)
    );	
	
	tse_1588 xtse_1588 (
		.avalon_anti_master_0_address(avalon_anti_master_0_address),                       													 //                               avalon_anti_master_0.address
		.avalon_anti_master_0_waitrequest(avalon_anti_master_0_waitrequest),               													 //                                                   .waitrequest
		.avalon_anti_master_0_read(avalon_anti_master_0_read),                             													 //                                                   .read
		.avalon_anti_master_0_readdata(avalon_anti_master_0_readdata),                     													 //                                                   .readdata
		.avalon_anti_master_0_write(avalon_anti_master_0_write),                           													 //                                                   .write
		.avalon_anti_master_0_writedata(avalon_anti_master_0_writedata),                   													 //                                                   .writedata
		.triple_speefifo_status_clock_connection_clk(ref_clk),                             													 //            triple_speefifo_status_clock_connection.clk
		.reset_50_reset_n(reset_50_reset_n),                                               													 //                                           reset_50.reset_n
		.clk_50_clk(clk_50_clk),                                                           													 //                                             clk_50.clk
		.conduit_connection_0_ref_clk(ref_clk),                                            													 //                               conduit_connection_0.ref_clk
		.conduit_connection_0_led_an_0(conduit_connection_0_led_an_0),                     													 //                                                   .led_an_0
		.conduit_connection_0_led_char_err_0(conduit_connection_0_led_char_err_0),         													 //                                                   .led_char_err_0
		.conduit_connection_0_led_link_0(conduit_connection_0_led_link_0),                 													 //                                                   .led_link_0
		.conduit_connection_0_led_disp_err_0(conduit_connection_0_led_disp_err_0),         													 //                                                   .led_disp_err_0
		.conduit_connection_0_led_crs_0(conduit_connection_0_led_crs_0),                   													 //                                                   .led_crs_0
		.conduit_connection_0_led_col_0(conduit_connection_0_led_col_0),                   													 //                                                   .led_col_0
		.conduit_connection_0_txp_0(conduit_connection_0_txp_0),                           													 //                                                   .txp_0
		.conduit_connection_0_rxp_0(conduit_connection_0_rxp_0),                           													 //                                                   .rxp_0
		.conduit_connection_0_rx_recovclkout_0(conduit_connection_0_rx_recovclkout_0),     													 //                                                   .rx_recovclkout_0
		.receive_fifo_status_channel(receive_fifo_status_channel),                         													 //                                receive_fifo_status.channel
		.receive_fifo_status_data(receive_fifo_status_data),                               													 //                                                   .data
		.receive_fifo_status_valid(receive_fifo_status_valid),                             													 //                                                   .valid
		.triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_valid(triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_valid),                 // triple_speed_ethernet_0_rx_ingress_timestamp_64b_0.valid
		.triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_data(triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_data),                  //                                                   .data
		.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_valid(triple_speed_ethernet_0_tx_egress_timestamp_96b_0_valid),                  //  triple_speed_ethernet_0_tx_egress_timestamp_96b_0.valid
		.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_data(triple_speed_ethernet_0_tx_egress_timestamp_96b_0_data),                    //                                                   .data
		.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_fingerprint(triple_speed_ethernet_0_tx_egress_timestamp_96b_0_fingerprint),      //                                                   .fingerprint
		.rx_clock_connection_0_clk(rx_clock_connection_0_clk),                       														//                              rx_clock_connection_0.clk
		.tod_period_clock_reset_reset_n(reset_n),                                 														//                          tx_tod_period_clock_reset.reset_n
		.receive_0_data(receive_0_data),                                             														//                                          receive_0.data
		.receive_0_valid(receive_0_valid),                                           														//                                                   .valid
		.receive_0_ready(receive_0_ready),                                           														//                                                   .ready
		.receive_0_endofpacket(receive_0_endofpacket),                               														//                                                   .endofpacket
		.receive_0_startofpacket(receive_0_startofpacket),                           														//                                                   .startofpacket
		.receive_0_error(receive_0_error),                                           														//                                                   .error
		.receive_packet_type_0_data(receive_packet_type_0_data),                     														//                              receive_packet_type_0.data
		.receive_packet_type_0_valid(receive_packet_type_0_valid),                   														//                                                   .valid
		.tx_clock_connection_0_clk(tx_clock_connection_0_clk),                       														//                              tx_clock_connection_0.clk
		.reconfig_busy_reconfig_busy(reconfig_busy_reconfig_busy),                   														//                                      reconfig_busy.reconfig_busy
		.triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_valid(triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_valid),                 					// triple_speed_ethernet_0_rx_ingress_timestamp_96b_0.valid
		.triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_data(triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_data),                  					//                                                   .data
		.tod_period_clock_clk(tod_period_clock_clk),                                                  //                                tx_tod_period_clock.clk
		.pcs_phase_measure_clk_clk(pcs_phase_measure_clk_clk),                                                //                              pcs_phase_measure_clk.clk
		.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_valid(triple_speed_ethernet_0_tx_egress_timestamp_64b_0_valid),                 //  triple_speed_ethernet_0_tx_egress_timestamp_64b_0.valid
		.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_data(triple_speed_ethernet_0_tx_egress_timestamp_64b_0_data),                   //                                                   .data
		.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_fingerprint(triple_speed_ethernet_0_tx_egress_timestamp_64b_0_fingerprint),      //  												  .fingerprint					
		.tod_time_of_day_96b_data(tod_time_of_day_96b_data),
		.tod_time_of_day_64b_data(tod_time_of_day_64b_data),
		.tx_time_of_day_96b_0_data(tod_time_of_day_96b_data),
		.tx_time_of_day_64b_0_data(tod_time_of_day_64b_data),
		.rx_time_of_day_96b_0_data(tod_time_of_day_96b_data),
		.rx_time_of_day_64b_0_data(tod_time_of_day_64b_data),
		.tod_time_of_day_96b_load_data(tod_time_of_day_96b_load_data),                                             //                               tod_time_of_day_96b_load.data
		.tod_time_of_day_96b_load_valid(tod_time_of_day_96b_load_valid),                                            //                                                       .valid
		.tod_time_of_day_64b_load_data(tod_time_of_day_64b_load_data),                                             //                               tod_time_of_day_64b_load.data
		.tod_time_of_day_64b_load_valid(tod_time_of_day_64b_load_valid), 		
		
		//packet classifier signals
		.eth_packet_classifier_0_clock_reset_clk(ref_clk),
		.eth_packet_classifier_0_clock_reset_reset_reset(~reset_n), 
		
		.eth_packet_classifier_0_data_sink_startofpacket(transmit_0_startofpacket),
		.eth_packet_classifier_0_data_sink_endofpacket(transmit_0_endofpacket),  
		.eth_packet_classifier_0_data_sink_valid(transmit_0_valid),        
		.eth_packet_classifier_0_data_sink_ready(transmit_0_ready),        
		.eth_packet_classifier_0_data_sink_data(transmit_0_data),         
		.eth_packet_classifier_0_data_sink_error(transmit_0_error),		
		
		.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_update(eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_update),     		
		.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_96b(eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_96b),     
		.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_64b(eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_64b),     		
		.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_calc_format(eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_calc_format),		
        
		.eth_packet_classifier_0_tx_egress_timestamp_request_in_valid(eth_packet_classifier_0_tx_egress_timestamp_request_in_valid),      
		.eth_packet_classifier_0_tx_egress_timestamp_request_in_fingerprint(eth_packet_classifier_0_tx_egress_timestamp_request_in_fingerprint),
		.eth_packet_classifier_0_pkt_with_crc_mode(eth_packet_classifier_0_pkt_with_crc_mode),
		.eth_packet_classifier_0_clock_operation_mode_mode(eth_packet_classifier_0_clock_operation_mode_mode)		
		
		
	);
 
 
 
 endmodule

