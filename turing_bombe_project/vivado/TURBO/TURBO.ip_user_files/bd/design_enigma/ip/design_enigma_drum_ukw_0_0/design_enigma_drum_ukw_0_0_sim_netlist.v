// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Jun  5 15:06:15 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /homes/mexner/TURBOdeb/turing_bombe_project/vivado/TURBO.srcs/sources_1/bd/design_enigma/ip/design_enigma_drum_ukw_0_0/design_enigma_drum_ukw_0_0_sim_netlist.v
// Design      : design_enigma_drum_ukw_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_enigma_drum_ukw_0_0,drum_ukw,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "drum_ukw,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_enigma_drum_ukw_0_0
   (UB_CLK_IN,
    SOFT_RESET_N_IN,
    CHARACTERS_IN_FWD,
    REQUEST_IN_FWD,
    LUT_READY_IN,
    LUT_BUSY_IN,
    CHARACTERS_FROM_LUT,
    CHARACTERS_TO_LUT,
    DRUM_TYP_TO_LUT,
    REQUEST_TO_LUT,
    CHARACTERS_OUT,
    READY_OUT_BWD);
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

  wire \<const0> ;
  wire \<const1> ;
  wire [25:0]CHARACTERS_FROM_LUT;
  wire [25:0]CHARACTERS_IN_FWD;
  wire [25:0]CHARACTERS_OUT;
  wire [25:0]CHARACTERS_TO_LUT;
  wire LUT_BUSY_IN;
  wire LUT_READY_IN;
  wire READY_OUT_BWD;
  wire REQUEST_IN_FWD;
  wire REQUEST_TO_LUT;
  wire SOFT_RESET_N_IN;
  wire UB_CLK_IN;

  assign DRUM_TYP_TO_LUT[2] = \<const1> ;
  assign DRUM_TYP_TO_LUT[1] = \<const1> ;
  assign DRUM_TYP_TO_LUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_enigma_drum_ukw_0_0_drum_ukw U0
       (.CHARACTERS_FROM_LUT(CHARACTERS_FROM_LUT),
        .CHARACTERS_IN_FWD(CHARACTERS_IN_FWD),
        .CHARACTERS_OUT(CHARACTERS_OUT),
        .CHARACTERS_TO_LUT(CHARACTERS_TO_LUT),
        .LUT_BUSY_IN(LUT_BUSY_IN),
        .LUT_READY_IN(LUT_READY_IN),
        .READY_OUT_BWD(READY_OUT_BWD),
        .REQUEST_IN_FWD(REQUEST_IN_FWD),
        .REQUEST_TO_LUT(REQUEST_TO_LUT),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .UB_CLK_IN(UB_CLK_IN));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "drum_ukw" *) 
