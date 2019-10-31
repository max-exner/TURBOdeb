// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Jun  6 18:27:04 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /homes/mexner/TURBOdeb/turing_bombe_project/src/bd/design_enigma/ip/design_enigma_drum_2_0/design_enigma_drum_2_0_sim_netlist.v
// Design      : design_enigma_drum_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_enigma_drum_2_0,drum,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "drum,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_enigma_drum_2_0
   (UB_CLK_IN,
    SOFT_RESET_N_IN,
    CONFIG_DRUM_TYP_IN,
    CONFIG_START_POS,
    CONFIG_DRUM_OVERFLOW,
    CHARACTERS_IN_FWD,
    CHARACTERS_IN_BWD,
    REQUEST_IN_FWD,
    REQUEST_IN_BWD,
    DRUM_IMPULS_IN,
    LUT_READY_IN,
    LUT_BUSY_IN,
    CHARACTERS_FROM_LUT,
    CHARACTERS_TO_LUT,
    DRUM_TYP_TO_LUT,
    DIRECTION_TO_LUT,
    REQUEST_TO_LUT,
    CHARACTERS_OUT,
    READY_OUT_FWD,
    READY_OUT_BWD,
    DRUM_IMPULS_OUT);
  input UB_CLK_IN;
  input SOFT_RESET_N_IN;
  input [2:0]CONFIG_DRUM_TYP_IN;
  input [4:0]CONFIG_START_POS;
  input CONFIG_DRUM_OVERFLOW;
  input [25:0]CHARACTERS_IN_FWD;
  input [25:0]CHARACTERS_IN_BWD;
  input REQUEST_IN_FWD;
  input REQUEST_IN_BWD;
  input DRUM_IMPULS_IN;
  input LUT_READY_IN;
  input LUT_BUSY_IN;
  input [25:0]CHARACTERS_FROM_LUT;
  output [25:0]CHARACTERS_TO_LUT;
  output [2:0]DRUM_TYP_TO_LUT;
  output DIRECTION_TO_LUT;
  output REQUEST_TO_LUT;
  output [25:0]CHARACTERS_OUT;
  output READY_OUT_FWD;
  output READY_OUT_BWD;
  output DRUM_IMPULS_OUT;

  wire [25:0]CHARACTERS_FROM_LUT;
  wire [25:0]CHARACTERS_IN_BWD;
  wire [25:0]CHARACTERS_IN_FWD;
  wire [25:0]CHARACTERS_OUT;
  wire [25:0]CHARACTERS_TO_LUT;
  wire CONFIG_DRUM_OVERFLOW;
  wire [2:0]CONFIG_DRUM_TYP_IN;
  wire [4:0]CONFIG_START_POS;
  wire DIRECTION_TO_LUT;
  wire DRUM_IMPULS_IN;
  wire DRUM_IMPULS_OUT;
  wire LUT_BUSY_IN;
  wire LUT_READY_IN;
  wire READY_OUT_BWD;
  wire READY_OUT_FWD;
  wire REQUEST_IN_BWD;
  wire REQUEST_IN_FWD;
  wire REQUEST_TO_LUT;
  wire SOFT_RESET_N_IN;
  wire UB_CLK_IN;

  assign DRUM_TYP_TO_LUT[2:0] = CONFIG_DRUM_TYP_IN;
  design_enigma_drum_2_0_drum U0
       (.CHARACTERS_FROM_LUT(CHARACTERS_FROM_LUT),
        .CHARACTERS_IN_BWD(CHARACTERS_IN_BWD),
        .CHARACTERS_IN_FWD(CHARACTERS_IN_FWD),
        .CHARACTERS_OUT(CHARACTERS_OUT),
        .CONFIG_DRUM_OVERFLOW(CONFIG_DRUM_OVERFLOW),
        .CONFIG_START_POS(CONFIG_START_POS),
        .DRUM_IMPULS_IN(DRUM_IMPULS_IN),
        .DRUM_IMPULS_OUT(DRUM_IMPULS_OUT),
        .LUT_BUSY_IN(LUT_BUSY_IN),
        .LUT_READY_IN(LUT_READY_IN),
        .Q(CHARACTERS_TO_LUT),
        .READY_OUT_BWD(READY_OUT_BWD),
        .READY_OUT_FWD(READY_OUT_FWD),
        .REQUEST_IN_BWD(REQUEST_IN_BWD),
        .REQUEST_IN_FWD(REQUEST_IN_FWD),
        .REQUEST_TO_LUT(REQUEST_TO_LUT),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .UB_CLK_IN(UB_CLK_IN),
        .c_dir_to_lut_reg_0(DIRECTION_TO_LUT));
endmodule

