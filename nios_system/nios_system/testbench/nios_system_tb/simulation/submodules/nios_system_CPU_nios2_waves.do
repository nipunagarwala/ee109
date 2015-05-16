add wave -noupdate -divider {nios_system_CPU: top-level ports}
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/i_readdata
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/i_readdatavalid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/i_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/i_address
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/i_read
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/clk
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/reset_n
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_readdata
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_address
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_byteenable
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_read
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_write
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_writedata
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/d_irq
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_dataa
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_datab
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_ipending
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_status
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_estatus
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_n
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_a
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_b
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_c
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_readra
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_readrb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_writerc
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_result
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_clk_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_start
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_done
add wave -noupdate -divider {nios_system_CPU: base pipeline}
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/clk
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/reset_n
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_stall
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_stall
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_pcb_nxt
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_pcb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_pcb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/E_pcb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/M_pcb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_pcb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/W_pcb
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/F_vinst
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/D_vinst
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/E_vinst
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/M_vinst
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/A_vinst
add wave -noupdate -format Logic -radix ascii /NIOS2_INSTANCE_TOP/W_vinst
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_inst_ram_hit
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_iw_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_issue
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_kill
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_kill
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_refetch
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_issue
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_rdprs_stall
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_rdprs_stall_done
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/E_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/M_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/W_valid
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/W_wr_dst_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/W_dst_regnum
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/W_wr_data
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/E_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/M_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/F_iw
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/D_iw
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/E_iw
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/M_pipe_flush
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/M_pipe_flush_baddr
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/norm_intr_req
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_status_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_status_reg_pie
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_estatus_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_estatus_reg_pie
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_bstatus_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_bstatus_reg_pie
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq0
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq1
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq2
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq3
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq4
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq5
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq6
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq7
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq8
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq9
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq10
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq11
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq15
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ienable_reg_irq17
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq0
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq1
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq2
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq3
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq4
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq5
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq6
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq7
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq8
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq9
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq10
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq11
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq15
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ipending_reg_irq17
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_cpuid_reg
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/E_valid_prior_to_hbreak
add wave -noupdate -divider {nios_system_CPU: multicycle_custom_instruction}
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ctrl_custom_multi
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_dataa
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_datab
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_ipending
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_status
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_estatus
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_n
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_readra
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_readrb
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_writerc
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_result
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_clk_en
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_start
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_done
add wave -noupdate -format Logic -radix hexadecimal /NIOS2_INSTANCE_TOP/A_ci_multi_stall

configure wave -justifyvalue right
configure wave -signalnamewidth 1
TreeUpdate [SetDefaultTree]
