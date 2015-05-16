`ifndef TB__SV
`define TB__SV

`include "eth_register_map_params_pkg.sv"
`include "avalon_driver.sv"
`include "avalon_if_params_pkg.sv"
`include "avalon_st_eth_packet_monitor.sv"
`include "default_test_params_pkg.sv"
`include "eth_mac_frame.sv"
`include "ptp_timestamp.sv"
`include "tb_testcase.sv"  


`timescale 1ps / 1ps

// Top level testbench
module tb_top;
    
    // Get the Avalon interface parameters definition from the package
    import avalon_if_params_pkt::*;
    
    // Get the register map definition from the package
    import eth_register_map_params_pkg::*;
    
	//Get test parameter from the package
	import default_test_params_pkt::*;    

    // Clock and Reset signals
    reg         clk_50;
    reg         clk;
    reg         pcs_phase_measure_clk_clk;
    reg         reset;    
    
    // Avalon-MM CSR signals
    wire [31:0] avalon_mm_csr_address;
    wire        avalon_mm_csr_read;
    wire [31:0] avalon_mm_csr_readdata;
    wire        avalon_mm_csr_write;
    wire [31:0] avalon_mm_csr_writedata;
    wire        avalon_mm_csr_waitrequest;
  
    // Avalon-ST TX signals
    wire        avalon_st_tx_startofpacket;
    wire        avalon_st_tx_endofpacket;
    wire        avalon_st_tx_valid;
    wire        avalon_st_tx_ready;
    wire [7:0] avalon_st_tx_data;
    wire [2:0]  avalon_st_tx_empty;
    wire        avalon_st_tx_error;
       
        
    // Avalon-ST RX signals
    wire        avalon_st_rx_startofpacket;
    wire        avalon_st_rx_endofpacket;
    wire        avalon_st_rx_valid;
    wire        avalon_st_rx_ready;
    wire [7:0] avalon_st_rx_data;
    wire [2:0]  avalon_st_rx_empty;
    wire 		avalon_st_rx_error;
       

    	
    // Avalon-ST TX for Timestamp request
    wire                                               						tx_egress_timestamp_request_valid;
    wire      [TIMESTAMP_FINGERPRINT_WIDTH - 1:0]                           tx_egress_timestamp_request_fingerprint;
	
    // Avalon-ST TX for timestamp correction
    wire                                               						tx_ingress_timestamp_valid;
    wire      [TIMESTAMP_96B_WIDTH-1:0]               	                    tx_ingress_timestamp_96b_data;
    wire      [TIMESTAMP_64B_WIDTH-1:0]               	                    tx_ingress_timestamp_64b_data;
    wire                                                                    tx_ingress_timestamp_format;
	
    // Avalon-ST TX for timestamp and fingerprint
    wire                                                					tx_egress_timestamp_96b_valid;
    wire      [TIMESTAMP_96B_WIDTH-1:0]     			                    tx_egress_timestamp_96b_data;
    wire      [TIMESTAMP_FINGERPRINT_WIDTH-1:0]     			            tx_egress_timestamp_96b_fingerprint;
    
    wire                                                					tx_egress_timestamp_64b_valid;
    wire      [TIMESTAMP_64B_WIDTH-1:0]     			                    tx_egress_timestamp_64b_data;
    wire      [TIMESTAMP_FINGERPRINT_WIDTH-1:0]     			            tx_egress_timestamp_64b_fingerprint;

    // Avalon-ST RX for timestamp and fingerprint
    wire                                                					rx_ingress_timestamp_96b_valid;
    wire      [TIMESTAMP_96B_WIDTH-1:0]    					                rx_ingress_timestamp_96b_data;
    
    wire                                                					rx_ingress_timestamp_64b_valid;
    wire      [TIMESTAMP_64B_WIDTH-1:0]    					                rx_ingress_timestamp_64b_data;
    
    
    // DUT specific signals
    wire  											serial_rx_data;
    wire  											serial_tx_data;
	
	// 1pulse per second
	wire											pps_out;
	
    bit [1:0]  clock_mode;	
    
    // Loopback at Transceiver side
    assign serial_rx_data = serial_tx_data;

    
 
    // CSR clock generation
    initial clk_50 = 1'b0;
    always #10000 clk_50 = ~clk_50;
    
    // TX and RX clock generation
    initial clk = 1'b0;
    always #4000 clk = ~clk;
	
    // Phase measurement clock generation
    initial pcs_phase_measure_clk_clk = 1'b0;
    always #6250 pcs_phase_measure_clk_clk = ~pcs_phase_measure_clk_clk;	
	
	//tx and rx clock
	wire tx_clk;
	wire rx_clk;	
    
	//Reset
    initial begin
        reset = 1'b0;
        #1 reset = 1'b1;
        #6000000 reset = 1'b0;
    end

    
    // To elimiate 'x' case (set to '0') when these signals are not driven
     bit tx_sop ;
     bit tx_eop ;
     bit tx_ts_req_valid ;
     bit tx_ts_valid ;
    assign tx_sop = (avalon_st_tx_startofpacket & avalon_st_tx_valid)==1 ? avalon_st_tx_startofpacket : 1'b0;
    assign tx_eop = (avalon_st_tx_endofpacket & avalon_st_tx_valid)==1 ? avalon_st_tx_endofpacket : 1'b0;
    assign tx_ts_req_valid = (tx_egress_timestamp_request_valid & avalon_st_tx_valid)==1 ? tx_egress_timestamp_request_valid : 1'b0;
    assign tx_ts_valid = (tx_ingress_timestamp_valid & avalon_st_tx_valid)==1 ? tx_ingress_timestamp_valid : 1'b0;
 
 
 	// DUT instantiation
	tse_1588_top dut(
			.avalon_anti_master_0_address(avalon_mm_csr_address),                                             //                               avalon_anti_master_0.address
			.avalon_anti_master_0_waitrequest(avalon_mm_csr_waitrequest),                                         //                                                   .waitrequest
			.avalon_anti_master_0_read(avalon_mm_csr_read),                                                //                                                   .read
			.avalon_anti_master_0_readdata(avalon_mm_csr_readdata),                                            //                                                   .readdata
			.avalon_anti_master_0_write(avalon_mm_csr_write),                                               //                                                   .write
			.avalon_anti_master_0_writedata(avalon_mm_csr_writedata),                                           //                                                   .writedata

			.reset_50_reset_n(~reset),                                                         //                                           reset_50.reset_n
			.reset_n(~reset),                                                         			 //                                           tod reset_n

			.pcs_phase_measure_clk_clk(pcs_phase_measure_clk_clk),                                                //                              pcs_phase_measure_clk.clk
			.clk_50_clk(clk_50),                                                               //                                             clk_50.clk
			.ref_clk(clk),                                             					//                               conduit_connection_0.ref_clk

			.tx_clock_connection_0_clk(tx_clk),                                                //                              tx_clock_connection_0.clk
			.rx_clock_connection_0_clk(rx_clk),                                                //                              rx_clock_connection_0.clk

			.conduit_connection_0_txp_0(serial_tx_data),                                               //                                                   .txp_0
			.conduit_connection_0_rxp_0(serial_rx_data),                                               //                                                   .rxp_0

			.receive_0_data(avalon_st_rx_data),                                                           //                                          receive_0.data
			.receive_0_valid(avalon_st_rx_valid),                                                          //                                                   .valid
			.receive_0_ready(avalon_st_rx_ready),                                                          //                                                   .ready
			.receive_0_endofpacket(avalon_st_rx_endofpacket),                                                    //                                                   .endofpacket
			.receive_0_startofpacket(avalon_st_rx_startofpacket),                                                  //                                                   .startofpacket
			.receive_0_error(avalon_st_rx_error),                                                          //                                                   .error

			.receive_fifo_status_channel(1'h0),                                              //                                receive_fifo_status.channel
			.receive_fifo_status_data(2'h0),                                                 //                                                   .data
			.receive_fifo_status_valid(1'h0),                                                //                                                   .valid

			.transmit_0_data(avalon_st_tx_data),                                                          //                                         transmit_0.data
			.transmit_0_endofpacket(tx_eop),                                                   //                                                   .endofpacket
			.transmit_0_error(avalon_st_tx_error),                                                         //                                                   .error
			.transmit_0_ready(avalon_st_tx_ready),                                                         //                                                   .ready
			.transmit_0_startofpacket(tx_sop),                                                 //                                                   .startofpacket
			.transmit_0_valid(avalon_st_tx_valid),                                                         //                                                   .valid


			.triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_valid(rx_ingress_timestamp_96b_valid),                 // triple_speed_ethernet_0_rx_ingress_timestamp_96b_0.valid
			.triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_data(rx_ingress_timestamp_96b_data),                  //                                                   .data
			.triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_valid(rx_ingress_timestamp_64b_valid),                 // triple_speed_ethernet_0_rx_ingress_timestamp_64b_0.valid
			.triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_data(rx_ingress_timestamp_64b_data),                  //                                                   .data
			
			.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_valid(tx_egress_timestamp_96b_valid),                  //  triple_speed_ethernet_0_tx_egress_timestamp_96b_0.valid
			.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_data(tx_egress_timestamp_96b_data),                   //                                                   .data
			.triple_speed_ethernet_0_tx_egress_timestamp_96b_0_fingerprint(tx_egress_timestamp_96b_fingerprint),            //                                                   .fingerprint
			.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_valid(tx_egress_timestamp_64b_valid),                  //  triple_speed_ethernet_0_tx_egress_timestamp_64b_0.valid
			.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_data(tx_egress_timestamp_64b_data),                   //                                                   .data
			.triple_speed_ethernet_0_tx_egress_timestamp_64b_0_fingerprint(tx_egress_timestamp_64b_fingerprint),             //                                                   .fingerprint

			.pps_out(pps_out),
             
			 //no TOD synchronization, thus all tie to 0
			.tod_time_of_day_96b_load_data(96'h0),                                             //                               tod_time_of_day_96b_load.data
			.tod_time_of_day_96b_load_valid(1'h0),                                            //                                                       .valid
			.tod_time_of_day_64b_load_data(64'h0),                                             //                               tod_time_of_day_64b_load.data
			.tod_time_of_day_64b_load_valid(1'h0), 		
			
			.eth_packet_classifier_0_clock_operation_mode_mode(clock_mode), 		
			.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_update(tx_ts_valid),      
			.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_96b(tx_ingress_timestamp_96b_data), 		
			.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_64b(tx_ingress_timestamp_64b_data),       
			.eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_calc_format(tx_ingress_timestamp_format),  
			.eth_packet_classifier_0_pkt_with_crc_mode(1'b1),     //1'b1 -->always expect in packet is ended with 4 bytes of CRC                             
			.eth_packet_classifier_0_tx_egress_timestamp_request_in_valid(tx_ts_req_valid),               
			.eth_packet_classifier_0_tx_egress_timestamp_request_in_fingerprint(tx_egress_timestamp_request_fingerprint)  

			);
				
    
	//Implement all the test case in tb_testcase.v
	tb_testcase	TESTCASE (
		.clk(clk),
		.reset(reset)
    );
    
    
    
    // Avalon-MM and Avalon-ST signals driver
    avalon_driver U_AVALON_DRIVER (
		.avalon_mm_csr_clk          (clk_50),
		.avalon_st_rx_clk           (rx_clk),
		.avalon_st_tx_clk           (tx_clk),
		
        .reset                      (reset),
		
        .avalon_mm_csr_address      (avalon_mm_csr_address),
		.avalon_mm_csr_read         (avalon_mm_csr_read),
		.avalon_mm_csr_readdata     (avalon_mm_csr_readdata),
		.avalon_mm_csr_write        (avalon_mm_csr_write),
		.avalon_mm_csr_writedata    (avalon_mm_csr_writedata),
		.avalon_mm_csr_waitrequest  (avalon_mm_csr_waitrequest),
        
        .avalon_st_rx_startofpacket (avalon_st_rx_startofpacket),
		.avalon_st_rx_endofpacket   (avalon_st_rx_endofpacket),
		.avalon_st_rx_valid         (avalon_st_rx_valid),
		.avalon_st_rx_ready         (avalon_st_rx_ready),
		.avalon_st_rx_data          (avalon_st_rx_data),
		.avalon_st_rx_empty         (avalon_st_rx_empty),
		.avalon_st_rx_error         (avalon_st_rx_error),
		
        .avalon_st_tx_startofpacket (avalon_st_tx_startofpacket),
		.avalon_st_tx_endofpacket   (avalon_st_tx_endofpacket),
		.avalon_st_tx_valid         (avalon_st_tx_valid),
		.avalon_st_tx_ready         (avalon_st_tx_ready),
		.avalon_st_tx_data          (avalon_st_tx_data),
		.avalon_st_tx_empty         (avalon_st_tx_empty),
		.avalon_st_tx_error         (avalon_st_tx_error),
        
		.tx_egress_timestamp_request_valid          (tx_egress_timestamp_request_valid), 
		.tx_egress_timestamp_request_fingerprint    (tx_egress_timestamp_request_fingerprint),
        
		.tx_ingress_timestamp_valid                 (tx_ingress_timestamp_valid),
		.tx_ingress_timestamp_96b_data              (tx_ingress_timestamp_96b_data),
		.tx_ingress_timestamp_64b_data              (tx_ingress_timestamp_64b_data),
		.tx_ingress_timestamp_format                (tx_ingress_timestamp_format)
	);
    

    // Ethernet packet monitor on Avalon-ST RX path
    avalon_st_eth_packet_monitor #(
		.ST_ERROR_W                 (AVALON_ST_RX_ST_ERROR_W)
    ) U_MON_RX (
		.clk                        (clk),
        .reset                      (reset),
		
        .startofpacket              (avalon_st_rx_startofpacket),
		.endofpacket                (avalon_st_rx_endofpacket),
		.valid                      (avalon_st_rx_valid),
		.ready                      (avalon_st_rx_ready),
		.data                       (avalon_st_rx_data),
		.empty                      (avalon_st_rx_empty),
		.error                      (avalon_st_rx_error)
	);
    

    // Ethernet packet monitor on Avalon-ST TX path
    avalon_st_eth_packet_monitor #(
		.ST_ERROR_W (AVALON_ST_TX_ST_ERROR_W)
    ) U_MON_TX (
		.clk                        (clk),
        .reset                      (reset),
		
        .startofpacket              (tx_sop),
		.endofpacket                (tx_eop),
		.valid                      (avalon_st_tx_valid),
		.ready                      (avalon_st_tx_ready),
		.data                       (avalon_st_tx_data),
		.empty                      (avalon_st_tx_empty),
		.error                      (avalon_st_tx_error)
	);

	
	//Stimulus
    bit [3:0]   period_nsecond;
    bit [15:0]  period_fnsecond;
    bit [15:0]  tx_adjust_nsecond;
    bit [15:0]  tx_adjust_fnsecond;	
    bit [15:0]  rx_adjust_nsecond;
    bit [15:0]  rx_adjust_fnsecond;		
     
    
    // Data read from CSR
    bit [31:0]  readdata;
    
    // CSR Configuration
    task automatic configure_csr_basic();
	
		// Configure unicast address for TX
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_ADDRESS_INSERT_UCAST_MAC_ADD_0_ADDR, {MAC_ADDR[23:16],MAC_ADDR[31:24],MAC_ADDR[39:32],MAC_ADDR[47:40]});
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_ADDRESS_INSERT_UCAST_MAC_ADD_1_ADDR, {MAC_ADDR[7:0],MAC_ADDR[15:8]});

		// Configure Mac to default setting
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TSE_COMMAND_CONFIG_ADDR, 32'h0000_002B);		
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_IPG_LENGTH_ADDR, 32'h0000_000C);		
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_FRM_LENGTH_ADDR, 32'h0000_05EE);		
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_PAUSE_QUANT_ADDR, 32'h0000_0009);
		

		//Configure SGMII IF to 1000BaseX
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+PCS_CONTROL_ADDR, 32'h0000_0140);
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+PCS_IF_MODE_ADDR, 32'h0000_0009);	


    endtask
    
    
    task automatic configure_csr_1588(bit [1:0] clk_mode, bit [3:0] period_ns, bit [15:0] period_fns, bit [15:0] tx_adjust_ns, bit [15:0] tx_adjust_fns, bit [15:0] rx_adjust_ns, bit [15:0] rx_adjust_fns);
		clock_mode = clk_mode;
        period_nsecond = period_ns;
        period_fnsecond = period_fns;
        tx_adjust_nsecond = tx_adjust_ns;
        tx_adjust_fnsecond = tx_adjust_fns;
        rx_adjust_nsecond = rx_adjust_ns;
        rx_adjust_fnsecond = rx_adjust_fns;		
      
		//configure inserter to the desired ptp device
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_CLOCK_MODE_ADDR, {30'h0000_0000,clock_mode});	
		
		//configure tsu period
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_TSU_PERIOD_ADDR, {12'h000,period_ns,period_fns});
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+RX_TSU_PERIOD_ADDR, {12'h000,period_ns,period_fns});
		
		//configure adjustment register
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_TSU_ADJ_NS_ADDR, {16'h0000,tx_adjust_nsecond});		
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+TX_TSU_ADJ_FNS_ADDR, {16'h0000,tx_adjust_fnsecond});	
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+RX_TSU_ADJ_NS_ADDR, {16'h0000,rx_adjust_nsecond});		
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_MAC+RX_TSU_ADJ_FNS_ADDR, {16'h0000,rx_adjust_fnsecond});			
  

      
    endtask 
	
	
     task automatic configure_tod();

		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_TOD+TOD_SEC_H_ADDR, 32'h0000_0000);
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_TOD+TOD_SEC_L_ADDR, 32'h0000_0000);	
		U_AVALON_DRIVER.avalon_mm_csr_wr(BASE_ADDR_TOD+TOD_NSEC_ADDR, 32'h1000_0000);	
	

    endtask  	
    
    
    
    
    // Queues
    ptp_timestamp tx_timestamp_q[$];
    ptp_timestamp rx_timestamp_q[$];    
    eth_mac_frame mac_frame_expected_q[$];

 	//Global handle
	ptp_timestamp tx_timestamp;
	ptp_timestamp rx_timestamp;
	
	//Source/Sink Packet Number
	integer unsigned source_num_frame; 
	integer unsigned sink_num_frame; 	

    // Capture TX Ingress Timestamp
    initial begin             

        forever begin
            @(posedge tx_sop);
               
                tx_timestamp = new();
                tx_timestamp.timestamp_req_valid = tx_egress_timestamp_request_valid;
                tx_timestamp.ingress_timestamp_valid = tx_ingress_timestamp_valid;
                tx_timestamp.ingress_timestamp_format = tx_ingress_timestamp_format;
                tx_timestamp.ingress_time_96b_second = tx_ingress_timestamp_96b_data[95:48];
                tx_timestamp.ingress_time_96b_nsecond = tx_ingress_timestamp_96b_data[47:16];
                tx_timestamp.ingress_time_96b_fnsecond = tx_ingress_timestamp_96b_data[15:0];
                tx_timestamp.ingress_time_64b_nsecond = tx_ingress_timestamp_64b_data[63:16];
                tx_timestamp.ingress_time_64b_fnsecond = tx_ingress_timestamp_64b_data[15:0];
                tx_timestamp.ingress_fingerprint   = tx_egress_timestamp_request_fingerprint;
				
				if (!tx_ts_req_valid) begin	
					
					tx_timestamp.egress_timestamp_valid = 1'b0;
					tx_timestamp.egress_time_96b_second = 48'h0;
					tx_timestamp.egress_time_96b_nsecond = 32'h0;
					tx_timestamp.egress_time_96b_fnsecond = 16'h0;
                    tx_timestamp.egress_time_64b_nsecond = 48'h0;
					tx_timestamp.egress_time_64b_fnsecond = 16'h0;
					tx_timestamp.egress_fingerprint = {TIMESTAMP_FINGERPRINT_WIDTH{1'b0}};
					
					tx_timestamp_q.push_back(tx_timestamp);
				end     
            
        end
    end
 


    // Capture TX Egress Timestamp
    initial begin

        
        forever begin
            @(posedge tx_egress_timestamp_96b_valid);
            
            // Store the timestamp generated by TX XGMII TSU
			tx_timestamp.egress_timestamp_valid = tx_egress_timestamp_96b_valid; // or tx_egress_timestamp_64b_valid, they are identical
			tx_timestamp.egress_time_96b_second = tx_egress_timestamp_96b_data[95:48];
			tx_timestamp.egress_time_96b_nsecond = tx_egress_timestamp_96b_data[47:16];
			tx_timestamp.egress_time_96b_fnsecond = tx_egress_timestamp_96b_data[15:0];
            tx_timestamp.egress_time_64b_nsecond = tx_egress_timestamp_64b_data[63:16];
			tx_timestamp.egress_time_64b_fnsecond = tx_egress_timestamp_64b_data[15:0];
            tx_timestamp.egress_fingerprint = tx_egress_timestamp_96b_fingerprint; // or tx_egress_timestamp_64b_fingerprint, they are identical
            
            tx_timestamp_q.push_back(tx_timestamp);
            
		end       
    end
 
    
    
    // Capture RX Egress Timestamp
    initial begin
 
        forever begin
            @(posedge rx_ingress_timestamp_96b_valid);

            
            // Store the timestamp generated by RX XGMII TSU
            rx_timestamp = new();
			
			rx_timestamp.egress_timestamp_valid = rx_ingress_timestamp_96b_valid; // or rx_ingress_timestamp_64b_valid, they are identical
			rx_timestamp.egress_time_96b_second = rx_ingress_timestamp_96b_data[95:48];
			rx_timestamp.egress_time_96b_nsecond = rx_ingress_timestamp_96b_data[47:16];
			rx_timestamp.egress_time_96b_fnsecond = rx_ingress_timestamp_96b_data[15:0];
            rx_timestamp.egress_time_64b_nsecond = rx_ingress_timestamp_64b_data[63:16];
			rx_timestamp.egress_time_64b_fnsecond = rx_ingress_timestamp_64b_data[15:0];
			
			rx_timestamp_q.push_back(rx_timestamp);

		end
    end
 
 

 
	//display timestamp and correction field data
	initial begin
		
		integer unsigned rx_num_timestamp;
        integer unsigned tx_num_timestamp;		
		
        ptp_timestamp tx_timestamp_temp;
        ptp_timestamp rx_timestamp_temp;
		eth_mac_frame mac_frame_source;
		
		
		forever begin 
            @(U_MON_RX.frame_complete);
			
			source_num_frame = U_MON_RX.mac_frame_q.size();
			sink_num_frame	 = U_MON_TX.mac_frame_q.size();
            mac_frame_source = U_MON_RX.mac_frame_q[source_num_frame-1]; 
			mac_frame_source.analyze_frame(clock_mode);
			
            tx_timestamp_temp = tx_timestamp_q[source_num_frame - 1];
            rx_timestamp_temp = rx_timestamp_q[source_num_frame - 1]; 

			//display PTP info from packet
			$display("PTP INFO FOR THIS PACKET");
			$display("------------------------------");			
			if (mac_frame_source.ptp_ethernet) begin			
				$display("Type				: Basic PTP");
			end else if (mac_frame_source.ipv4_header) begin
				$display("Type				: IPV4");
			end else if (mac_frame_source.ipv6_header) begin	
				$display("Type				: IPV6");
			end else begin	
				$display("Type				: Invalid PTP Packet Type!");
			end 
			
			if (mac_frame_source.vlan_tag == 0) begin			
				$display("Transport Layer		: Untagged");
			end else if (mac_frame_source.vlan_tag == 1) begin
				$display("Transport Layer		: VLAN");
			end else if (mac_frame_source.vlan_tag == 2) begin	
				$display("Transport Layer		: STACKED VLAN");
			end else begin	
				$display("Transport Layer		: Invalid VLAN!");
			end 
			
			if (mac_frame_source.clock_mode == ORDINARY_CLOCK) begin			
				$display("Clock Mode			: Ordinary Clock");
			end else if (mac_frame_source.clock_mode == BOUNDARY_CLOCK) begin
				$display("Clock Mode			: Boundary Clock");
			end else if (mac_frame_source.clock_mode == E2E_TRANSPARENT_CLOCK) begin	
				$display("Clock Mode			: End To End Transparent Clock");
			end else if (mac_frame_source.clock_mode == P2P_TRANSPARENT_CLOCK) begin	
				$display("Clock Mode			: Peer To Peer Transparent Clock");				
			end else begin	
				$display("Clock Mode			: Invalid Clock Mode");
			end 	

			if (mac_frame_source.ptp_message_type == MSG_SYNC) begin			
				$display("PTP Message Type		: Sync");
			end else if (mac_frame_source.ptp_message_type == MSG_DELAY_REQ) begin
				$display("PTP Message Type		: Delay Request");
			end else if (mac_frame_source.ptp_message_type == MSG_PDELAY_REQ) begin	
				$display("PTP Message Type		: Pdelay Request");
			end else if (mac_frame_source.ptp_message_type == MSG_PDELAY_RESP) begin	
				$display("PTP Message Type		: Pdelay Response");	
			end else begin	
				$display("PTP Message Type		: Non Event Message");
			end 	

			if (mac_frame_source.ptp_message_flag == 1'b0) begin			
				$display("2-step Flag			: 0");
			end else begin	
				$display("2-step Flag			: 1");
			end 
			
			if (tx_timestamp_temp.timestamp_req_valid == 1'b1) begin
				$display("Timestamp Request Valid	: Yes");
			end else begin
				$display("Timestamp Request Valid	: No");
			end
			
			if (tx_timestamp_temp.ingress_timestamp_valid == 1'b1) begin
				$display("TX Ingress Timestamp Valid	: Yes");
			end else begin
				$display("TX Ingress Timestamp Valid	: No");
			end
			
            $display("TX Fingerprint Valid  : 0x%X", tx_timestamp_temp.timestamp_req_valid);
			$display("TX Fingerprint Data   : 0x%X", tx_timestamp_temp.egress_fingerprint);
			
			$display("TX Ingress Timestamp Valid   : 0x%X", tx_timestamp_temp.ingress_timestamp_valid);
            $display("TX Ingress Timestamp Format  : %s", tx_timestamp_temp.ingress_timestamp_format ? "64-bits" : "96-bits");
			$display("TX Ingress Timestamp 96-bits : -");
			$display("                Second Field : 0x%X", tx_timestamp_temp.ingress_time_96b_second);
			$display("            Nanosecond Field : 0x%X", tx_timestamp_temp.ingress_time_96b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", tx_timestamp_temp.ingress_time_96b_fnsecond);
            $display("TX Ingress Timestamp 64-bits : -");
			$display("            Nanosecond Field : 0x%X", tx_timestamp_temp.ingress_time_64b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", tx_timestamp_temp.ingress_time_64b_fnsecond);
			
			$display("TX Egress Timestamp 96-bits  : -");	
            $display("                Second Field : 0x%X", tx_timestamp_temp.egress_time_96b_second);
			$display("            Nanosecond Field : 0x%X", tx_timestamp_temp.egress_time_96b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", tx_timestamp_temp.egress_time_96b_fnsecond);
			$display("TX Egress Timestamp 64-bits  : -");
			$display("            Nanosecond Field : 0x%X", tx_timestamp_temp.egress_time_64b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", tx_timestamp_temp.egress_time_64b_fnsecond);
            
            $display("RX Ingress Timestamp 96-bits : -");	
            $display("                Second Field : 0x%X", rx_timestamp_temp.egress_time_96b_second);
			$display("            Nanosecond Field : 0x%X", rx_timestamp_temp.egress_time_96b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", rx_timestamp_temp.egress_time_96b_fnsecond);
            $display("RX Ingress Timestamp 64-bits : -");	
			$display("            Nanosecond Field : 0x%X", rx_timestamp_temp.egress_time_64b_nsecond);
			$display(" Fractional Nanosecond Field : 0x%X", rx_timestamp_temp.egress_time_64b_fnsecond);
            
            $display("Correction Field		: 0x%X", mac_frame_source.ptp_correction_field);			
			$display("TimeStamp Field		: 0x%X\n\n", mac_frame_source.ptp_timestamp);			
			$display("\n\n\n\n");
		end
	end
	


 
 
 
 endmodule
  
`endif