(* ORIG_REF_NAME = "drum" *) 
module design_enigma_drum_2_0_drum
   (CHARACTERS_OUT,
    Q,
    READY_OUT_FWD,
    READY_OUT_BWD,
    DRUM_IMPULS_OUT,
    c_dir_to_lut_reg_0,
    REQUEST_TO_LUT,
    LUT_BUSY_IN,
    LUT_READY_IN,
    REQUEST_IN_FWD,
    REQUEST_IN_BWD,
    UB_CLK_IN,
    CONFIG_DRUM_OVERFLOW,
    DRUM_IMPULS_IN,
    CHARACTERS_FROM_LUT,
    CHARACTERS_IN_FWD,
    CHARACTERS_IN_BWD,
    SOFT_RESET_N_IN,
    CONFIG_START_POS);
  output [25:0]CHARACTERS_OUT;
  output [25:0]Q;
  output READY_OUT_FWD;
  output READY_OUT_BWD;
  output DRUM_IMPULS_OUT;
  output c_dir_to_lut_reg_0;
  output REQUEST_TO_LUT;
  input LUT_BUSY_IN;
  input LUT_READY_IN;
  input REQUEST_IN_FWD;
  input REQUEST_IN_BWD;
  input UB_CLK_IN;
  input CONFIG_DRUM_OVERFLOW;
  input DRUM_IMPULS_IN;
  input [25:0]CHARACTERS_FROM_LUT;
  input [25:0]CHARACTERS_IN_FWD;
  input [25:0]CHARACTERS_IN_BWD;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS;

  wire [25:0]CHARACTERS_FROM_LUT;
  wire [25:0]CHARACTERS_IN_BWD;
  wire [25:0]CHARACTERS_IN_FWD;
  wire [25:0]CHARACTERS_OUT;
  wire CONFIG_DRUM_OVERFLOW;
  wire [4:0]CONFIG_START_POS;
  wire DRUM_IMPULS_IN;
  wire DRUM_IMPULS_OUT;
  wire \FSM_sequential_c_status[0]_i_1_n_0 ;
  wire \FSM_sequential_c_status[1]_i_1_n_0 ;
  wire LUT_BUSY_IN;
  wire LUT_READY_IN;
  wire [25:0]Q;
  wire READY_OUT_BWD;
  wire READY_OUT_FWD;
  wire REQUEST_IN_BWD;
  wire REQUEST_IN_FWD;
  wire REQUEST_TO_LUT;
  wire [25:0]ROTATE_RIGHT;
  wire SOFT_RESET_N_IN;
  wire UB_CLK_IN;
  wire \c_chars_in_process[0]_i_2_n_0 ;
  wire \c_chars_in_process[10]_i_2_n_0 ;
  wire \c_chars_in_process[10]_i_3_n_0 ;
  wire \c_chars_in_process[10]_i_4_n_0 ;
  wire \c_chars_in_process[11]_i_2_n_0 ;
  wire \c_chars_in_process[11]_i_3_n_0 ;
  wire \c_chars_in_process[11]_i_4_n_0 ;
  wire \c_chars_in_process[12]_i_2_n_0 ;
  wire \c_chars_in_process[12]_i_3_n_0 ;
  wire \c_chars_in_process[12]_i_4_n_0 ;
  wire \c_chars_in_process[13]_i_2_n_0 ;
  wire \c_chars_in_process[13]_i_3_n_0 ;
  wire \c_chars_in_process[13]_i_4_n_0 ;
  wire \c_chars_in_process[14]_i_2_n_0 ;
  wire \c_chars_in_process[14]_i_3_n_0 ;
  wire \c_chars_in_process[14]_i_4_n_0 ;
  wire \c_chars_in_process[15]_i_2_n_0 ;
  wire \c_chars_in_process[15]_i_3_n_0 ;
  wire \c_chars_in_process[15]_i_4_n_0 ;
  wire \c_chars_in_process[16]_i_2_n_0 ;
  wire \c_chars_in_process[16]_i_3_n_0 ;
  wire \c_chars_in_process[16]_i_4_n_0 ;
  wire \c_chars_in_process[17]_i_2_n_0 ;
  wire \c_chars_in_process[17]_i_3_n_0 ;
  wire \c_chars_in_process[17]_i_4_n_0 ;
  wire \c_chars_in_process[18]_i_2_n_0 ;
  wire \c_chars_in_process[18]_i_3_n_0 ;
  wire \c_chars_in_process[18]_i_4_n_0 ;
  wire \c_chars_in_process[19]_i_2_n_0 ;
  wire \c_chars_in_process[19]_i_3_n_0 ;
  wire \c_chars_in_process[19]_i_4_n_0 ;
  wire \c_chars_in_process[1]_i_2_n_0 ;
  wire \c_chars_in_process[1]_i_3_n_0 ;
  wire \c_chars_in_process[20]_i_2_n_0 ;
  wire \c_chars_in_process[20]_i_3_n_0 ;
  wire \c_chars_in_process[20]_i_4_n_0 ;
  wire \c_chars_in_process[21]_i_2_n_0 ;
  wire \c_chars_in_process[21]_i_3_n_0 ;
  wire \c_chars_in_process[21]_i_4_n_0 ;
  wire \c_chars_in_process[22]_i_2_n_0 ;
  wire \c_chars_in_process[22]_i_3_n_0 ;
  wire \c_chars_in_process[22]_i_4_n_0 ;
  wire \c_chars_in_process[23]_i_2_n_0 ;
  wire \c_chars_in_process[23]_i_3_n_0 ;
  wire \c_chars_in_process[23]_i_4_n_0 ;
  wire \c_chars_in_process[24]_i_2_n_0 ;
  wire \c_chars_in_process[24]_i_3_n_0 ;
  wire \c_chars_in_process[24]_i_4_n_0 ;
  wire \c_chars_in_process[25]_i_10_n_0 ;
  wire \c_chars_in_process[25]_i_11_n_0 ;
  wire \c_chars_in_process[25]_i_12_n_0 ;
  wire \c_chars_in_process[25]_i_13_n_0 ;
  wire \c_chars_in_process[25]_i_14_n_0 ;
  wire \c_chars_in_process[25]_i_1_n_0 ;
  wire \c_chars_in_process[25]_i_4_n_0 ;
  wire \c_chars_in_process[25]_i_5_n_0 ;
  wire \c_chars_in_process[25]_i_6_n_0 ;
  wire \c_chars_in_process[25]_i_7_n_0 ;
  wire \c_chars_in_process[25]_i_8_n_0 ;
  wire \c_chars_in_process[25]_i_9_n_0 ;
  wire \c_chars_in_process[2]_i_2_n_0 ;
  wire \c_chars_in_process[2]_i_3_n_0 ;
  wire \c_chars_in_process[3]_i_2_n_0 ;
  wire \c_chars_in_process[3]_i_3_n_0 ;
  wire \c_chars_in_process[4]_i_2_n_0 ;
  wire \c_chars_in_process[4]_i_3_n_0 ;
  wire \c_chars_in_process[5]_i_2_n_0 ;
  wire \c_chars_in_process[5]_i_3_n_0 ;
  wire \c_chars_in_process[6]_i_2_n_0 ;
  wire \c_chars_in_process[6]_i_3_n_0 ;
  wire \c_chars_in_process[7]_i_2_n_0 ;
  wire \c_chars_in_process[7]_i_3_n_0 ;
  wire \c_chars_in_process[7]_i_4_n_0 ;
  wire \c_chars_in_process[8]_i_2_n_0 ;
  wire \c_chars_in_process[8]_i_3_n_0 ;
  wire \c_chars_in_process[8]_i_4_n_0 ;
  wire \c_chars_in_process[9]_i_2_n_0 ;
  wire \c_chars_in_process[9]_i_3_n_0 ;
  wire \c_chars_in_process[9]_i_4_n_0 ;
  wire \c_chars_out[10]_i_2_n_0 ;
  wire \c_chars_out[10]_i_3_n_0 ;
  wire \c_chars_out[11]_i_2_n_0 ;
  wire \c_chars_out[11]_i_3_n_0 ;
  wire \c_chars_out[12]_i_2_n_0 ;
  wire \c_chars_out[12]_i_3_n_0 ;
  wire \c_chars_out[13]_i_2_n_0 ;
  wire \c_chars_out[13]_i_3_n_0 ;
  wire \c_chars_out[14]_i_2_n_0 ;
  wire \c_chars_out[14]_i_3_n_0 ;
  wire \c_chars_out[15]_i_2_n_0 ;
  wire \c_chars_out[15]_i_3_n_0 ;
  wire \c_chars_out[16]_i_2_n_0 ;
  wire \c_chars_out[16]_i_3_n_0 ;
  wire \c_chars_out[17]_i_2_n_0 ;
  wire \c_chars_out[17]_i_3_n_0 ;
  wire \c_chars_out[18]_i_2_n_0 ;
  wire \c_chars_out[18]_i_3_n_0 ;
  wire \c_chars_out[19]_i_2_n_0 ;
  wire \c_chars_out[19]_i_3_n_0 ;
  wire \c_chars_out[1]_i_2_n_0 ;
  wire \c_chars_out[20]_i_2_n_0 ;
  wire \c_chars_out[20]_i_3_n_0 ;
  wire \c_chars_out[21]_i_2_n_0 ;
  wire \c_chars_out[21]_i_3_n_0 ;
  wire \c_chars_out[22]_i_2_n_0 ;
  wire \c_chars_out[22]_i_3_n_0 ;
  wire \c_chars_out[23]_i_2_n_0 ;
  wire \c_chars_out[23]_i_3_n_0 ;
  wire \c_chars_out[24]_i_2_n_0 ;
  wire \c_chars_out[24]_i_3_n_0 ;
  wire \c_chars_out[25]_i_10_n_0 ;
  wire \c_chars_out[25]_i_11_n_0 ;
  wire \c_chars_out[25]_i_12_n_0 ;
  wire \c_chars_out[25]_i_3_n_0 ;
  wire \c_chars_out[25]_i_4_n_0 ;
  wire \c_chars_out[25]_i_5_n_0 ;
  wire \c_chars_out[25]_i_6_n_0 ;
  wire \c_chars_out[25]_i_7_n_0 ;
  wire \c_chars_out[25]_i_8_n_0 ;
  wire \c_chars_out[25]_i_9_n_0 ;
  wire \c_chars_out[2]_i_2_n_0 ;
  wire \c_chars_out[3]_i_2_n_0 ;
  wire \c_chars_out[4]_i_2_n_0 ;
  wire \c_chars_out[5]_i_2_n_0 ;
  wire \c_chars_out[6]_i_2_n_0 ;
  wire \c_chars_out[7]_i_2_n_0 ;
  wire \c_chars_out[7]_i_3_n_0 ;
  wire \c_chars_out[8]_i_2_n_0 ;
  wire \c_chars_out[8]_i_3_n_0 ;
  wire \c_chars_out[9]_i_2_n_0 ;
  wire \c_chars_out[9]_i_3_n_0 ;
  wire c_dir_to_lut_i_1_n_0;
  wire c_dir_to_lut_reg_0;
  wire \c_drum_count[0]_i_1_n_0 ;
  wire \c_drum_count[1]_i_1_n_0 ;
  wire \c_drum_count[2]_i_1_n_0 ;
  wire \c_drum_count[3]_i_1_n_0 ;
  wire \c_drum_count[4]_i_1_n_0 ;
  wire \c_drum_count_reg_n_0_[0] ;
  wire \c_drum_count_reg_n_0_[1] ;
  wire \c_drum_count_reg_n_0_[2] ;
  wire \c_drum_count_reg_n_0_[3] ;
  wire \c_drum_count_reg_n_0_[4] ;
  wire [5:0]c_overflow_count;
  wire c_request_to_lut_i_1_n_0;
  wire [1:0]c_status;
  wire n_chars_in_process;
  wire [25:0]n_chars_in_process1_in;
  wire n_chars_out;
  wire [4:0]n_drum_count;
  wire \n_drum_count[4]_i_1_n_0 ;
  wire n_drum_impuls_out;
  wire [5:0]n_overflow_count;
  wire \n_overflow_count[0]_i_1_n_0 ;
  wire \n_overflow_count[1]_i_1_n_0 ;
  wire \n_overflow_count[2]_i_1_n_0 ;
  wire \n_overflow_count[3]_i_1_n_0 ;
  wire \n_overflow_count[4]_i_1_n_0 ;
  wire \n_overflow_count[5]_i_2_n_0 ;
  wire \n_overflow_count[5]_i_3_n_0 ;
  wire \n_overflow_count[5]_i_4_n_0 ;
  wire \n_overflow_count_reg[5]_i_1_n_0 ;
  wire n_ready_out_bwd;
  wire n_ready_out_fwd;
  wire [0:0]p_0_in;
  wire [4:1]plusOp;

  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_c_status[0]_i_1 
       (.I0(LUT_BUSY_IN),
        .I1(c_status[0]),
        .I2(LUT_READY_IN),
        .I3(c_status[1]),
        .I4(REQUEST_IN_FWD),
        .I5(REQUEST_IN_BWD),
        .O(\FSM_sequential_c_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_c_status[1]_i_1 
       (.I0(LUT_BUSY_IN),
        .I1(c_status[0]),
        .I2(c_status[1]),
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
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[0]_i_1 
       (.I0(\c_chars_in_process[25]_i_5_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[1]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[0]_i_2_n_0 ),
        .O(n_chars_in_process1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[0]_i_2 
       (.I0(CHARACTERS_IN_FWD[0]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[0]),
        .O(\c_chars_in_process[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[10]_i_1 
       (.I0(\c_chars_in_process[10]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[11]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[10]_i_3_n_0 ),
        .O(n_chars_in_process1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_2 
       (.I0(\c_chars_in_process[10]_i_4_n_0 ),
        .I1(\c_chars_in_process[12]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[14]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[16]_i_4_n_0 ),
        .O(\c_chars_in_process[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[10]_i_3 
       (.I0(CHARACTERS_IN_FWD[10]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[10]),
        .O(\c_chars_in_process[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_4 
       (.I0(Q[5]),
        .I1(Q[21]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[13]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[3]),
        .O(\c_chars_in_process[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[11]_i_1 
       (.I0(\c_chars_in_process[11]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[12]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[11]_i_3_n_0 ),
        .O(n_chars_in_process1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_2 
       (.I0(\c_chars_in_process[11]_i_4_n_0 ),
        .I1(\c_chars_in_process[13]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[15]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[17]_i_4_n_0 ),
        .O(\c_chars_in_process[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[11]_i_3 
       (.I0(CHARACTERS_IN_FWD[11]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[11]),
        .O(\c_chars_in_process[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_4 
       (.I0(Q[6]),
        .I1(Q[22]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[14]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[4]),
        .O(\c_chars_in_process[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[12]_i_1 
       (.I0(\c_chars_in_process[12]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[13]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[12]_i_3_n_0 ),
        .O(n_chars_in_process1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_2 
       (.I0(\c_chars_in_process[12]_i_4_n_0 ),
        .I1(\c_chars_in_process[14]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[16]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[18]_i_4_n_0 ),
        .O(\c_chars_in_process[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[12]_i_3 
       (.I0(CHARACTERS_IN_FWD[12]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[12]),
        .O(\c_chars_in_process[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_4 
       (.I0(Q[7]),
        .I1(Q[23]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[15]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[5]),
        .O(\c_chars_in_process[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[13]_i_1 
       (.I0(\c_chars_in_process[13]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[14]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[13]_i_3_n_0 ),
        .O(n_chars_in_process1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_2 
       (.I0(\c_chars_in_process[13]_i_4_n_0 ),
        .I1(\c_chars_in_process[15]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[17]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[19]_i_4_n_0 ),
        .O(\c_chars_in_process[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[13]_i_3 
       (.I0(CHARACTERS_IN_FWD[13]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[13]),
        .O(\c_chars_in_process[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_4 
       (.I0(Q[8]),
        .I1(Q[24]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[16]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[6]),
        .O(\c_chars_in_process[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[14]_i_1 
       (.I0(\c_chars_in_process[14]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[15]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[14]_i_3_n_0 ),
        .O(n_chars_in_process1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_2 
       (.I0(\c_chars_in_process[14]_i_4_n_0 ),
        .I1(\c_chars_in_process[16]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[18]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[20]_i_4_n_0 ),
        .O(\c_chars_in_process[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[14]_i_3 
       (.I0(CHARACTERS_IN_FWD[14]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[14]),
        .O(\c_chars_in_process[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_4 
       (.I0(Q[9]),
        .I1(Q[25]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[17]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[7]),
        .O(\c_chars_in_process[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[15]_i_1 
       (.I0(\c_chars_in_process[15]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[16]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[15]_i_3_n_0 ),
        .O(n_chars_in_process1_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_2 
       (.I0(\c_chars_in_process[15]_i_4_n_0 ),
        .I1(\c_chars_in_process[17]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[19]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[21]_i_4_n_0 ),
        .O(\c_chars_in_process[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[15]_i_3 
       (.I0(CHARACTERS_IN_FWD[15]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[15]),
        .O(\c_chars_in_process[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_4 
       (.I0(Q[10]),
        .I1(Q[0]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[18]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[8]),
        .O(\c_chars_in_process[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[16]_i_1 
       (.I0(\c_chars_in_process[16]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[17]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[16]_i_3_n_0 ),
        .O(n_chars_in_process1_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_2 
       (.I0(\c_chars_in_process[16]_i_4_n_0 ),
        .I1(\c_chars_in_process[18]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[20]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[22]_i_4_n_0 ),
        .O(\c_chars_in_process[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[16]_i_3 
       (.I0(CHARACTERS_IN_FWD[16]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[16]),
        .O(\c_chars_in_process[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_4 
       (.I0(Q[11]),
        .I1(Q[1]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[19]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[9]),
        .O(\c_chars_in_process[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[17]_i_1 
       (.I0(\c_chars_in_process[17]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[18]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[17]_i_3_n_0 ),
        .O(n_chars_in_process1_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_2 
       (.I0(\c_chars_in_process[17]_i_4_n_0 ),
        .I1(\c_chars_in_process[19]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[21]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[23]_i_4_n_0 ),
        .O(\c_chars_in_process[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[17]_i_3 
       (.I0(CHARACTERS_IN_FWD[17]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[17]),
        .O(\c_chars_in_process[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_4 
       (.I0(Q[12]),
        .I1(Q[2]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[20]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[10]),
        .O(\c_chars_in_process[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[18]_i_1 
       (.I0(\c_chars_in_process[18]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[19]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[18]_i_3_n_0 ),
        .O(n_chars_in_process1_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_2 
       (.I0(\c_chars_in_process[18]_i_4_n_0 ),
        .I1(\c_chars_in_process[20]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[22]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[24]_i_4_n_0 ),
        .O(\c_chars_in_process[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[18]_i_3 
       (.I0(CHARACTERS_IN_FWD[18]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[18]),
        .O(\c_chars_in_process[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_4 
       (.I0(Q[13]),
        .I1(Q[3]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[21]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[11]),
        .O(\c_chars_in_process[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[19]_i_1 
       (.I0(\c_chars_in_process[19]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[20]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[19]_i_3_n_0 ),
        .O(n_chars_in_process1_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_2 
       (.I0(\c_chars_in_process[19]_i_4_n_0 ),
        .I1(\c_chars_in_process[21]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[23]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_7_n_0 ),
        .O(\c_chars_in_process[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[19]_i_3 
       (.I0(CHARACTERS_IN_FWD[19]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[19]),
        .O(\c_chars_in_process[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_4 
       (.I0(Q[14]),
        .I1(Q[4]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[22]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[12]),
        .O(\c_chars_in_process[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[1]_i_1 
       (.I0(\c_chars_in_process[1]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[2]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[1]_i_3_n_0 ),
        .O(n_chars_in_process1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[1]_i_2 
       (.I0(\c_chars_in_process[25]_i_8_n_0 ),
        .I1(\c_chars_in_process[25]_i_9_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_10_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[7]_i_4_n_0 ),
        .O(\c_chars_in_process[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[1]_i_3 
       (.I0(CHARACTERS_IN_FWD[1]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[1]),
        .O(\c_chars_in_process[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[20]_i_1 
       (.I0(\c_chars_in_process[20]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[21]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[20]_i_3_n_0 ),
        .O(n_chars_in_process1_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_2 
       (.I0(\c_chars_in_process[20]_i_4_n_0 ),
        .I1(\c_chars_in_process[22]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[24]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_11_n_0 ),
        .O(\c_chars_in_process[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[20]_i_3 
       (.I0(CHARACTERS_IN_FWD[20]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[20]),
        .O(\c_chars_in_process[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_4 
       (.I0(Q[15]),
        .I1(Q[5]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[23]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[13]),
        .O(\c_chars_in_process[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[21]_i_1 
       (.I0(\c_chars_in_process[21]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[22]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[21]_i_3_n_0 ),
        .O(n_chars_in_process1_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_2 
       (.I0(\c_chars_in_process[21]_i_4_n_0 ),
        .I1(\c_chars_in_process[23]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_7_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_8_n_0 ),
        .O(\c_chars_in_process[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[21]_i_3 
       (.I0(CHARACTERS_IN_FWD[21]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[21]),
        .O(\c_chars_in_process[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_4 
       (.I0(Q[16]),
        .I1(Q[6]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[24]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[14]),
        .O(\c_chars_in_process[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[22]_i_1 
       (.I0(\c_chars_in_process[22]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[23]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[22]_i_3_n_0 ),
        .O(n_chars_in_process1_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_2 
       (.I0(\c_chars_in_process[22]_i_4_n_0 ),
        .I1(\c_chars_in_process[24]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_11_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_12_n_0 ),
        .O(\c_chars_in_process[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[22]_i_3 
       (.I0(CHARACTERS_IN_FWD[22]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[22]),
        .O(\c_chars_in_process[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_4 
       (.I0(Q[17]),
        .I1(Q[7]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[25]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[15]),
        .O(\c_chars_in_process[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[23]_i_1 
       (.I0(\c_chars_in_process[23]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[24]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[23]_i_3_n_0 ),
        .O(n_chars_in_process1_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_2 
       (.I0(\c_chars_in_process[23]_i_4_n_0 ),
        .I1(\c_chars_in_process[25]_i_7_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_8_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_9_n_0 ),
        .O(\c_chars_in_process[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[23]_i_3 
       (.I0(CHARACTERS_IN_FWD[23]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[23]),
        .O(\c_chars_in_process[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_4 
       (.I0(Q[18]),
        .I1(Q[8]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[16]),
        .O(\c_chars_in_process[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[24]_i_1 
       (.I0(\c_chars_in_process[24]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[25]_i_4_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[24]_i_3_n_0 ),
        .O(n_chars_in_process1_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_2 
       (.I0(\c_chars_in_process[24]_i_4_n_0 ),
        .I1(\c_chars_in_process[25]_i_11_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_12_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_13_n_0 ),
        .O(\c_chars_in_process[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[24]_i_3 
       (.I0(CHARACTERS_IN_FWD[24]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[24]),
        .O(\c_chars_in_process[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_4 
       (.I0(Q[19]),
        .I1(Q[9]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[17]),
        .O(\c_chars_in_process[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_chars_in_process[25]_i_1 
       (.I0(SOFT_RESET_N_IN),
        .O(\c_chars_in_process[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_10 
       (.I0(Q[0]),
        .I1(Q[16]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[8]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[24]),
        .O(\c_chars_in_process[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_11 
       (.I0(Q[21]),
        .I1(Q[11]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[3]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[19]),
        .O(\c_chars_in_process[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_12 
       (.I0(Q[23]),
        .I1(Q[13]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[5]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[21]),
        .O(\c_chars_in_process[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_13 
       (.I0(Q[25]),
        .I1(Q[15]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[7]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[23]),
        .O(\c_chars_in_process[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_14 
       (.I0(Q[1]),
        .I1(Q[17]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[9]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[25]),
        .O(\c_chars_in_process[25]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00007774)) 
    \c_chars_in_process[25]_i_2 
       (.I0(LUT_BUSY_IN),
        .I1(c_status[0]),
        .I2(REQUEST_IN_BWD),
        .I3(REQUEST_IN_FWD),
        .I4(c_status[1]),
        .O(n_chars_in_process));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[25]_i_3 
       (.I0(\c_chars_in_process[25]_i_4_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[25]_i_5_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[25]_i_6_n_0 ),
        .O(n_chars_in_process1_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_4 
       (.I0(\c_chars_in_process[25]_i_7_n_0 ),
        .I1(\c_chars_in_process[25]_i_8_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_9_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_10_n_0 ),
        .O(\c_chars_in_process[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_5 
       (.I0(\c_chars_in_process[25]_i_11_n_0 ),
        .I1(\c_chars_in_process[25]_i_12_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_13_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[25]_i_14_n_0 ),
        .O(\c_chars_in_process[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[25]_i_6 
       (.I0(CHARACTERS_IN_FWD[25]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[25]),
        .O(\c_chars_in_process[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_7 
       (.I0(Q[20]),
        .I1(Q[10]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[2]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[18]),
        .O(\c_chars_in_process[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_8 
       (.I0(Q[22]),
        .I1(Q[12]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[4]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[20]),
        .O(\c_chars_in_process[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_9 
       (.I0(Q[24]),
        .I1(Q[14]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[6]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[22]),
        .O(\c_chars_in_process[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[2]_i_1 
       (.I0(\c_chars_in_process[2]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[3]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[2]_i_3_n_0 ),
        .O(n_chars_in_process1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[2]_i_2 
       (.I0(\c_chars_in_process[25]_i_12_n_0 ),
        .I1(\c_chars_in_process[25]_i_13_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[25]_i_14_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[8]_i_4_n_0 ),
        .O(\c_chars_in_process[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[2]_i_3 
       (.I0(CHARACTERS_IN_FWD[2]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[2]),
        .O(\c_chars_in_process[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[3]_i_1 
       (.I0(\c_chars_in_process[3]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[4]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[3]_i_3_n_0 ),
        .O(n_chars_in_process1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[3]_i_2 
       (.I0(\c_chars_in_process[25]_i_9_n_0 ),
        .I1(\c_chars_in_process[25]_i_10_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[7]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[9]_i_4_n_0 ),
        .O(\c_chars_in_process[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[3]_i_3 
       (.I0(CHARACTERS_IN_FWD[3]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[3]),
        .O(\c_chars_in_process[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[4]_i_1 
       (.I0(\c_chars_in_process[4]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[5]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[4]_i_3_n_0 ),
        .O(n_chars_in_process1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[4]_i_2 
       (.I0(\c_chars_in_process[25]_i_13_n_0 ),
        .I1(\c_chars_in_process[25]_i_14_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[8]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[10]_i_4_n_0 ),
        .O(\c_chars_in_process[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[4]_i_3 
       (.I0(CHARACTERS_IN_FWD[4]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[4]),
        .O(\c_chars_in_process[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[5]_i_1 
       (.I0(\c_chars_in_process[5]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[6]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[5]_i_3_n_0 ),
        .O(n_chars_in_process1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[5]_i_2 
       (.I0(\c_chars_in_process[25]_i_10_n_0 ),
        .I1(\c_chars_in_process[7]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[9]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[11]_i_4_n_0 ),
        .O(\c_chars_in_process[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[5]_i_3 
       (.I0(CHARACTERS_IN_FWD[5]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[5]),
        .O(\c_chars_in_process[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[6]_i_1 
       (.I0(\c_chars_in_process[6]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[7]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[6]_i_3_n_0 ),
        .O(n_chars_in_process1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[6]_i_2 
       (.I0(\c_chars_in_process[25]_i_14_n_0 ),
        .I1(\c_chars_in_process[8]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[10]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[12]_i_4_n_0 ),
        .O(\c_chars_in_process[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[6]_i_3 
       (.I0(CHARACTERS_IN_FWD[6]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[6]),
        .O(\c_chars_in_process[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[7]_i_1 
       (.I0(\c_chars_in_process[7]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[8]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[7]_i_3_n_0 ),
        .O(n_chars_in_process1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_2 
       (.I0(\c_chars_in_process[7]_i_4_n_0 ),
        .I1(\c_chars_in_process[9]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[11]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[13]_i_4_n_0 ),
        .O(\c_chars_in_process[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[7]_i_3 
       (.I0(CHARACTERS_IN_FWD[7]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[7]),
        .O(\c_chars_in_process[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_4 
       (.I0(Q[2]),
        .I1(Q[18]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[10]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[0]),
        .O(\c_chars_in_process[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[8]_i_1 
       (.I0(\c_chars_in_process[8]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[9]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[8]_i_3_n_0 ),
        .O(n_chars_in_process1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_2 
       (.I0(\c_chars_in_process[8]_i_4_n_0 ),
        .I1(\c_chars_in_process[10]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[12]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[14]_i_4_n_0 ),
        .O(\c_chars_in_process[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[8]_i_3 
       (.I0(CHARACTERS_IN_FWD[8]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[8]),
        .O(\c_chars_in_process[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_4 
       (.I0(Q[3]),
        .I1(Q[19]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[11]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[1]),
        .O(\c_chars_in_process[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[9]_i_1 
       (.I0(\c_chars_in_process[9]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_in_process[10]_i_2_n_0 ),
        .I3(c_status[0]),
        .I4(\c_chars_in_process[9]_i_3_n_0 ),
        .O(n_chars_in_process1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_2 
       (.I0(\c_chars_in_process[9]_i_4_n_0 ),
        .I1(\c_chars_in_process[11]_i_4_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_in_process[13]_i_4_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_in_process[15]_i_4_n_0 ),
        .O(\c_chars_in_process[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[9]_i_3 
       (.I0(CHARACTERS_IN_FWD[9]),
        .I1(REQUEST_IN_FWD),
        .I2(CHARACTERS_IN_BWD[9]),
        .O(\c_chars_in_process[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_4 
       (.I0(Q[4]),
        .I1(Q[20]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(Q[12]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\c_chars_in_process[9]_i_4_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[0]),
        .Q(Q[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[10]),
        .Q(Q[10]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[11]),
        .Q(Q[11]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[12]),
        .Q(Q[12]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[13]),
        .Q(Q[13]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[14]),
        .Q(Q[14]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[15]),
        .Q(Q[15]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[16]),
        .Q(Q[16]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[17]),
        .Q(Q[17]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[18]),
        .Q(Q[18]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[19]),
        .Q(Q[19]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[1]),
        .Q(Q[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[20]),
        .Q(Q[20]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[21]),
        .Q(Q[21]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[22]),
        .Q(Q[22]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[23]),
        .Q(Q[23]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[24]),
        .Q(Q[24]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[25]),
        .Q(Q[25]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[2]),
        .Q(Q[2]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[3]),
        .Q(Q[3]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[4]),
        .Q(Q[4]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[5]),
        .Q(Q[5]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[6]),
        .Q(Q[6]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[7]),
        .Q(Q[7]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[8]),
        .Q(Q[8]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[9]),
        .Q(Q[9]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[0]_i_1 
       (.I0(\c_chars_out[1]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[25]_i_3_n_0 ),
        .O(ROTATE_RIGHT[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[10]_i_1 
       (.I0(\c_chars_out[11]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[10]_i_2_n_0 ),
        .O(ROTATE_RIGHT[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_2 
       (.I0(\c_chars_out[16]_i_3_n_0 ),
        .I1(\c_chars_out[14]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[12]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[10]_i_3_n_0 ),
        .O(\c_chars_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_3 
       (.I0(CHARACTERS_FROM_LUT[8]),
        .I1(CHARACTERS_FROM_LUT[18]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[0]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[10]),
        .O(\c_chars_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[11]_i_1 
       (.I0(\c_chars_out[12]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[11]_i_2_n_0 ),
        .O(ROTATE_RIGHT[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_2 
       (.I0(\c_chars_out[17]_i_3_n_0 ),
        .I1(\c_chars_out[15]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[13]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[11]_i_3_n_0 ),
        .O(\c_chars_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_3 
       (.I0(CHARACTERS_FROM_LUT[9]),
        .I1(CHARACTERS_FROM_LUT[19]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[1]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[11]),
        .O(\c_chars_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[12]_i_1 
       (.I0(\c_chars_out[13]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[12]_i_2_n_0 ),
        .O(ROTATE_RIGHT[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_2 
       (.I0(\c_chars_out[18]_i_3_n_0 ),
        .I1(\c_chars_out[16]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[14]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[12]_i_3_n_0 ),
        .O(\c_chars_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_3 
       (.I0(CHARACTERS_FROM_LUT[10]),
        .I1(CHARACTERS_FROM_LUT[20]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[2]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[12]),
        .O(\c_chars_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[13]_i_1 
       (.I0(\c_chars_out[14]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[13]_i_2_n_0 ),
        .O(ROTATE_RIGHT[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_2 
       (.I0(\c_chars_out[19]_i_3_n_0 ),
        .I1(\c_chars_out[17]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[15]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[13]_i_3_n_0 ),
        .O(\c_chars_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_3 
       (.I0(CHARACTERS_FROM_LUT[11]),
        .I1(CHARACTERS_FROM_LUT[21]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[3]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[13]),
        .O(\c_chars_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[14]_i_1 
       (.I0(\c_chars_out[15]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[14]_i_2_n_0 ),
        .O(ROTATE_RIGHT[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_2 
       (.I0(\c_chars_out[20]_i_3_n_0 ),
        .I1(\c_chars_out[18]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[16]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[14]_i_3_n_0 ),
        .O(\c_chars_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_3 
       (.I0(CHARACTERS_FROM_LUT[12]),
        .I1(CHARACTERS_FROM_LUT[22]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[4]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[14]),
        .O(\c_chars_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[15]_i_1 
       (.I0(\c_chars_out[16]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[15]_i_2_n_0 ),
        .O(ROTATE_RIGHT[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_2 
       (.I0(\c_chars_out[21]_i_3_n_0 ),
        .I1(\c_chars_out[19]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[17]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[15]_i_3_n_0 ),
        .O(\c_chars_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_3 
       (.I0(CHARACTERS_FROM_LUT[13]),
        .I1(CHARACTERS_FROM_LUT[23]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[5]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[15]),
        .O(\c_chars_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[16]_i_1 
       (.I0(\c_chars_out[17]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[16]_i_2_n_0 ),
        .O(ROTATE_RIGHT[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_2 
       (.I0(\c_chars_out[22]_i_3_n_0 ),
        .I1(\c_chars_out[20]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[18]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[16]_i_3_n_0 ),
        .O(\c_chars_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_3 
       (.I0(CHARACTERS_FROM_LUT[14]),
        .I1(CHARACTERS_FROM_LUT[24]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[6]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[16]),
        .O(\c_chars_out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[17]_i_1 
       (.I0(\c_chars_out[18]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[17]_i_2_n_0 ),
        .O(ROTATE_RIGHT[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_2 
       (.I0(\c_chars_out[23]_i_3_n_0 ),
        .I1(\c_chars_out[21]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[19]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[17]_i_3_n_0 ),
        .O(\c_chars_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_3 
       (.I0(CHARACTERS_FROM_LUT[15]),
        .I1(CHARACTERS_FROM_LUT[25]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[7]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[17]),
        .O(\c_chars_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[18]_i_1 
       (.I0(\c_chars_out[19]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[18]_i_2_n_0 ),
        .O(ROTATE_RIGHT[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_2 
       (.I0(\c_chars_out[24]_i_3_n_0 ),
        .I1(\c_chars_out[22]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[20]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[18]_i_3_n_0 ),
        .O(\c_chars_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_3 
       (.I0(CHARACTERS_FROM_LUT[16]),
        .I1(CHARACTERS_FROM_LUT[0]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[8]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[18]),
        .O(\c_chars_out[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[19]_i_1 
       (.I0(\c_chars_out[20]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[19]_i_2_n_0 ),
        .O(ROTATE_RIGHT[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_2 
       (.I0(\c_chars_out[25]_i_12_n_0 ),
        .I1(\c_chars_out[23]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[21]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[19]_i_3_n_0 ),
        .O(\c_chars_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_3 
       (.I0(CHARACTERS_FROM_LUT[17]),
        .I1(CHARACTERS_FROM_LUT[1]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[9]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[19]),
        .O(\c_chars_out[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[1]_i_1 
       (.I0(\c_chars_out[2]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[1]_i_2_n_0 ),
        .O(ROTATE_RIGHT[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[1]_i_2 
       (.I0(\c_chars_out[7]_i_3_n_0 ),
        .I1(\c_chars_out[25]_i_9_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_10_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_11_n_0 ),
        .O(\c_chars_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[20]_i_1 
       (.I0(\c_chars_out[21]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[20]_i_2_n_0 ),
        .O(ROTATE_RIGHT[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_2 
       (.I0(\c_chars_out[25]_i_8_n_0 ),
        .I1(\c_chars_out[24]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[22]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[20]_i_3_n_0 ),
        .O(\c_chars_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_3 
       (.I0(CHARACTERS_FROM_LUT[18]),
        .I1(CHARACTERS_FROM_LUT[2]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[10]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[20]),
        .O(\c_chars_out[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[21]_i_1 
       (.I0(\c_chars_out[22]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[21]_i_2_n_0 ),
        .O(ROTATE_RIGHT[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_2 
       (.I0(\c_chars_out[25]_i_11_n_0 ),
        .I1(\c_chars_out[25]_i_12_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[23]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[21]_i_3_n_0 ),
        .O(\c_chars_out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_3 
       (.I0(CHARACTERS_FROM_LUT[19]),
        .I1(CHARACTERS_FROM_LUT[3]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[11]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[21]),
        .O(\c_chars_out[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[22]_i_1 
       (.I0(\c_chars_out[23]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[22]_i_2_n_0 ),
        .O(ROTATE_RIGHT[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_2 
       (.I0(\c_chars_out[25]_i_7_n_0 ),
        .I1(\c_chars_out[25]_i_8_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[24]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[22]_i_3_n_0 ),
        .O(\c_chars_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_3 
       (.I0(CHARACTERS_FROM_LUT[20]),
        .I1(CHARACTERS_FROM_LUT[4]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[12]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[22]),
        .O(\c_chars_out[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[23]_i_1 
       (.I0(\c_chars_out[24]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[23]_i_2_n_0 ),
        .O(ROTATE_RIGHT[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_2 
       (.I0(\c_chars_out[25]_i_10_n_0 ),
        .I1(\c_chars_out[25]_i_11_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_12_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[23]_i_3_n_0 ),
        .O(\c_chars_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_3 
       (.I0(CHARACTERS_FROM_LUT[21]),
        .I1(CHARACTERS_FROM_LUT[5]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[13]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[23]),
        .O(\c_chars_out[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[24]_i_1 
       (.I0(\c_chars_out[25]_i_4_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[24]_i_2_n_0 ),
        .O(ROTATE_RIGHT[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_2 
       (.I0(\c_chars_out[25]_i_6_n_0 ),
        .I1(\c_chars_out[25]_i_7_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_8_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[24]_i_3_n_0 ),
        .O(\c_chars_out[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_3 
       (.I0(CHARACTERS_FROM_LUT[22]),
        .I1(CHARACTERS_FROM_LUT[6]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[14]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[24]),
        .O(\c_chars_out[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1 
       (.I0(c_status[1]),
        .I1(LUT_READY_IN),
        .I2(c_status[0]),
        .O(n_chars_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_10 
       (.I0(CHARACTERS_FROM_LUT[1]),
        .I1(CHARACTERS_FROM_LUT[11]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[19]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[3]),
        .O(\c_chars_out[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_11 
       (.I0(CHARACTERS_FROM_LUT[25]),
        .I1(CHARACTERS_FROM_LUT[9]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[17]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[1]),
        .O(\c_chars_out[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_12 
       (.I0(CHARACTERS_FROM_LUT[23]),
        .I1(CHARACTERS_FROM_LUT[7]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[15]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[25]),
        .O(\c_chars_out[25]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[25]_i_2 
       (.I0(\c_chars_out[25]_i_3_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[25]_i_4_n_0 ),
        .O(ROTATE_RIGHT[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_3 
       (.I0(\c_chars_out[25]_i_5_n_0 ),
        .I1(\c_chars_out[25]_i_6_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_7_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_8_n_0 ),
        .O(\c_chars_out[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_4 
       (.I0(\c_chars_out[25]_i_9_n_0 ),
        .I1(\c_chars_out[25]_i_10_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_11_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_12_n_0 ),
        .O(\c_chars_out[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_5 
       (.I0(CHARACTERS_FROM_LUT[4]),
        .I1(CHARACTERS_FROM_LUT[14]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[22]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[6]),
        .O(\c_chars_out[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_6 
       (.I0(CHARACTERS_FROM_LUT[2]),
        .I1(CHARACTERS_FROM_LUT[12]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[20]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[4]),
        .O(\c_chars_out[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_7 
       (.I0(CHARACTERS_FROM_LUT[0]),
        .I1(CHARACTERS_FROM_LUT[10]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[18]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[2]),
        .O(\c_chars_out[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_8 
       (.I0(CHARACTERS_FROM_LUT[24]),
        .I1(CHARACTERS_FROM_LUT[8]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[16]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[0]),
        .O(\c_chars_out[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_9 
       (.I0(CHARACTERS_FROM_LUT[3]),
        .I1(CHARACTERS_FROM_LUT[13]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[21]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[5]),
        .O(\c_chars_out[25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[2]_i_1 
       (.I0(\c_chars_out[3]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[2]_i_2_n_0 ),
        .O(ROTATE_RIGHT[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[2]_i_2 
       (.I0(\c_chars_out[8]_i_3_n_0 ),
        .I1(\c_chars_out[25]_i_5_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_6_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_7_n_0 ),
        .O(\c_chars_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[3]_i_1 
       (.I0(\c_chars_out[4]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[3]_i_2_n_0 ),
        .O(ROTATE_RIGHT[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[3]_i_2 
       (.I0(\c_chars_out[9]_i_3_n_0 ),
        .I1(\c_chars_out[7]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_9_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_10_n_0 ),
        .O(\c_chars_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[4]_i_1 
       (.I0(\c_chars_out[5]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[4]_i_2_n_0 ),
        .O(ROTATE_RIGHT[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[4]_i_2 
       (.I0(\c_chars_out[10]_i_3_n_0 ),
        .I1(\c_chars_out[8]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[25]_i_5_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_6_n_0 ),
        .O(\c_chars_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[5]_i_1 
       (.I0(\c_chars_out[6]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[5]_i_2_n_0 ),
        .O(ROTATE_RIGHT[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[5]_i_2 
       (.I0(\c_chars_out[11]_i_3_n_0 ),
        .I1(\c_chars_out[9]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[7]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_9_n_0 ),
        .O(\c_chars_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[6]_i_1 
       (.I0(\c_chars_out[7]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[6]_i_2_n_0 ),
        .O(ROTATE_RIGHT[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[6]_i_2 
       (.I0(\c_chars_out[12]_i_3_n_0 ),
        .I1(\c_chars_out[10]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[8]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[25]_i_5_n_0 ),
        .O(\c_chars_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[7]_i_1 
       (.I0(\c_chars_out[8]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[7]_i_2_n_0 ),
        .O(ROTATE_RIGHT[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_2 
       (.I0(\c_chars_out[13]_i_3_n_0 ),
        .I1(\c_chars_out[11]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[9]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[7]_i_3_n_0 ),
        .O(\c_chars_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_3 
       (.I0(CHARACTERS_FROM_LUT[5]),
        .I1(CHARACTERS_FROM_LUT[15]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[23]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[7]),
        .O(\c_chars_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[8]_i_1 
       (.I0(\c_chars_out[9]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[8]_i_2_n_0 ),
        .O(ROTATE_RIGHT[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_2 
       (.I0(\c_chars_out[14]_i_3_n_0 ),
        .I1(\c_chars_out[12]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[10]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[8]_i_3_n_0 ),
        .O(\c_chars_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_3 
       (.I0(CHARACTERS_FROM_LUT[6]),
        .I1(CHARACTERS_FROM_LUT[16]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[24]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[8]),
        .O(\c_chars_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[9]_i_1 
       (.I0(\c_chars_out[10]_i_2_n_0 ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_chars_out[9]_i_2_n_0 ),
        .O(ROTATE_RIGHT[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_2 
       (.I0(\c_chars_out[15]_i_3_n_0 ),
        .I1(\c_chars_out[13]_i_3_n_0 ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_chars_out[11]_i_3_n_0 ),
        .I4(\c_drum_count_reg_n_0_[1] ),
        .I5(\c_chars_out[9]_i_3_n_0 ),
        .O(\c_chars_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_3 
       (.I0(CHARACTERS_FROM_LUT[7]),
        .I1(CHARACTERS_FROM_LUT[17]),
        .I2(\c_drum_count_reg_n_0_[3] ),
        .I3(CHARACTERS_FROM_LUT[25]),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .I5(CHARACTERS_FROM_LUT[9]),
        .O(\c_chars_out[9]_i_3_n_0 ));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[0]),
        .Q(CHARACTERS_OUT[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[10]),
        .Q(CHARACTERS_OUT[10]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[11]),
        .Q(CHARACTERS_OUT[11]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[12]),
        .Q(CHARACTERS_OUT[12]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[13]),
        .Q(CHARACTERS_OUT[13]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[14]),
        .Q(CHARACTERS_OUT[14]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[15]),
        .Q(CHARACTERS_OUT[15]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[16]),
        .Q(CHARACTERS_OUT[16]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[17]),
        .Q(CHARACTERS_OUT[17]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[18]),
        .Q(CHARACTERS_OUT[18]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[19]),
        .Q(CHARACTERS_OUT[19]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[1]),
        .Q(CHARACTERS_OUT[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[20]),
        .Q(CHARACTERS_OUT[20]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[21]),
        .Q(CHARACTERS_OUT[21]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[22]),
        .Q(CHARACTERS_OUT[22]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[23]),
        .Q(CHARACTERS_OUT[23]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[24]),
        .Q(CHARACTERS_OUT[24]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[25]),
        .Q(CHARACTERS_OUT[25]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[2]),
        .Q(CHARACTERS_OUT[2]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[3]),
        .Q(CHARACTERS_OUT[3]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[4]),
        .Q(CHARACTERS_OUT[4]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[5]),
        .Q(CHARACTERS_OUT[5]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[6]),
        .Q(CHARACTERS_OUT[6]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[7]),
        .Q(CHARACTERS_OUT[7]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[8]),
        .Q(CHARACTERS_OUT[8]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(ROTATE_RIGHT[9]),
        .Q(CHARACTERS_OUT[9]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0044)) 
    c_dir_to_lut_i_1
       (.I0(c_status[1]),
        .I1(REQUEST_IN_FWD),
        .I2(REQUEST_IN_BWD),
        .I3(c_status[0]),
        .I4(c_dir_to_lut_reg_0),
        .O(c_dir_to_lut_i_1_n_0));
  FDSE c_dir_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_dir_to_lut_i_1_n_0),
        .Q(c_dir_to_lut_reg_0),
        .S(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[0]_i_1 
       (.I0(n_drum_count[0]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS[0]),
        .O(\c_drum_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[1]_i_1 
       (.I0(n_drum_count[1]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS[1]),
        .O(\c_drum_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[2]_i_1 
       (.I0(n_drum_count[2]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS[2]),
        .O(\c_drum_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[3]_i_1 
       (.I0(n_drum_count[3]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS[3]),
        .O(\c_drum_count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[4]_i_1 
       (.I0(n_drum_count[4]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS[4]),
        .O(\c_drum_count[4]_i_1_n_0 ));
  FDRE \c_drum_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[0]_i_1_n_0 ),
        .Q(\c_drum_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \c_drum_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[1]_i_1_n_0 ),
        .Q(\c_drum_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \c_drum_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[2]_i_1_n_0 ),
        .Q(\c_drum_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \c_drum_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[3]_i_1_n_0 ),
        .Q(\c_drum_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \c_drum_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[4]_i_1_n_0 ),
        .Q(\c_drum_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE c_drum_impuls_out_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_drum_impuls_out),
        .Q(DRUM_IMPULS_OUT),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[0]),
        .Q(c_overflow_count[0]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[1]),
        .Q(c_overflow_count[1]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[2]),
        .Q(c_overflow_count[2]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[3]),
        .Q(c_overflow_count[3]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[4]),
        .Q(c_overflow_count[4]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  FDRE \c_overflow_count_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[5]),
        .Q(c_overflow_count[5]),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    c_ready_out_bwd_i_1
       (.I0(c_status[0]),
        .I1(c_status[1]),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(READY_OUT_BWD),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    c_ready_out_fwd_i_1
       (.I0(c_status[0]),
        .I1(c_status[1]),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_fwd));
  FDRE c_ready_out_fwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_fwd),
        .Q(READY_OUT_FWD),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCFFF0044)) 
    c_request_to_lut_i_1
       (.I0(LUT_BUSY_IN),
        .I1(c_status[0]),
        .I2(LUT_READY_IN),
        .I3(c_status[1]),
        .I4(REQUEST_TO_LUT),
        .O(c_request_to_lut_i_1_n_0));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_i_1_n_0),
        .Q(REQUEST_TO_LUT),
        .R(\c_chars_in_process[25]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \n_drum_count[0]_i_1 
       (.I0(\c_drum_count_reg_n_0_[0] ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_drum_count[1]_i_1 
       (.I0(\c_drum_count_reg_n_0_[0] ),
        .I1(\c_drum_count_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_drum_count[2]_i_1 
       (.I0(\c_drum_count_reg_n_0_[1] ),
        .I1(\c_drum_count_reg_n_0_[0] ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_drum_count[3]_i_1 
       (.I0(\c_drum_count_reg_n_0_[1] ),
        .I1(\c_drum_count_reg_n_0_[2] ),
        .I2(\c_drum_count_reg_n_0_[0] ),
        .I3(\c_drum_count_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \n_drum_count[4]_i_1 
       (.I0(\c_drum_count_reg_n_0_[2] ),
        .I1(\c_drum_count_reg_n_0_[3] ),
        .I2(\c_drum_count_reg_n_0_[4] ),
        .I3(\c_drum_count_reg_n_0_[1] ),
        .I4(\c_drum_count_reg_n_0_[0] ),
        .O(\n_drum_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n_drum_count[4]_i_2 
       (.I0(\c_drum_count_reg_n_0_[3] ),
        .I1(\c_drum_count_reg_n_0_[1] ),
        .I2(\c_drum_count_reg_n_0_[2] ),
        .I3(\c_drum_count_reg_n_0_[0] ),
        .I4(\c_drum_count_reg_n_0_[4] ),
        .O(plusOp[4]));
  FDRE \n_drum_count_reg[0] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(p_0_in),
        .Q(n_drum_count[0]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[1] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(n_drum_count[1]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[2] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(n_drum_count[2]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[3] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(n_drum_count[3]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[4] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(n_drum_count[4]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE n_drum_impuls_out_reg
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count_reg[5]_i_1_n_0 ),
        .Q(n_drum_impuls_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \n_overflow_count[0]_i_1 
       (.I0(c_overflow_count[0]),
        .O(\n_overflow_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_overflow_count[1]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .O(\n_overflow_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_overflow_count[2]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[2]),
        .O(\n_overflow_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_overflow_count[3]_i_1 
       (.I0(c_overflow_count[1]),
        .I1(c_overflow_count[0]),
        .I2(c_overflow_count[2]),
        .I3(c_overflow_count[3]),
        .O(\n_overflow_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n_overflow_count[4]_i_1 
       (.I0(c_overflow_count[2]),
        .I1(c_overflow_count[0]),
        .I2(c_overflow_count[1]),
        .I3(c_overflow_count[3]),
        .I4(c_overflow_count[4]),
        .O(\n_overflow_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \n_overflow_count[5]_i_2 
       (.I0(c_overflow_count[3]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[0]),
        .I3(c_overflow_count[2]),
        .I4(c_overflow_count[4]),
        .I5(c_overflow_count[5]),
        .O(\n_overflow_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \n_overflow_count[5]_i_3 
       (.I0(n_overflow_count[4]),
        .I1(n_overflow_count[3]),
        .I2(n_overflow_count[1]),
        .I3(n_overflow_count[2]),
        .I4(n_overflow_count[0]),
        .I5(CONFIG_DRUM_OVERFLOW),
        .O(\n_overflow_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \n_overflow_count[5]_i_4 
       (.I0(n_overflow_count[4]),
        .I1(n_overflow_count[3]),
        .I2(n_overflow_count[1]),
        .I3(n_overflow_count[2]),
        .I4(n_overflow_count[0]),
        .I5(CONFIG_DRUM_OVERFLOW),
        .O(\n_overflow_count[5]_i_4_n_0 ));
  FDRE \n_overflow_count_reg[0] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[0]_i_1_n_0 ),
        .Q(n_overflow_count[0]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[1] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[1]_i_1_n_0 ),
        .Q(n_overflow_count[1]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[2] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[2]_i_1_n_0 ),
        .Q(n_overflow_count[2]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[3] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[3]_i_1_n_0 ),
        .Q(n_overflow_count[3]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[4] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[4]_i_1_n_0 ),
        .Q(n_overflow_count[4]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[5] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[5]_i_2_n_0 ),
        .Q(n_overflow_count[5]),
        .R(\n_overflow_count_reg[5]_i_1_n_0 ));
  MUXF7 \n_overflow_count_reg[5]_i_1 
       (.I0(\n_overflow_count[5]_i_3_n_0 ),
        .I1(\n_overflow_count[5]_i_4_n_0 ),
        .O(\n_overflow_count_reg[5]_i_1_n_0 ),
        .S(n_overflow_count[5]));
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
