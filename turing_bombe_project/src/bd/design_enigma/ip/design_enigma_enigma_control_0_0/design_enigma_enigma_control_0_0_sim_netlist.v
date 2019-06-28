// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Jun  5 15:06:15 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /homes/mexner/TURBOdeb/turing_bombe_project/vivado/TURBO.srcs/sources_1/bd/design_enigma/ip/design_enigma_enigma_control_0_0/design_enigma_enigma_control_0_0_sim_netlist.v
// Design      : design_enigma_enigma_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_enigma_enigma_control_0_0,enigma_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "enigma_control,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_enigma_enigma_control_0_0
   (UB_CLK_IN,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN,
    CONFIG_DRUM_TYP_1_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_3_IN,
    CHARACTERS_IN_DB0,
    CHARACTERS_IN_DB1,
    DRUM_IMPULS_IN,
    START_IN,
    CHARACTERS_FROM_DRUM_IN,
    READY_FROM_DRUM_IN,
    CHARACTERS_TO_FIRST_DRUM_OUT,
    START_TO_FIRST_DRUM_OUT,
    DRUM_IMPULS_OUT,
    CODED_CHARECTERS_OUT_DB0,
    CODED_CHARECTERS_OUT_DB1,
    READY_OUT,
    CONFIG_START_POS_DRUM_1_OUT,
    CONFIG_START_POS_DRUM_2_OUT,
    CONFIG_START_POS_DRUM_3_OUT,
    CONFIG_DRUM_TYP_1_OUT,
    CONFIG_DRUM_TYP_2_OUT,
    CONFIG_DRUM_TYP_3_OUT,
    CONFIG_DRUM_OVERFLOW_2_OUT,
    CONFIG_DRUM_OVERFLOW_3_OUT);
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
  input [25:0]CHARACTERS_FROM_DRUM_IN;
  input READY_FROM_DRUM_IN;
  output [25:0]CHARACTERS_TO_FIRST_DRUM_OUT;
  output START_TO_FIRST_DRUM_OUT;
  output DRUM_IMPULS_OUT;
  output [25:0]CODED_CHARECTERS_OUT_DB0;
  output [25:0]CODED_CHARECTERS_OUT_DB1;
  output READY_OUT;
  output [4:0]CONFIG_START_POS_DRUM_1_OUT;
  output [4:0]CONFIG_START_POS_DRUM_2_OUT;
  output [4:0]CONFIG_START_POS_DRUM_3_OUT;
  output [2:0]CONFIG_DRUM_TYP_1_OUT;
  output [2:0]CONFIG_DRUM_TYP_2_OUT;
  output [2:0]CONFIG_DRUM_TYP_3_OUT;
  output CONFIG_DRUM_OVERFLOW_2_OUT;
  output CONFIG_DRUM_OVERFLOW_3_OUT;

  wire \<const0> ;
  wire \<const1> ;
  wire [25:0]CHARACTERS_FROM_DRUM_IN;
  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CHARACTERS_TO_FIRST_DRUM_OUT;
  wire [25:0]CODED_CHARECTERS_OUT_DB0;
  wire [25:0]CODED_CHARECTERS_OUT_DB1;
  wire [2:0]CONFIG_DRUM_TYP_1_IN;
  wire [2:0]CONFIG_DRUM_TYP_2_IN;
  wire [2:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire DRUM_IMPULS_IN;
  wire READY_FROM_DRUM_IN;
  wire READY_OUT;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire START_TO_FIRST_DRUM_OUT;
  wire UB_CLK_IN;

  assign CONFIG_DRUM_OVERFLOW_2_OUT = \<const0> ;
  assign CONFIG_DRUM_OVERFLOW_3_OUT = \<const1> ;
  assign CONFIG_DRUM_TYP_1_OUT[2:0] = CONFIG_DRUM_TYP_1_IN;
  assign CONFIG_DRUM_TYP_2_OUT[2:0] = CONFIG_DRUM_TYP_2_IN;
  assign CONFIG_DRUM_TYP_3_OUT[2:0] = CONFIG_DRUM_TYP_3_IN;
  assign CONFIG_START_POS_DRUM_1_OUT[4:0] = CONFIG_START_POS_DRUM_1_IN;
  assign CONFIG_START_POS_DRUM_2_OUT[4:0] = CONFIG_START_POS_DRUM_2_IN;
  assign CONFIG_START_POS_DRUM_3_OUT[4:0] = CONFIG_START_POS_DRUM_3_IN;
  assign DRUM_IMPULS_OUT = DRUM_IMPULS_IN;
  GND GND
       (.G(\<const0> ));
  design_enigma_enigma_control_0_0_enigma_control U0
       (.CHARACTERS_FROM_DRUM_IN(CHARACTERS_FROM_DRUM_IN),
        .CHARACTERS_IN_DB0(CHARACTERS_IN_DB0),
        .CHARACTERS_IN_DB1(CHARACTERS_IN_DB1),
        .CHARACTERS_TO_FIRST_DRUM_OUT(CHARACTERS_TO_FIRST_DRUM_OUT),
        .CODED_CHARECTERS_OUT_DB0(CODED_CHARECTERS_OUT_DB0),
        .CODED_CHARECTERS_OUT_DB1(CODED_CHARECTERS_OUT_DB1),
        .READY_FROM_DRUM_IN(READY_FROM_DRUM_IN),
        .READY_OUT(READY_OUT),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .START_IN(START_IN),
        .START_TO_FIRST_DRUM_OUT(START_TO_FIRST_DRUM_OUT),
        .UB_CLK_IN(UB_CLK_IN));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "enigma_control" *) 
