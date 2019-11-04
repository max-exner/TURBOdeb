// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Nov  4 16:16:56 2019
// Host        : TobisLinux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tobias/Development/TURBOdeb/turing_bombe_project/src/bd/TURBO_enigma_bd/ip/TURBO_enigma_bd_enigma_top_0_0/TURBO_enigma_bd_enigma_top_0_0_stub.v
// Design      : TURBO_enigma_bd_enigma_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "enigma_top,Vivado 2018.3" *)
module TURBO_enigma_bd_enigma_top_0_0(UB_CLK_IN, SOFT_RESET_N_IN, 
  CONFIG_START_POS_DRUM_1_IN, CONFIG_START_POS_DRUM_2_IN, CONFIG_START_POS_DRUM_3_IN, 
  CONFIG_DRUM_TYP_1_IN, CONFIG_DRUM_TYP_2_IN, CONFIG_DRUM_TYP_3_IN, CHARACTERS_IN_DB0, 
  CHARACTERS_IN_DB1, DRUM_IMPULS_IN, START_IN, CODED_CHARACTERS_OUT_DB0, 
  CODED_CHARACTERS_OUT_DB1, READY_OUT)
/* synthesis syn_black_box black_box_pad_pin="UB_CLK_IN,SOFT_RESET_N_IN,CONFIG_START_POS_DRUM_1_IN[4:0],CONFIG_START_POS_DRUM_2_IN[4:0],CONFIG_START_POS_DRUM_3_IN[4:0],CONFIG_DRUM_TYP_1_IN[2:0],CONFIG_DRUM_TYP_2_IN[2:0],CONFIG_DRUM_TYP_3_IN[2:0],CHARACTERS_IN_DB0[25:0],CHARACTERS_IN_DB1[25:0],DRUM_IMPULS_IN,START_IN,CODED_CHARACTERS_OUT_DB0[25:0],CODED_CHARACTERS_OUT_DB1[25:0],READY_OUT" */;
  input UB_CLK_IN;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_1_IN;
  input [4:0]CONFIG_START_POS_DRUM_2_IN;
  input [4:0]CONFIG_START_POS_DRUM_3_IN;
  input [2:0]CONFIG_DRUM_TYP_1_IN;
  input [2:0]CONFIG_DRUM_TYP_2_IN;
  input [2:0]CONFIG_DRUM_TYP_3_IN;
  input [25:0]CHARACTERS_IN_DB0;
  input [25:0]CHARACTERS_IN_DB1;
  input DRUM_IMPULS_IN;
  input START_IN;
  output [25:0]CODED_CHARACTERS_OUT_DB0;
  output [25:0]CODED_CHARACTERS_OUT_DB1;
  output READY_OUT;
endmodule
