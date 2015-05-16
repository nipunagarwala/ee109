## DDR3_TOP timing constraints
#source ddr3_top_phy_ddr_timing.sdc

## External clocks
create_clock -period 20.00 -name clkin_50  [get_ports clkin_50]
create_clock -period 10.00 -name clkin_100 [get_ports clkin_100]
create_clock -period 8.00 -name clkin_125 [get_ports clkin_125]

## Derive all pll clocks
derive_pll_clocks
derive_clock_uncertainty

set Top_clkin_50                clkin_50
set Top_clkin_100               clkin_100
set Top_clkin_125               clkin_125

## HPDDR3 generated clocks
#set HalfRate_Clock              *|clk|half_rate.pll|altpll_component|auto_generated|*|clk[0]
#set FullRate_Clock              *|clk|half_rate.pll|altpll_component|auto_generated|*|clk[1]

## UniphyDDR3 generated clocks
set Pll_Afi_Clock 				*|sdram|pll0|pll_afi_clk
set Pll_Afi_Half_Clock 			*|sdram|pll0|pll_afi_half_clk
set HalfRate_Clock				*|upll_memphy|altpll_component|auto_generated|*|clk[4]

## Constrain SGMII interface clocks
set TseSgmii_lvds_1250_Clock    *|ALTLVDS_RX_component|auto_generated|*|clk[0]
set TseSgmii_lvds_125_Clock     *|ALTLVDS_RX_component|auto_generated|*|clk[1]
set TseSgmii_lvds_rx_Clock      *|ALTLVDS_RX_component|auto_generated|rx[0]|clk0

set_false_path -from [get_keepers {*|falling_edge_detector:reset_sync_block*.falling_edge_detector_inst|falling_edge_detected}] \
					-to [get_keepers {*sdram*ureset*|reset_reg*}]
set_false_path -from [get_keepers global_reset_generator:global_reset_generator_inst|reset_counter:reset_counter_inst|resetn_out] \
					-to [get_keepers {*sdram*ureset*|reset_reg*}]
					
set_clock_groups \
    -exclusive \
    -group [get_clocks $Top_clkin_50 ] \
    -group [get_clocks $Top_clkin_100 ] \
    -group [get_clocks $Top_clkin_125 ] \
	-group [get_clocks $Pll_Afi_Clock ] \
    -group [get_clocks $Pll_Afi_Half_Clock ] \
    -group [get_clocks $HalfRate_Clock ] \
    -group [get_clocks $TseSgmii_lvds_1250_Clock ] \
    -group [get_clocks $TseSgmii_lvds_125_Clock ] \
    -group [get_clocks $TseSgmii_lvds_rx_Clock ]