module design_enigma_drum_ukw_0_0_drum_ukw
   (CHARACTERS_OUT,
    CHARACTERS_TO_LUT,
    READY_OUT_BWD,
    REQUEST_TO_LUT,
    LUT_READY_IN,
    REQUEST_IN_FWD,
    LUT_BUSY_IN,
    UB_CLK_IN,
    CHARACTERS_FROM_LUT,
    CHARACTERS_IN_FWD,
    SOFT_RESET_N_IN);
  output [25:0]CHARACTERS_OUT;
  output [25:0]CHARACTERS_TO_LUT;
  output READY_OUT_BWD;
  output REQUEST_TO_LUT;
  input LUT_READY_IN;
  input REQUEST_IN_FWD;
  input LUT_BUSY_IN;
  input UB_CLK_IN;
  input [25:0]CHARACTERS_FROM_LUT;
  input [25:0]CHARACTERS_IN_FWD;
  input SOFT_RESET_N_IN;

  wire [25:0]CHARACTERS_FROM_LUT;
  wire [25:0]CHARACTERS_IN_FWD;
  wire [25:0]CHARACTERS_OUT;
  wire [25:0]CHARACTERS_TO_LUT;
  wire \FSM_sequential_c_status[0]_i_1_n_0 ;
  wire \FSM_sequential_c_status[1]_i_1_n_0 ;
  wire LUT_BUSY_IN;
  wire LUT_READY_IN;
  wire READY_OUT_BWD;
  wire REQUEST_IN_FWD;
  wire REQUEST_TO_LUT;
  wire SOFT_RESET_N_IN;
  wire UB_CLK_IN;
  wire \c_chars_in_process[25]_i_1_n_0 ;
  wire \c_chars_out[25]_i_1_n_0 ;
  wire c_request_to_lut_i_1_n_0;
  wire [1:0]c_status;
  wire n_chars_in_process__0;
  wire n_ready_out_bwd;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h33B800B8)) 
    \FSM_sequential_c_status[0]_i_1 
       (.I0(LUT_READY_IN),
        .I1(c_status[1]),
        .I2(REQUEST_IN_FWD),
        .I3(c_status[0]),
        .I4(LUT_BUSY_IN),
        .O(\FSM_sequential_c_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \FSM_sequential_c_status[1]_i_1 
       (.I0(c_status[1]),
        .I1(c_status[0]),
        .I2(LUT_BUSY_IN),
        .O(\FSM_sequential_c_status[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[0]_i_1_n_0 ),
        .Q(c_status[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[1]_i_1_n_0 ),
        .Q(c_status[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_chars_in_process[25]_i_1 
       (.I0(SOFT_RESET_N_IN),
        .O(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[0]),
        .Q(CHARACTERS_TO_LUT[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[10]),
        .Q(CHARACTERS_TO_LUT[10]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[11]),
        .Q(CHARACTERS_TO_LUT[11]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[12]),
        .Q(CHARACTERS_TO_LUT[12]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[13]),
        .Q(CHARACTERS_TO_LUT[13]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[14]),
        .Q(CHARACTERS_TO_LUT[14]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[15]),
        .Q(CHARACTERS_TO_LUT[15]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[16]),
        .Q(CHARACTERS_TO_LUT[16]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[17]),
        .Q(CHARACTERS_TO_LUT[17]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[18]),
        .Q(CHARACTERS_TO_LUT[18]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[19]),
        .Q(CHARACTERS_TO_LUT[19]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[1]),
        .Q(CHARACTERS_TO_LUT[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[20]),
        .Q(CHARACTERS_TO_LUT[20]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[21]),
        .Q(CHARACTERS_TO_LUT[21]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[22]),
        .Q(CHARACTERS_TO_LUT[22]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[23]),
        .Q(CHARACTERS_TO_LUT[23]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[24]),
        .Q(CHARACTERS_TO_LUT[24]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[25]),
        .Q(CHARACTERS_TO_LUT[25]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[2]),
        .Q(CHARACTERS_TO_LUT[2]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[3]),
        .Q(CHARACTERS_TO_LUT[3]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[4]),
        .Q(CHARACTERS_TO_LUT[4]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[5]),
        .Q(CHARACTERS_TO_LUT[5]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[6]),
        .Q(CHARACTERS_TO_LUT[6]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[7]),
        .Q(CHARACTERS_TO_LUT[7]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[8]),
        .Q(CHARACTERS_TO_LUT[8]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process__0),
        .D(CHARACTERS_IN_FWD[9]),
        .Q(CHARACTERS_TO_LUT[9]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1 
       (.I0(LUT_READY_IN),
        .I1(c_status[1]),
        .I2(c_status[0]),
        .O(\c_chars_out[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[0]),
        .Q(CHARACTERS_OUT[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[10]),
        .Q(CHARACTERS_OUT[10]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[11]),
        .Q(CHARACTERS_OUT[11]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[12]),
        .Q(CHARACTERS_OUT[12]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[13]),
        .Q(CHARACTERS_OUT[13]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[14]),
        .Q(CHARACTERS_OUT[14]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[15]),
        .Q(CHARACTERS_OUT[15]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[16]),
        .Q(CHARACTERS_OUT[16]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[17]),
        .Q(CHARACTERS_OUT[17]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[18]),
        .Q(CHARACTERS_OUT[18]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[19]),
        .Q(CHARACTERS_OUT[19]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[1]),
        .Q(CHARACTERS_OUT[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[20]),
        .Q(CHARACTERS_OUT[20]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[21]),
        .Q(CHARACTERS_OUT[21]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[22]),
        .Q(CHARACTERS_OUT[22]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[23]),
        .Q(CHARACTERS_OUT[23]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[24]),
        .Q(CHARACTERS_OUT[24]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[25]),
        .Q(CHARACTERS_OUT[25]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[2]),
        .Q(CHARACTERS_OUT[2]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[3]),
        .Q(CHARACTERS_OUT[3]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[4]),
        .Q(CHARACTERS_OUT[4]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[5]),
        .Q(CHARACTERS_OUT[5]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[6]),
        .Q(CHARACTERS_OUT[6]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[7]),
        .Q(CHARACTERS_OUT[7]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[8]),
        .Q(CHARACTERS_OUT[8]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(\c_chars_out[25]_i_1_n_0 ),
        .D(CHARACTERS_FROM_LUT[9]),
        .Q(CHARACTERS_OUT[9]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    c_ready_out_bwd_i_1
       (.I0(c_status[0]),
        .I1(c_status[1]),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(READY_OUT_BWD),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCFFF0404)) 
    c_request_to_lut_i_1
       (.I0(LUT_BUSY_IN),
        .I1(c_status[0]),
        .I2(c_status[1]),
        .I3(LUT_READY_IN),
        .I4(REQUEST_TO_LUT),
        .O(c_request_to_lut_i_1_n_0));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_i_1_n_0),
        .Q(REQUEST_TO_LUT),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    n_chars_in_process
       (.I0(REQUEST_IN_FWD),
        .I1(c_status[0]),
        .I2(c_status[1]),
        .O(n_chars_in_process__0));
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
