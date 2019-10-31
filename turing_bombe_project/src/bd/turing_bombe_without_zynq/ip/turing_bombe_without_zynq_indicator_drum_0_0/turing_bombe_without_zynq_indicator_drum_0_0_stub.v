// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct 28 16:54:41 2019
// Host        : rabida running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /homes/mexner/TURBOdeb/turing_bombe_project/src/bd/turing_bombe_without_zynq/ip/turing_bombe_without_zynq_indicator_drum_0_0/turing_bombe_without_zynq_indicator_drum_0_0_stub.v
// Design      : turing_bombe_without_zynq_indicator_drum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "indicator_drum,Vivado 2018.3" *)
module turing_bombe_without_zynq_indicator_drum_0_0(ROTATE_IMPULS_IN, RESET_IN, 
  POS_INDICATOR_DRUM_1_OUT, POS_INDICATOR_DRUM_2_OUT, POS_INDICATOR_DRUM_3_OUT, CLK_IN)
/* synthesis syn_black_box black_box_pad_pin="ROTATE_IMPULS_IN,RESET_IN,POS_INDICATOR_DRUM_1_OUT[4:0],POS_INDICATOR_DRUM_2_OUT[4:0],POS_INDICATOR_DRUM_3_OUT[4:0],CLK_IN" */;
  input ROTATE_IMPULS_IN;
  input RESET_IN;
  output [4:0]POS_INDICATOR_DRUM_1_OUT;
  output [4:0]POS_INDICATOR_DRUM_2_OUT;
  output [4:0]POS_INDICATOR_DRUM_3_OUT;
  input CLK_IN;
endmodule
