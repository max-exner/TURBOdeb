// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Jun 28 15:43:55 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ turing_bombe_without_zynq_TURBO_enigma_0_0_stub.v
// Design      : turing_bombe_without_zynq_TURBO_enigma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TURBO_enigma_bd,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CHARACTERS_IN_DB0, CHARACTERS_IN_DB1, 
  CODED_CHARACTERS_OUT_DB0, CODED_CHARACTERS_OUT_DB1, CONFIG_DRUM_TYP_1_IN, 
  CONFIG_DRUM_TYP_2_IN, CONFIG_DRUM_TYP_3_IN, CONFIG_START_POS_DRUM_1_IN, 
  CONFIG_START_POS_DRUM_2_IN, CONFIG_START_POS_DRUM_3_IN, DRUM_IMPULS_IN, READY_OUT, 
  SOFT_RESET_N_IN, START_IN, UB_CLK_IN)
/* synthesis syn_black_box black_box_pad_pin="CHARACTERS_IN_DB0[25:0],CHARACTERS_IN_DB1[25:0],CODED_CHARACTERS_OUT_DB0[25:0],CODED_CHARACTERS_OUT_DB1[25:0],CONFIG_DRUM_TYP_1_IN[2:0],CONFIG_DRUM_TYP_2_IN[2:0],CONFIG_DRUM_TYP_3_IN[2:0],CONFIG_START_POS_DRUM_1_IN[4:0],CONFIG_START_POS_DRUM_2_IN[4:0],CONFIG_START_POS_DRUM_3_IN[4:0],DRUM_IMPULS_IN,READY_OUT,SOFT_RESET_N_IN,START_IN,UB_CLK_IN" */;
  input [25:0]CHARACTERS_IN_DB0;
  input [25:0]CHARACTERS_IN_DB1;
  output [25:0]CODED_CHARACTERS_OUT_DB0;
  output [25:0]CODED_CHARACTERS_OUT_DB1;
  input [2:0]CONFIG_DRUM_TYP_1_IN;
  input [2:0]CONFIG_DRUM_TYP_2_IN;
  input [2:0]CONFIG_DRUM_TYP_3_IN;
  input [4:0]CONFIG_START_POS_DRUM_1_IN;
  input [4:0]CONFIG_START_POS_DRUM_2_IN;
  input [4:0]CONFIG_START_POS_DRUM_3_IN;
  input DRUM_IMPULS_IN;
  output READY_OUT;
  input SOFT_RESET_N_IN;
  input START_IN;
  input UB_CLK_IN;
endmodule
