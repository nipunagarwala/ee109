module top_level
(
		// 1) global signals:
		clkin_50,
		clkin_100,
		clkin_125,
		reset_n,

		// the_tse_mac
		enet_mdc,
        enet_mdio,
        enet_rx_p,
        enet_tx_p,
        enet_resetn,
  
		// the_button_pio
        button_pio,

        // the_ddr3_top
        ddr3top_addr,
        ddr3top_ba,
        ddr3top_cas_n,
        ddr3top_cke,
        ddr3top_clk_n,
        ddr3top_clk,
        ddr3top_cs_n,
        ddr3top_dm,
        ddr3top_dq,
        ddr3top_dqs,
        ddr3top_dqsn,
        ddr3top_odt,
        ddr3top_ras_n,
        ddr3top_reset_n,
        ddr3top_we_n,
		oct_rdn_to_the_ddr3_top,
		oct_rup_to_the_ddr3_top,

        // the_dipsw_pio
        dipsw_pio,

		// the_led_pio
        led_pio,

        // the_tb_fsm_avalon_slave
        flash_oen,
        flash_cen,
        fsm_a,
        fsm_d,
        flash_wen,

		// the_uart
        rxd_to_the_uart,
        txd_from_the_uart
);

//add these two more
  input	       oct_rdn_to_the_ddr3_top;
  input		   oct_rup_to_the_ddr3_top;
  
  output           enet_mdc;
  inout            enet_mdio;
  input            enet_rx_p;
  output           enet_tx_p;
  output           enet_resetn;
  output  [ 12: 0] ddr3top_addr;
  output  [  2: 0] ddr3top_ba;
  output           ddr3top_cas_n;
  output           ddr3top_cke;
  inout            ddr3top_clk_n;
  inout            ddr3top_clk;
  output           ddr3top_cs_n;
  output  [  1: 0] ddr3top_dm;
  inout   [ 15: 0] ddr3top_dq;
  inout   [  1: 0] ddr3top_dqs;
  inout   [  1: 0] ddr3top_dqsn;
  output           ddr3top_odt;
  output           ddr3top_ras_n;
  output           ddr3top_reset_n;
  output           ddr3top_we_n;
  output  [ 15: 0] led_pio;
  output           flash_oen;
  output           flash_cen;
  output  [ 25: 0] fsm_a;
  inout   [ 15: 0] fsm_d;
  output           txd_from_the_uart;
  output           flash_wen;
  input            clkin_50;
  input            clkin_100;
  input            clkin_125;
  input   [  2: 0] button_pio;
  input   [  7: 0] dipsw_pio;
  input            reset_n;
  input            rxd_to_the_uart;

//
// Ethernet interface assignments
//
wire            mdio_in;
wire            mdio_oen;
wire            mdio_out;

assign mdio_in = enet_mdio;
assign enet_mdio = mdio_oen == 0 ? mdio_out : 1'bz;
assign enet_resetn = reset_n;

  eth_std_main_system eth_std_main_system_inst
    (		
		.clkin_100_clk_in_clk               (clkin_100),
		.clkin_100_clk_in_reset_reset_n     (reset_n),		
			
		.ddr3_top_oct_rdn  		 			(oct_rdn_to_the_ddr3_top),
		.ddr3_top_oct_rup 		 			(oct_rup_to_the_ddr3_top),		
		.ddr3_top_memory_mem_a		 		(ddr3top_addr),
		.ddr3_top_memory_mem_ba             (ddr3top_ba),
		.ddr3_top_memory_mem_cas_n          (ddr3top_cas_n),
		.ddr3_top_memory_mem_cke            (ddr3top_cke),		
		.ddr3_top_memory_mem_ck_n		 	(ddr3top_clk_n),		
		.ddr3_top_memory_mem_ck		 		(ddr3top_clk),
		.ddr3_top_memory_mem_cs_n           (ddr3top_cs_n),
		.ddr3_top_memory_mem_dm             (ddr3top_dm),
		.ddr3_top_memory_mem_dq         	(ddr3top_dq),
		.ddr3_top_memory_mem_dqs        	(ddr3top_dqs),		
		.ddr3_top_memory_mem_dqs_n      	(ddr3top_dqsn),
		.ddr3_top_memory_mem_odt            (ddr3top_odt),
		.ddr3_top_memory_mem_ras_n          (ddr3top_ras_n),
		.ddr3_top_memory_mem_reset_n        (ddr3top_reset_n),
		.ddr3_top_memory_mem_we_n           (ddr3top_we_n),		
		.sdram_soft_reset_reset_n 			(1'b1),
		
		.button_pio_external_connection_export	(button_pio),

		.led_pio_external_connection_export     (led_pio),

		.tse_mac_conduit_connection_mdc         (enet_mdc),
		.tse_mac_conduit_connection_mdio_in     (mdio_in),
		.tse_mac_conduit_connection_mdio_oen    (mdio_oen),
		.tse_mac_conduit_connection_mdio_out    (mdio_out),
		.tse_mac_conduit_connection_ref_clk     (clkin_125),
		.tse_mac_conduit_connection_rxp         (enet_rx_p),
		.tse_mac_conduit_connection_txp         (enet_tx_p),			
		

		.flash_tcm_address_out                  (fsm_a),
		.flash_tcm_data_out                     (fsm_d),
		.flash_tcm_read_n_out                   (flash_oen),
		.flash_tcm_write_n_out                  (flash_wen),
		.flash_tcm_chipselect_n_out				(flash_cen)
            
    );


endmodule
