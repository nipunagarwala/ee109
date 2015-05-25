
module VideoConferencing_System (
	// Inputs
	CLOCK_50,
	KEY,

/*****************************************************************************/

	// Memory (SRAM)
	SRAM_DQ,
	
	// Memory (SDRAM)
	DRAM_DQ,

/*****************************************************************************/
	// Outputs
	TD_RESET_N,
	
	// 	Memory (SRAM)
	SRAM_ADDR,

	SRAM_CE_N,
	SRAM_WE_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_LB_N,
	
	// Memory (SDRAM)
	DRAM_ADDR,
	
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_RAS_N,
	DRAM_CLK,
	DRAM_CKE,
	DRAM_CS_N,
	DRAM_WE_N,
	DRAM_DQM,
		
	// VGA
	VGA_CLK,
	VGA_HS,
	VGA_VS,
	VGA_BLANK_N,
	VGA_SYNC_N,
	VGA_R,
	VGA_G,
	VGA_B,
	
	// Signals for testing
	LEDG,
	LEDR,

	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7
);

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
// Inputs
input				CLOCK_50;
input		[0:0]	KEY;

// 	Memory (SRAM)
inout		[15: 0]	SRAM_DQ;

//  Memory (SDRAM)
inout		[31: 0]	DRAM_DQ;

// Outputs
output				TD_RESET_N;

// 	Memory (SRAM)
output		[19: 0]	SRAM_ADDR;

output				SRAM_CE_N;
output				SRAM_WE_N;
output				SRAM_OE_N;
output				SRAM_UB_N;
output				SRAM_LB_N;

//  Memory (SDRAM)
output		[12: 0]	DRAM_ADDR;

output		[ 1: 0]	DRAM_BA;
output				DRAM_CAS_N;
output				DRAM_RAS_N;
output				DRAM_CLK;
output				DRAM_CKE;
output				DRAM_CS_N;
output				DRAM_WE_N;
output		[ 3: 0]	DRAM_DQM;

//  VGA
output				VGA_CLK;
output				VGA_HS;
output				VGA_VS;
output				VGA_BLANK_N;
output				VGA_SYNC_N;
output		[ 7: 0]	VGA_R;
output		[ 7: 0]	VGA_G;
output		[ 7: 0]	VGA_B;


output		[ 8: 0]	LEDG;
output		[17: 0]	LEDR;

output		[ 6: 0]	HEX0;
output		[ 6: 0]	HEX1;
output		[ 6: 0]	HEX2;
output		[ 6: 0]	HEX3;
output		[ 6: 0]	HEX4;
output		[ 6: 0]	HEX5;
output		[ 6: 0]	HEX6;
output		[ 6: 0]	HEX7;


/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/
// Output Assignments
assign TD_RESET_N	= 1'b1;


/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/	 
	 nios_system NiosII     (
      .SRAM_ADDR_from_the_SRAM               (SRAM_ADDR),
      .SRAM_CE_N_from_the_SRAM               (SRAM_CE_N),
      .SRAM_DQ_to_and_from_the_SRAM          (SRAM_DQ),
      .SRAM_LB_N_from_the_SRAM               (SRAM_LB_N),
      .SRAM_OE_N_from_the_SRAM               (SRAM_OE_N),
      .SRAM_UB_N_from_the_SRAM               (SRAM_UB_N),
      .SRAM_WE_N_from_the_SRAM               (SRAM_WE_N),
      .VGA_BLANK_from_the_VGA_Controller     (VGA_BLANK_N),
      .VGA_B_from_the_VGA_Controller         (VGA_B),
      .VGA_CLK_from_the_VGA_Controller       (VGA_CLK),
      .VGA_G_from_the_VGA_Controller         (VGA_G),
      .VGA_HS_from_the_VGA_Controller        (VGA_HS),
      .VGA_R_from_the_VGA_Controller         (VGA_R),
      .VGA_SYNC_from_the_VGA_Controller      (VGA_SYNC_N),
      .VGA_VS_from_the_VGA_Controller        (VGA_VS),
      .clk                                   (CLOCK_50),
      .coe_conduit_HEX0_from_the_Accelerator (HEX0),
      .coe_conduit_HEX1_from_the_Accelerator (HEX1),
      .coe_conduit_HEX2_from_the_Accelerator (HEX2),
      .coe_conduit_HEX3_from_the_Accelerator (HEX3),
      .coe_conduit_HEX4_from_the_Accelerator (HEX4),
      .coe_conduit_HEX5_from_the_Accelerator (HEX5),
      .coe_conduit_HEX6_from_the_Accelerator (HEX6),
      .coe_conduit_HEX7_from_the_Accelerator (HEX7),
      .coe_conduit_LEDG_from_the_Accelerator (LEDG),
      .coe_conduit_LEDR_from_the_Accelerator (LEDR),
      .reset_n                               (KEY[0]),
      .sdram_clk_clk                         (DRAM_CLK),
      .zs_addr_from_the_SDRAM                (DRAM_ADDR),
      .zs_ba_from_the_SDRAM                  (DRAM_BA),
      .zs_cas_n_from_the_SDRAM               (DRAM_CAS_N),
      .zs_cke_from_the_SDRAM                 (DRAM_CKE),
      .zs_cs_n_from_the_SDRAM                (DRAM_CS_N),
      .zs_dq_to_and_from_the_SDRAM           (DRAM_DQ),
      .zs_dqm_from_the_SDRAM                 (DRAM_DQM),
      .zs_ras_n_from_the_SDRAM               (DRAM_RAS_N),
      .zs_we_n_from_the_SDRAM                (DRAM_WE_N)
    );
