// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Jun 18 09:43:20 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /homes/mexner/TURBOdeb/turing_bombe_project/src/bd/design_enigma/ip/design_enigma_drum_ukw_0_0/design_enigma_drum_ukw_0_0_stub.v
// Design      : design_enigma_drum_ukw_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "drum_ukw,Vivado 2018.3" *)
module design_enigma_drum_ukw_0_0(UB_CLK_IN, SOFT_RESET_N_IN, 
  CHARACTERS_IN_FWD, REQUEST_IN_FWD, LUT_READY_IN, LUT_BUSY_IN, CHARACTERS_FROM_LUT, 
  CHARACTERS_TO_LUT, DRUM_TYP_TO_LUT, REQUEST_TO_LUT, CHARACTERS_OUT, READY_OUT_BWD)
/* synthesis syn_black_box black_box_pad_pin="UB_CLK_IN,SOFT_RESET_N_IN,CHARACTERS_IN_FWD[25:0],REQUEST_IN_FWD,LUT_READY_IN,LUT_BUSY_IN,CHARACTERS_FROM_LUT[25:0],CHARACTERS_TO_LUT[25:0],DRUM_TYP_TO_LUT[2:0],REQUEST_TO_LUT,CHARACTERS_OUT[25:0],READY_OUT_BWD" */;
  input UB_CLK_IN;
  input SOFT_RESET_N_IN;
  input [25:0]CHARACTERS_IN_FWD;
  input REQUEST_IN_FWD;
  input LUT_READY_IN;
  input LUT_BUSY_IN;
  input [25:0]CHARACTERS_FROM_LUT;
  output [25:0]CHARACTERS_TO_LUT;
  output [2:0]DRUM_TYP_TO_LUT;
  output REQUEST_TO_LUT;
  output [25:0]CHARACTERS_OUT;
  output READY_OUT_BWD;
endmodule
