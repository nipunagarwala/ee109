onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Clock and Reset}
add wave -noupdate /tb_top/dut/clk_50_clk
add wave -noupdate /tb_top/dut/ref_clk
add wave -noupdate /tb_top/dut/pcs_phase_measure_clk_clk
add wave -noupdate /tb_top/dut/reset_50_reset_n
add wave -noupdate /tb_top/dut/reset_n
add wave -noupdate /tb_top/dut/rx_clock_connection_0_clk
add wave -noupdate /tb_top/dut/tx_clock_connection_0_clk
add wave -noupdate -divider {Avalon ST RX}
add wave -noupdate /tb_top/dut/receive_0_data
add wave -noupdate /tb_top/dut/receive_0_endofpacket
add wave -noupdate /tb_top/dut/receive_0_error
add wave -noupdate /tb_top/dut/receive_0_ready
add wave -noupdate /tb_top/dut/receive_0_startofpacket
add wave -noupdate /tb_top/dut/receive_0_valid
add wave -noupdate /tb_top/dut/receive_fifo_status_channel
add wave -noupdate /tb_top/dut/receive_fifo_status_data
add wave -noupdate /tb_top/dut/receive_fifo_status_valid
add wave -noupdate /tb_top/dut/receive_packet_type_0_data
add wave -noupdate /tb_top/dut/receive_packet_type_0_valid
add wave -noupdate -divider {Avalon ST TX}
add wave -noupdate /tb_top/dut/transmit_0_data
add wave -noupdate /tb_top/dut/transmit_0_endofpacket
add wave -noupdate /tb_top/dut/transmit_0_error
add wave -noupdate /tb_top/dut/transmit_0_ready
add wave -noupdate /tb_top/dut/transmit_0_startofpacket
add wave -noupdate /tb_top/dut/transmit_0_valid
add wave -noupdate -divider {TX and RX Serial Pin}
add wave -noupdate /tb_top/dut/conduit_connection_0_rxp_0
add wave -noupdate /tb_top/dut/conduit_connection_0_txp_0
add wave -noupdate -divider {Merlin Translator Input}
add wave -noupdate /tb_top/dut/avalon_anti_master_0_address
add wave -noupdate /tb_top/dut/avalon_anti_master_0_read
add wave -noupdate /tb_top/dut/avalon_anti_master_0_readdata
add wave -noupdate /tb_top/dut/avalon_anti_master_0_waitrequest
add wave -noupdate /tb_top/dut/avalon_anti_master_0_write
add wave -noupdate /tb_top/dut/avalon_anti_master_0_writedata
add wave -noupdate -divider {Packet Classifier}
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_clock_operation_mode_mode
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_pkt_with_crc_mode
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_egress_timestamp_request_in_fingerprint
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_egress_timestamp_request_in_valid
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_64b
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_ingress_timestamp_96b
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_calc_format
add wave -noupdate /tb_top/dut/eth_packet_classifier_0_tx_etstamp_ins_ctrl_in_residence_time_update
add wave -noupdate -divider TOD
add wave -noupdate /tb_top/dut/tod_time_of_day_64b_data
add wave -noupdate /tb_top/dut/tod_time_of_day_96b_data
add wave -noupdate -divider {1 Pulse Per Second}
add wave -noupdate /tb_top/dut/pps_out
add wave -noupdate -divider {XCVR Reconfig}
add wave -noupdate /tb_top/dut/reconfig_busy_reconfig_busy
add wave -noupdate -divider {RX Ingress TimeStamp}
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_data
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_rx_ingress_timestamp_64b_0_valid
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_data
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_rx_ingress_timestamp_96b_0_valid
add wave -noupdate -divider {TX Egress Timestamp}
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_64b_0_data
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_64b_0_fingerprint
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_64b_0_valid
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_96b_0_data
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_96b_0_fingerprint
add wave -noupdate /tb_top/dut/triple_speed_ethernet_0_tx_egress_timestamp_96b_0_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20683361 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 440
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {170450834 ps}
