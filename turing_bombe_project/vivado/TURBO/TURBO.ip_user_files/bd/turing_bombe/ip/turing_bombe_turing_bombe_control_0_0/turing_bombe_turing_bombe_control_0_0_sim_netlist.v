// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Jun 12 13:40:01 2019
// Host        : Tobias running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tobias/Development/TURBOdeb/repar_turing_bombe/turing_bombe_project/src/bd/turing_bombe/ip/turing_bombe_turing_bombe_control_0_0/turing_bombe_turing_bombe_control_0_0_sim_netlist.v
// Design      : turing_bombe_turing_bombe_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "turing_bombe_turing_bombe_control_0_0,turing_bombe_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "turing_bombe_controller,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module turing_bombe_turing_bombe_control_0_0
   (ENABLE_BRAM_A_IN,
    ADDRESS_BRAM_A_IN,
    DATA_IN_BRAM_A,
    DATA_OUT_BRAM_A,
    WRITE_ENABLE_BRAM_IN,
    DB_IN_INPUT_VOLTAGE_OUT,
    DB_IN_INPUT_REGISTER_OUT,
    ENIGMAS_START_OUT,
    DRUM_IMPULS_OUT,
    ENIGMAS_DRUM_1_OUT,
    ENIGMAS_DRUM_2_OUT,
    ENIGMAS_DRUM_3_OUT,
    POS_1_INDICATOR_DRUM_IN,
    POS_2_INDICATOR_DRUM_IN,
    POS_3_INDICATOR_DRUM_IN,
    CLK_IN,
    DB_READY_IN,
    RESET_OUT,
    ENIGMA_1_CHARACTERS_DB0_OUT,
    ENIGMA_1_CHARACTERS_DB1_OUT,
    ENIGMA_1_DRUMPOS_1_OUT,
    ENIGMA_1_DRUMPOS_2_OUT,
    ENIGMA_1_DRUMPOS_3_OUT,
    ENIGMA_2_CHARACTERS_DB0_OUT,
    ENIGMA_2_CHARACTERS_DB1_OUT,
    ENIGMA_2_DRUMPOS_1_OUT,
    ENIGMA_2_DRUMPOS_2_OUT,
    ENIGMA_2_DRUMPOS_3_OUT,
    ENIGMA_3_CHARACTERS_DB0_OUT,
    ENIGMA_3_CHARACTERS_DB1_OUT,
    ENIGMA_3_DRUMPOS_1_OUT,
    ENIGMA_3_DRUMPOS_2_OUT,
    ENIGMA_3_DRUMPOS_3_OUT,
    ENIGMA_4_CHARACTERS_DB0_OUT,
    ENIGMA_4_CHARACTERS_DB1_OUT,
    ENIGMA_4_DRUMPOS_1_OUT,
    ENIGMA_4_DRUMPOS_2_OUT,
    ENIGMA_4_DRUMPOS_3_OUT,
    ENIGMA_5_CHARACTERS_DB0_OUT,
    ENIGMA_5_CHARACTERS_DB1_OUT,
    ENIGMA_5_DRUMPOS_1_OUT,
    ENIGMA_5_DRUMPOS_2_OUT,
    ENIGMA_5_DRUMPOS_3_OUT,
    ENIGMA_6_CHARACTERS_DB0_OUT,
    ENIGMA_6_CHARACTERS_DB1_OUT,
    ENIGMA_6_DRUMPOS_1_OUT,
    ENIGMA_6_DRUMPOS_2_OUT,
    ENIGMA_6_DRUMPOS_3_OUT,
    ENIGMA_7_CHARACTERS_DB0_OUT,
    ENIGMA_7_CHARACTERS_DB1_OUT,
    ENIGMA_7_DRUMPOS_1_OUT,
    ENIGMA_7_DRUMPOS_2_OUT,
    ENIGMA_7_DRUMPOS_3_OUT,
    ENIGMA_8_CHARACTERS_DB0_OUT,
    ENIGMA_8_CHARACTERS_DB1_OUT,
    ENIGMA_8_DRUMPOS_1_OUT,
    ENIGMA_8_DRUMPOS_2_OUT,
    ENIGMA_8_DRUMPOS_3_OUT,
    ENIGMA_9_CHARACTERS_DB0_OUT,
    ENIGMA_9_CHARACTERS_DB1_OUT,
    ENIGMA_9_DRUMPOS_1_OUT,
    ENIGMA_9_DRUMPOS_2_OUT,
    ENIGMA_9_DRUMPOS_3_OUT,
    ENIGMA_10_CHARACTERS_DB0_OUT,
    ENIGMA_10_CHARACTERS_DB1_OUT,
    ENIGMA_10_DRUMPOS_1_OUT,
    ENIGMA_10_DRUMPOS_2_OUT,
    ENIGMA_10_DRUMPOS_3_OUT,
    ENIGMA_11_CHARACTERS_DB0_OUT,
    ENIGMA_11_CHARACTERS_DB1_OUT,
    ENIGMA_11_DRUMPOS_1_OUT,
    ENIGMA_11_DRUMPOS_2_OUT,
    ENIGMA_11_DRUMPOS_3_OUT,
    ENIGMA_12_CHARACTERS_DB0_OUT,
    ENIGMA_12_CHARACTERS_DB1_OUT,
    ENIGMA_12_DRUMPOS_1_OUT,
    ENIGMA_12_DRUMPOS_2_OUT,
    ENIGMA_12_DRUMPOS_3_OUT,
    DB_IN_ENIGMA_1_DBCON0_OUT,
    DB_IN_ENIGMA_1_DBCON1_OUT,
    DB_IN_ENIGMA_2_DBCON0_OUT,
    DB_IN_ENIGMA_2_DBCON1_OUT,
    DB_IN_ENIGMA_3_DBCON0_OUT,
    DB_IN_ENIGMA_3_DBCON1_OUT,
    DB_IN_ENIGMA_4_DBCON0_OUT,
    DB_IN_ENIGMA_4_DBCON1_OUT,
    DB_IN_ENIGMA_5_DBCON0_OUT,
    DB_IN_ENIGMA_5_DBCON1_OUT,
    DB_IN_ENIGMA_6_DBCON0_OUT,
    DB_IN_ENIGMA_6_DBCON1_OUT,
    DB_IN_ENIGMA_7_DBCON0_OUT,
    DB_IN_ENIGMA_7_DBCON1_OUT,
    DB_IN_ENIGMA_8_DBCON0_OUT,
    DB_IN_ENIGMA_8_DBCON1_OUT,
    DB_IN_ENIGMA_9_DBCON0_OUT,
    DB_IN_ENIGMA_9_DBCON1_OUT,
    DB_IN_ENIGMA_10_DBCON0_OUT,
    DB_IN_ENIGMA_10_DBCON1_OUT,
    DB_IN_ENIGMA_11_DBCON0_OUT,
    DB_IN_ENIGMA_11_DBCON1_OUT,
    DB_IN_ENIGMA_12_DBCON0_OUT,
    DB_IN_ENIGMA_12_DBCON1_OUT,
    DB_OUT_ENIGMA_1_DB0,
    DB_OUT_ENIGMA_1_DB1,
    DB_OUT_ENIGMA_2_DB0,
    DB_OUT_ENIGMA_2_DB1,
    DB_OUT_ENIGMA_3_DB0,
    DB_OUT_ENIGMA_3_DB1,
    DB_OUT_ENIGMA_4_DB0,
    DB_OUT_ENIGMA_4_DB1,
    DB_OUT_ENIGMA_5_DB0,
    DB_OUT_ENIGMA_5_DB1,
    DB_OUT_ENIGMA_6_DB0,
    DB_OUT_ENIGMA_6_DB1,
    DB_OUT_ENIGMA_7_DB0,
    DB_OUT_ENIGMA_7_DB1,
    DB_OUT_ENIGMA_8_DB0,
    DB_OUT_ENIGMA_8_DB1,
    DB_OUT_ENIGMA_9_DB0,
    DB_OUT_ENIGMA_9_DB1,
    DB_OUT_ENIGMA_10_DB0,
    DB_OUT_ENIGMA_10_DB1,
    DB_OUT_ENIGMA_11_DB0,
    DB_OUT_ENIGMA_11_DB1,
    DB_OUT_ENIGMA_12_DB0,
    DB_OUT_ENIGMA_12_DB1,
    DB_RESULT_RESIGER_IN);
  input ENABLE_BRAM_A_IN;
  input [5:0]ADDRESS_BRAM_A_IN;
  input [31:0]DATA_IN_BRAM_A;
  output [31:0]DATA_OUT_BRAM_A;
  input [0:0]WRITE_ENABLE_BRAM_IN;
  output [4:0]DB_IN_INPUT_VOLTAGE_OUT;
  output [4:0]DB_IN_INPUT_REGISTER_OUT;
  output ENIGMAS_START_OUT;
  output DRUM_IMPULS_OUT;
  output [2:0]ENIGMAS_DRUM_1_OUT;
  output [2:0]ENIGMAS_DRUM_2_OUT;
  output [2:0]ENIGMAS_DRUM_3_OUT;
  input [4:0]POS_1_INDICATOR_DRUM_IN;
  input [4:0]POS_2_INDICATOR_DRUM_IN;
  input [4:0]POS_3_INDICATOR_DRUM_IN;
  input CLK_IN;
  input DB_READY_IN;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET_OUT RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET_OUT, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output RESET_OUT;
  output [25:0]ENIGMA_1_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_1_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_2_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_2_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_3_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_3_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_4_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_4_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_5_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_5_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_6_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_6_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_7_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_7_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_8_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_8_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_9_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_9_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_10_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_10_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_11_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_11_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_3_OUT;
  output [25:0]ENIGMA_12_CHARACTERS_DB0_OUT;
  output [25:0]ENIGMA_12_CHARACTERS_DB1_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_3_OUT;
  output [4:0]DB_IN_ENIGMA_1_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_1_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_2_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_2_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_3_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_3_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_4_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_4_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_5_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_5_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_6_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_6_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_7_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_7_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_8_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_8_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_9_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_9_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_10_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_10_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_11_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_11_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_12_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_12_DBCON1_OUT;
  input [25:0]DB_OUT_ENIGMA_1_DB0;
  input [25:0]DB_OUT_ENIGMA_1_DB1;
  input [25:0]DB_OUT_ENIGMA_2_DB0;
  input [25:0]DB_OUT_ENIGMA_2_DB1;
  input [25:0]DB_OUT_ENIGMA_3_DB0;
  input [25:0]DB_OUT_ENIGMA_3_DB1;
  input [25:0]DB_OUT_ENIGMA_4_DB0;
  input [25:0]DB_OUT_ENIGMA_4_DB1;
  input [25:0]DB_OUT_ENIGMA_5_DB0;
  input [25:0]DB_OUT_ENIGMA_5_DB1;
  input [25:0]DB_OUT_ENIGMA_6_DB0;
  input [25:0]DB_OUT_ENIGMA_6_DB1;
  input [25:0]DB_OUT_ENIGMA_7_DB0;
  input [25:0]DB_OUT_ENIGMA_7_DB1;
  input [25:0]DB_OUT_ENIGMA_8_DB0;
  input [25:0]DB_OUT_ENIGMA_8_DB1;
  input [25:0]DB_OUT_ENIGMA_9_DB0;
  input [25:0]DB_OUT_ENIGMA_9_DB1;
  input [25:0]DB_OUT_ENIGMA_10_DB0;
  input [25:0]DB_OUT_ENIGMA_10_DB1;
  input [25:0]DB_OUT_ENIGMA_11_DB0;
  input [25:0]DB_OUT_ENIGMA_11_DB1;
  input [25:0]DB_OUT_ENIGMA_12_DB0;
  input [25:0]DB_OUT_ENIGMA_12_DB1;
  input [25:0]DB_RESULT_RESIGER_IN;

  wire \<const0> ;
  wire [5:0]ADDRESS_BRAM_A_IN;
  wire CLK_IN;
  wire [31:0]DATA_IN_BRAM_A;
  wire [31:0]DATA_OUT_BRAM_A;
  wire [4:0]DB_IN_ENIGMA_10_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_10_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_11_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_11_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_12_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_12_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_1_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_1_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_2_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_2_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_3_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_3_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_4_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_4_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_5_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_5_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_6_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_6_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_7_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_7_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_8_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_8_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_9_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_9_DBCON1_OUT;
  wire [4:0]DB_IN_INPUT_REGISTER_OUT;
  wire [4:0]DB_IN_INPUT_VOLTAGE_OUT;
  wire [25:0]DB_OUT_ENIGMA_10_DB0;
  wire [25:0]DB_OUT_ENIGMA_10_DB1;
  wire [25:0]DB_OUT_ENIGMA_11_DB0;
  wire [25:0]DB_OUT_ENIGMA_11_DB1;
  wire [25:0]DB_OUT_ENIGMA_12_DB0;
  wire [25:0]DB_OUT_ENIGMA_12_DB1;
  wire [25:0]DB_OUT_ENIGMA_1_DB0;
  wire [25:0]DB_OUT_ENIGMA_1_DB1;
  wire [25:0]DB_OUT_ENIGMA_2_DB0;
  wire [25:0]DB_OUT_ENIGMA_2_DB1;
  wire [25:0]DB_OUT_ENIGMA_3_DB0;
  wire [25:0]DB_OUT_ENIGMA_3_DB1;
  wire [25:0]DB_OUT_ENIGMA_4_DB0;
  wire [25:0]DB_OUT_ENIGMA_4_DB1;
  wire [25:0]DB_OUT_ENIGMA_5_DB0;
  wire [25:0]DB_OUT_ENIGMA_5_DB1;
  wire [25:0]DB_OUT_ENIGMA_6_DB0;
  wire [25:0]DB_OUT_ENIGMA_6_DB1;
  wire [25:0]DB_OUT_ENIGMA_7_DB0;
  wire [25:0]DB_OUT_ENIGMA_7_DB1;
  wire [25:0]DB_OUT_ENIGMA_8_DB0;
  wire [25:0]DB_OUT_ENIGMA_8_DB1;
  wire [25:0]DB_OUT_ENIGMA_9_DB0;
  wire [25:0]DB_OUT_ENIGMA_9_DB1;
  wire DB_READY_IN;
  wire [25:0]DB_RESULT_RESIGER_IN;
  wire ENABLE_BRAM_A_IN;
  wire [2:0]ENIGMAS_DRUM_1_OUT;
  wire [2:0]ENIGMAS_DRUM_2_OUT;
  wire [2:0]ENIGMAS_DRUM_3_OUT;
  wire ENIGMAS_START_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_3_OUT;
  wire [4:0]POS_1_INDICATOR_DRUM_IN;
  wire [4:0]POS_2_INDICATOR_DRUM_IN;
  wire [4:0]POS_3_INDICATOR_DRUM_IN;
  wire RESET_OUT;
  wire [0:0]WRITE_ENABLE_BRAM_IN;

  assign DRUM_IMPULS_OUT = \<const0> ;
  assign ENIGMA_10_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_10_DB0;
  assign ENIGMA_10_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_10_DB1;
  assign ENIGMA_11_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_11_DB0;
  assign ENIGMA_11_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_11_DB1;
  assign ENIGMA_12_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_12_DB0;
  assign ENIGMA_12_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_12_DB1;
  assign ENIGMA_1_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_1_DB0;
  assign ENIGMA_1_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_1_DB1;
  assign ENIGMA_2_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_2_DB0;
  assign ENIGMA_2_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_2_DB1;
  assign ENIGMA_3_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_3_DB0;
  assign ENIGMA_3_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_3_DB1;
  assign ENIGMA_4_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_4_DB0;
  assign ENIGMA_4_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_4_DB1;
  assign ENIGMA_5_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_5_DB0;
  assign ENIGMA_5_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_5_DB1;
  assign ENIGMA_6_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_6_DB0;
  assign ENIGMA_6_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_6_DB1;
  assign ENIGMA_7_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_7_DB0;
  assign ENIGMA_7_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_7_DB1;
  assign ENIGMA_8_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_8_DB0;
  assign ENIGMA_8_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_8_DB1;
  assign ENIGMA_9_CHARACTERS_DB0_OUT[25:0] = DB_OUT_ENIGMA_9_DB0;
  assign ENIGMA_9_CHARACTERS_DB1_OUT[25:0] = DB_OUT_ENIGMA_9_DB1;
  GND GND
       (.G(\<const0> ));
  turing_bombe_turing_bombe_control_0_0_turing_bombe_controller U0
       (.ADDRESS_BRAM_A_IN(ADDRESS_BRAM_A_IN),
        .CLK_IN(CLK_IN),
        .DATA_IN_BRAM_A(DATA_IN_BRAM_A),
        .DATA_OUT_BRAM_A(DATA_OUT_BRAM_A),
        .DB_IN_ENIGMA_10_DBCON0_OUT(DB_IN_ENIGMA_10_DBCON0_OUT),
        .DB_IN_ENIGMA_10_DBCON1_OUT(DB_IN_ENIGMA_10_DBCON1_OUT),
        .DB_IN_ENIGMA_11_DBCON0_OUT(DB_IN_ENIGMA_11_DBCON0_OUT),
        .DB_IN_ENIGMA_11_DBCON1_OUT(DB_IN_ENIGMA_11_DBCON1_OUT),
        .DB_IN_ENIGMA_12_DBCON0_OUT(DB_IN_ENIGMA_12_DBCON0_OUT),
        .DB_IN_ENIGMA_12_DBCON1_OUT(DB_IN_ENIGMA_12_DBCON1_OUT),
        .DB_IN_ENIGMA_1_DBCON0_OUT(DB_IN_ENIGMA_1_DBCON0_OUT),
        .DB_IN_ENIGMA_1_DBCON1_OUT(DB_IN_ENIGMA_1_DBCON1_OUT),
        .DB_IN_ENIGMA_2_DBCON0_OUT(DB_IN_ENIGMA_2_DBCON0_OUT),
        .DB_IN_ENIGMA_2_DBCON1_OUT(DB_IN_ENIGMA_2_DBCON1_OUT),
        .DB_IN_ENIGMA_3_DBCON0_OUT(DB_IN_ENIGMA_3_DBCON0_OUT),
        .DB_IN_ENIGMA_3_DBCON1_OUT(DB_IN_ENIGMA_3_DBCON1_OUT),
        .DB_IN_ENIGMA_4_DBCON0_OUT(DB_IN_ENIGMA_4_DBCON0_OUT),
        .DB_IN_ENIGMA_4_DBCON1_OUT(DB_IN_ENIGMA_4_DBCON1_OUT),
        .DB_IN_ENIGMA_5_DBCON0_OUT(DB_IN_ENIGMA_5_DBCON0_OUT),
        .DB_IN_ENIGMA_5_DBCON1_OUT(DB_IN_ENIGMA_5_DBCON1_OUT),
        .DB_IN_ENIGMA_6_DBCON0_OUT(DB_IN_ENIGMA_6_DBCON0_OUT),
        .DB_IN_ENIGMA_6_DBCON1_OUT(DB_IN_ENIGMA_6_DBCON1_OUT),
        .DB_IN_ENIGMA_7_DBCON0_OUT(DB_IN_ENIGMA_7_DBCON0_OUT),
        .DB_IN_ENIGMA_7_DBCON1_OUT(DB_IN_ENIGMA_7_DBCON1_OUT),
        .DB_IN_ENIGMA_8_DBCON0_OUT(DB_IN_ENIGMA_8_DBCON0_OUT),
        .DB_IN_ENIGMA_8_DBCON1_OUT(DB_IN_ENIGMA_8_DBCON1_OUT),
        .DB_IN_ENIGMA_9_DBCON0_OUT(DB_IN_ENIGMA_9_DBCON0_OUT),
        .DB_IN_ENIGMA_9_DBCON1_OUT(DB_IN_ENIGMA_9_DBCON1_OUT),
        .DB_IN_INPUT_REGISTER_OUT(DB_IN_INPUT_REGISTER_OUT),
        .DB_IN_INPUT_VOLTAGE_OUT(DB_IN_INPUT_VOLTAGE_OUT),
        .DB_READY_IN(DB_READY_IN),
        .DB_RESULT_RESIGER_IN(DB_RESULT_RESIGER_IN),
        .ENABLE_BRAM_A_IN(ENABLE_BRAM_A_IN),
        .ENIGMAS_DRUM_1_OUT(ENIGMAS_DRUM_1_OUT),
        .ENIGMAS_DRUM_2_OUT(ENIGMAS_DRUM_2_OUT),
        .ENIGMAS_DRUM_3_OUT(ENIGMAS_DRUM_3_OUT),
        .ENIGMAS_START_OUT(ENIGMAS_START_OUT),
        .ENIGMA_10_DRUMPOS_1_OUT(ENIGMA_10_DRUMPOS_1_OUT),
        .ENIGMA_10_DRUMPOS_2_OUT(ENIGMA_10_DRUMPOS_2_OUT),
        .ENIGMA_10_DRUMPOS_3_OUT(ENIGMA_10_DRUMPOS_3_OUT),
        .ENIGMA_11_DRUMPOS_1_OUT(ENIGMA_11_DRUMPOS_1_OUT),
        .ENIGMA_11_DRUMPOS_2_OUT(ENIGMA_11_DRUMPOS_2_OUT),
        .ENIGMA_11_DRUMPOS_3_OUT(ENIGMA_11_DRUMPOS_3_OUT),
        .ENIGMA_12_DRUMPOS_1_OUT(ENIGMA_12_DRUMPOS_1_OUT),
        .ENIGMA_12_DRUMPOS_2_OUT(ENIGMA_12_DRUMPOS_2_OUT),
        .ENIGMA_12_DRUMPOS_3_OUT(ENIGMA_12_DRUMPOS_3_OUT),
        .ENIGMA_1_DRUMPOS_1_OUT(ENIGMA_1_DRUMPOS_1_OUT),
        .ENIGMA_1_DRUMPOS_2_OUT(ENIGMA_1_DRUMPOS_2_OUT),
        .ENIGMA_1_DRUMPOS_3_OUT(ENIGMA_1_DRUMPOS_3_OUT),
        .ENIGMA_2_DRUMPOS_1_OUT(ENIGMA_2_DRUMPOS_1_OUT),
        .ENIGMA_2_DRUMPOS_2_OUT(ENIGMA_2_DRUMPOS_2_OUT),
        .ENIGMA_2_DRUMPOS_3_OUT(ENIGMA_2_DRUMPOS_3_OUT),
        .ENIGMA_3_DRUMPOS_1_OUT(ENIGMA_3_DRUMPOS_1_OUT),
        .ENIGMA_3_DRUMPOS_2_OUT(ENIGMA_3_DRUMPOS_2_OUT),
        .ENIGMA_3_DRUMPOS_3_OUT(ENIGMA_3_DRUMPOS_3_OUT),
        .ENIGMA_4_DRUMPOS_1_OUT(ENIGMA_4_DRUMPOS_1_OUT),
        .ENIGMA_4_DRUMPOS_2_OUT(ENIGMA_4_DRUMPOS_2_OUT),
        .ENIGMA_4_DRUMPOS_3_OUT(ENIGMA_4_DRUMPOS_3_OUT),
        .ENIGMA_5_DRUMPOS_1_OUT(ENIGMA_5_DRUMPOS_1_OUT),
        .ENIGMA_5_DRUMPOS_2_OUT(ENIGMA_5_DRUMPOS_2_OUT),
        .ENIGMA_5_DRUMPOS_3_OUT(ENIGMA_5_DRUMPOS_3_OUT),
        .ENIGMA_6_DRUMPOS_1_OUT(ENIGMA_6_DRUMPOS_1_OUT),
        .ENIGMA_6_DRUMPOS_2_OUT(ENIGMA_6_DRUMPOS_2_OUT),
        .ENIGMA_6_DRUMPOS_3_OUT(ENIGMA_6_DRUMPOS_3_OUT),
        .ENIGMA_7_DRUMPOS_1_OUT(ENIGMA_7_DRUMPOS_1_OUT),
        .ENIGMA_7_DRUMPOS_2_OUT(ENIGMA_7_DRUMPOS_2_OUT),
        .ENIGMA_7_DRUMPOS_3_OUT(ENIGMA_7_DRUMPOS_3_OUT),
        .ENIGMA_8_DRUMPOS_1_OUT(ENIGMA_8_DRUMPOS_1_OUT),
        .ENIGMA_8_DRUMPOS_2_OUT(ENIGMA_8_DRUMPOS_2_OUT),
        .ENIGMA_8_DRUMPOS_3_OUT(ENIGMA_8_DRUMPOS_3_OUT),
        .ENIGMA_9_DRUMPOS_1_OUT(ENIGMA_9_DRUMPOS_1_OUT),
        .ENIGMA_9_DRUMPOS_2_OUT(ENIGMA_9_DRUMPOS_2_OUT),
        .ENIGMA_9_DRUMPOS_3_OUT(ENIGMA_9_DRUMPOS_3_OUT),
        .POS_1_INDICATOR_DRUM_IN(POS_1_INDICATOR_DRUM_IN),
        .POS_2_INDICATOR_DRUM_IN(POS_2_INDICATOR_DRUM_IN),
        .POS_3_INDICATOR_DRUM_IN(POS_3_INDICATOR_DRUM_IN),
        .SR(RESET_OUT),
        .WRITE_ENABLE_BRAM_IN(WRITE_ENABLE_BRAM_IN));