module design_enigma_enigma_control_0_0_enigma_control
   (CHARACTERS_TO_FIRST_DRUM_OUT,
    CODED_CHARECTERS_OUT_DB0,
    CODED_CHARECTERS_OUT_DB1,
    READY_OUT,
    START_TO_FIRST_DRUM_OUT,
    CHARACTERS_IN_DB1,
    CHARACTERS_IN_DB0,
    READY_FROM_DRUM_IN,
    START_IN,
    UB_CLK_IN,
    CHARACTERS_FROM_DRUM_IN,
    SOFT_RESET_N_IN);
  output [25:0]CHARACTERS_TO_FIRST_DRUM_OUT;
  output [25:0]CODED_CHARECTERS_OUT_DB0;
  output [25:0]CODED_CHARECTERS_OUT_DB1;
  output READY_OUT;
  output START_TO_FIRST_DRUM_OUT;
  input [25:0]CHARACTERS_IN_DB1;
  input [25:0]CHARACTERS_IN_DB0;
  input READY_FROM_DRUM_IN;
  input START_IN;
  input UB_CLK_IN;
  input [25:0]CHARACTERS_FROM_DRUM_IN;
  input SOFT_RESET_N_IN;

  wire [25:0]CHARACTERS_FROM_DRUM_IN;
  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CHARACTERS_TO_FIRST_DRUM_OUT;
  wire [25:0]CODED_CHARECTERS_OUT_DB0;
  wire [25:0]CODED_CHARECTERS_OUT_DB1;
  wire READY_FROM_DRUM_IN;
  wire READY_OUT;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire START_TO_FIRST_DRUM_OUT;
  wire UB_CLK_IN;
  wire \c_chars_in_process[0]_i_1_n_0 ;
  wire \c_chars_in_process[10]_i_1_n_0 ;
  wire \c_chars_in_process[11]_i_1_n_0 ;
  wire \c_chars_in_process[12]_i_1_n_0 ;
  wire \c_chars_in_process[13]_i_1_n_0 ;
  wire \c_chars_in_process[14]_i_1_n_0 ;
  wire \c_chars_in_process[15]_i_1_n_0 ;
  wire \c_chars_in_process[16]_i_1_n_0 ;
  wire \c_chars_in_process[17]_i_1_n_0 ;
  wire \c_chars_in_process[18]_i_1_n_0 ;
  wire \c_chars_in_process[19]_i_1_n_0 ;
  wire \c_chars_in_process[1]_i_1_n_0 ;
  wire \c_chars_in_process[20]_i_1_n_0 ;
  wire \c_chars_in_process[21]_i_1_n_0 ;
  wire \c_chars_in_process[22]_i_1_n_0 ;
  wire \c_chars_in_process[23]_i_1_n_0 ;
  wire \c_chars_in_process[24]_i_1_n_0 ;
  wire \c_chars_in_process[25]_i_2_n_0 ;
  wire \c_chars_in_process[25]_i_3_n_0 ;
  wire \c_chars_in_process[2]_i_1_n_0 ;
  wire \c_chars_in_process[3]_i_1_n_0 ;
  wire \c_chars_in_process[4]_i_1_n_0 ;
  wire \c_chars_in_process[5]_i_1_n_0 ;
  wire \c_chars_in_process[6]_i_1_n_0 ;
  wire \c_chars_in_process[7]_i_1_n_0 ;
  wire \c_chars_in_process[8]_i_1_n_0 ;
  wire \c_chars_in_process[9]_i_1_n_0 ;
  wire [25:0]n_coded_chars_out_db0;
  wire p_0_in;

  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[0]_i_1 
       (.I0(CHARACTERS_IN_DB1[0]),
        .I1(CHARACTERS_IN_DB0[0]),
        .O(\c_chars_in_process[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[10]_i_1 
       (.I0(CHARACTERS_IN_DB1[10]),
        .I1(CHARACTERS_IN_DB0[10]),
        .O(\c_chars_in_process[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[11]_i_1 
       (.I0(CHARACTERS_IN_DB1[11]),
        .I1(CHARACTERS_IN_DB0[11]),
        .O(\c_chars_in_process[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[12]_i_1 
       (.I0(CHARACTERS_IN_DB1[12]),
        .I1(CHARACTERS_IN_DB0[12]),
        .O(\c_chars_in_process[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[13]_i_1 
       (.I0(CHARACTERS_IN_DB1[13]),
        .I1(CHARACTERS_IN_DB0[13]),
        .O(\c_chars_in_process[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[14]_i_1 
       (.I0(CHARACTERS_IN_DB1[14]),
        .I1(CHARACTERS_IN_DB0[14]),
        .O(\c_chars_in_process[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[15]_i_1 
       (.I0(CHARACTERS_IN_DB1[15]),
        .I1(CHARACTERS_IN_DB0[15]),
        .O(\c_chars_in_process[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[16]_i_1 
       (.I0(CHARACTERS_IN_DB1[16]),
        .I1(CHARACTERS_IN_DB0[16]),
        .O(\c_chars_in_process[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[17]_i_1 
       (.I0(CHARACTERS_IN_DB1[17]),
        .I1(CHARACTERS_IN_DB0[17]),
        .O(\c_chars_in_process[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[18]_i_1 
       (.I0(CHARACTERS_IN_DB1[18]),
        .I1(CHARACTERS_IN_DB0[18]),
        .O(\c_chars_in_process[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[19]_i_1 
       (.I0(CHARACTERS_IN_DB1[19]),
        .I1(CHARACTERS_IN_DB0[19]),
        .O(\c_chars_in_process[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[1]_i_1 
       (.I0(CHARACTERS_IN_DB1[1]),
        .I1(CHARACTERS_IN_DB0[1]),
        .O(\c_chars_in_process[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[20]_i_1 
       (.I0(CHARACTERS_IN_DB1[20]),
        .I1(CHARACTERS_IN_DB0[20]),
        .O(\c_chars_in_process[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[21]_i_1 
       (.I0(CHARACTERS_IN_DB1[21]),
        .I1(CHARACTERS_IN_DB0[21]),
        .O(\c_chars_in_process[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[22]_i_1 
       (.I0(CHARACTERS_IN_DB1[22]),
        .I1(CHARACTERS_IN_DB0[22]),
        .O(\c_chars_in_process[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[23]_i_1 
       (.I0(CHARACTERS_IN_DB1[23]),
        .I1(CHARACTERS_IN_DB0[23]),
        .O(\c_chars_in_process[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[24]_i_1 
       (.I0(CHARACTERS_IN_DB1[24]),
        .I1(CHARACTERS_IN_DB0[24]),
        .O(\c_chars_in_process[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_chars_in_process[25]_i_1 
       (.I0(SOFT_RESET_N_IN),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[25]_i_2 
       (.I0(READY_FROM_DRUM_IN),
        .I1(START_IN),
        .O(\c_chars_in_process[25]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[25]_i_3 
       (.I0(CHARACTERS_IN_DB1[25]),
        .I1(CHARACTERS_IN_DB0[25]),
        .O(\c_chars_in_process[25]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[2]_i_1 
       (.I0(CHARACTERS_IN_DB1[2]),
        .I1(CHARACTERS_IN_DB0[2]),
        .O(\c_chars_in_process[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[3]_i_1 
       (.I0(CHARACTERS_IN_DB1[3]),
        .I1(CHARACTERS_IN_DB0[3]),
        .O(\c_chars_in_process[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[4]_i_1 
       (.I0(CHARACTERS_IN_DB1[4]),
        .I1(CHARACTERS_IN_DB0[4]),
        .O(\c_chars_in_process[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[5]_i_1 
       (.I0(CHARACTERS_IN_DB1[5]),
        .I1(CHARACTERS_IN_DB0[5]),
        .O(\c_chars_in_process[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[6]_i_1 
       (.I0(CHARACTERS_IN_DB1[6]),
        .I1(CHARACTERS_IN_DB0[6]),
        .O(\c_chars_in_process[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[7]_i_1 
       (.I0(CHARACTERS_IN_DB1[7]),
        .I1(CHARACTERS_IN_DB0[7]),
        .O(\c_chars_in_process[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[8]_i_1 
       (.I0(CHARACTERS_IN_DB1[8]),
        .I1(CHARACTERS_IN_DB0[8]),
        .O(\c_chars_in_process[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[9]_i_1 
       (.I0(CHARACTERS_IN_DB1[9]),
        .I1(CHARACTERS_IN_DB0[9]),
        .O(\c_chars_in_process[9]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[0]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[0]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[10]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[10]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[11]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[11]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[12]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[12]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[13]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[13]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[14]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[14]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[15]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[15]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[16]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[16]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[17]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[17]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[18]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[18]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[19]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[19]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[1]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[1]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[20]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[20]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[21]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[21]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[22]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[22]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[23]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[23]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[24]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[24]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[25]_i_3_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[25]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[2]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[2]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[3]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[3]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[4]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[4]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[5]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[5]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[6]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[6]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[7]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[7]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[8]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[8]),
        .R(p_0_in));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_in_process[25]_i_2_n_0 ),
        .D(\c_chars_in_process[9]_i_1_n_0 ),
        .Q(CHARACTERS_TO_FIRST_DRUM_OUT[9]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[0]),
        .Q(CODED_CHARECTERS_OUT_DB0[0]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[10] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[10]),
        .Q(CODED_CHARECTERS_OUT_DB0[10]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[11] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[11]),
        .Q(CODED_CHARECTERS_OUT_DB0[11]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[12] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[12]),
        .Q(CODED_CHARECTERS_OUT_DB0[12]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[13] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[13]),
        .Q(CODED_CHARECTERS_OUT_DB0[13]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[14] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[14]),
        .Q(CODED_CHARECTERS_OUT_DB0[14]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[15] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[15]),
        .Q(CODED_CHARECTERS_OUT_DB0[15]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[16] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[16]),
        .Q(CODED_CHARECTERS_OUT_DB0[16]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[17] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[17]),
        .Q(CODED_CHARECTERS_OUT_DB0[17]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[18] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[18]),
        .Q(CODED_CHARECTERS_OUT_DB0[18]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[19] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[19]),
        .Q(CODED_CHARECTERS_OUT_DB0[19]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[1]),
        .Q(CODED_CHARECTERS_OUT_DB0[1]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[20] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[20]),
        .Q(CODED_CHARECTERS_OUT_DB0[20]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[21] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[21]),
        .Q(CODED_CHARECTERS_OUT_DB0[21]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[22] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[22]),
        .Q(CODED_CHARECTERS_OUT_DB0[22]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[23] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[23]),
        .Q(CODED_CHARECTERS_OUT_DB0[23]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[24] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[24]),
        .Q(CODED_CHARECTERS_OUT_DB0[24]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[25] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[25]),
        .Q(CODED_CHARECTERS_OUT_DB0[25]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[2]),
        .Q(CODED_CHARECTERS_OUT_DB0[2]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[3]),
        .Q(CODED_CHARECTERS_OUT_DB0[3]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[4]),
        .Q(CODED_CHARECTERS_OUT_DB0[4]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[5]),
        .Q(CODED_CHARECTERS_OUT_DB0[5]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[6] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[6]),
        .Q(CODED_CHARECTERS_OUT_DB0[6]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[7] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[7]),
        .Q(CODED_CHARECTERS_OUT_DB0[7]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[8] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[8]),
        .Q(CODED_CHARECTERS_OUT_DB0[8]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db0_reg[9] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[9]),
        .Q(CODED_CHARECTERS_OUT_DB0[9]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[0] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[0]),
        .Q(CODED_CHARECTERS_OUT_DB1[0]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[10] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[10]),
        .Q(CODED_CHARECTERS_OUT_DB1[10]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[11] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[11]),
        .Q(CODED_CHARECTERS_OUT_DB1[11]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[12] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[12]),
        .Q(CODED_CHARECTERS_OUT_DB1[12]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[13] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[13]),
        .Q(CODED_CHARECTERS_OUT_DB1[13]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[14] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[14]),
        .Q(CODED_CHARECTERS_OUT_DB1[14]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[15] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[15]),
        .Q(CODED_CHARECTERS_OUT_DB1[15]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[16] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[16]),
        .Q(CODED_CHARECTERS_OUT_DB1[16]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[17] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[17]),
        .Q(CODED_CHARECTERS_OUT_DB1[17]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[18] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[18]),
        .Q(CODED_CHARECTERS_OUT_DB1[18]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[19] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[19]),
        .Q(CODED_CHARECTERS_OUT_DB1[19]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[1] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[1]),
        .Q(CODED_CHARECTERS_OUT_DB1[1]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[20] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[20]),
        .Q(CODED_CHARECTERS_OUT_DB1[20]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[21] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[21]),
        .Q(CODED_CHARECTERS_OUT_DB1[21]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[22] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[22]),
        .Q(CODED_CHARECTERS_OUT_DB1[22]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[23] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[23]),
        .Q(CODED_CHARECTERS_OUT_DB1[23]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[24] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[24]),
        .Q(CODED_CHARECTERS_OUT_DB1[24]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[25] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[25]),
        .Q(CODED_CHARECTERS_OUT_DB1[25]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[2] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[2]),
        .Q(CODED_CHARECTERS_OUT_DB1[2]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[3] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[3]),
        .Q(CODED_CHARECTERS_OUT_DB1[3]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[4] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[4]),
        .Q(CODED_CHARECTERS_OUT_DB1[4]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[5] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[5]),
        .Q(CODED_CHARECTERS_OUT_DB1[5]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[6] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[6]),
        .Q(CODED_CHARECTERS_OUT_DB1[6]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[7] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[7]),
        .Q(CODED_CHARECTERS_OUT_DB1[7]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[8] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[8]),
        .Q(CODED_CHARECTERS_OUT_DB1[8]),
        .R(p_0_in));
  FDRE \c_coded_chars_out_db1_reg[9] 
       (.C(UB_CLK_IN),
        .CE(READY_FROM_DRUM_IN),
        .D(CHARACTERS_FROM_DRUM_IN[9]),
        .Q(CODED_CHARECTERS_OUT_DB1[9]),
        .R(p_0_in));
  FDRE c_ready_out_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(READY_OUT),
        .R(p_0_in));
  FDRE c_start_to_first_drum_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_in_process[25]_i_2_n_0 ),
        .Q(START_TO_FIRST_DRUM_OUT),
        .R(p_0_in));
  FDRE \n_coded_chars_out_db0_reg[0] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[0]),
        .Q(n_coded_chars_out_db0[0]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[10] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[10]),
        .Q(n_coded_chars_out_db0[10]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[11] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[11]),
        .Q(n_coded_chars_out_db0[11]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[12] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[12]),
        .Q(n_coded_chars_out_db0[12]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[13] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[13]),
        .Q(n_coded_chars_out_db0[13]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[14] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[14]),
        .Q(n_coded_chars_out_db0[14]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[15] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[15]),
        .Q(n_coded_chars_out_db0[15]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[16] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[16]),
        .Q(n_coded_chars_out_db0[16]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[17] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[17]),
        .Q(n_coded_chars_out_db0[17]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[18] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[18]),
        .Q(n_coded_chars_out_db0[18]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[19] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[19]),
        .Q(n_coded_chars_out_db0[19]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[1] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[1]),
        .Q(n_coded_chars_out_db0[1]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[20] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[20]),
        .Q(n_coded_chars_out_db0[20]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[21] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[21]),
        .Q(n_coded_chars_out_db0[21]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[22] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[22]),
        .Q(n_coded_chars_out_db0[22]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[23] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[23]),
        .Q(n_coded_chars_out_db0[23]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[24] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[24]),
        .Q(n_coded_chars_out_db0[24]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[25] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[25]),
        .Q(n_coded_chars_out_db0[25]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[2] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[2]),
        .Q(n_coded_chars_out_db0[2]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[3] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[3]),
        .Q(n_coded_chars_out_db0[3]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[4] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[4]),
        .Q(n_coded_chars_out_db0[4]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[5] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[5]),
        .Q(n_coded_chars_out_db0[5]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[6] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[6]),
        .Q(n_coded_chars_out_db0[6]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[7] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[7]),
        .Q(n_coded_chars_out_db0[7]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[8] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[8]),
        .Q(n_coded_chars_out_db0[8]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[9] 
       (.C(READY_FROM_DRUM_IN),
        .CE(1'b1),
        .D(CHARACTERS_FROM_DRUM_IN[9]),
        .Q(n_coded_chars_out_db0[9]),
        .R(1'b0));
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
