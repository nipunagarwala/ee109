

create_clock -period 8 -name ref_clk [ get_ports  {ref_clk} ]
create_clock -period 20 -name clk_50_clk [get_ports {clk_50_clk}]
create_clock -period 12.5 -name pcs_phase_measure_clk_clk [get_ports {pcs_phase_measure_clk_clk}]

set_clock_groups -asynchronous -group [get_clocks ref_clk]
set_clock_groups -asynchronous -group [get_clocks clk_50_clk]
set_clock_groups -asynchronous -group [get_clocks pcs_phase_measure_clk_clk]

derive_pll_clocks
derive_clock_uncertainty

#set multicycle path
set_multicycle_path -from {*altera_eth_1588_tod:tod|altera_avalon_st_clock_crosser:time_transfer1|altera_avalon_st_pipeline_base:output_stage|data1*} -to {*altera_eth_1588_tod:tod|nsec_cntr_64b*} -setup -end 2
set_multicycle_path -from {*altera_eth_1588_tod:tod|altera_avalon_st_clock_crosser:time_transfer1|altera_avalon_st_pipeline_base:output_stage|data1*} -to {*altera_eth_1588_tod:tod|nsec_cntr_64b*} -hold -end 2