endmodule

(* ORIG_REF_NAME = "turing_bombe_controller" *) 
module turing_bombe_turing_bombe_control_0_0_turing_bombe_controller
   (DATA_OUT_BRAM_A,
    SR,
    DB_IN_INPUT_VOLTAGE_OUT,
    DB_IN_INPUT_REGISTER_OUT,
    ENIGMAS_DRUM_1_OUT,
    ENIGMAS_DRUM_2_OUT,
    ENIGMAS_DRUM_3_OUT,
    ENIGMA_1_DRUMPOS_1_OUT,
    ENIGMA_1_DRUMPOS_2_OUT,
    ENIGMA_1_DRUMPOS_3_OUT,
    ENIGMA_2_DRUMPOS_1_OUT,
    ENIGMA_2_DRUMPOS_2_OUT,
    ENIGMA_2_DRUMPOS_3_OUT,
    ENIGMA_3_DRUMPOS_1_OUT,
    ENIGMA_3_DRUMPOS_2_OUT,
    ENIGMA_3_DRUMPOS_3_OUT,
    ENIGMA_4_DRUMPOS_1_OUT,
    ENIGMA_4_DRUMPOS_2_OUT,
    ENIGMA_4_DRUMPOS_3_OUT,
    ENIGMA_5_DRUMPOS_1_OUT,
    ENIGMA_5_DRUMPOS_2_OUT,
    ENIGMA_5_DRUMPOS_3_OUT,
    ENIGMA_6_DRUMPOS_1_OUT,
    ENIGMA_6_DRUMPOS_2_OUT,
    ENIGMA_6_DRUMPOS_3_OUT,
    ENIGMA_7_DRUMPOS_1_OUT,
    ENIGMA_7_DRUMPOS_2_OUT,
    ENIGMA_7_DRUMPOS_3_OUT,
    ENIGMA_8_DRUMPOS_1_OUT,
    ENIGMA_8_DRUMPOS_2_OUT,
    ENIGMA_8_DRUMPOS_3_OUT,
    ENIGMA_9_DRUMPOS_1_OUT,
    ENIGMA_9_DRUMPOS_2_OUT,
    ENIGMA_9_DRUMPOS_3_OUT,
    ENIGMA_10_DRUMPOS_1_OUT,
    ENIGMA_10_DRUMPOS_2_OUT,
    ENIGMA_10_DRUMPOS_3_OUT,
    ENIGMA_11_DRUMPOS_1_OUT,
    ENIGMA_11_DRUMPOS_2_OUT,
    ENIGMA_11_DRUMPOS_3_OUT,
    ENIGMA_12_DRUMPOS_1_OUT,
    ENIGMA_12_DRUMPOS_2_OUT,
    ENIGMA_12_DRUMPOS_3_OUT,
    DB_IN_ENIGMA_1_DBCON0_OUT,
    DB_IN_ENIGMA_1_DBCON1_OUT,
    DB_IN_ENIGMA_2_DBCON0_OUT,
    DB_IN_ENIGMA_2_DBCON1_OUT,
    DB_IN_ENIGMA_3_DBCON0_OUT,
    DB_IN_ENIGMA_3_DBCON1_OUT,
    DB_IN_ENIGMA_4_DBCON0_OUT,
    DB_IN_ENIGMA_4_DBCON1_OUT,
    DB_IN_ENIGMA_5_DBCON0_OUT,
    DB_IN_ENIGMA_5_DBCON1_OUT,
    DB_IN_ENIGMA_6_DBCON0_OUT,
    DB_IN_ENIGMA_6_DBCON1_OUT,
    DB_IN_ENIGMA_7_DBCON0_OUT,
    DB_IN_ENIGMA_7_DBCON1_OUT,
    DB_IN_ENIGMA_8_DBCON0_OUT,
    DB_IN_ENIGMA_8_DBCON1_OUT,
    DB_IN_ENIGMA_9_DBCON0_OUT,
    DB_IN_ENIGMA_9_DBCON1_OUT,
    DB_IN_ENIGMA_10_DBCON0_OUT,
    DB_IN_ENIGMA_10_DBCON1_OUT,
    DB_IN_ENIGMA_11_DBCON0_OUT,
    DB_IN_ENIGMA_11_DBCON1_OUT,
    DB_IN_ENIGMA_12_DBCON0_OUT,
    DB_IN_ENIGMA_12_DBCON1_OUT,
    ENIGMAS_START_OUT,
    CLK_IN,
    ENABLE_BRAM_A_IN,
    WRITE_ENABLE_BRAM_IN,
    ADDRESS_BRAM_A_IN,
    DATA_IN_BRAM_A,
    DB_RESULT_RESIGER_IN,
    DB_READY_IN,
    POS_1_INDICATOR_DRUM_IN,
    POS_2_INDICATOR_DRUM_IN,
    POS_3_INDICATOR_DRUM_IN);
  output [31:0]DATA_OUT_BRAM_A;
  output [0:0]SR;
  output [4:0]DB_IN_INPUT_VOLTAGE_OUT;
  output [4:0]DB_IN_INPUT_REGISTER_OUT;
  output [2:0]ENIGMAS_DRUM_1_OUT;
  output [2:0]ENIGMAS_DRUM_2_OUT;
  output [2:0]ENIGMAS_DRUM_3_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_1_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_2_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_3_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_4_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_5_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_6_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_7_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_8_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_9_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_10_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_11_DRUMPOS_3_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_1_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_2_OUT;
  output [4:0]ENIGMA_12_DRUMPOS_3_OUT;
  output [4:0]DB_IN_ENIGMA_1_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_1_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_2_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_2_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_3_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_3_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_4_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_4_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_5_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_5_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_6_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_6_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_7_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_7_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_8_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_8_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_9_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_9_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_10_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_10_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_11_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_11_DBCON1_OUT;
  output [4:0]DB_IN_ENIGMA_12_DBCON0_OUT;
  output [4:0]DB_IN_ENIGMA_12_DBCON1_OUT;
  output ENIGMAS_START_OUT;
  input CLK_IN;
  input ENABLE_BRAM_A_IN;
  input [0:0]WRITE_ENABLE_BRAM_IN;
  input [5:0]ADDRESS_BRAM_A_IN;
  input [31:0]DATA_IN_BRAM_A;
  input [25:0]DB_RESULT_RESIGER_IN;
  input DB_READY_IN;
  input [4:0]POS_1_INDICATOR_DRUM_IN;
  input [4:0]POS_2_INDICATOR_DRUM_IN;
  input [4:0]POS_3_INDICATOR_DRUM_IN;

  wire [5:0]ADDRESS_BRAM_A_IN;
  wire CLK_IN;
  wire [31:0]DATA_IN_BRAM_A;
  wire [31:0]DATA_OUT_BRAM_A;
  wire [4:0]DB_IN_ENIGMA_10_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_10_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_11_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_11_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_12_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_12_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_1_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_1_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_2_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_2_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_3_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_3_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_4_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_4_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_5_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_5_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_6_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_6_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_7_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_7_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_8_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_8_DBCON1_OUT;
  wire [4:0]DB_IN_ENIGMA_9_DBCON0_OUT;
  wire [4:0]DB_IN_ENIGMA_9_DBCON1_OUT;
  wire [4:0]DB_IN_INPUT_REGISTER_OUT;
  wire [4:0]DB_IN_INPUT_VOLTAGE_OUT;
  wire DB_READY_IN;
  wire [25:0]DB_RESULT_RESIGER_IN;
  wire ENABLE_BRAM_A_IN;
  wire [2:0]ENIGMAS_DRUM_1_OUT;
  wire [2:0]ENIGMAS_DRUM_2_OUT;
  wire [2:0]ENIGMAS_DRUM_3_OUT;
  wire ENIGMAS_START_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_10_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_11_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_12_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_1_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_2_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_3_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_4_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_5_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_6_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_7_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_8_DRUMPOS_3_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_1_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_2_OUT;
  wire [4:0]ENIGMA_9_DRUMPOS_3_OUT;
  wire \FSM_onehot_c_read_config_fsm_states[13]_i_2_n_0 ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[0] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[11] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[12] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[1] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ;
  wire \FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ;
  wire \FSM_sequential_c_fsm_state[0]_i_2_n_0 ;
  wire \FSM_sequential_c_fsm_state[0]_i_3_n_0 ;
  wire \FSM_sequential_c_fsm_state[1]_i_2_n_0 ;
  wire \FSM_sequential_c_fsm_state[1]_i_3_n_0 ;
  wire \FSM_sequential_c_fsm_state[1]_i_4_n_0 ;
  wire \FSM_sequential_c_fsm_state[1]_i_5_n_0 ;
  wire \FSM_sequential_c_fsm_state[1]_i_6_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_10_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_11_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_12_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_13_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_14_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_15_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_16_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_17_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_18_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_19_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_20_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_21_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_22_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_23_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_24_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_25_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_26_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_27_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_28_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_29_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_2_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_30_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_31_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_32_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_33_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_34_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_35_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_36_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_37_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_38_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_39_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_3_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_40_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_41_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_42_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_43_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_4_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_6_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_7_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_8_n_0 ;
  wire \FSM_sequential_c_fsm_state[2]_i_9_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_1_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_3_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_4_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_5_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_6_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_7_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_8_n_0 ;
  wire \FSM_sequential_c_fsm_state[3]_i_9_n_0 ;
  wire \FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ;
  wire [4:0]POS_1_INDICATOR_DRUM_IN;
  wire [4:0]POS_2_INDICATOR_DRUM_IN;
  wire [4:0]POS_3_INDICATOR_DRUM_IN;
  wire [0:0]SR;
  wire [0:0]WRITE_ENABLE_BRAM_IN;
  wire [5:0]c_address_bram_b;
  wire \c_address_bram_b[0]_i_2_n_0 ;
  wire \c_address_bram_b[1]_i_2_n_0 ;
  wire \c_address_bram_b[2]_i_2_n_0 ;
  wire \c_address_bram_b[3]_i_2_n_0 ;
  wire \c_address_bram_b[5]_i_1_n_0 ;
  wire \c_address_bram_b[5]_i_2_n_0 ;
  wire \c_address_bram_b[5]_i_3_n_0 ;
  wire c_bram_reset_i_1_n_0;
  wire [19:0]c_data_in_bram_b;
  wire \c_data_in_bram_b[0]_i_1_n_0 ;
  wire \c_data_in_bram_b[10]_i_1_n_0 ;
  wire \c_data_in_bram_b[11]_i_1_n_0 ;
  wire \c_data_in_bram_b[12]_i_1_n_0 ;
  wire \c_data_in_bram_b[13]_i_1_n_0 ;
  wire \c_data_in_bram_b[14]_i_1_n_0 ;
  wire \c_data_in_bram_b[15]_i_1_n_0 ;
  wire \c_data_in_bram_b[16]_i_1_n_0 ;
  wire \c_data_in_bram_b[17]_i_1_n_0 ;
  wire \c_data_in_bram_b[18]_i_1_n_0 ;
  wire \c_data_in_bram_b[19]_i_1_n_0 ;
  wire \c_data_in_bram_b[19]_i_2_n_0 ;
  wire \c_data_in_bram_b[1]_i_1_n_0 ;
  wire \c_data_in_bram_b[3]_i_1_n_0 ;
  wire \c_data_in_bram_b[4]_i_1_n_0 ;
  wire \c_data_in_bram_b[5]_i_1_n_0 ;
  wire \c_data_in_bram_b[6]_i_1_n_0 ;
  wire \c_data_in_bram_b[7]_i_1_n_0 ;
  wire \c_data_in_bram_b[8]_i_1_n_0 ;
  wire \c_data_in_bram_b[9]_i_1_n_0 ;
  wire [1:0]c_data_out_bram_b;
  wire \c_data_out_bram_b_reg_n_0_[10] ;
  wire \c_data_out_bram_b_reg_n_0_[11] ;
  wire \c_data_out_bram_b_reg_n_0_[12] ;
  wire \c_data_out_bram_b_reg_n_0_[13] ;
  wire \c_data_out_bram_b_reg_n_0_[19] ;
  wire \c_data_out_bram_b_reg_n_0_[2] ;
  wire \c_data_out_bram_b_reg_n_0_[3] ;
  wire \c_data_out_bram_b_reg_n_0_[4] ;
  wire c_db_ready_in;
  wire [25:0]c_db_result_register;
  wire \c_enigma_db_con[0][4]_i_1_n_0 ;
  wire [3:0]c_fsm_state;
  wire \c_iteration[0]_i_3_n_0 ;
  wire [14:0]c_iteration_reg;
  wire \c_iteration_reg[0]_i_2_n_0 ;
  wire \c_iteration_reg[0]_i_2_n_1 ;
  wire \c_iteration_reg[0]_i_2_n_2 ;
  wire \c_iteration_reg[0]_i_2_n_3 ;
  wire \c_iteration_reg[0]_i_2_n_4 ;
  wire \c_iteration_reg[0]_i_2_n_5 ;
  wire \c_iteration_reg[0]_i_2_n_6 ;
  wire \c_iteration_reg[0]_i_2_n_7 ;
  wire \c_iteration_reg[12]_i_1_n_2 ;
  wire \c_iteration_reg[12]_i_1_n_3 ;
  wire \c_iteration_reg[12]_i_1_n_5 ;
  wire \c_iteration_reg[12]_i_1_n_6 ;
  wire \c_iteration_reg[12]_i_1_n_7 ;
  wire \c_iteration_reg[4]_i_1_n_0 ;
  wire \c_iteration_reg[4]_i_1_n_1 ;
  wire \c_iteration_reg[4]_i_1_n_2 ;
  wire \c_iteration_reg[4]_i_1_n_3 ;
  wire \c_iteration_reg[4]_i_1_n_4 ;
  wire \c_iteration_reg[4]_i_1_n_5 ;
  wire \c_iteration_reg[4]_i_1_n_6 ;
  wire \c_iteration_reg[4]_i_1_n_7 ;
  wire \c_iteration_reg[8]_i_1_n_0 ;
  wire \c_iteration_reg[8]_i_1_n_1 ;
  wire \c_iteration_reg[8]_i_1_n_2 ;
  wire \c_iteration_reg[8]_i_1_n_3 ;
  wire \c_iteration_reg[8]_i_1_n_4 ;
  wire \c_iteration_reg[8]_i_1_n_5 ;
  wire \c_iteration_reg[8]_i_1_n_6 ;
  wire \c_iteration_reg[8]_i_1_n_7 ;
  wire [4:0]\c_pos_indicator_drum_in_reg[0]_3 ;
  wire [4:0]\c_pos_indicator_drum_in_reg[1]_4 ;
  wire [4:0]\c_pos_indicator_drum_in_reg[2]_5 ;
  wire [4:0]c_result_letter;
  wire \c_result_letter[0]_i_10_n_0 ;
  wire \c_result_letter[0]_i_11_n_0 ;
  wire \c_result_letter[0]_i_12_n_0 ;
  wire \c_result_letter[0]_i_13_n_0 ;
  wire \c_result_letter[0]_i_14_n_0 ;
  wire \c_result_letter[0]_i_15_n_0 ;
  wire \c_result_letter[0]_i_2_n_0 ;
  wire \c_result_letter[0]_i_3_n_0 ;
  wire \c_result_letter[0]_i_4_n_0 ;
  wire \c_result_letter[0]_i_5_n_0 ;
  wire \c_result_letter[0]_i_6_n_0 ;
  wire \c_result_letter[0]_i_7_n_0 ;
  wire \c_result_letter[0]_i_8_n_0 ;
  wire \c_result_letter[0]_i_9_n_0 ;
  wire \c_result_letter[1]_i_10_n_0 ;
  wire \c_result_letter[1]_i_11_n_0 ;
  wire \c_result_letter[1]_i_12_n_0 ;
  wire \c_result_letter[1]_i_13_n_0 ;
  wire \c_result_letter[1]_i_2_n_0 ;
  wire \c_result_letter[1]_i_3_n_0 ;
  wire \c_result_letter[1]_i_4_n_0 ;
  wire \c_result_letter[1]_i_5_n_0 ;
  wire \c_result_letter[1]_i_6_n_0 ;
  wire \c_result_letter[1]_i_7_n_0 ;
  wire \c_result_letter[1]_i_8_n_0 ;
  wire \c_result_letter[1]_i_9_n_0 ;
  wire \c_result_letter[2]_i_10_n_0 ;
  wire \c_result_letter[2]_i_11_n_0 ;
  wire \c_result_letter[2]_i_12_n_0 ;
  wire \c_result_letter[2]_i_13_n_0 ;
  wire \c_result_letter[2]_i_14_n_0 ;
  wire \c_result_letter[2]_i_15_n_0 ;
  wire \c_result_letter[2]_i_16_n_0 ;
  wire \c_result_letter[2]_i_17_n_0 ;
  wire \c_result_letter[2]_i_18_n_0 ;
  wire \c_result_letter[2]_i_19_n_0 ;
  wire \c_result_letter[2]_i_20_n_0 ;
  wire \c_result_letter[2]_i_21_n_0 ;
  wire \c_result_letter[2]_i_22_n_0 ;
  wire \c_result_letter[2]_i_23_n_0 ;
  wire \c_result_letter[2]_i_2_n_0 ;
  wire \c_result_letter[2]_i_3_n_0 ;
  wire \c_result_letter[2]_i_4_n_0 ;
  wire \c_result_letter[2]_i_5_n_0 ;
  wire \c_result_letter[2]_i_6_n_0 ;
  wire \c_result_letter[2]_i_7_n_0 ;
  wire \c_result_letter[2]_i_8_n_0 ;
  wire \c_result_letter[2]_i_9_n_0 ;
  wire \c_result_letter[3]_i_2_n_0 ;
  wire \c_result_letter[3]_i_3_n_0 ;
  wire \c_result_letter[3]_i_4_n_0 ;
  wire \c_result_letter[3]_i_5_n_0 ;
  wire \c_result_letter[3]_i_6_n_0 ;
  wire \c_result_letter[3]_i_7_n_0 ;
  wire \c_result_letter[3]_i_8_n_0 ;
  wire \c_result_letter[3]_i_9_n_0 ;
  wire \c_result_letter[4]_i_10_n_0 ;
  wire \c_result_letter[4]_i_11_n_0 ;
  wire \c_result_letter[4]_i_12_n_0 ;
  wire \c_result_letter[4]_i_13_n_0 ;
  wire \c_result_letter[4]_i_14_n_0 ;
  wire \c_result_letter[4]_i_15_n_0 ;
  wire \c_result_letter[4]_i_16_n_0 ;
  wire \c_result_letter[4]_i_17_n_0 ;
  wire \c_result_letter[4]_i_18_n_0 ;
  wire \c_result_letter[4]_i_19_n_0 ;
  wire \c_result_letter[4]_i_20_n_0 ;
  wire \c_result_letter[4]_i_21_n_0 ;
  wire \c_result_letter[4]_i_22_n_0 ;
  wire \c_result_letter[4]_i_23_n_0 ;
  wire \c_result_letter[4]_i_24_n_0 ;
  wire \c_result_letter[4]_i_25_n_0 ;
  wire \c_result_letter[4]_i_26_n_0 ;
  wire \c_result_letter[4]_i_27_n_0 ;
  wire \c_result_letter[4]_i_28_n_0 ;
  wire \c_result_letter[4]_i_29_n_0 ;
  wire \c_result_letter[4]_i_30_n_0 ;
  wire \c_result_letter[4]_i_31_n_0 ;
  wire \c_result_letter[4]_i_32_n_0 ;
  wire \c_result_letter[4]_i_33_n_0 ;
  wire \c_result_letter[4]_i_34_n_0 ;
  wire \c_result_letter[4]_i_4_n_0 ;
  wire \c_result_letter[4]_i_5_n_0 ;
  wire \c_result_letter[4]_i_6_n_0 ;
  wire \c_result_letter[4]_i_7_n_0 ;
  wire \c_result_letter[4]_i_8_n_0 ;
  wire \c_result_letter[4]_i_9_n_0 ;
  wire \c_result_letter_reg[4]_i_3_n_0 ;
  wire c_start_enigma_i_1_n_0;
  wire [5:0]c_vaild_result_counter_reg__0;
  wire c_write_enable_bram_b;
  wire \c_write_enable_bram_b[0]_i_1_n_0 ;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire [5:0]n_address_bram_b;
  wire [2:2]n_data_in_bram_b;
  wire [31:0]n_data_out_bram_b;
  wire \n_enigma_db_con[12]_14 ;
  wire \n_enigma_db_con[18]_15 ;
  wire [4:0]\n_enigma_db_con[19]_2 ;
  wire [4:0]\n_enigma_db_con[22]_1 ;
  wire [4:0]\n_enigma_db_con[23]_0 ;
  wire \n_enigma_db_con[6]_13 ;
  wire \n_enigmas_drum_pos[0]_6 ;
  wire \n_enigmas_drum_pos[12]_8 ;
  wire \n_enigmas_drum_pos[18]_9 ;
  wire \n_enigmas_drum_pos[24]_10 ;
  wire \n_enigmas_drum_pos[30]_11 ;
  wire \n_enigmas_drum_pos[6]_7 ;
  wire \n_enigmas_drums[0]_12 ;
  wire n_fsm_state;
  wire [3:0]n_fsm_state__0;
  wire n_iteration;
  wire n_read_config_fsm_states;
  wire n_result_letter;
  wire [4:0]p_0_in;
  wire [4:0]p_0_out;
  wire [5:0]plusOp;
  wire [3:2]\NLW_c_iteration_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_c_iteration_reg[12]_i_1_O_UNCONNECTED ;
  wire NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED;

  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_c_read_config_fsm_states[13]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(\FSM_onehot_c_read_config_fsm_states[13]_i_2_n_0 ),
        .I2(c_fsm_state[1]),
        .O(n_read_config_fsm_states));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \FSM_onehot_c_read_config_fsm_states[13]_i_2 
       (.I0(c_fsm_state[2]),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[12] ),
        .I2(\c_address_bram_b[5]_i_2_n_0 ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[11] ),
        .I4(n_fsm_state),
        .I5(c_fsm_state[0]),
        .O(\FSM_onehot_c_read_config_fsm_states[13]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_c_read_config_fsm_states_reg[0] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(n_fsm_state),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[10] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[11] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[11] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[12] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[11] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[12] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[13] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[12] ),
        .Q(n_fsm_state),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[1] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[0] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[2] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[1] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[3] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[4] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[5] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[6] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[7] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[8] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "read_enigmas_12_pos:00000000001000,read_enigmas_34_pos:00000000010000,read_enigmas_101112_db_con:10000000000000,wait_for_bram_2:00000000000100,read_enigmas_456_db_con:00100000000000,read_enigmas_789_db_con:01000000000000,read_enigmas_123_db_con:00010000000000,wait_for_bram_1:00000000000010,idle:00000000000001,read_drums_vol_reg:00001000000000,read_enigmas_910_pos:00000010000000,read_enigmas_1112_pos:00000100000000,read_enigmas_78_pos:00000001000000,read_enigmas_56_pos:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_c_read_config_fsm_states_reg[9] 
       (.C(CLK_IN),
        .CE(n_read_config_fsm_states),
        .D(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .Q(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h74777444)) 
    \FSM_sequential_c_fsm_state[0]_i_2 
       (.I0(c_fsm_state[0]),
        .I1(c_fsm_state[3]),
        .I2(c_db_ready_in),
        .I3(c_fsm_state[2]),
        .I4(c_data_out_bram_b[1]),
        .O(\FSM_sequential_c_fsm_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h45405F0F)) 
    \FSM_sequential_c_fsm_state[0]_i_3 
       (.I0(c_fsm_state[3]),
        .I1(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .I2(c_fsm_state[0]),
        .I3(c_db_ready_in),
        .I4(c_fsm_state[2]),
        .O(\FSM_sequential_c_fsm_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFBABA00001010)) 
    \FSM_sequential_c_fsm_state[1]_i_2 
       (.I0(c_fsm_state[3]),
        .I1(c_data_out_bram_b[1]),
        .I2(c_data_out_bram_b[0]),
        .I3(c_db_ready_in),
        .I4(c_fsm_state[2]),
        .I5(c_fsm_state[0]),
        .O(\FSM_sequential_c_fsm_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33300030BBBBBBBB)) 
    \FSM_sequential_c_fsm_state[1]_i_3 
       (.I0(\FSM_sequential_c_fsm_state[3]_i_3_n_0 ),
        .I1(c_fsm_state[3]),
        .I2(c_db_ready_in),
        .I3(c_fsm_state[2]),
        .I4(\FSM_sequential_c_fsm_state[1]_i_4_n_0 ),
        .I5(c_fsm_state[0]),
        .O(\FSM_sequential_c_fsm_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_c_fsm_state[1]_i_4 
       (.I0(c_iteration_reg[3]),
        .I1(c_iteration_reg[11]),
        .I2(\FSM_sequential_c_fsm_state[1]_i_5_n_0 ),
        .I3(c_iteration_reg[0]),
        .I4(c_iteration_reg[12]),
        .I5(c_iteration_reg[9]),
        .O(\FSM_sequential_c_fsm_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_c_fsm_state[1]_i_5 
       (.I0(c_iteration_reg[6]),
        .I1(c_iteration_reg[4]),
        .I2(\FSM_sequential_c_fsm_state[1]_i_6_n_0 ),
        .I3(c_iteration_reg[14]),
        .I4(c_iteration_reg[8]),
        .I5(c_iteration_reg[13]),
        .O(\FSM_sequential_c_fsm_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_c_fsm_state[1]_i_6 
       (.I0(c_iteration_reg[10]),
        .I1(c_iteration_reg[2]),
        .I2(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .I3(c_iteration_reg[1]),
        .I4(c_iteration_reg[5]),
        .I5(c_iteration_reg[7]),
        .O(\FSM_sequential_c_fsm_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30BBFFFFFC880000)) 
    \FSM_sequential_c_fsm_state[2]_i_1 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_2_n_0 ),
        .I1(c_fsm_state[3]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_3_n_0 ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .I5(c_fsm_state[2]),
        .O(n_fsm_state__0[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \FSM_sequential_c_fsm_state[2]_i_10 
       (.I0(c_iteration_reg[6]),
        .I1(c_iteration_reg[8]),
        .I2(c_iteration_reg[4]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_15_n_0 ),
        .I4(c_iteration_reg[14]),
        .I5(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_11 
       (.I0(c_db_result_register[23]),
        .I1(c_db_result_register[20]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_16_n_0 ),
        .I3(c_db_result_register[18]),
        .I4(c_db_result_register[21]),
        .I5(c_db_result_register[22]),
        .O(\FSM_sequential_c_fsm_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_12 
       (.I0(c_db_result_register[23]),
        .I1(c_db_result_register[20]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_17_n_0 ),
        .I3(c_db_result_register[18]),
        .I4(c_db_result_register[21]),
        .I5(c_db_result_register[22]),
        .O(\FSM_sequential_c_fsm_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFE9FFFEFEE8)) 
    \FSM_sequential_c_fsm_state[2]_i_13 
       (.I0(c_db_result_register[22]),
        .I1(c_db_result_register[23]),
        .I2(c_db_result_register[21]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_18_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(\FSM_sequential_c_fsm_state[2]_i_19_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBF83FF3FFF3FFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_14 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_20_n_0 ),
        .I1(c_db_result_register[22]),
        .I2(c_db_result_register[21]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_21_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(c_db_result_register[23]),
        .O(\FSM_sequential_c_fsm_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \FSM_sequential_c_fsm_state[2]_i_15 
       (.I0(c_iteration_reg[1]),
        .I1(c_iteration_reg[2]),
        .I2(c_iteration_reg[5]),
        .I3(c_iteration_reg[10]),
        .I4(c_iteration_reg[7]),
        .I5(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_16 
       (.I0(c_db_result_register[17]),
        .I1(c_db_result_register[15]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_22_n_0 ),
        .I3(c_db_result_register[14]),
        .I4(c_db_result_register[16]),
        .I5(c_db_result_register[19]),
        .O(\FSM_sequential_c_fsm_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_17 
       (.I0(c_db_result_register[17]),
        .I1(c_db_result_register[15]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_23_n_0 ),
        .I3(c_db_result_register[14]),
        .I4(c_db_result_register[16]),
        .I5(c_db_result_register[19]),
        .O(\FSM_sequential_c_fsm_state[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_c_fsm_state[2]_i_18 
       (.I0(c_db_result_register[19]),
        .I1(\FSM_sequential_c_fsm_state[2]_i_24_n_0 ),
        .I2(c_db_result_register[18]),
        .O(\FSM_sequential_c_fsm_state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFE9FFFEFEE8)) 
    \FSM_sequential_c_fsm_state[2]_i_19 
       (.I0(c_db_result_register[18]),
        .I1(c_db_result_register[19]),
        .I2(c_db_result_register[17]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_25_n_0 ),
        .I4(c_db_result_register[16]),
        .I5(\FSM_sequential_c_fsm_state[2]_i_26_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_2 
       (.I0(c_iteration_reg[9]),
        .I1(c_iteration_reg[12]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_4_n_0 ),
        .I3(c_iteration_reg[11]),
        .I4(c_iteration_reg[3]),
        .I5(c_fsm_state[2]),
        .O(\FSM_sequential_c_fsm_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF83FF3FFF3FFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_20 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_27_n_0 ),
        .I1(c_db_result_register[18]),
        .I2(c_db_result_register[17]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_28_n_0 ),
        .I4(c_db_result_register[16]),
        .I5(c_db_result_register[19]),
        .O(\FSM_sequential_c_fsm_state[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_c_fsm_state[2]_i_21 
       (.I0(c_db_result_register[19]),
        .I1(\FSM_sequential_c_fsm_state[2]_i_29_n_0 ),
        .I2(c_db_result_register[18]),
        .O(\FSM_sequential_c_fsm_state[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_22 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[11]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_30_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .I5(c_db_result_register[13]),
        .O(\FSM_sequential_c_fsm_state[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_23 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[11]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_31_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .I5(c_db_result_register[13]),
        .O(\FSM_sequential_c_fsm_state[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_24 
       (.I0(c_db_result_register[16]),
        .I1(c_db_result_register[14]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_32_n_0 ),
        .I3(c_db_result_register[13]),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[17]),
        .O(\FSM_sequential_c_fsm_state[2]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_25 
       (.I0(c_db_result_register[14]),
        .I1(\FSM_sequential_c_fsm_state[2]_i_32_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .O(\FSM_sequential_c_fsm_state[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFE9FFFEFEE8)) 
    \FSM_sequential_c_fsm_state[2]_i_26 
       (.I0(c_db_result_register[15]),
        .I1(c_db_result_register[14]),
        .I2(c_db_result_register[13]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_33_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(\FSM_sequential_c_fsm_state[2]_i_34_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBF83FF3FFF3FFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_27 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_35_n_0 ),
        .I1(c_db_result_register[15]),
        .I2(c_db_result_register[13]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_36_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(c_db_result_register[14]),
        .O(\FSM_sequential_c_fsm_state[2]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_28 
       (.I0(c_db_result_register[14]),
        .I1(\FSM_sequential_c_fsm_state[2]_i_37_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .O(\FSM_sequential_c_fsm_state[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_29 
       (.I0(c_db_result_register[16]),
        .I1(c_db_result_register[14]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_37_n_0 ),
        .I3(c_db_result_register[13]),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[17]),
        .O(\FSM_sequential_c_fsm_state[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCDC80000CDC8FFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_3 
       (.I0(c_iteration_reg[9]),
        .I1(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .I2(c_iteration_reg[3]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_6_n_0 ),
        .I4(c_fsm_state[2]),
        .I5(c_db_ready_in),
        .O(\FSM_sequential_c_fsm_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_30 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_38_n_0 ),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[7]),
        .I5(c_db_result_register[8]),
        .O(\FSM_sequential_c_fsm_state[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_31 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_39_n_0 ),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[7]),
        .I5(c_db_result_register[8]),
        .O(\FSM_sequential_c_fsm_state[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_32 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[9]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_40_n_0 ),
        .I3(c_db_result_register[8]),
        .I4(c_db_result_register[11]),
        .I5(c_db_result_register[12]),
        .O(\FSM_sequential_c_fsm_state[2]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_33 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_40_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .O(\FSM_sequential_c_fsm_state[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFE9FFFEFEE8)) 
    \FSM_sequential_c_fsm_state[2]_i_34 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[11]),
        .I2(c_db_result_register[9]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_40_n_0 ),
        .I4(c_db_result_register[8]),
        .I5(\FSM_sequential_c_fsm_state[2]_i_41_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBF83FF3FFF3FFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_35 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_42_n_0 ),
        .I1(c_db_result_register[10]),
        .I2(c_db_result_register[9]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_43_n_0 ),
        .I4(c_db_result_register[8]),
        .I5(c_db_result_register[11]),
        .O(\FSM_sequential_c_fsm_state[2]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_36 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_43_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .O(\FSM_sequential_c_fsm_state[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_37 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[9]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_43_n_0 ),
        .I3(c_db_result_register[8]),
        .I4(c_db_result_register[11]),
        .I5(c_db_result_register[12]),
        .O(\FSM_sequential_c_fsm_state[2]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_c_fsm_state[2]_i_38 
       (.I0(c_db_result_register[2]),
        .I1(c_db_result_register[3]),
        .O(\FSM_sequential_c_fsm_state[2]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_c_fsm_state[2]_i_39 
       (.I0(c_db_result_register[2]),
        .I1(c_db_result_register[3]),
        .O(\FSM_sequential_c_fsm_state[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_4 
       (.I0(c_iteration_reg[13]),
        .I1(c_iteration_reg[8]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_7_n_0 ),
        .I3(c_iteration_reg[4]),
        .I4(c_iteration_reg[6]),
        .I5(c_iteration_reg[0]),
        .O(\FSM_sequential_c_fsm_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_c_fsm_state[2]_i_40 
       (.I0(c_db_result_register[7]),
        .I1(c_db_result_register[4]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[5]),
        .I5(c_db_result_register[6]),
        .O(\FSM_sequential_c_fsm_state[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE9)) 
    \FSM_sequential_c_fsm_state[2]_i_41 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[7]),
        .I2(c_db_result_register[5]),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[3]),
        .I5(c_db_result_register[2]),
        .O(\FSM_sequential_c_fsm_state[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h977F7FFF7FFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_42 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[2]),
        .I4(c_db_result_register[4]),
        .I5(c_db_result_register[7]),
        .O(\FSM_sequential_c_fsm_state[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_43 
       (.I0(c_db_result_register[7]),
        .I1(c_db_result_register[4]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[5]),
        .I5(c_db_result_register[6]),
        .O(\FSM_sequential_c_fsm_state[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \FSM_sequential_c_fsm_state[2]_i_6 
       (.I0(c_iteration_reg[12]),
        .I1(c_iteration_reg[11]),
        .I2(c_iteration_reg[13]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_10_n_0 ),
        .I4(c_iteration_reg[0]),
        .I5(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_c_fsm_state[2]_i_7 
       (.I0(c_iteration_reg[7]),
        .I1(c_iteration_reg[5]),
        .I2(c_iteration_reg[2]),
        .I3(c_iteration_reg[1]),
        .I4(c_iteration_reg[10]),
        .I5(c_iteration_reg[14]),
        .O(\FSM_sequential_c_fsm_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFBCFFC3BFBCFCC0)) 
    \FSM_sequential_c_fsm_state[2]_i_8 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_11_n_0 ),
        .I1(c_db_result_register[1]),
        .I2(c_db_result_register[25]),
        .I3(\FSM_sequential_c_fsm_state[2]_i_12_n_0 ),
        .I4(c_db_result_register[24]),
        .I5(\FSM_sequential_c_fsm_state[2]_i_13_n_0 ),
        .O(\FSM_sequential_c_fsm_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8F3B8F3F3FFF3CC)) 
    \FSM_sequential_c_fsm_state[2]_i_9 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_14_n_0 ),
        .I1(c_db_result_register[1]),
        .I2(\FSM_sequential_c_fsm_state[2]_i_11_n_0 ),
        .I3(c_db_result_register[25]),
        .I4(\FSM_sequential_c_fsm_state[2]_i_12_n_0 ),
        .I5(c_db_result_register[24]),
        .O(\FSM_sequential_c_fsm_state[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h5FFEFFFF)) 
    \FSM_sequential_c_fsm_state[3]_i_1 
       (.I0(c_fsm_state[0]),
        .I1(n_fsm_state),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[3]),
        .I4(c_fsm_state[1]),
        .O(\FSM_sequential_c_fsm_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7474FFFFFF000000)) 
    \FSM_sequential_c_fsm_state[3]_i_2 
       (.I0(c_fsm_state[2]),
        .I1(c_fsm_state[0]),
        .I2(\FSM_sequential_c_fsm_state[3]_i_3_n_0 ),
        .I3(\FSM_sequential_c_fsm_state[3]_i_4_n_0 ),
        .I4(c_fsm_state[1]),
        .I5(c_fsm_state[3]),
        .O(n_fsm_state__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_c_fsm_state[3]_i_3 
       (.I0(c_iteration_reg[9]),
        .I1(c_iteration_reg[12]),
        .I2(\FSM_sequential_c_fsm_state[3]_i_5_n_0 ),
        .I3(c_iteration_reg[11]),
        .I4(c_iteration_reg[3]),
        .I5(c_fsm_state[2]),
        .O(\FSM_sequential_c_fsm_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A08000000000)) 
    \FSM_sequential_c_fsm_state[3]_i_4 
       (.I0(c_fsm_state[2]),
        .I1(c_iteration_reg[9]),
        .I2(\c_result_letter_reg[4]_i_3_n_0 ),
        .I3(c_iteration_reg[3]),
        .I4(\FSM_sequential_c_fsm_state[3]_i_6_n_0 ),
        .I5(c_fsm_state[0]),
        .O(\FSM_sequential_c_fsm_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_c_fsm_state[3]_i_5 
       (.I0(c_iteration_reg[13]),
        .I1(c_iteration_reg[8]),
        .I2(\FSM_sequential_c_fsm_state[3]_i_7_n_0 ),
        .I3(c_iteration_reg[4]),
        .I4(c_iteration_reg[6]),
        .I5(c_iteration_reg[0]),
        .O(\FSM_sequential_c_fsm_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \FSM_sequential_c_fsm_state[3]_i_6 
       (.I0(c_iteration_reg[12]),
        .I1(c_iteration_reg[11]),
        .I2(c_iteration_reg[13]),
        .I3(\FSM_sequential_c_fsm_state[3]_i_8_n_0 ),
        .I4(c_iteration_reg[0]),
        .I5(\c_result_letter_reg[4]_i_3_n_0 ),
        .O(\FSM_sequential_c_fsm_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_c_fsm_state[3]_i_7 
       (.I0(c_iteration_reg[7]),
        .I1(c_iteration_reg[5]),
        .I2(c_iteration_reg[1]),
        .I3(c_iteration_reg[2]),
        .I4(c_iteration_reg[10]),
        .I5(c_iteration_reg[14]),
        .O(\FSM_sequential_c_fsm_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \FSM_sequential_c_fsm_state[3]_i_8 
       (.I0(c_iteration_reg[6]),
        .I1(c_iteration_reg[8]),
        .I2(c_iteration_reg[4]),
        .I3(\FSM_sequential_c_fsm_state[3]_i_9_n_0 ),
        .I4(c_iteration_reg[14]),
        .I5(\c_result_letter_reg[4]_i_3_n_0 ),
        .O(\FSM_sequential_c_fsm_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \FSM_sequential_c_fsm_state[3]_i_9 
       (.I0(c_iteration_reg[1]),
        .I1(c_iteration_reg[2]),
        .I2(c_iteration_reg[5]),
        .I3(c_iteration_reg[10]),
        .I4(c_iteration_reg[7]),
        .I5(\c_result_letter_reg[4]_i_3_n_0 ),
        .O(\FSM_sequential_c_fsm_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start_enigmas_with_turn_impuls:0101,wait_for_diagonalboard_without_turn:0100,wait_for_diagonalboard_with_turn:0110,wait_for_bram_write_ready_1:1100,reset:0001,write_ready_to_bram:1011,start_enigmas_without_turn_impuls:0011,read_config:0010,wait_for_bram_write_result_2:1010,wait_for_bram_write_ready_3:1110,wait_for_bram_write_result_1:1001,wait_for_bram_write_ready_2:1101,write_result_to_bram:1000,check_result:0111,idle:0000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_fsm_state_reg[0] 
       (.C(CLK_IN),
        .CE(\FSM_sequential_c_fsm_state[3]_i_1_n_0 ),
        .D(n_fsm_state__0[0]),
        .Q(c_fsm_state[0]),
        .R(SR));
  MUXF7 \FSM_sequential_c_fsm_state_reg[0]_i_1 
       (.I0(\FSM_sequential_c_fsm_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_c_fsm_state[0]_i_3_n_0 ),
        .O(n_fsm_state__0[0]),
        .S(c_fsm_state[1]));
  (* FSM_ENCODED_STATES = "start_enigmas_with_turn_impuls:0101,wait_for_diagonalboard_without_turn:0100,wait_for_diagonalboard_with_turn:0110,wait_for_bram_write_ready_1:1100,reset:0001,write_ready_to_bram:1011,start_enigmas_without_turn_impuls:0011,read_config:0010,wait_for_bram_write_result_2:1010,wait_for_bram_write_ready_3:1110,wait_for_bram_write_result_1:1001,wait_for_bram_write_ready_2:1101,write_result_to_bram:1000,check_result:0111,idle:0000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_fsm_state_reg[1] 
       (.C(CLK_IN),
        .CE(\FSM_sequential_c_fsm_state[3]_i_1_n_0 ),
        .D(n_fsm_state__0[1]),
        .Q(c_fsm_state[1]),
        .R(SR));
  MUXF7 \FSM_sequential_c_fsm_state_reg[1]_i_1 
       (.I0(\FSM_sequential_c_fsm_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_c_fsm_state[1]_i_3_n_0 ),
        .O(n_fsm_state__0[1]),
        .S(c_fsm_state[1]));
  (* FSM_ENCODED_STATES = "start_enigmas_with_turn_impuls:0101,wait_for_diagonalboard_without_turn:0100,wait_for_diagonalboard_with_turn:0110,wait_for_bram_write_ready_1:1100,reset:0001,write_ready_to_bram:1011,start_enigmas_without_turn_impuls:0011,read_config:0010,wait_for_bram_write_result_2:1010,wait_for_bram_write_ready_3:1110,wait_for_bram_write_result_1:1001,wait_for_bram_write_ready_2:1101,write_result_to_bram:1000,check_result:0111,idle:0000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_fsm_state_reg[2] 
       (.C(CLK_IN),
        .CE(\FSM_sequential_c_fsm_state[3]_i_1_n_0 ),
        .D(n_fsm_state__0[2]),
        .Q(c_fsm_state[2]),
        .R(SR));
  MUXF7 \FSM_sequential_c_fsm_state_reg[2]_i_5 
       (.I0(\FSM_sequential_c_fsm_state[2]_i_8_n_0 ),
        .I1(\FSM_sequential_c_fsm_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_c_fsm_state_reg[2]_i_5_n_0 ),
        .S(c_db_result_register[0]));
  (* FSM_ENCODED_STATES = "start_enigmas_with_turn_impuls:0101,wait_for_diagonalboard_without_turn:0100,wait_for_diagonalboard_with_turn:0110,wait_for_bram_write_ready_1:1100,reset:0001,write_ready_to_bram:1011,start_enigmas_without_turn_impuls:0011,read_config:0010,wait_for_bram_write_result_2:1010,wait_for_bram_write_ready_3:1110,wait_for_bram_write_result_1:1001,wait_for_bram_write_ready_2:1101,write_result_to_bram:1000,check_result:0111,idle:0000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_fsm_state_reg[3] 
       (.C(CLK_IN),
        .CE(\FSM_sequential_c_fsm_state[3]_i_1_n_0 ),
        .D(n_fsm_state__0[3]),
        .Q(c_fsm_state[3]),
        .R(SR));
  LUT4 #(
    .INIT(16'h3808)) 
    \c_address_bram_b[0]_i_1 
       (.I0(\c_address_bram_b[0]_i_2_n_0 ),
        .I1(c_fsm_state[1]),
        .I2(c_fsm_state[3]),
        .I3(g0_b0_n_0),
        .O(n_address_bram_b[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_address_bram_b[0]_i_2 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[0] ),
        .I4(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .I5(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .O(\c_address_bram_b[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \c_address_bram_b[1]_i_1 
       (.I0(\c_address_bram_b[1]_i_2_n_0 ),
        .I1(c_fsm_state[1]),
        .I2(c_fsm_state[3]),
        .I3(g0_b1_n_0),
        .O(n_address_bram_b[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_address_bram_b[1]_i_2 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[1] ),
        .I4(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .I5(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .O(\c_address_bram_b[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \c_address_bram_b[2]_i_1 
       (.I0(\c_address_bram_b[2]_i_2_n_0 ),
        .I1(c_fsm_state[1]),
        .I2(c_fsm_state[3]),
        .I3(g0_b2_n_0),
        .O(n_address_bram_b[2]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \c_address_bram_b[2]_i_2 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .I4(c_fsm_state[3]),
        .O(\c_address_bram_b[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \c_address_bram_b[3]_i_1 
       (.I0(\c_address_bram_b[3]_i_2_n_0 ),
        .I1(c_fsm_state[1]),
        .I2(c_fsm_state[3]),
        .I3(g0_b3_n_0),
        .O(n_address_bram_b[3]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \c_address_bram_b[3]_i_2 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .I4(c_fsm_state[3]),
        .O(\c_address_bram_b[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A0004F)) 
    \c_address_bram_b[5]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(\c_address_bram_b[5]_i_2_n_0 ),
        .I2(c_fsm_state[1]),
        .I3(c_fsm_state[2]),
        .I4(c_fsm_state[0]),
        .O(\c_address_bram_b[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_address_bram_b[5]_i_2 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .I2(\c_address_bram_b[5]_i_3_n_0 ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ),
        .I4(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .I5(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .O(\c_address_bram_b[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_address_bram_b[5]_i_3 
       (.I0(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .I1(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[0] ),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ),
        .I3(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[2] ),
        .I4(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[1] ),
        .I5(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .O(\c_address_bram_b[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[0] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[0]),
        .Q(c_address_bram_b[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[1] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[1]),
        .Q(c_address_bram_b[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[2] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[2]),
        .Q(c_address_bram_b[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[3] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[3]),
        .Q(c_address_bram_b[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[4] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[4]),
        .Q(c_address_bram_b[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_address_bram_b_reg[5] 
       (.C(CLK_IN),
        .CE(\c_address_bram_b[5]_i_1_n_0 ),
        .D(n_address_bram_b[5]),
        .Q(c_address_bram_b[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    c_bram_reset_i_1
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[0]),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[1]),
        .O(c_bram_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    c_bram_reset_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .D(c_bram_reset_i_1_n_0),
        .Q(SR),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[0]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[0]_3 [0]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[10]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[2]_5 [0]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[11]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[2]_5 [1]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[12]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[2]_5 [2]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[13]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[2]_5 [3]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[14]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[2]_5 [4]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[15]_i_1 
       (.I0(c_result_letter[0]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[16]_i_1 
       (.I0(c_result_letter[1]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[17]_i_1 
       (.I0(c_result_letter[2]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[18]_i_1 
       (.I0(c_result_letter[3]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0900)) 
    \c_data_in_bram_b[19]_i_1 
       (.I0(c_fsm_state[1]),
        .I1(c_fsm_state[0]),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[3]),
        .O(\c_data_in_bram_b[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[19]_i_2 
       (.I0(c_result_letter[4]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[1]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[0]_3 [1]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_data_in_bram_b[2]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[0]_3 [2]),
        .I1(c_fsm_state[0]),
        .O(n_data_in_bram_b));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[3]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[0]_3 [3]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[4]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[0]_3 [4]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[5]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[1]_4 [0]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[6]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[1]_4 [1]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[7]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[1]_4 [2]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[8]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[1]_4 [3]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_data_in_bram_b[9]_i_1 
       (.I0(\c_pos_indicator_drum_in_reg[1]_4 [4]),
        .I1(c_fsm_state[1]),
        .O(\c_data_in_bram_b[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[0] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[0]_i_1_n_0 ),
        .Q(c_data_in_bram_b[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[10] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[10]_i_1_n_0 ),
        .Q(c_data_in_bram_b[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[11] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[11]_i_1_n_0 ),
        .Q(c_data_in_bram_b[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[12] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[12]_i_1_n_0 ),
        .Q(c_data_in_bram_b[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[13] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[13]_i_1_n_0 ),
        .Q(c_data_in_bram_b[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[14] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[14]_i_1_n_0 ),
        .Q(c_data_in_bram_b[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[15] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[15]_i_1_n_0 ),
        .Q(c_data_in_bram_b[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[16] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[16]_i_1_n_0 ),
        .Q(c_data_in_bram_b[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[17] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[17]_i_1_n_0 ),
        .Q(c_data_in_bram_b[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[18] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[18]_i_1_n_0 ),
        .Q(c_data_in_bram_b[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[19] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[19]_i_2_n_0 ),
        .Q(c_data_in_bram_b[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[1] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[1]_i_1_n_0 ),
        .Q(c_data_in_bram_b[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[2] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(n_data_in_bram_b),
        .Q(c_data_in_bram_b[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[3] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[3]_i_1_n_0 ),
        .Q(c_data_in_bram_b[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[4] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[4]_i_1_n_0 ),
        .Q(c_data_in_bram_b[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[5] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[5]_i_1_n_0 ),
        .Q(c_data_in_bram_b[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[6] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[6]_i_1_n_0 ),
        .Q(c_data_in_bram_b[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[7] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[7]_i_1_n_0 ),
        .Q(c_data_in_bram_b[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[8] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[8]_i_1_n_0 ),
        .Q(c_data_in_bram_b[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_in_bram_b_reg[9] 
       (.C(CLK_IN),
        .CE(\c_data_in_bram_b[19]_i_1_n_0 ),
        .D(\c_data_in_bram_b[9]_i_1_n_0 ),
        .Q(c_data_in_bram_b[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[0]),
        .Q(c_data_out_bram_b[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[10]),
        .Q(\c_data_out_bram_b_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[11]),
        .Q(\c_data_out_bram_b_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[12] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[12]),
        .Q(\c_data_out_bram_b_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[13] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[13]),
        .Q(\c_data_out_bram_b_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[14] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[14]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[15] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[15]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[16] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[16]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[17] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[17]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[18] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[18]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[19] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[19]),
        .Q(\c_data_out_bram_b_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[1]),
        .Q(c_data_out_bram_b[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[20] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[20]),
        .Q(\n_enigma_db_con[22]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[21] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[21]),
        .Q(\n_enigma_db_con[22]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[22] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[22]),
        .Q(\n_enigma_db_con[22]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[23] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[23]),
        .Q(\n_enigma_db_con[22]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[24] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[24]),
        .Q(\n_enigma_db_con[22]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[25] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[25]),
        .Q(\n_enigma_db_con[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[26] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[26]),
        .Q(\n_enigma_db_con[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[27] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[27]),
        .Q(\n_enigma_db_con[23]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[28] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[28]),
        .Q(\n_enigma_db_con[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[29] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[29]),
        .Q(\n_enigma_db_con[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[2]),
        .Q(\c_data_out_bram_b_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[3]),
        .Q(\c_data_out_bram_b_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[4]),
        .Q(\c_data_out_bram_b_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[5]),
        .Q(\n_enigma_db_con[19]_2 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[6]),
        .Q(\n_enigma_db_con[19]_2 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[7]),
        .Q(\n_enigma_db_con[19]_2 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[8]),
        .Q(\n_enigma_db_con[19]_2 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_data_out_bram_b_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(n_data_out_bram_b[9]),
        .Q(\n_enigma_db_con[19]_2 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    c_db_ready_in_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_READY_IN),
        .Q(c_db_ready_in),
        .R(SR));
  FDRE \c_db_result_register_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[0]),
        .Q(c_db_result_register[0]),
        .R(SR));
  FDRE \c_db_result_register_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[10]),
        .Q(c_db_result_register[10]),
        .R(SR));
  FDRE \c_db_result_register_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[11]),
        .Q(c_db_result_register[11]),
        .R(SR));
  FDRE \c_db_result_register_reg[12] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[12]),
        .Q(c_db_result_register[12]),
        .R(SR));
  FDRE \c_db_result_register_reg[13] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[13]),
        .Q(c_db_result_register[13]),
        .R(SR));
  FDRE \c_db_result_register_reg[14] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[14]),
        .Q(c_db_result_register[14]),
        .R(SR));
  FDRE \c_db_result_register_reg[15] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[15]),
        .Q(c_db_result_register[15]),
        .R(SR));
  FDRE \c_db_result_register_reg[16] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[16]),
        .Q(c_db_result_register[16]),
        .R(SR));
  FDRE \c_db_result_register_reg[17] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[17]),
        .Q(c_db_result_register[17]),
        .R(SR));
  FDRE \c_db_result_register_reg[18] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[18]),
        .Q(c_db_result_register[18]),
        .R(SR));
  FDRE \c_db_result_register_reg[19] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[19]),
        .Q(c_db_result_register[19]),
        .R(SR));
  FDRE \c_db_result_register_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[1]),
        .Q(c_db_result_register[1]),
        .R(SR));
  FDRE \c_db_result_register_reg[20] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[20]),
        .Q(c_db_result_register[20]),
        .R(SR));
  FDRE \c_db_result_register_reg[21] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[21]),
        .Q(c_db_result_register[21]),
        .R(SR));
  FDRE \c_db_result_register_reg[22] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[22]),
        .Q(c_db_result_register[22]),
        .R(SR));
  FDRE \c_db_result_register_reg[23] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[23]),
        .Q(c_db_result_register[23]),
        .R(SR));
  FDRE \c_db_result_register_reg[24] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[24]),
        .Q(c_db_result_register[24]),
        .R(SR));
  FDRE \c_db_result_register_reg[25] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[25]),
        .Q(c_db_result_register[25]),
        .R(SR));
  FDRE \c_db_result_register_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[2]),
        .Q(c_db_result_register[2]),
        .R(SR));
  FDRE \c_db_result_register_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[3]),
        .Q(c_db_result_register[3]),
        .R(SR));
  FDRE \c_db_result_register_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[4]),
        .Q(c_db_result_register[4]),
        .R(SR));
  FDRE \c_db_result_register_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[5]),
        .Q(c_db_result_register[5]),
        .R(SR));
  FDRE \c_db_result_register_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[6]),
        .Q(c_db_result_register[6]),
        .R(SR));
  FDRE \c_db_result_register_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[7]),
        .Q(c_db_result_register[7]),
        .R(SR));
  FDRE \c_db_result_register_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[8]),
        .Q(c_db_result_register[8]),
        .R(SR));
  FDRE \c_db_result_register_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(DB_RESULT_RESIGER_IN[9]),
        .Q(c_db_result_register[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigma_db_con[0][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[10] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\c_enigma_db_con[0][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigma_db_con[12][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[12] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigma_db_con[12]_14 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigma_db_con[18][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(n_fsm_state),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigma_db_con[18]_15 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigma_db_con[6][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[11] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigma_db_con[6]_13 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[0][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(c_data_out_bram_b[0]),
        .Q(DB_IN_ENIGMA_1_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[0][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(c_data_out_bram_b[1]),
        .Q(DB_IN_ENIGMA_1_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[0][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(DB_IN_ENIGMA_1_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[0][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(DB_IN_ENIGMA_1_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[0][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(DB_IN_ENIGMA_1_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[10][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(DB_IN_ENIGMA_6_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[10][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(DB_IN_ENIGMA_6_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[10][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(DB_IN_ENIGMA_6_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[10][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(DB_IN_ENIGMA_6_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[10][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(DB_IN_ENIGMA_6_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[11][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(DB_IN_ENIGMA_6_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[11][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(DB_IN_ENIGMA_6_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[11][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(DB_IN_ENIGMA_6_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[11][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(DB_IN_ENIGMA_6_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[11][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(DB_IN_ENIGMA_6_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[12][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(c_data_out_bram_b[0]),
        .Q(DB_IN_ENIGMA_7_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[12][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(c_data_out_bram_b[1]),
        .Q(DB_IN_ENIGMA_7_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[12][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(DB_IN_ENIGMA_7_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[12][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(DB_IN_ENIGMA_7_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[12][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(DB_IN_ENIGMA_7_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[13][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(DB_IN_ENIGMA_7_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[13][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(DB_IN_ENIGMA_7_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[13][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(DB_IN_ENIGMA_7_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[13][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(DB_IN_ENIGMA_7_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[13][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(DB_IN_ENIGMA_7_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[14][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(DB_IN_ENIGMA_8_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[14][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(DB_IN_ENIGMA_8_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[14][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(DB_IN_ENIGMA_8_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[14][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(DB_IN_ENIGMA_8_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[14][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(p_0_in[0]),
        .Q(DB_IN_ENIGMA_8_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[15][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(p_0_in[1]),
        .Q(DB_IN_ENIGMA_8_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[15][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(p_0_in[2]),
        .Q(DB_IN_ENIGMA_8_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[15][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(p_0_in[3]),
        .Q(DB_IN_ENIGMA_8_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[15][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(p_0_in[4]),
        .Q(DB_IN_ENIGMA_8_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[15][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(DB_IN_ENIGMA_8_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[16][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(DB_IN_ENIGMA_9_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[16][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(DB_IN_ENIGMA_9_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[16][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(DB_IN_ENIGMA_9_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[16][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(DB_IN_ENIGMA_9_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[16][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(DB_IN_ENIGMA_9_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[17][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(DB_IN_ENIGMA_9_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[17][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(DB_IN_ENIGMA_9_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[17][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(DB_IN_ENIGMA_9_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[17][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(DB_IN_ENIGMA_9_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[17][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[12]_14 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(DB_IN_ENIGMA_9_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[18][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(c_data_out_bram_b[0]),
        .Q(DB_IN_ENIGMA_10_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[18][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(c_data_out_bram_b[1]),
        .Q(DB_IN_ENIGMA_10_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[18][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(DB_IN_ENIGMA_10_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[18][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(DB_IN_ENIGMA_10_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[18][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(DB_IN_ENIGMA_10_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[19][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(DB_IN_ENIGMA_10_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[19][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(DB_IN_ENIGMA_10_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[19][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(DB_IN_ENIGMA_10_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[19][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(DB_IN_ENIGMA_10_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[19][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(DB_IN_ENIGMA_10_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[1][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(DB_IN_ENIGMA_1_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[1][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(DB_IN_ENIGMA_1_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[1][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(DB_IN_ENIGMA_1_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[1][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(DB_IN_ENIGMA_1_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[1][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(DB_IN_ENIGMA_1_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[20][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(DB_IN_ENIGMA_11_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[20][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(DB_IN_ENIGMA_11_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[20][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(DB_IN_ENIGMA_11_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[20][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(DB_IN_ENIGMA_11_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[20][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(p_0_in[0]),
        .Q(DB_IN_ENIGMA_11_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[21][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(p_0_in[1]),
        .Q(DB_IN_ENIGMA_11_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[21][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(p_0_in[2]),
        .Q(DB_IN_ENIGMA_11_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[21][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(p_0_in[3]),
        .Q(DB_IN_ENIGMA_11_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[21][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(p_0_in[4]),
        .Q(DB_IN_ENIGMA_11_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[21][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(DB_IN_ENIGMA_11_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[22][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(DB_IN_ENIGMA_12_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[22][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(DB_IN_ENIGMA_12_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[22][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(DB_IN_ENIGMA_12_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[22][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(DB_IN_ENIGMA_12_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[22][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(DB_IN_ENIGMA_12_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[23][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(DB_IN_ENIGMA_12_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[23][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(DB_IN_ENIGMA_12_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[23][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(DB_IN_ENIGMA_12_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[23][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(DB_IN_ENIGMA_12_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[23][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[18]_15 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(DB_IN_ENIGMA_12_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[2][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(DB_IN_ENIGMA_2_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[2][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(DB_IN_ENIGMA_2_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[2][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(DB_IN_ENIGMA_2_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[2][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(DB_IN_ENIGMA_2_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[2][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(DB_IN_ENIGMA_2_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[3][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(DB_IN_ENIGMA_2_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[3][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(DB_IN_ENIGMA_2_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[3][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(DB_IN_ENIGMA_2_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[3][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(DB_IN_ENIGMA_2_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[3][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(DB_IN_ENIGMA_2_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[4][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(DB_IN_ENIGMA_3_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[4][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(DB_IN_ENIGMA_3_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[4][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(DB_IN_ENIGMA_3_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[4][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(DB_IN_ENIGMA_3_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[4][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(DB_IN_ENIGMA_3_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[5][0] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(DB_IN_ENIGMA_3_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[5][1] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(DB_IN_ENIGMA_3_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[5][2] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(DB_IN_ENIGMA_3_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[5][3] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(DB_IN_ENIGMA_3_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[5][4] 
       (.C(CLK_IN),
        .CE(\c_enigma_db_con[0][4]_i_1_n_0 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(DB_IN_ENIGMA_3_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[6][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(c_data_out_bram_b[0]),
        .Q(DB_IN_ENIGMA_4_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[6][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(c_data_out_bram_b[1]),
        .Q(DB_IN_ENIGMA_4_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[6][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(DB_IN_ENIGMA_4_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[6][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(DB_IN_ENIGMA_4_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[6][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(DB_IN_ENIGMA_4_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[7][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(DB_IN_ENIGMA_4_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[7][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(DB_IN_ENIGMA_4_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[7][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(DB_IN_ENIGMA_4_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[7][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(DB_IN_ENIGMA_4_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[7][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(DB_IN_ENIGMA_4_DBCON1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[8][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(DB_IN_ENIGMA_5_DBCON0_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[8][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(DB_IN_ENIGMA_5_DBCON0_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[8][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(DB_IN_ENIGMA_5_DBCON0_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[8][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(DB_IN_ENIGMA_5_DBCON0_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[8][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(p_0_in[0]),
        .Q(DB_IN_ENIGMA_5_DBCON0_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[9][0] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(p_0_in[1]),
        .Q(DB_IN_ENIGMA_5_DBCON1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[9][1] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(p_0_in[2]),
        .Q(DB_IN_ENIGMA_5_DBCON1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[9][2] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(p_0_in[3]),
        .Q(DB_IN_ENIGMA_5_DBCON1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[9][3] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(p_0_in[4]),
        .Q(DB_IN_ENIGMA_5_DBCON1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigma_db_con_reg[9][4] 
       (.C(CLK_IN),
        .CE(\n_enigma_db_con[6]_13 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(DB_IN_ENIGMA_5_DBCON1_OUT[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[0][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[3] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[0]_6 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[12][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[5] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[12]_8 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[18][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[6] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[18]_9 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[24][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[7] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[24]_10 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[30][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[8] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[30]_11 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_enigmas_drum_pos[6][4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[4] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drum_pos[6]_7 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[0][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_1_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[0][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_1_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[0][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_1_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[0][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_1_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[0][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_1_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[10][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_4_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[10][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_4_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[10][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_4_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[10][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_4_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[10][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_4_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[11][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_4_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[11][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_4_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[11][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_4_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[11][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_4_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[11][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_4_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[12][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_5_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[12][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_5_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[12][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_5_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[12][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_5_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[12][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_5_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[13][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_5_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[13][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_5_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[13][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_5_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[13][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_5_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[13][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_5_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[14][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_5_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[14][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_5_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[14][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_5_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[14][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_5_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[14][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_5_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[15][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_6_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[15][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_6_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[15][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_6_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[15][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_6_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[15][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_6_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[16][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_6_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[16][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_6_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[16][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_6_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[16][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_6_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[16][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_6_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[17][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_6_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[17][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_6_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[17][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_6_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[17][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_6_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[17][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[12]_8 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_6_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[18][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_7_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[18][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_7_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[18][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_7_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[18][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_7_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[18][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_7_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[19][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_7_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[19][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_7_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[19][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_7_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[19][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_7_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[19][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_7_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[1][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_1_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[1][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_1_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[1][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_1_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[1][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_1_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[1][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_1_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[20][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_7_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[20][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_7_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[20][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_7_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[20][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_7_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[20][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_7_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[21][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_8_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[21][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_8_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[21][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_8_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[21][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_8_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[21][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_8_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[22][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_8_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[22][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_8_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[22][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_8_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[22][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_8_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[22][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_8_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[23][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_8_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[23][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_8_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[23][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_8_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[23][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_8_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[23][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[18]_9 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_8_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[24][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_9_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[24][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_9_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[24][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_9_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[24][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_9_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[24][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_9_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[25][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_9_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[25][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_9_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[25][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_9_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[25][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_9_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[25][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_9_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[26][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_9_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[26][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_9_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[26][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_9_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[26][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_9_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[26][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_9_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[27][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_10_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[27][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_10_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[27][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_10_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[27][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_10_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[27][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_10_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[28][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_10_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[28][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_10_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[28][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_10_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[28][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_10_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[28][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_10_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[29][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_10_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[29][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_10_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[29][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_10_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[29][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_10_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[29][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[24]_10 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_10_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[2][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_1_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[2][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_1_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[2][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_1_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[2][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_1_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[2][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_1_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[30][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_11_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[30][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_11_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[30][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_11_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[30][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_11_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[30][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_11_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[31][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_11_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[31][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_11_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[31][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_11_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[31][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_11_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[31][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_11_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[32][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_11_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[32][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_11_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[32][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_11_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[32][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_11_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[32][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_11_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[33][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_12_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[33][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_12_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[33][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_12_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[33][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_12_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[33][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_12_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[34][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_12_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[34][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_12_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[34][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_12_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[34][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_12_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[34][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_12_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[35][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_12_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[35][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_12_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[35][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_12_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[35][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_12_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[35][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[30]_11 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_12_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[3][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_2_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[3][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_2_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[3][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_2_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[3][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_2_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[3][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_2_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[4][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[22]_1 [0]),
        .Q(ENIGMA_2_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[4][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[22]_1 [1]),
        .Q(ENIGMA_2_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[4][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[22]_1 [2]),
        .Q(ENIGMA_2_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[4][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[22]_1 [3]),
        .Q(ENIGMA_2_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[4][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[22]_1 [4]),
        .Q(ENIGMA_2_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[5][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[23]_0 [0]),
        .Q(ENIGMA_2_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[5][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[23]_0 [1]),
        .Q(ENIGMA_2_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[5][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[23]_0 [2]),
        .Q(ENIGMA_2_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[5][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[23]_0 [3]),
        .Q(ENIGMA_2_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[5][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[0]_6 ),
        .D(\n_enigma_db_con[23]_0 [4]),
        .Q(ENIGMA_2_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[6][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMA_3_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[6][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMA_3_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[6][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMA_3_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[6][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMA_3_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[6][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMA_3_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[7][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMA_3_DRUMPOS_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[7][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMA_3_DRUMPOS_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[7][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMA_3_DRUMPOS_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[7][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMA_3_DRUMPOS_2_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[7][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(ENIGMA_3_DRUMPOS_2_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[8][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(ENIGMA_3_DRUMPOS_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[8][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(ENIGMA_3_DRUMPOS_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[8][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(ENIGMA_3_DRUMPOS_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[8][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(ENIGMA_3_DRUMPOS_3_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[8][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(p_0_in[0]),
        .Q(ENIGMA_3_DRUMPOS_3_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[9][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(p_0_in[1]),
        .Q(ENIGMA_4_DRUMPOS_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[9][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(p_0_in[2]),
        .Q(ENIGMA_4_DRUMPOS_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[9][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(p_0_in[3]),
        .Q(ENIGMA_4_DRUMPOS_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[9][3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(p_0_in[4]),
        .Q(ENIGMA_4_DRUMPOS_1_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drum_pos_reg[9][4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drum_pos[6]_7 ),
        .D(\c_data_out_bram_b_reg_n_0_[19] ),
        .Q(ENIGMA_4_DRUMPOS_1_OUT[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[0][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(c_data_out_bram_b[0]),
        .Q(ENIGMAS_DRUM_1_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[0][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(c_data_out_bram_b[1]),
        .Q(ENIGMAS_DRUM_1_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[0][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[2] ),
        .Q(ENIGMAS_DRUM_1_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[1][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[3] ),
        .Q(ENIGMAS_DRUM_2_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[1][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[4] ),
        .Q(ENIGMAS_DRUM_2_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[1][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\n_enigma_db_con[19]_2 [0]),
        .Q(ENIGMAS_DRUM_2_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[2][0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\n_enigma_db_con[19]_2 [1]),
        .Q(ENIGMAS_DRUM_3_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[2][1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\n_enigma_db_con[19]_2 [2]),
        .Q(ENIGMAS_DRUM_3_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_enigmas_drums_reg[2][2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\n_enigma_db_con[19]_2 [3]),
        .Q(ENIGMAS_DRUM_3_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_register_reg[0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\n_enigma_db_con[19]_2 [4]),
        .Q(DB_IN_INPUT_REGISTER_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_register_reg[1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[10] ),
        .Q(DB_IN_INPUT_REGISTER_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_register_reg[2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[11] ),
        .Q(DB_IN_INPUT_REGISTER_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_register_reg[3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[12] ),
        .Q(DB_IN_INPUT_REGISTER_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_register_reg[4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(\c_data_out_bram_b_reg_n_0_[13] ),
        .Q(DB_IN_INPUT_REGISTER_OUT[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00100000)) 
    \c_input_voltage[4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\FSM_onehot_c_read_config_fsm_states_reg_n_0_[9] ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(\n_enigmas_drums[0]_12 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_voltage_reg[0] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(p_0_in[0]),
        .Q(DB_IN_INPUT_VOLTAGE_OUT[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_voltage_reg[1] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(p_0_in[1]),
        .Q(DB_IN_INPUT_VOLTAGE_OUT[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_voltage_reg[2] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(p_0_in[2]),
        .Q(DB_IN_INPUT_VOLTAGE_OUT[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_voltage_reg[3] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(p_0_in[3]),
        .Q(DB_IN_INPUT_VOLTAGE_OUT[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_input_voltage_reg[4] 
       (.C(CLK_IN),
        .CE(\n_enigmas_drums[0]_12 ),
        .D(p_0_in[4]),
        .Q(DB_IN_INPUT_VOLTAGE_OUT[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_iteration[0]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_db_ready_in),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(n_iteration));
  LUT1 #(
    .INIT(2'h1)) 
    \c_iteration[0]_i_3 
       (.I0(c_iteration_reg[0]),
        .O(\c_iteration[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[0] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[0]_i_2_n_7 ),
        .Q(c_iteration_reg[0]),
        .R(SR));
  CARRY4 \c_iteration_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\c_iteration_reg[0]_i_2_n_0 ,\c_iteration_reg[0]_i_2_n_1 ,\c_iteration_reg[0]_i_2_n_2 ,\c_iteration_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\c_iteration_reg[0]_i_2_n_4 ,\c_iteration_reg[0]_i_2_n_5 ,\c_iteration_reg[0]_i_2_n_6 ,\c_iteration_reg[0]_i_2_n_7 }),
        .S({c_iteration_reg[3:1],\c_iteration[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[10] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[8]_i_1_n_5 ),
        .Q(c_iteration_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[11] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[8]_i_1_n_4 ),
        .Q(c_iteration_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[12] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[12]_i_1_n_7 ),
        .Q(c_iteration_reg[12]),
        .R(SR));
  CARRY4 \c_iteration_reg[12]_i_1 
       (.CI(\c_iteration_reg[8]_i_1_n_0 ),
        .CO({\NLW_c_iteration_reg[12]_i_1_CO_UNCONNECTED [3:2],\c_iteration_reg[12]_i_1_n_2 ,\c_iteration_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_c_iteration_reg[12]_i_1_O_UNCONNECTED [3],\c_iteration_reg[12]_i_1_n_5 ,\c_iteration_reg[12]_i_1_n_6 ,\c_iteration_reg[12]_i_1_n_7 }),
        .S({1'b0,c_iteration_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[13] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[12]_i_1_n_6 ),
        .Q(c_iteration_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[14] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[12]_i_1_n_5 ),
        .Q(c_iteration_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[1] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[0]_i_2_n_6 ),
        .Q(c_iteration_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[2] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[0]_i_2_n_5 ),
        .Q(c_iteration_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[3] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[0]_i_2_n_4 ),
        .Q(c_iteration_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[4] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[4]_i_1_n_7 ),
        .Q(c_iteration_reg[4]),
        .R(SR));
  CARRY4 \c_iteration_reg[4]_i_1 
       (.CI(\c_iteration_reg[0]_i_2_n_0 ),
        .CO({\c_iteration_reg[4]_i_1_n_0 ,\c_iteration_reg[4]_i_1_n_1 ,\c_iteration_reg[4]_i_1_n_2 ,\c_iteration_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_iteration_reg[4]_i_1_n_4 ,\c_iteration_reg[4]_i_1_n_5 ,\c_iteration_reg[4]_i_1_n_6 ,\c_iteration_reg[4]_i_1_n_7 }),
        .S(c_iteration_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[5] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[4]_i_1_n_6 ),
        .Q(c_iteration_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[6] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[4]_i_1_n_5 ),
        .Q(c_iteration_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[7] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[4]_i_1_n_4 ),
        .Q(c_iteration_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[8] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[8]_i_1_n_7 ),
        .Q(c_iteration_reg[8]),
        .R(SR));
  CARRY4 \c_iteration_reg[8]_i_1 
       (.CI(\c_iteration_reg[4]_i_1_n_0 ),
        .CO({\c_iteration_reg[8]_i_1_n_0 ,\c_iteration_reg[8]_i_1_n_1 ,\c_iteration_reg[8]_i_1_n_2 ,\c_iteration_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_iteration_reg[8]_i_1_n_4 ,\c_iteration_reg[8]_i_1_n_5 ,\c_iteration_reg[8]_i_1_n_6 ,\c_iteration_reg[8]_i_1_n_7 }),
        .S(c_iteration_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \c_iteration_reg[9] 
       (.C(CLK_IN),
        .CE(n_iteration),
        .D(\c_iteration_reg[8]_i_1_n_6 ),
        .Q(c_iteration_reg[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[0][0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_1_INDICATOR_DRUM_IN[0]),
        .Q(\c_pos_indicator_drum_in_reg[0]_3 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[0][1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_1_INDICATOR_DRUM_IN[1]),
        .Q(\c_pos_indicator_drum_in_reg[0]_3 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[0][2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_1_INDICATOR_DRUM_IN[2]),
        .Q(\c_pos_indicator_drum_in_reg[0]_3 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[0][3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_1_INDICATOR_DRUM_IN[3]),
        .Q(\c_pos_indicator_drum_in_reg[0]_3 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[0][4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_1_INDICATOR_DRUM_IN[4]),
        .Q(\c_pos_indicator_drum_in_reg[0]_3 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[1][0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_2_INDICATOR_DRUM_IN[0]),
        .Q(\c_pos_indicator_drum_in_reg[1]_4 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[1][1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_2_INDICATOR_DRUM_IN[1]),
        .Q(\c_pos_indicator_drum_in_reg[1]_4 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[1][2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_2_INDICATOR_DRUM_IN[2]),
        .Q(\c_pos_indicator_drum_in_reg[1]_4 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[1][3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_2_INDICATOR_DRUM_IN[3]),
        .Q(\c_pos_indicator_drum_in_reg[1]_4 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[1][4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_2_INDICATOR_DRUM_IN[4]),
        .Q(\c_pos_indicator_drum_in_reg[1]_4 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[2][0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_3_INDICATOR_DRUM_IN[0]),
        .Q(\c_pos_indicator_drum_in_reg[2]_5 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[2][1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_3_INDICATOR_DRUM_IN[1]),
        .Q(\c_pos_indicator_drum_in_reg[2]_5 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[2][2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_3_INDICATOR_DRUM_IN[2]),
        .Q(\c_pos_indicator_drum_in_reg[2]_5 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[2][3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_3_INDICATOR_DRUM_IN[3]),
        .Q(\c_pos_indicator_drum_in_reg[2]_5 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_pos_indicator_drum_in_reg[2][4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(POS_3_INDICATOR_DRUM_IN[4]),
        .Q(\c_pos_indicator_drum_in_reg[2]_5 [4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FF040004)) 
    \c_result_letter[0]_i_10 
       (.I0(c_db_result_register[12]),
        .I1(\c_result_letter[0]_i_12_n_0 ),
        .I2(c_db_result_register[10]),
        .I3(c_db_result_register[13]),
        .I4(\c_result_letter[4]_i_25_n_0 ),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE222222200000000)) 
    \c_result_letter[0]_i_11 
       (.I0(\c_result_letter[4]_i_24_n_0 ),
        .I1(c_db_result_register[13]),
        .I2(c_db_result_register[12]),
        .I3(\c_result_letter[0]_i_13_n_0 ),
        .I4(c_db_result_register[10]),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010751020)) 
    \c_result_letter[0]_i_12 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[6]),
        .I2(\c_result_letter[2]_i_22_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(\c_result_letter[0]_i_14_n_0 ),
        .I5(c_db_result_register[8]),
        .O(\c_result_letter[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB0808080C0000000)) 
    \c_result_letter[0]_i_13 
       (.I0(\c_result_letter[0]_i_15_n_0 ),
        .I1(c_db_result_register[11]),
        .I2(c_db_result_register[8]),
        .I3(\c_result_letter[2]_i_19_n_0 ),
        .I4(c_db_result_register[6]),
        .I5(c_db_result_register[9]),
        .O(\c_result_letter[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010104)) 
    \c_result_letter[0]_i_14 
       (.I0(c_db_result_register[4]),
        .I1(c_db_result_register[3]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[5]),
        .I4(c_db_result_register[7]),
        .I5(c_db_result_register[6]),
        .O(\c_result_letter[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4800800000000000)) 
    \c_result_letter[0]_i_15 
       (.I0(c_db_result_register[5]),
        .I1(c_db_result_register[2]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[7]),
        .I5(c_db_result_register[6]),
        .O(\c_result_letter[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[0]_i_2 
       (.I0(c_db_result_register[1]),
        .I1(\c_result_letter[0]_i_4_n_0 ),
        .I2(c_db_result_register[25]),
        .I3(c_db_result_register[22]),
        .I4(\c_result_letter[0]_i_5_n_0 ),
        .I5(c_db_result_register[24]),
        .O(\c_result_letter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[0]_i_3 
       (.I0(c_db_result_register[22]),
        .I1(\c_result_letter[0]_i_6_n_0 ),
        .I2(c_db_result_register[24]),
        .I3(c_db_result_register[1]),
        .I4(\c_result_letter[4]_i_4_n_0 ),
        .I5(c_db_result_register[25]),
        .O(\c_result_letter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_result_letter[0]_i_4 
       (.I0(c_db_result_register[22]),
        .I1(\c_result_letter[4]_i_12_n_0 ),
        .I2(c_db_result_register[23]),
        .I3(c_db_result_register[24]),
        .O(\c_result_letter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[0]_i_5 
       (.I0(c_db_result_register[23]),
        .I1(\c_result_letter[0]_i_7_n_0 ),
        .I2(c_db_result_register[21]),
        .I3(c_db_result_register[18]),
        .I4(\c_result_letter[0]_i_8_n_0 ),
        .I5(c_db_result_register[20]),
        .O(\c_result_letter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[0]_i_6 
       (.I0(c_db_result_register[18]),
        .I1(\c_result_letter[0]_i_9_n_0 ),
        .I2(c_db_result_register[20]),
        .I3(c_db_result_register[23]),
        .I4(\c_result_letter[4]_i_11_n_0 ),
        .I5(c_db_result_register[21]),
        .O(\c_result_letter[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_result_letter[0]_i_7 
       (.I0(c_db_result_register[18]),
        .I1(\c_result_letter[4]_i_20_n_0 ),
        .I2(c_db_result_register[19]),
        .I3(c_db_result_register[20]),
        .O(\c_result_letter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011760010)) 
    \c_result_letter[0]_i_8 
       (.I0(c_db_result_register[19]),
        .I1(c_db_result_register[17]),
        .I2(\c_result_letter[0]_i_10_n_0 ),
        .I3(c_db_result_register[15]),
        .I4(\c_result_letter[2]_i_10_n_0 ),
        .I5(c_db_result_register[16]),
        .O(\c_result_letter[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080C000C0000000)) 
    \c_result_letter[0]_i_9 
       (.I0(\c_result_letter[0]_i_11_n_0 ),
        .I1(c_db_result_register[19]),
        .I2(c_db_result_register[16]),
        .I3(\c_result_letter[2]_i_9_n_0 ),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[17]),
        .O(\c_result_letter[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \c_result_letter[1]_i_1 
       (.I0(\c_result_letter[1]_i_2_n_0 ),
        .I1(c_db_result_register[0]),
        .I2(c_db_result_register[25]),
        .I3(\c_result_letter[1]_i_3_n_0 ),
        .I4(c_db_result_register[24]),
        .I5(c_db_result_register[1]),
        .O(p_0_out[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \c_result_letter[1]_i_10 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[11]),
        .I2(\c_result_letter[2]_i_15_n_0 ),
        .I3(c_db_result_register[10]),
        .I4(c_db_result_register[13]),
        .O(\c_result_letter[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[1]_i_11 
       (.I0(c_db_result_register[10]),
        .I1(\c_result_letter[2]_i_15_n_0 ),
        .I2(c_db_result_register[11]),
        .I3(c_db_result_register[8]),
        .I4(\c_result_letter[1]_i_13_n_0 ),
        .I5(c_db_result_register[9]),
        .O(\c_result_letter[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4880000080000000)) 
    \c_result_letter[1]_i_12 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[4]),
        .I5(c_db_result_register[7]),
        .O(\c_result_letter[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010106)) 
    \c_result_letter[1]_i_13 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[7]),
        .I2(c_db_result_register[4]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[2]),
        .I5(c_db_result_register[5]),
        .O(\c_result_letter[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[1]_i_2 
       (.I0(c_db_result_register[20]),
        .I1(\c_result_letter[1]_i_4_n_0 ),
        .I2(c_db_result_register[21]),
        .I3(c_db_result_register[22]),
        .I4(\c_result_letter[4]_i_9_n_0 ),
        .I5(c_db_result_register[23]),
        .O(\c_result_letter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[1]_i_3 
       (.I0(c_db_result_register[22]),
        .I1(\c_result_letter[4]_i_12_n_0 ),
        .I2(c_db_result_register[23]),
        .I3(c_db_result_register[20]),
        .I4(\c_result_letter[1]_i_5_n_0 ),
        .I5(c_db_result_register[21]),
        .O(\c_result_letter[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[1]_i_4 
       (.I0(c_db_result_register[16]),
        .I1(\c_result_letter[1]_i_6_n_0 ),
        .I2(c_db_result_register[17]),
        .I3(c_db_result_register[18]),
        .I4(\c_result_letter[4]_i_18_n_0 ),
        .I5(c_db_result_register[19]),
        .O(\c_result_letter[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[1]_i_5 
       (.I0(c_db_result_register[18]),
        .I1(\c_result_letter[4]_i_20_n_0 ),
        .I2(c_db_result_register[19]),
        .I3(c_db_result_register[16]),
        .I4(\c_result_letter[1]_i_7_n_0 ),
        .I5(c_db_result_register[17]),
        .O(\c_result_letter[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[1]_i_6 
       (.I0(c_db_result_register[12]),
        .I1(\c_result_letter[1]_i_8_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .I4(\c_result_letter[1]_i_9_n_0 ),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h48484848484D4848)) 
    \c_result_letter[1]_i_7 
       (.I0(c_db_result_register[15]),
        .I1(\c_result_letter[1]_i_10_n_0 ),
        .I2(c_db_result_register[14]),
        .I3(c_db_result_register[12]),
        .I4(\c_result_letter[1]_i_11_n_0 ),
        .I5(c_db_result_register[13]),
        .O(\c_result_letter[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8000FF000000)) 
    \c_result_letter[1]_i_8 
       (.I0(c_db_result_register[8]),
        .I1(\c_result_letter[1]_i_12_n_0 ),
        .I2(c_db_result_register[9]),
        .I3(c_db_result_register[10]),
        .I4(\c_result_letter[2]_i_14_n_0 ),
        .I5(c_db_result_register[11]),
        .O(\c_result_letter[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[1]_i_9 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[11]),
        .I2(\c_result_letter[2]_i_14_n_0 ),
        .I3(c_db_result_register[10]),
        .I4(c_db_result_register[13]),
        .O(\c_result_letter[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \c_result_letter[2]_i_1 
       (.I0(\c_result_letter[2]_i_2_n_0 ),
        .I1(c_db_result_register[0]),
        .I2(c_db_result_register[25]),
        .I3(\c_result_letter[2]_i_3_n_0 ),
        .I4(c_db_result_register[24]),
        .I5(c_db_result_register[1]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[2]_i_10 
       (.I0(c_db_result_register[13]),
        .I1(c_db_result_register[10]),
        .I2(\c_result_letter[2]_i_15_n_0 ),
        .I3(c_db_result_register[11]),
        .I4(c_db_result_register[12]),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[2]_i_11 
       (.I0(c_db_result_register[15]),
        .I1(c_db_result_register[14]),
        .I2(c_db_result_register[13]),
        .I3(\c_result_letter[2]_i_16_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(\c_result_letter[2]_i_17_n_0 ),
        .O(\c_result_letter[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[2]_i_12 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\c_result_letter[2]_i_18_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .O(\c_result_letter[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[2]_i_13 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\c_result_letter[2]_i_19_n_0 ),
        .I3(c_db_result_register[6]),
        .I4(c_db_result_register[9]),
        .I5(c_db_result_register[10]),
        .O(\c_result_letter[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[2]_i_14 
       (.I0(c_db_result_register[8]),
        .I1(c_db_result_register[7]),
        .I2(\c_result_letter[2]_i_20_n_0 ),
        .I3(c_db_result_register[6]),
        .I4(c_db_result_register[9]),
        .O(\c_result_letter[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \c_result_letter[2]_i_15 
       (.I0(c_db_result_register[8]),
        .I1(c_db_result_register[7]),
        .I2(\c_result_letter[2]_i_21_n_0 ),
        .I3(c_db_result_register[6]),
        .I4(c_db_result_register[9]),
        .O(\c_result_letter[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[2]_i_16 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\c_result_letter[2]_i_22_n_0 ),
        .I3(c_db_result_register[6]),
        .I4(c_db_result_register[9]),
        .I5(c_db_result_register[10]),
        .O(\c_result_letter[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \c_result_letter[2]_i_17 
       (.I0(c_db_result_register[11]),
        .I1(c_db_result_register[8]),
        .I2(\c_result_letter[2]_i_23_n_0 ),
        .I3(c_db_result_register[9]),
        .I4(c_db_result_register[10]),
        .O(\c_result_letter[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6000800080000000)) 
    \c_result_letter[2]_i_18 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[4]),
        .I5(c_db_result_register[7]),
        .O(\c_result_letter[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[2]_i_19 
       (.I0(c_db_result_register[5]),
        .I1(c_db_result_register[2]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[7]),
        .O(\c_result_letter[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[2]_i_2 
       (.I0(\c_result_letter[2]_i_4_n_0 ),
        .I1(c_db_result_register[22]),
        .I2(c_db_result_register[21]),
        .I3(\c_result_letter[2]_i_5_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(c_db_result_register[23]),
        .O(\c_result_letter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \c_result_letter[2]_i_20 
       (.I0(c_db_result_register[4]),
        .I1(c_db_result_register[3]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[5]),
        .O(\c_result_letter[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \c_result_letter[2]_i_21 
       (.I0(c_db_result_register[4]),
        .I1(c_db_result_register[3]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[5]),
        .O(\c_result_letter[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \c_result_letter[2]_i_22 
       (.I0(c_db_result_register[5]),
        .I1(c_db_result_register[2]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[7]),
        .O(\c_result_letter[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000016)) 
    \c_result_letter[2]_i_23 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[7]),
        .I2(c_db_result_register[5]),
        .I3(c_db_result_register[2]),
        .I4(c_db_result_register[3]),
        .I5(c_db_result_register[4]),
        .O(\c_result_letter[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[2]_i_3 
       (.I0(c_db_result_register[22]),
        .I1(c_db_result_register[23]),
        .I2(c_db_result_register[21]),
        .I3(\c_result_letter[2]_i_6_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(\c_result_letter[2]_i_7_n_0 ),
        .O(\c_result_letter[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[2]_i_4 
       (.I0(c_db_result_register[19]),
        .I1(c_db_result_register[16]),
        .I2(\c_result_letter[2]_i_8_n_0 ),
        .I3(c_db_result_register[17]),
        .I4(c_db_result_register[18]),
        .O(\c_result_letter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[2]_i_5 
       (.I0(c_db_result_register[19]),
        .I1(c_db_result_register[16]),
        .I2(\c_result_letter[2]_i_9_n_0 ),
        .I3(c_db_result_register[15]),
        .I4(c_db_result_register[17]),
        .I5(c_db_result_register[18]),
        .O(\c_result_letter[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[2]_i_6 
       (.I0(c_db_result_register[19]),
        .I1(c_db_result_register[16]),
        .I2(\c_result_letter[2]_i_10_n_0 ),
        .I3(c_db_result_register[15]),
        .I4(c_db_result_register[17]),
        .I5(c_db_result_register[18]),
        .O(\c_result_letter[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \c_result_letter[2]_i_7 
       (.I0(c_db_result_register[19]),
        .I1(c_db_result_register[16]),
        .I2(\c_result_letter[2]_i_11_n_0 ),
        .I3(c_db_result_register[17]),
        .I4(c_db_result_register[18]),
        .O(\c_result_letter[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[2]_i_8 
       (.I0(\c_result_letter[2]_i_12_n_0 ),
        .I1(c_db_result_register[15]),
        .I2(c_db_result_register[13]),
        .I3(\c_result_letter[2]_i_13_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[2]_i_9 
       (.I0(c_db_result_register[13]),
        .I1(c_db_result_register[10]),
        .I2(\c_result_letter[2]_i_14_n_0 ),
        .I3(c_db_result_register[11]),
        .I4(c_db_result_register[12]),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \c_result_letter[3]_i_1 
       (.I0(\c_result_letter[3]_i_2_n_0 ),
        .I1(c_db_result_register[0]),
        .I2(\c_result_letter[3]_i_3_n_0 ),
        .I3(c_db_result_register[1]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hB0800000C0000000)) 
    \c_result_letter[3]_i_2 
       (.I0(\c_result_letter[3]_i_4_n_0 ),
        .I1(c_db_result_register[25]),
        .I2(c_db_result_register[22]),
        .I3(\c_result_letter[4]_i_9_n_0 ),
        .I4(c_db_result_register[23]),
        .I5(c_db_result_register[24]),
        .O(\c_result_letter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004D0048)) 
    \c_result_letter[3]_i_3 
       (.I0(c_db_result_register[25]),
        .I1(\c_result_letter[4]_i_12_n_0 ),
        .I2(c_db_result_register[24]),
        .I3(c_db_result_register[23]),
        .I4(\c_result_letter[3]_i_5_n_0 ),
        .I5(c_db_result_register[22]),
        .O(\c_result_letter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[3]_i_4 
       (.I0(c_db_result_register[20]),
        .I1(c_db_result_register[19]),
        .I2(\c_result_letter[3]_i_6_n_0 ),
        .I3(c_db_result_register[17]),
        .I4(c_db_result_register[18]),
        .I5(c_db_result_register[21]),
        .O(\c_result_letter[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[3]_i_5 
       (.I0(c_db_result_register[20]),
        .I1(c_db_result_register[19]),
        .I2(\c_result_letter[3]_i_7_n_0 ),
        .I3(c_db_result_register[17]),
        .I4(c_db_result_register[18]),
        .I5(c_db_result_register[21]),
        .O(\c_result_letter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE880488000000000)) 
    \c_result_letter[3]_i_6 
       (.I0(c_db_result_register[14]),
        .I1(\c_result_letter[4]_i_24_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .I4(\c_result_letter[3]_i_8_n_0 ),
        .I5(c_db_result_register[16]),
        .O(\c_result_letter[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000003030E2)) 
    \c_result_letter[3]_i_7 
       (.I0(\c_result_letter[3]_i_9_n_0 ),
        .I1(c_db_result_register[13]),
        .I2(\c_result_letter[4]_i_25_n_0 ),
        .I3(c_db_result_register[14]),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[16]),
        .O(\c_result_letter[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6800800080000000)) 
    \c_result_letter[3]_i_8 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[11]),
        .I2(c_db_result_register[8]),
        .I3(\c_result_letter[4]_i_29_n_0 ),
        .I4(c_db_result_register[9]),
        .I5(c_db_result_register[10]),
        .O(\c_result_letter[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0001000001160000)) 
    \c_result_letter[3]_i_9 
       (.I0(c_db_result_register[12]),
        .I1(c_db_result_register[10]),
        .I2(c_db_result_register[11]),
        .I3(c_db_result_register[9]),
        .I4(\c_result_letter[4]_i_30_n_0 ),
        .I5(c_db_result_register[8]),
        .O(\c_result_letter[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \c_result_letter[4]_i_1 
       (.I0(c_fsm_state[3]),
        .I1(c_fsm_state[2]),
        .I2(\c_result_letter_reg[4]_i_3_n_0 ),
        .I3(c_fsm_state[0]),
        .I4(c_fsm_state[1]),
        .O(n_result_letter));
  LUT6 #(
    .INIT(64'h6800800080000000)) 
    \c_result_letter[4]_i_10 
       (.I0(c_db_result_register[20]),
        .I1(c_db_result_register[19]),
        .I2(c_db_result_register[16]),
        .I3(\c_result_letter[4]_i_19_n_0 ),
        .I4(c_db_result_register[17]),
        .I5(c_db_result_register[18]),
        .O(\c_result_letter[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \c_result_letter[4]_i_11 
       (.I0(c_db_result_register[18]),
        .I1(\c_result_letter[4]_i_18_n_0 ),
        .I2(c_db_result_register[19]),
        .I3(c_db_result_register[20]),
        .O(\c_result_letter[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \c_result_letter[4]_i_12 
       (.I0(c_db_result_register[20]),
        .I1(c_db_result_register[19]),
        .I2(\c_result_letter[4]_i_20_n_0 ),
        .I3(c_db_result_register[18]),
        .I4(c_db_result_register[21]),
        .O(\c_result_letter[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0010557500100020)) 
    \c_result_letter[4]_i_13 
       (.I0(c_db_result_register[21]),
        .I1(c_db_result_register[19]),
        .I2(\c_result_letter[4]_i_20_n_0 ),
        .I3(c_db_result_register[18]),
        .I4(c_db_result_register[20]),
        .I5(\c_result_letter[4]_i_21_n_0 ),
        .O(\c_result_letter[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_result_letter[4]_i_14 
       (.I0(c_db_result_register[23]),
        .I1(\c_result_letter[4]_i_12_n_0 ),
        .I2(c_db_result_register[22]),
        .O(\c_result_letter[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[4]_i_15 
       (.I0(c_db_result_register[22]),
        .I1(c_db_result_register[23]),
        .I2(c_db_result_register[21]),
        .I3(\c_result_letter[2]_i_6_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(\c_result_letter[4]_i_22_n_0 ),
        .O(\c_result_letter[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[4]_i_16 
       (.I0(\c_result_letter[4]_i_23_n_0 ),
        .I1(c_db_result_register[22]),
        .I2(c_db_result_register[21]),
        .I3(\c_result_letter[2]_i_5_n_0 ),
        .I4(c_db_result_register[20]),
        .I5(c_db_result_register[23]),
        .O(\c_result_letter[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_result_letter[4]_i_17 
       (.I0(c_db_result_register[23]),
        .I1(\c_result_letter[4]_i_9_n_0 ),
        .I2(c_db_result_register[22]),
        .O(\c_result_letter[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[4]_i_18 
       (.I0(c_db_result_register[16]),
        .I1(c_db_result_register[14]),
        .I2(\c_result_letter[4]_i_24_n_0 ),
        .I3(c_db_result_register[13]),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[17]),
        .O(\c_result_letter[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \c_result_letter[4]_i_19 
       (.I0(c_db_result_register[14]),
        .I1(\c_result_letter[4]_i_24_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .O(\c_result_letter[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE200E20000FF0000)) 
    \c_result_letter[4]_i_2 
       (.I0(\c_result_letter[4]_i_4_n_0 ),
        .I1(c_db_result_register[25]),
        .I2(\c_result_letter[4]_i_5_n_0 ),
        .I3(c_db_result_register[0]),
        .I4(\c_result_letter[4]_i_6_n_0 ),
        .I5(c_db_result_register[1]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[4]_i_20 
       (.I0(c_db_result_register[16]),
        .I1(c_db_result_register[14]),
        .I2(\c_result_letter[4]_i_25_n_0 ),
        .I3(c_db_result_register[13]),
        .I4(c_db_result_register[15]),
        .I5(c_db_result_register[17]),
        .O(\c_result_letter[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000160000)) 
    \c_result_letter[4]_i_21 
       (.I0(c_db_result_register[18]),
        .I1(c_db_result_register[19]),
        .I2(c_db_result_register[17]),
        .I3(c_db_result_register[15]),
        .I4(\c_result_letter[2]_i_10_n_0 ),
        .I5(c_db_result_register[16]),
        .O(\c_result_letter[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[4]_i_22 
       (.I0(c_db_result_register[18]),
        .I1(c_db_result_register[19]),
        .I2(c_db_result_register[17]),
        .I3(\c_result_letter[4]_i_26_n_0 ),
        .I4(c_db_result_register[16]),
        .I5(\c_result_letter[4]_i_27_n_0 ),
        .O(\c_result_letter[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[4]_i_23 
       (.I0(\c_result_letter[4]_i_28_n_0 ),
        .I1(c_db_result_register[18]),
        .I2(c_db_result_register[17]),
        .I3(\c_result_letter[4]_i_19_n_0 ),
        .I4(c_db_result_register[16]),
        .I5(c_db_result_register[19]),
        .O(\c_result_letter[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[4]_i_24 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[9]),
        .I2(\c_result_letter[4]_i_29_n_0 ),
        .I3(c_db_result_register[8]),
        .I4(c_db_result_register[11]),
        .I5(c_db_result_register[12]),
        .O(\c_result_letter[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_result_letter[4]_i_25 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[9]),
        .I2(\c_result_letter[4]_i_30_n_0 ),
        .I3(c_db_result_register[8]),
        .I4(c_db_result_register[11]),
        .I5(c_db_result_register[12]),
        .O(\c_result_letter[4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_result_letter[4]_i_26 
       (.I0(c_db_result_register[14]),
        .I1(\c_result_letter[4]_i_25_n_0 ),
        .I2(c_db_result_register[13]),
        .I3(c_db_result_register[15]),
        .O(\c_result_letter[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[4]_i_27 
       (.I0(c_db_result_register[15]),
        .I1(c_db_result_register[14]),
        .I2(c_db_result_register[13]),
        .I3(\c_result_letter[2]_i_16_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(\c_result_letter[4]_i_31_n_0 ),
        .O(\c_result_letter[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[4]_i_28 
       (.I0(\c_result_letter[4]_i_32_n_0 ),
        .I1(c_db_result_register[15]),
        .I2(c_db_result_register[13]),
        .I3(\c_result_letter[2]_i_13_n_0 ),
        .I4(c_db_result_register[12]),
        .I5(c_db_result_register[14]),
        .O(\c_result_letter[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c_result_letter[4]_i_29 
       (.I0(c_db_result_register[7]),
        .I1(c_db_result_register[4]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[2]),
        .I4(c_db_result_register[5]),
        .I5(c_db_result_register[6]),
        .O(\c_result_letter[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \c_result_letter[4]_i_30 
       (.I0(c_db_result_register[7]),
        .I1(c_db_result_register[4]),
        .I2(c_db_result_register[3]),
        .I3(c_db_result_register[2]),
        .I4(c_db_result_register[5]),
        .I5(c_db_result_register[6]),
        .O(\c_result_letter[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[4]_i_31 
       (.I0(c_db_result_register[10]),
        .I1(c_db_result_register[11]),
        .I2(c_db_result_register[9]),
        .I3(\c_result_letter[4]_i_30_n_0 ),
        .I4(c_db_result_register[8]),
        .I5(\c_result_letter[4]_i_33_n_0 ),
        .O(\c_result_letter[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[4]_i_32 
       (.I0(\c_result_letter[4]_i_34_n_0 ),
        .I1(c_db_result_register[10]),
        .I2(c_db_result_register[9]),
        .I3(\c_result_letter[4]_i_29_n_0 ),
        .I4(c_db_result_register[8]),
        .I5(c_db_result_register[11]),
        .O(\c_result_letter[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \c_result_letter[4]_i_33 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[7]),
        .I2(c_db_result_register[5]),
        .I3(c_db_result_register[4]),
        .I4(c_db_result_register[3]),
        .I5(c_db_result_register[2]),
        .O(\c_result_letter[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6880800080000000)) 
    \c_result_letter[4]_i_34 
       (.I0(c_db_result_register[6]),
        .I1(c_db_result_register[5]),
        .I2(c_db_result_register[2]),
        .I3(c_db_result_register[3]),
        .I4(c_db_result_register[4]),
        .I5(c_db_result_register[7]),
        .O(\c_result_letter[4]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \c_result_letter[4]_i_4 
       (.I0(c_db_result_register[22]),
        .I1(\c_result_letter[4]_i_9_n_0 ),
        .I2(c_db_result_register[23]),
        .I3(c_db_result_register[24]),
        .O(\c_result_letter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBC80C000C0000000)) 
    \c_result_letter[4]_i_5 
       (.I0(\c_result_letter[4]_i_10_n_0 ),
        .I1(c_db_result_register[24]),
        .I2(c_db_result_register[23]),
        .I3(\c_result_letter[4]_i_11_n_0 ),
        .I4(c_db_result_register[21]),
        .I5(c_db_result_register[22]),
        .O(\c_result_letter[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100170101001600)) 
    \c_result_letter[4]_i_6 
       (.I0(c_db_result_register[25]),
        .I1(c_db_result_register[24]),
        .I2(c_db_result_register[22]),
        .I3(\c_result_letter[4]_i_12_n_0 ),
        .I4(c_db_result_register[23]),
        .I5(\c_result_letter[4]_i_13_n_0 ),
        .O(\c_result_letter[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8380BF838380BC80)) 
    \c_result_letter[4]_i_7 
       (.I0(\c_result_letter[4]_i_4_n_0 ),
        .I1(c_db_result_register[1]),
        .I2(c_db_result_register[25]),
        .I3(\c_result_letter[4]_i_14_n_0 ),
        .I4(c_db_result_register[24]),
        .I5(\c_result_letter[4]_i_15_n_0 ),
        .O(\c_result_letter[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8C0F333B8C0C000)) 
    \c_result_letter[4]_i_8 
       (.I0(\c_result_letter[4]_i_16_n_0 ),
        .I1(c_db_result_register[1]),
        .I2(\c_result_letter[4]_i_17_n_0 ),
        .I3(c_db_result_register[24]),
        .I4(c_db_result_register[25]),
        .I5(\c_result_letter[0]_i_4_n_0 ),
        .O(\c_result_letter[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_result_letter[4]_i_9 
       (.I0(c_db_result_register[20]),
        .I1(c_db_result_register[19]),
        .I2(\c_result_letter[4]_i_18_n_0 ),
        .I3(c_db_result_register[18]),
        .I4(c_db_result_register[21]),
        .O(\c_result_letter[4]_i_9_n_0 ));
  FDRE \c_result_letter_reg[0] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(p_0_out[0]),
        .Q(c_result_letter[0]),
        .R(SR));
  MUXF7 \c_result_letter_reg[0]_i_1 
       (.I0(\c_result_letter[0]_i_2_n_0 ),
        .I1(\c_result_letter[0]_i_3_n_0 ),
        .O(p_0_out[0]),
        .S(c_db_result_register[0]));
  FDRE \c_result_letter_reg[1] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(p_0_out[1]),
        .Q(c_result_letter[1]),
        .R(SR));
  FDRE \c_result_letter_reg[2] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(p_0_out[2]),
        .Q(c_result_letter[2]),
        .R(SR));
  FDRE \c_result_letter_reg[3] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(p_0_out[3]),
        .Q(c_result_letter[3]),
        .R(SR));
  FDRE \c_result_letter_reg[4] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(p_0_out[4]),
        .Q(c_result_letter[4]),
        .R(SR));
  MUXF7 \c_result_letter_reg[4]_i_3 
       (.I0(\c_result_letter[4]_i_7_n_0 ),
        .I1(\c_result_letter[4]_i_8_n_0 ),
        .O(\c_result_letter_reg[4]_i_3_n_0 ),
        .S(c_db_result_register[0]));
  LUT5 #(
    .INIT(32'hFFAF0028)) 
    c_start_enigma_i_1
       (.I0(c_fsm_state[0]),
        .I1(c_fsm_state[1]),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[3]),
        .I4(ENIGMAS_START_OUT),
        .O(c_start_enigma_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    c_start_enigma_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .D(c_start_enigma_i_1_n_0),
        .Q(ENIGMAS_START_OUT),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \c_vaild_result_counter[0]_i_1 
       (.I0(c_vaild_result_counter_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c_vaild_result_counter[1]_i_1 
       (.I0(c_vaild_result_counter_reg__0[1]),
        .I1(c_vaild_result_counter_reg__0[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c_vaild_result_counter[2]_i_1 
       (.I0(c_vaild_result_counter_reg__0[2]),
        .I1(c_vaild_result_counter_reg__0[1]),
        .I2(c_vaild_result_counter_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \c_vaild_result_counter[3]_i_1 
       (.I0(c_vaild_result_counter_reg__0[3]),
        .I1(c_vaild_result_counter_reg__0[1]),
        .I2(c_vaild_result_counter_reg__0[0]),
        .I3(c_vaild_result_counter_reg__0[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \c_vaild_result_counter[4]_i_1 
       (.I0(c_vaild_result_counter_reg__0[4]),
        .I1(c_vaild_result_counter_reg__0[2]),
        .I2(c_vaild_result_counter_reg__0[0]),
        .I3(c_vaild_result_counter_reg__0[1]),
        .I4(c_vaild_result_counter_reg__0[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \c_vaild_result_counter[5]_i_1 
       (.I0(c_vaild_result_counter_reg__0[5]),
        .I1(c_vaild_result_counter_reg__0[3]),
        .I2(c_vaild_result_counter_reg__0[1]),
        .I3(c_vaild_result_counter_reg__0[0]),
        .I4(c_vaild_result_counter_reg__0[2]),
        .I5(c_vaild_result_counter_reg__0[4]),
        .O(plusOp[5]));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[0] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[0]),
        .Q(c_vaild_result_counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[1] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[1]),
        .Q(c_vaild_result_counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[2] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[2]),
        .Q(c_vaild_result_counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[3] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[3]),
        .Q(c_vaild_result_counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[4] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[4]),
        .Q(c_vaild_result_counter_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_vaild_result_counter_reg[5] 
       (.C(CLK_IN),
        .CE(n_result_letter),
        .D(plusOp[5]),
        .Q(c_vaild_result_counter_reg__0[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBC0804)) 
    \c_write_enable_bram_b[0]_i_1 
       (.I0(c_fsm_state[1]),
        .I1(c_fsm_state[3]),
        .I2(c_fsm_state[2]),
        .I3(c_fsm_state[0]),
        .I4(c_write_enable_bram_b),
        .O(\c_write_enable_bram_b[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_write_enable_bram_b_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .D(\c_write_enable_bram_b[0]_i_1_n_0 ),
        .Q(c_write_enable_bram_b),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    g0_b0
       (.I0(c_vaild_result_counter_reg__0[0]),
        .I1(c_vaild_result_counter_reg__0[2]),
        .I2(c_vaild_result_counter_reg__0[3]),
        .I3(c_vaild_result_counter_reg__0[4]),
        .I4(c_vaild_result_counter_reg__0[5]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    g0_b1
       (.I0(c_vaild_result_counter_reg__0[1]),
        .I1(c_vaild_result_counter_reg__0[2]),
        .I2(c_vaild_result_counter_reg__0[3]),
        .I3(c_vaild_result_counter_reg__0[4]),
        .I4(c_vaild_result_counter_reg__0[5]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    g0_b2
       (.I0(c_vaild_result_counter_reg__0[2]),
        .I1(c_vaild_result_counter_reg__0[3]),
        .I2(c_vaild_result_counter_reg__0[4]),
        .I3(c_vaild_result_counter_reg__0[5]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1999)) 
    g0_b3
       (.I0(c_vaild_result_counter_reg__0[2]),
        .I1(c_vaild_result_counter_reg__0[3]),
        .I2(c_vaild_result_counter_reg__0[4]),
        .I3(c_vaild_result_counter_reg__0[5]),
        .O(g0_b3_n_0));
  LUT5 #(
    .INIT(32'h00001E00)) 
    g0_b4
       (.I0(c_vaild_result_counter_reg__0[2]),
        .I1(c_vaild_result_counter_reg__0[3]),
        .I2(c_vaild_result_counter_reg__0[4]),
        .I3(c_fsm_state[3]),
        .I4(c_fsm_state[1]),
        .O(n_address_bram_b[4]));
  LUT6 #(
    .INIT(64'h000000001FE00000)) 
    g0_b5
       (.I0(c_vaild_result_counter_reg__0[2]),
        .I1(c_vaild_result_counter_reg__0[3]),
        .I2(c_vaild_result_counter_reg__0[4]),
        .I3(c_vaild_result_counter_reg__0[5]),
        .I4(c_fsm_state[3]),
        .I5(c_fsm_state[1]),
        .O(n_address_bram_b[5]));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "0" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "auto" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "0" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "2" *) 
  (* P_WRITE_MODE_B = "2" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "no_change" *) 
  (* WRITE_MODE_B = "no_change" *) 
  (* XPM_MODULE = "TRUE" *) 
  turing_bombe_turing_bombe_control_0_0_xpm_memory_tdpram xpm_memory_tdpram_inst
       (.addra(ADDRESS_BRAM_A_IN),
        .addrb(c_address_bram_b),
        .clka(CLK_IN),
        .clkb(CLK_IN),
        .dbiterra(NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED),
        .dina(DATA_IN_BRAM_A),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,c_data_in_bram_b}),
        .douta(DATA_OUT_BRAM_A),
        .doutb(n_data_out_bram_b),
        .ena(ENABLE_BRAM_A_IN),
        .enb(1'b1),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(SR),
        .rstb(SR),
        .sbiterra(NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED),
        .sleep(1'b0),
        .wea(WRITE_ENABLE_BRAM_IN),
        .web(c_write_enable_bram_b));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CLOCKING_MODE = "0" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "0" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "2" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "64" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "32" *) 
(* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "6" *) (* P_WIDTH_ADDR_READ_B = "6" *) 
(* P_WIDTH_ADDR_WRITE_A = "6" *) (* P_WIDTH_ADDR_WRITE_B = "6" *) (* P_WIDTH_COL_WRITE_A = "32" *) 
(* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module turing_bombe_turing_bombe_control_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_narrow.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_b.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_b.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_b.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_b.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_b.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_b.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_b.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gen_wr_b.gen_word_narrow.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_narrow.mem_reg_i_2_n_0 ),
        .INJECTDBITERR(\NLW_gen_wr_b.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_b.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_b.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_b.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .WEA({\gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,\gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_narrow.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_narrow.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_narrow.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_narrow.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CLOCKING_MODE = "common_clock" *) 
(* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "0" *) 
(* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "auto" *) (* MEMORY_SIZE = "2048" *) 
(* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "0" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) (* P_WRITE_MODE_B = "2" *) 
(* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "32" *) 
(* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "no_change" *) (* WRITE_MODE_B = "no_change" *) 
(* XPM_MODULE = "TRUE" *) 
module turing_bombe_turing_bombe_control_0_0_xpm_memory_tdpram
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "0" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  turing_bombe_turing_bombe_control_0_0_xpm_memory_base xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
