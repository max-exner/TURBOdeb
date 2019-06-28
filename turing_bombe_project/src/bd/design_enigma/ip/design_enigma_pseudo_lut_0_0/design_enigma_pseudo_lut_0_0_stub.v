// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Jun 18 09:43:28 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /homes/mexner/TURBOdeb/turing_bombe_project/src/bd/design_enigma/ip/design_enigma_pseudo_lut_0_0/design_enigma_pseudo_lut_0_0_stub.v
// Design      : design_enigma_pseudo_lut_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pseudo_lut,Vivado 2018.3" *)
module design_enigma_pseudo_lut_0_0(UB_CLK_IN, SOFT_RESET_N_IN, DIRECTION_1, 
  DIRECTION_2, DIRECTION_3, CHARACTERS_FROM_DRUM_IN_1, CHARACTERS_FROM_DRUM_IN_2, 
  CHARACTERS_FROM_DRUM_IN_3, CHARACTERS_FROM_DRUM_IN_UKW, REQUEST_1, REQUEST_2, REQUEST_3, 
  REQUEST_UKW, DRUM_TYP_IN_1, DRUM_TYP_IN_2, DRUM_TYP_IN_3, DRUM_TYP_IN_UKW, PROJECTION, 
  BUSY_OUT, READY_OUT_1, READY_OUT_2, READY_OUT_3, READY_OUT_UKW)
/* synthesis syn_black_box black_box_pad_pin="UB_CLK_IN,SOFT_RESET_N_IN,DIRECTION_1,DIRECTION_2,DIRECTION_3,CHARACTERS_FROM_DRUM_IN_1[25:0],CHARACTERS_FROM_DRUM_IN_2[25:0],CHARACTERS_FROM_DRUM_IN_3[25:0],CHARACTERS_FROM_DRUM_IN_UKW[25:0],REQUEST_1,REQUEST_2,REQUEST_3,REQUEST_UKW,DRUM_TYP_IN_1[2:0],DRUM_TYP_IN_2[2:0],DRUM_TYP_IN_3[2:0],DRUM_TYP_IN_UKW[2:0],PROJECTION[25:0],BUSY_OUT,READY_OUT_1,READY_OUT_2,READY_OUT_3,READY_OUT_UKW" */;
  input UB_CLK_IN;
  input SOFT_RESET_N_IN;
  input DIRECTION_1;
  input DIRECTION_2;
  input DIRECTION_3;
  input [25:0]CHARACTERS_FROM_DRUM_IN_1;
  input [25:0]CHARACTERS_FROM_DRUM_IN_2;
  input [25:0]CHARACTERS_FROM_DRUM_IN_3;
  input [25:0]CHARACTERS_FROM_DRUM_IN_UKW;
  input REQUEST_1;
  input REQUEST_2;
  input REQUEST_3;
  input REQUEST_UKW;
  input [2:0]DRUM_TYP_IN_1;
  input [2:0]DRUM_TYP_IN_2;
  input [2:0]DRUM_TYP_IN_3;
  input [2:0]DRUM_TYP_IN_UKW;
  output [25:0]PROJECTION;
  output BUSY_OUT;
  output READY_OUT_1;
  output READY_OUT_2;
  output READY_OUT_3;
  output READY_OUT_UKW;
endmodule
