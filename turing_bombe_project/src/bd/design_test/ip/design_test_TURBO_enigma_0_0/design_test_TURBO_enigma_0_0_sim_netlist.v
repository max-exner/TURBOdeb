// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Jun 18 11:28:19 2019
// Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /homes/mexner/TURBOdeb/turing_bombe_project/src/bd/design_test/ip/design_test_TURBO_enigma_0_0/design_test_TURBO_enigma_0_0_sim_netlist.v
// Design      : design_test_TURBO_enigma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_test_TURBO_enigma_0_0,TURBO_enigma_bd,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "TURBO_enigma_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_test_TURBO_enigma_0_0
   (CHARACTERS_IN_DB0,
    CHARACTERS_IN_DB1,
    CODED_CHARACTERS_OUT_DB0,
    CODED_CHARACTERS_OUT_DB1,
    CONFIG_DRUM_TYP_1_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_3_IN,
    CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN,
    DRUM_IMPULS_IN,
    READY_OUT,
    SOFT_RESET_N_IN,
    START_IN,
    UB_CLK_IN);
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
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.SOFT_RESET_N_IN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.SOFT_RESET_N_IN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input SOFT_RESET_N_IN;
  input START_IN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.UB_CLK_IN CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.UB_CLK_IN, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_RESET SOFT_RESET_N_IN, CLK_DOMAIN design_test_UB_CLK_IN, INSERT_VIP 0" *) input UB_CLK_IN;

  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CODED_CHARACTERS_OUT_DB0;
  wire [25:0]CODED_CHARACTERS_OUT_DB1;
  wire [2:0]CONFIG_DRUM_TYP_1_IN;
  wire [2:0]CONFIG_DRUM_TYP_2_IN;
  wire [2:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire DRUM_IMPULS_IN;
  wire READY_OUT;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire UB_CLK_IN;

  (* hw_handoff = "TURBO_enigma_bd.hwdef" *) 
  design_test_TURBO_enigma_0_0_TURBO_enigma_bd U0
       (.CHARACTERS_IN_DB0(CHARACTERS_IN_DB0),
        .CHARACTERS_IN_DB1(CHARACTERS_IN_DB1),
        .CODED_CHARACTERS_OUT_DB0(CODED_CHARACTERS_OUT_DB0),
        .CODED_CHARACTERS_OUT_DB1(CODED_CHARACTERS_OUT_DB1),
        .CONFIG_DRUM_TYP_1_IN(CONFIG_DRUM_TYP_1_IN),
        .CONFIG_DRUM_TYP_2_IN(CONFIG_DRUM_TYP_2_IN),
        .CONFIG_DRUM_TYP_3_IN(CONFIG_DRUM_TYP_3_IN),
        .CONFIG_START_POS_DRUM_1_IN(CONFIG_START_POS_DRUM_1_IN),
        .CONFIG_START_POS_DRUM_2_IN(CONFIG_START_POS_DRUM_2_IN),
        .CONFIG_START_POS_DRUM_3_IN(CONFIG_START_POS_DRUM_3_IN),
        .DRUM_IMPULS_IN(DRUM_IMPULS_IN),
        .READY_OUT(READY_OUT),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .START_IN(START_IN),
        .UB_CLK_IN(UB_CLK_IN));
endmodule

(* ORIG_REF_NAME = "TURBO_enigma_bd" *) (* hw_handoff = "TURBO_enigma_bd.hwdef" *) 
module design_test_TURBO_enigma_0_0_TURBO_enigma_bd
   (CHARACTERS_IN_DB0,
    CHARACTERS_IN_DB1,
    CODED_CHARACTERS_OUT_DB0,
    CODED_CHARACTERS_OUT_DB1,
    CONFIG_DRUM_TYP_1_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_3_IN,
    CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN,
    DRUM_IMPULS_IN,
    READY_OUT,
    SOFT_RESET_N_IN,
    START_IN,
    UB_CLK_IN);
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
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.SOFT_RESET_N_IN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.SOFT_RESET_N_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input SOFT_RESET_N_IN;
  input START_IN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.UB_CLK_IN CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.UB_CLK_IN, ASSOCIATED_RESET SOFT_RESET_N_IN, CLK_DOMAIN TURBO_enigma_bd_UB_CLK_IN, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input UB_CLK_IN;

  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CODED_CHARACTERS_OUT_DB0;
  wire [25:0]CODED_CHARACTERS_OUT_DB1;
  wire [2:0]CONFIG_DRUM_TYP_1_IN;
  wire [2:0]CONFIG_DRUM_TYP_2_IN;
  wire [2:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire DRUM_IMPULS_IN;
  wire READY_OUT;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire UB_CLK_IN;

  design_test_TURBO_enigma_0_0_TURBO_enigma_bd_enigma_top_0_0 enigma_top_0
       (.CHARACTERS_IN_DB0(CHARACTERS_IN_DB0),
        .CHARACTERS_IN_DB1(CHARACTERS_IN_DB1),
        .CODED_CHARACTERS_OUT_DB0(CODED_CHARACTERS_OUT_DB0),
        .CODED_CHARACTERS_OUT_DB1(CODED_CHARACTERS_OUT_DB1),
        .CONFIG_DRUM_TYP_1_IN(CONFIG_DRUM_TYP_1_IN),
        .CONFIG_DRUM_TYP_2_IN(CONFIG_DRUM_TYP_2_IN),
        .CONFIG_DRUM_TYP_3_IN(CONFIG_DRUM_TYP_3_IN),
        .CONFIG_START_POS_DRUM_1_IN(CONFIG_START_POS_DRUM_1_IN),
        .CONFIG_START_POS_DRUM_2_IN(CONFIG_START_POS_DRUM_2_IN),
        .CONFIG_START_POS_DRUM_3_IN(CONFIG_START_POS_DRUM_3_IN),
        .DRUM_IMPULS_IN(DRUM_IMPULS_IN),
        .READY_OUT(READY_OUT),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .START_IN(START_IN),
        .UB_CLK_IN(UB_CLK_IN));
endmodule

(* ORIG_REF_NAME = "TURBO_enigma_bd_enigma_top_0_0" *) 
module design_test_TURBO_enigma_0_0_TURBO_enigma_bd_enigma_top_0_0
   (CODED_CHARACTERS_OUT_DB0,
    CODED_CHARACTERS_OUT_DB1,
    READY_OUT,
    CHARACTERS_IN_DB1,
    CHARACTERS_IN_DB0,
    START_IN,
    UB_CLK_IN,
    DRUM_IMPULS_IN,
    CONFIG_DRUM_TYP_3_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_1_IN,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN);
  output [25:0]CODED_CHARACTERS_OUT_DB0;
  output [25:0]CODED_CHARACTERS_OUT_DB1;
  output READY_OUT;
  input [25:0]CHARACTERS_IN_DB1;
  input [25:0]CHARACTERS_IN_DB0;
  input START_IN;
  input UB_CLK_IN;
  input DRUM_IMPULS_IN;
  input [2:0]CONFIG_DRUM_TYP_3_IN;
  input [2:0]CONFIG_DRUM_TYP_2_IN;
  input [2:0]CONFIG_DRUM_TYP_1_IN;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_1_IN;
  input [4:0]CONFIG_START_POS_DRUM_2_IN;
  input [4:0]CONFIG_START_POS_DRUM_3_IN;

  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CODED_CHARACTERS_OUT_DB0;
  wire [25:0]CODED_CHARACTERS_OUT_DB1;
  wire [2:0]CONFIG_DRUM_TYP_1_IN;
  wire [2:0]CONFIG_DRUM_TYP_2_IN;
  wire [2:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire DRUM_IMPULS_IN;
  wire READY_OUT;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire UB_CLK_IN;
  wire c_dir_to_lut_i_1__0_n_0;
  wire c_dir_to_lut_i_1__1_n_0;
  wire c_dir_to_lut_i_1_n_0;
  wire c_request_to_lut_i_1__0__0_n_0;
  wire c_request_to_lut_i_1__0_n_0;
  wire c_request_to_lut_i_1__1_n_0;
  wire [1:0]\drum_1_init/c_status ;
  wire [1:0]\drum_2_init/c_status ;
  wire [1:0]\drum_3_init/c_status ;
  wire lut_busy;
  wire lut_direction_drum_1;
  wire lut_direction_drum_2;
  wire lut_direction_drum_3;
  wire lut_ready_to_drum_1;
  wire lut_ready_to_drum_2;
  wire lut_ready_to_drum_3;
  wire lut_request_drum_1;
  wire lut_request_drum_2;
  wire lut_request_drum_3;
  wire ready_out_drum_1_fwd;
  wire ready_out_drum_2_bwd;
  wire ready_out_drum_2_fwd;
  wire ready_out_drum_3_bwd;
  wire ready_out_drum_ukw_bwd;
  wire start_to_drum_1;

  design_test_TURBO_enigma_0_0_enigma_top U0
       (.CHARACTERS_IN_DB0(CHARACTERS_IN_DB0),
        .CHARACTERS_IN_DB1(CHARACTERS_IN_DB1),
        .CODED_CHARACTERS_OUT_DB0(CODED_CHARACTERS_OUT_DB0),
        .CODED_CHARACTERS_OUT_DB1(CODED_CHARACTERS_OUT_DB1),
        .CONFIG_DRUM_TYP_1_IN(CONFIG_DRUM_TYP_1_IN),
        .CONFIG_DRUM_TYP_2_IN(CONFIG_DRUM_TYP_2_IN),
        .CONFIG_DRUM_TYP_3_IN(CONFIG_DRUM_TYP_3_IN),
        .CONFIG_START_POS_DRUM_1_IN(CONFIG_START_POS_DRUM_1_IN),
        .CONFIG_START_POS_DRUM_2_IN(CONFIG_START_POS_DRUM_2_IN),
        .CONFIG_START_POS_DRUM_3_IN(CONFIG_START_POS_DRUM_3_IN),
        .DRUM_IMPULS_IN(DRUM_IMPULS_IN),
        .READY_OUT(READY_OUT),
        .READY_OUT_BWD(ready_out_drum_ukw_bwd),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .START_IN(START_IN),
        .UB_CLK_IN(UB_CLK_IN),
        .c_dir_to_lut_reg(c_dir_to_lut_i_1_n_0),
        .c_dir_to_lut_reg_0(c_dir_to_lut_i_1__0_n_0),
        .c_dir_to_lut_reg_1(c_dir_to_lut_i_1__1_n_0),
        .c_request_to_lut_reg(c_request_to_lut_i_1__0_n_0),
        .c_request_to_lut_reg_0(c_request_to_lut_i_1__0__0_n_0),
        .c_request_to_lut_reg_1(c_request_to_lut_i_1__1_n_0),
        .c_status(\drum_1_init/c_status ),
        .c_status_0(\drum_2_init/c_status ),
        .c_status_1(\drum_3_init/c_status ),
        .lut_busy(lut_busy),
        .lut_direction_drum_1(lut_direction_drum_1),
        .lut_direction_drum_2(lut_direction_drum_2),
        .lut_direction_drum_3(lut_direction_drum_3),
        .lut_ready_to_drum_1(lut_ready_to_drum_1),
        .lut_ready_to_drum_2(lut_ready_to_drum_2),
        .lut_ready_to_drum_3(lut_ready_to_drum_3),
        .lut_request_drum_1(lut_request_drum_1),
        .lut_request_drum_2(lut_request_drum_2),
        .lut_request_drum_3(lut_request_drum_3),
        .ready_out_drum_1_fwd(ready_out_drum_1_fwd),
        .ready_out_drum_2_bwd(ready_out_drum_2_bwd),
        .ready_out_drum_2_fwd(ready_out_drum_2_fwd),
        .ready_out_drum_3_bwd(ready_out_drum_3_bwd),
        .start_to_drum_1(start_to_drum_1));
  LUT5 #(
    .INIT(32'hFFEF0044)) 
    c_dir_to_lut_i_1
       (.I0(\drum_1_init/c_status [1]),
        .I1(start_to_drum_1),
        .I2(ready_out_drum_2_bwd),
        .I3(\drum_1_init/c_status [0]),
        .I4(lut_direction_drum_1),
        .O(c_dir_to_lut_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFB0050)) 
    c_dir_to_lut_i_1__0
       (.I0(\drum_2_init/c_status [1]),
        .I1(ready_out_drum_3_bwd),
        .I2(ready_out_drum_1_fwd),
        .I3(\drum_2_init/c_status [0]),
        .I4(lut_direction_drum_2),
        .O(c_dir_to_lut_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFB0050)) 
    c_dir_to_lut_i_1__1
       (.I0(\drum_3_init/c_status [1]),
        .I1(ready_out_drum_ukw_bwd),
        .I2(ready_out_drum_2_fwd),
        .I3(\drum_3_init/c_status [0]),
        .I4(lut_direction_drum_3),
        .O(c_dir_to_lut_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hCFFF0044)) 
    c_request_to_lut_i_1__0
       (.I0(lut_busy),
        .I1(\drum_1_init/c_status [0]),
        .I2(lut_ready_to_drum_1),
        .I3(\drum_1_init/c_status [1]),
        .I4(lut_request_drum_1),
        .O(c_request_to_lut_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hCFFF0044)) 
    c_request_to_lut_i_1__0__0
       (.I0(lut_busy),
        .I1(\drum_2_init/c_status [0]),
        .I2(lut_ready_to_drum_2),
        .I3(\drum_2_init/c_status [1]),
        .I4(lut_request_drum_2),
        .O(c_request_to_lut_i_1__0__0_n_0));
  LUT5 #(
    .INIT(32'hCFFF0044)) 
    c_request_to_lut_i_1__1
       (.I0(lut_busy),
        .I1(\drum_3_init/c_status [0]),
        .I2(lut_ready_to_drum_3),
        .I3(\drum_3_init/c_status [1]),
        .I4(lut_request_drum_3),
        .O(c_request_to_lut_i_1__1_n_0));
endmodule

(* ORIG_REF_NAME = "drum" *) 
module design_test_TURBO_enigma_0_0_drum
   (c_ready_out_fwd_reg_0,
    E,
    c_dir_to_lut_reg_0,
    c_request_to_lut_reg_0,
    \FSM_sequential_c_status_reg[1]_0 ,
    \FSM_sequential_c_status_reg[0]_0 ,
    c_ready_out_bwd_reg_0,
    Q,
    \c_chars_out_reg[25]_0 ,
    \c_chars_out_reg[25]_1 ,
    \c_chars_out_reg[24]_0 ,
    \c_chars_out_reg[23]_0 ,
    \c_chars_out_reg[22]_0 ,
    \c_chars_out_reg[21]_0 ,
    \c_chars_out_reg[20]_0 ,
    \c_chars_out_reg[19]_0 ,
    \c_chars_out_reg[18]_0 ,
    \c_chars_out_reg[17]_0 ,
    \c_chars_out_reg[16]_0 ,
    \c_chars_out_reg[15]_0 ,
    \c_chars_out_reg[14]_0 ,
    \c_chars_out_reg[13]_0 ,
    \c_chars_out_reg[12]_0 ,
    \c_chars_out_reg[11]_0 ,
    \c_chars_out_reg[10]_0 ,
    \c_chars_out_reg[9]_0 ,
    \c_chars_out_reg[8]_0 ,
    \c_chars_out_reg[7]_0 ,
    \c_chars_out_reg[6]_0 ,
    \c_chars_out_reg[5]_0 ,
    \c_chars_out_reg[4]_0 ,
    \c_chars_out_reg[3]_0 ,
    \c_chars_out_reg[2]_0 ,
    \c_chars_out_reg[1]_0 ,
    \c_chars_out_reg[0]_0 ,
    D,
    c_request_to_lut_reg_1,
    c_request_to_lut_reg_2,
    SR,
    UB_CLK_IN,
    c_dir_to_lut_reg_1,
    c_request_to_lut_reg_3,
    \FSM_sequential_c_status_reg[0]_1 ,
    START_IN,
    \FSM_sequential_c_status_reg[1]_1 ,
    ready_out_drum_2_bwd,
    \c_chars_in_process_reg[0]_0 ,
    \c_chars_out_reg[25]_2 ,
    \c_chars_in_process_reg[10]_0 ,
    \c_chars_in_process_reg[11]_0 ,
    \c_chars_in_process_reg[14]_0 ,
    \c_chars_in_process_reg[15]_0 ,
    \c_chars_in_process_reg[12]_0 ,
    \c_chars_in_process_reg[13]_0 ,
    \c_chars_in_process_reg[16]_0 ,
    \c_chars_in_process_reg[17]_0 ,
    \c_chars_in_process_reg[18]_0 ,
    \c_chars_in_process_reg[19]_0 ,
    \c_chars_in_process_reg[22]_0 ,
    \c_chars_in_process_reg[23]_0 ,
    \c_chars_in_process_reg[20]_0 ,
    \c_chars_in_process_reg[21]_0 ,
    \c_chars_in_process_reg[24]_0 ,
    \c_chars_in_process_reg[25]_0 ,
    \c_chars_in_process_reg[0]_1 ,
    \c_chars_in_process_reg[1]_0 ,
    \c_chars_in_process_reg[4]_0 ,
    \c_chars_in_process_reg[5]_0 ,
    \c_chars_in_process_reg[2]_0 ,
    \c_chars_in_process_reg[3]_0 ,
    \c_chars_in_process_reg[6]_0 ,
    \c_chars_in_process_reg[7]_0 ,
    \c_chars_in_process_reg[8]_0 ,
    \c_chars_in_process_reg[9]_0 ,
    \c_chars_in_process_reg[25]_1 ,
    \c_chars_in_reg[0] ,
    \c_chars_in_reg[1] ,
    \c_chars_in_reg[2] ,
    \c_chars_in_reg[3] ,
    \c_chars_in_reg[4] ,
    \c_chars_in_reg[5] ,
    \c_chars_in_reg[6] ,
    \c_chars_in_reg[7] ,
    \c_chars_in_reg[8] ,
    \c_chars_in_reg[9] ,
    \c_chars_in_reg[10] ,
    \c_chars_in_reg[11] ,
    \c_chars_in_reg[12] ,
    \c_chars_in_reg[13] ,
    \c_chars_in_reg[14] ,
    \c_chars_in_reg[15] ,
    \c_chars_in_reg[16] ,
    \c_chars_in_reg[17] ,
    \c_chars_in_reg[18] ,
    \c_chars_in_reg[19] ,
    \c_chars_in_reg[20] ,
    \c_chars_in_reg[21] ,
    \c_chars_in_reg[22] ,
    \c_chars_in_reg[23] ,
    \c_chars_in_reg[24] ,
    \c_chars_in_reg[25] ,
    c_direction_reg,
    \FSM_sequential_status_reg[0] ,
    \FSM_sequential_status_reg[0]_0 ,
    \c_chars_out_reg[25]_3 ,
    CLK,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_1_IN);
  output c_ready_out_fwd_reg_0;
  output [0:0]E;
  output c_dir_to_lut_reg_0;
  output c_request_to_lut_reg_0;
  output \FSM_sequential_c_status_reg[1]_0 ;
  output \FSM_sequential_c_status_reg[0]_0 ;
  output [0:0]c_ready_out_bwd_reg_0;
  output [4:0]Q;
  output \c_chars_out_reg[25]_0 ;
  output [25:0]\c_chars_out_reg[25]_1 ;
  output \c_chars_out_reg[24]_0 ;
  output \c_chars_out_reg[23]_0 ;
  output \c_chars_out_reg[22]_0 ;
  output \c_chars_out_reg[21]_0 ;
  output \c_chars_out_reg[20]_0 ;
  output \c_chars_out_reg[19]_0 ;
  output \c_chars_out_reg[18]_0 ;
  output \c_chars_out_reg[17]_0 ;
  output \c_chars_out_reg[16]_0 ;
  output \c_chars_out_reg[15]_0 ;
  output \c_chars_out_reg[14]_0 ;
  output \c_chars_out_reg[13]_0 ;
  output \c_chars_out_reg[12]_0 ;
  output \c_chars_out_reg[11]_0 ;
  output \c_chars_out_reg[10]_0 ;
  output \c_chars_out_reg[9]_0 ;
  output \c_chars_out_reg[8]_0 ;
  output \c_chars_out_reg[7]_0 ;
  output \c_chars_out_reg[6]_0 ;
  output \c_chars_out_reg[5]_0 ;
  output \c_chars_out_reg[4]_0 ;
  output \c_chars_out_reg[3]_0 ;
  output \c_chars_out_reg[2]_0 ;
  output \c_chars_out_reg[1]_0 ;
  output \c_chars_out_reg[0]_0 ;
  output [25:0]D;
  output c_request_to_lut_reg_1;
  output c_request_to_lut_reg_2;
  input [0:0]SR;
  input UB_CLK_IN;
  input c_dir_to_lut_reg_1;
  input c_request_to_lut_reg_3;
  input \FSM_sequential_c_status_reg[0]_1 ;
  input START_IN;
  input \FSM_sequential_c_status_reg[1]_1 ;
  input ready_out_drum_2_bwd;
  input \c_chars_in_process_reg[0]_0 ;
  input \c_chars_out_reg[25]_2 ;
  input \c_chars_in_process_reg[10]_0 ;
  input \c_chars_in_process_reg[11]_0 ;
  input \c_chars_in_process_reg[14]_0 ;
  input \c_chars_in_process_reg[15]_0 ;
  input \c_chars_in_process_reg[12]_0 ;
  input \c_chars_in_process_reg[13]_0 ;
  input \c_chars_in_process_reg[16]_0 ;
  input \c_chars_in_process_reg[17]_0 ;
  input \c_chars_in_process_reg[18]_0 ;
  input \c_chars_in_process_reg[19]_0 ;
  input \c_chars_in_process_reg[22]_0 ;
  input \c_chars_in_process_reg[23]_0 ;
  input \c_chars_in_process_reg[20]_0 ;
  input \c_chars_in_process_reg[21]_0 ;
  input \c_chars_in_process_reg[24]_0 ;
  input \c_chars_in_process_reg[25]_0 ;
  input \c_chars_in_process_reg[0]_1 ;
  input \c_chars_in_process_reg[1]_0 ;
  input \c_chars_in_process_reg[4]_0 ;
  input \c_chars_in_process_reg[5]_0 ;
  input \c_chars_in_process_reg[2]_0 ;
  input \c_chars_in_process_reg[3]_0 ;
  input \c_chars_in_process_reg[6]_0 ;
  input \c_chars_in_process_reg[7]_0 ;
  input \c_chars_in_process_reg[8]_0 ;
  input \c_chars_in_process_reg[9]_0 ;
  input [25:0]\c_chars_in_process_reg[25]_1 ;
  input \c_chars_in_reg[0] ;
  input \c_chars_in_reg[1] ;
  input \c_chars_in_reg[2] ;
  input \c_chars_in_reg[3] ;
  input \c_chars_in_reg[4] ;
  input \c_chars_in_reg[5] ;
  input \c_chars_in_reg[6] ;
  input \c_chars_in_reg[7] ;
  input \c_chars_in_reg[8] ;
  input \c_chars_in_reg[9] ;
  input \c_chars_in_reg[10] ;
  input \c_chars_in_reg[11] ;
  input \c_chars_in_reg[12] ;
  input \c_chars_in_reg[13] ;
  input \c_chars_in_reg[14] ;
  input \c_chars_in_reg[15] ;
  input \c_chars_in_reg[16] ;
  input \c_chars_in_reg[17] ;
  input \c_chars_in_reg[18] ;
  input \c_chars_in_reg[19] ;
  input \c_chars_in_reg[20] ;
  input \c_chars_in_reg[21] ;
  input \c_chars_in_reg[22] ;
  input \c_chars_in_reg[23] ;
  input \c_chars_in_reg[24] ;
  input \c_chars_in_reg[25] ;
  input c_direction_reg;
  input \FSM_sequential_status_reg[0] ;
  input \FSM_sequential_status_reg[0]_0 ;
  input [25:0]\c_chars_out_reg[25]_3 ;
  input CLK;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_1_IN;

  wire CLK;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [25:0]D;
  wire [0:0]E;
  wire \FSM_sequential_c_status[1]_i_1_n_0 ;
  wire \FSM_sequential_c_status_reg[0]_0 ;
  wire \FSM_sequential_c_status_reg[0]_1 ;
  wire \FSM_sequential_c_status_reg[1]_0 ;
  wire \FSM_sequential_c_status_reg[1]_1 ;
  wire \FSM_sequential_status_reg[0] ;
  wire \FSM_sequential_status_reg[0]_0 ;
  wire [4:0]Q;
  wire SOFT_RESET_N_IN;
  wire [0:0]SR;
  wire START_IN;
  wire UB_CLK_IN;
  wire \c_chars_in_process[10]_i_2_n_0 ;
  wire \c_chars_in_process[10]_i_4_n_0 ;
  wire \c_chars_in_process[11]_i_2_n_0 ;
  wire \c_chars_in_process[11]_i_4_n_0 ;
  wire \c_chars_in_process[12]_i_2_n_0 ;
  wire \c_chars_in_process[12]_i_4_n_0 ;
  wire \c_chars_in_process[13]_i_2_n_0 ;
  wire \c_chars_in_process[13]_i_4_n_0 ;
  wire \c_chars_in_process[14]_i_2_n_0 ;
  wire \c_chars_in_process[14]_i_4_n_0 ;
  wire \c_chars_in_process[15]_i_2_n_0 ;
  wire \c_chars_in_process[15]_i_4_n_0 ;
  wire \c_chars_in_process[16]_i_2_n_0 ;
  wire \c_chars_in_process[16]_i_4_n_0 ;
  wire \c_chars_in_process[17]_i_2_n_0 ;
  wire \c_chars_in_process[17]_i_4_n_0 ;
  wire \c_chars_in_process[18]_i_2_n_0 ;
  wire \c_chars_in_process[18]_i_4_n_0 ;
  wire \c_chars_in_process[19]_i_2_n_0 ;
  wire \c_chars_in_process[19]_i_4_n_0 ;
  wire \c_chars_in_process[1]_i_2_n_0 ;
  wire \c_chars_in_process[20]_i_2_n_0 ;
  wire \c_chars_in_process[20]_i_4_n_0 ;
  wire \c_chars_in_process[21]_i_2_n_0 ;
  wire \c_chars_in_process[21]_i_4_n_0 ;
  wire \c_chars_in_process[22]_i_2_n_0 ;
  wire \c_chars_in_process[22]_i_4_n_0 ;
  wire \c_chars_in_process[23]_i_2_n_0 ;
  wire \c_chars_in_process[23]_i_4_n_0 ;
  wire \c_chars_in_process[24]_i_2_n_0 ;
  wire \c_chars_in_process[24]_i_4_n_0 ;
  wire \c_chars_in_process[25]_i_10_n_0 ;
  wire \c_chars_in_process[25]_i_11_n_0 ;
  wire \c_chars_in_process[25]_i_12_n_0 ;
  wire \c_chars_in_process[25]_i_13_n_0 ;
  wire \c_chars_in_process[25]_i_3_n_0 ;
  wire \c_chars_in_process[25]_i_4_n_0 ;
  wire \c_chars_in_process[25]_i_6_n_0 ;
  wire \c_chars_in_process[25]_i_7_n_0 ;
  wire \c_chars_in_process[25]_i_8_n_0 ;
  wire \c_chars_in_process[25]_i_9_n_0 ;
  wire \c_chars_in_process[2]_i_2_n_0 ;
  wire \c_chars_in_process[3]_i_2_n_0 ;
  wire \c_chars_in_process[4]_i_2_n_0 ;
  wire \c_chars_in_process[5]_i_2_n_0 ;
  wire \c_chars_in_process[6]_i_2_n_0 ;
  wire \c_chars_in_process[7]_i_2_n_0 ;
  wire \c_chars_in_process[7]_i_4_n_0 ;
  wire \c_chars_in_process[8]_i_2_n_0 ;
  wire \c_chars_in_process[8]_i_4_n_0 ;
  wire \c_chars_in_process[9]_i_2_n_0 ;
  wire \c_chars_in_process[9]_i_4_n_0 ;
  wire \c_chars_in_process_reg[0]_0 ;
  wire \c_chars_in_process_reg[0]_1 ;
  wire \c_chars_in_process_reg[10]_0 ;
  wire \c_chars_in_process_reg[11]_0 ;
  wire \c_chars_in_process_reg[12]_0 ;
  wire \c_chars_in_process_reg[13]_0 ;
  wire \c_chars_in_process_reg[14]_0 ;
  wire \c_chars_in_process_reg[15]_0 ;
  wire \c_chars_in_process_reg[16]_0 ;
  wire \c_chars_in_process_reg[17]_0 ;
  wire \c_chars_in_process_reg[18]_0 ;
  wire \c_chars_in_process_reg[19]_0 ;
  wire \c_chars_in_process_reg[1]_0 ;
  wire \c_chars_in_process_reg[20]_0 ;
  wire \c_chars_in_process_reg[21]_0 ;
  wire \c_chars_in_process_reg[22]_0 ;
  wire \c_chars_in_process_reg[23]_0 ;
  wire \c_chars_in_process_reg[24]_0 ;
  wire \c_chars_in_process_reg[25]_0 ;
  wire [25:0]\c_chars_in_process_reg[25]_1 ;
  wire \c_chars_in_process_reg[2]_0 ;
  wire \c_chars_in_process_reg[3]_0 ;
  wire \c_chars_in_process_reg[4]_0 ;
  wire \c_chars_in_process_reg[5]_0 ;
  wire \c_chars_in_process_reg[6]_0 ;
  wire \c_chars_in_process_reg[7]_0 ;
  wire \c_chars_in_process_reg[8]_0 ;
  wire \c_chars_in_process_reg[9]_0 ;
  wire \c_chars_in_reg[0] ;
  wire \c_chars_in_reg[10] ;
  wire \c_chars_in_reg[11] ;
  wire \c_chars_in_reg[12] ;
  wire \c_chars_in_reg[13] ;
  wire \c_chars_in_reg[14] ;
  wire \c_chars_in_reg[15] ;
  wire \c_chars_in_reg[16] ;
  wire \c_chars_in_reg[17] ;
  wire \c_chars_in_reg[18] ;
  wire \c_chars_in_reg[19] ;
  wire \c_chars_in_reg[1] ;
  wire \c_chars_in_reg[20] ;
  wire \c_chars_in_reg[21] ;
  wire \c_chars_in_reg[22] ;
  wire \c_chars_in_reg[23] ;
  wire \c_chars_in_reg[24] ;
  wire \c_chars_in_reg[25] ;
  wire \c_chars_in_reg[2] ;
  wire \c_chars_in_reg[3] ;
  wire \c_chars_in_reg[4] ;
  wire \c_chars_in_reg[5] ;
  wire \c_chars_in_reg[6] ;
  wire \c_chars_in_reg[7] ;
  wire \c_chars_in_reg[8] ;
  wire \c_chars_in_reg[9] ;
  wire \c_chars_out_reg[0]_0 ;
  wire \c_chars_out_reg[10]_0 ;
  wire \c_chars_out_reg[11]_0 ;
  wire \c_chars_out_reg[12]_0 ;
  wire \c_chars_out_reg[13]_0 ;
  wire \c_chars_out_reg[14]_0 ;
  wire \c_chars_out_reg[15]_0 ;
  wire \c_chars_out_reg[16]_0 ;
  wire \c_chars_out_reg[17]_0 ;
  wire \c_chars_out_reg[18]_0 ;
  wire \c_chars_out_reg[19]_0 ;
  wire \c_chars_out_reg[1]_0 ;
  wire \c_chars_out_reg[20]_0 ;
  wire \c_chars_out_reg[21]_0 ;
  wire \c_chars_out_reg[22]_0 ;
  wire \c_chars_out_reg[23]_0 ;
  wire \c_chars_out_reg[24]_0 ;
  wire \c_chars_out_reg[25]_0 ;
  wire [25:0]\c_chars_out_reg[25]_1 ;
  wire \c_chars_out_reg[25]_2 ;
  wire [25:0]\c_chars_out_reg[25]_3 ;
  wire \c_chars_out_reg[2]_0 ;
  wire \c_chars_out_reg[3]_0 ;
  wire \c_chars_out_reg[4]_0 ;
  wire \c_chars_out_reg[5]_0 ;
  wire \c_chars_out_reg[6]_0 ;
  wire \c_chars_out_reg[7]_0 ;
  wire \c_chars_out_reg[8]_0 ;
  wire \c_chars_out_reg[9]_0 ;
  wire c_dir_to_lut_reg_0;
  wire c_dir_to_lut_reg_1;
  wire c_direction_reg;
  wire \c_drum_count[0]_i_1_n_0 ;
  wire \c_drum_count[1]_i_1_n_0 ;
  wire \c_drum_count[2]_i_1_n_0 ;
  wire \c_drum_count[3]_i_1_n_0 ;
  wire \c_drum_count[4]_i_1_n_0 ;
  wire [0:0]c_ready_out_bwd_reg_0;
  wire c_ready_out_fwd_reg_0;
  wire c_request_to_lut_reg_0;
  wire c_request_to_lut_reg_1;
  wire c_request_to_lut_reg_2;
  wire c_request_to_lut_reg_3;
  wire [25:0]characters_drum_1_lut;
  wire n_chars_in_process;
  wire [25:0]n_chars_in_process1_in;
  wire n_chars_out;
  wire [4:0]n_drum_count;
  wire \n_drum_count[4]_i_1_n_0 ;
  wire n_ready_out_bwd;
  wire n_ready_out_fwd;
  wire [0:0]p_0_in;
  wire [4:1]plusOp;
  wire ready_out_drum_2_bwd;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_c_status[1]_i_1 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(\FSM_sequential_c_status_reg[1]_0 ),
        .O(\FSM_sequential_c_status[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status_reg[0]_1 ),
        .Q(\FSM_sequential_c_status_reg[0]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[1]_i_1_n_0 ),
        .Q(\FSM_sequential_c_status_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_status[0]_i_2 
       (.I0(c_request_to_lut_reg_0),
        .I1(\FSM_sequential_status_reg[0] ),
        .I2(\FSM_sequential_status_reg[0]_0 ),
        .O(c_request_to_lut_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[0]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[0]),
        .I2(\c_chars_in_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[10]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[10]),
        .I2(\c_chars_in_reg[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[11]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[11]),
        .I2(\c_chars_in_reg[11] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[12]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[12]),
        .I2(\c_chars_in_reg[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[13]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[13]),
        .I2(\c_chars_in_reg[13] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[14]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[14]),
        .I2(\c_chars_in_reg[14] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[15]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[15]),
        .I2(\c_chars_in_reg[15] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[16]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[16]),
        .I2(\c_chars_in_reg[16] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[17]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[17]),
        .I2(\c_chars_in_reg[17] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[18]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[18]),
        .I2(\c_chars_in_reg[18] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[19]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[19]),
        .I2(\c_chars_in_reg[19] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[1]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[1]),
        .I2(\c_chars_in_reg[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[20]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[20]),
        .I2(\c_chars_in_reg[20] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[21]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[21]),
        .I2(\c_chars_in_reg[21] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[22]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[22]),
        .I2(\c_chars_in_reg[22] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[23]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[23]),
        .I2(\c_chars_in_reg[23] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[24]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[24]),
        .I2(\c_chars_in_reg[24] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[25]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[25]),
        .I2(\c_chars_in_reg[25] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[2]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[2]),
        .I2(\c_chars_in_reg[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[3]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[3]),
        .I2(\c_chars_in_reg[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[4]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[4]),
        .I2(\c_chars_in_reg[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[5]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[5]),
        .I2(\c_chars_in_reg[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[6]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[6]),
        .I2(\c_chars_in_reg[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[7]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[7]),
        .I2(\c_chars_in_reg[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[8]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[8]),
        .I2(\c_chars_in_reg[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \c_chars_in[9]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(characters_drum_1_lut[9]),
        .I2(\c_chars_in_reg[9] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[0]_i_1 
       (.I0(\c_chars_in_process[25]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[1]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[0]_1 ),
        .O(n_chars_in_process1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[0]_i_2__0 
       (.I0(\c_chars_out_reg[25]_1 [0]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [0]),
        .O(\c_chars_out_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[10]_i_1 
       (.I0(\c_chars_in_process[10]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[11]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[10]_0 ),
        .O(n_chars_in_process1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_2 
       (.I0(\c_chars_in_process[10]_i_4_n_0 ),
        .I1(\c_chars_in_process[12]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[14]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[16]_i_4_n_0 ),
        .O(\c_chars_in_process[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[10]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [10]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [10]),
        .O(\c_chars_out_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_4 
       (.I0(characters_drum_1_lut[5]),
        .I1(characters_drum_1_lut[21]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[13]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[3]),
        .O(\c_chars_in_process[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[11]_i_1 
       (.I0(\c_chars_in_process[11]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[12]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[11]_0 ),
        .O(n_chars_in_process1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_2 
       (.I0(\c_chars_in_process[11]_i_4_n_0 ),
        .I1(\c_chars_in_process[13]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[15]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[17]_i_4_n_0 ),
        .O(\c_chars_in_process[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[11]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [11]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [11]),
        .O(\c_chars_out_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_4 
       (.I0(characters_drum_1_lut[6]),
        .I1(characters_drum_1_lut[22]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[14]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[4]),
        .O(\c_chars_in_process[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[12]_i_1 
       (.I0(\c_chars_in_process[12]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[13]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[12]_0 ),
        .O(n_chars_in_process1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_2 
       (.I0(\c_chars_in_process[12]_i_4_n_0 ),
        .I1(\c_chars_in_process[14]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[16]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[18]_i_4_n_0 ),
        .O(\c_chars_in_process[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[12]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [12]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [12]),
        .O(\c_chars_out_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_4 
       (.I0(characters_drum_1_lut[7]),
        .I1(characters_drum_1_lut[23]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[15]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[5]),
        .O(\c_chars_in_process[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[13]_i_1 
       (.I0(\c_chars_in_process[13]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[14]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[13]_0 ),
        .O(n_chars_in_process1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_2 
       (.I0(\c_chars_in_process[13]_i_4_n_0 ),
        .I1(\c_chars_in_process[15]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[17]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[19]_i_4_n_0 ),
        .O(\c_chars_in_process[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[13]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [13]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [13]),
        .O(\c_chars_out_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_4 
       (.I0(characters_drum_1_lut[8]),
        .I1(characters_drum_1_lut[24]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[16]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[6]),
        .O(\c_chars_in_process[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[14]_i_1 
       (.I0(\c_chars_in_process[14]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[15]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[14]_0 ),
        .O(n_chars_in_process1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_2 
       (.I0(\c_chars_in_process[14]_i_4_n_0 ),
        .I1(\c_chars_in_process[16]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[18]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[20]_i_4_n_0 ),
        .O(\c_chars_in_process[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[14]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [14]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [14]),
        .O(\c_chars_out_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_4 
       (.I0(characters_drum_1_lut[9]),
        .I1(characters_drum_1_lut[25]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[17]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[7]),
        .O(\c_chars_in_process[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[15]_i_1 
       (.I0(\c_chars_in_process[15]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[16]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[15]_0 ),
        .O(n_chars_in_process1_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_2 
       (.I0(\c_chars_in_process[15]_i_4_n_0 ),
        .I1(\c_chars_in_process[17]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[19]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[21]_i_4_n_0 ),
        .O(\c_chars_in_process[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[15]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [15]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [15]),
        .O(\c_chars_out_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_4 
       (.I0(characters_drum_1_lut[10]),
        .I1(characters_drum_1_lut[0]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[18]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[8]),
        .O(\c_chars_in_process[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[16]_i_1 
       (.I0(\c_chars_in_process[16]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[17]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[16]_0 ),
        .O(n_chars_in_process1_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_2 
       (.I0(\c_chars_in_process[16]_i_4_n_0 ),
        .I1(\c_chars_in_process[18]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[20]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[22]_i_4_n_0 ),
        .O(\c_chars_in_process[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[16]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [16]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [16]),
        .O(\c_chars_out_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_4 
       (.I0(characters_drum_1_lut[11]),
        .I1(characters_drum_1_lut[1]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[19]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[9]),
        .O(\c_chars_in_process[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[17]_i_1 
       (.I0(\c_chars_in_process[17]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[18]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[17]_0 ),
        .O(n_chars_in_process1_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_2 
       (.I0(\c_chars_in_process[17]_i_4_n_0 ),
        .I1(\c_chars_in_process[19]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[21]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[23]_i_4_n_0 ),
        .O(\c_chars_in_process[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[17]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [17]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [17]),
        .O(\c_chars_out_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_4 
       (.I0(characters_drum_1_lut[12]),
        .I1(characters_drum_1_lut[2]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[20]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[10]),
        .O(\c_chars_in_process[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[18]_i_1 
       (.I0(\c_chars_in_process[18]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[19]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[18]_0 ),
        .O(n_chars_in_process1_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_2 
       (.I0(\c_chars_in_process[18]_i_4_n_0 ),
        .I1(\c_chars_in_process[20]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[22]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[24]_i_4_n_0 ),
        .O(\c_chars_in_process[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[18]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [18]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [18]),
        .O(\c_chars_out_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_4 
       (.I0(characters_drum_1_lut[13]),
        .I1(characters_drum_1_lut[3]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[21]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[11]),
        .O(\c_chars_in_process[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[19]_i_1 
       (.I0(\c_chars_in_process[19]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[20]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[19]_0 ),
        .O(n_chars_in_process1_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_2 
       (.I0(\c_chars_in_process[19]_i_4_n_0 ),
        .I1(\c_chars_in_process[21]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[23]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_6_n_0 ),
        .O(\c_chars_in_process[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[19]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [19]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [19]),
        .O(\c_chars_out_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_4 
       (.I0(characters_drum_1_lut[14]),
        .I1(characters_drum_1_lut[4]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[22]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[12]),
        .O(\c_chars_in_process[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[1]_i_1 
       (.I0(\c_chars_in_process[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[2]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[1]_0 ),
        .O(n_chars_in_process1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[1]_i_2 
       (.I0(\c_chars_in_process[25]_i_7_n_0 ),
        .I1(\c_chars_in_process[25]_i_8_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_9_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[7]_i_4_n_0 ),
        .O(\c_chars_in_process[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[1]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [1]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [1]),
        .O(\c_chars_out_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[20]_i_1 
       (.I0(\c_chars_in_process[20]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[21]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[20]_0 ),
        .O(n_chars_in_process1_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_2 
       (.I0(\c_chars_in_process[20]_i_4_n_0 ),
        .I1(\c_chars_in_process[22]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[24]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_10_n_0 ),
        .O(\c_chars_in_process[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[20]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [20]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [20]),
        .O(\c_chars_out_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_4 
       (.I0(characters_drum_1_lut[15]),
        .I1(characters_drum_1_lut[5]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[23]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[13]),
        .O(\c_chars_in_process[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[21]_i_1 
       (.I0(\c_chars_in_process[21]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[22]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[21]_0 ),
        .O(n_chars_in_process1_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_2 
       (.I0(\c_chars_in_process[21]_i_4_n_0 ),
        .I1(\c_chars_in_process[23]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_7_n_0 ),
        .O(\c_chars_in_process[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[21]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [21]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [21]),
        .O(\c_chars_out_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_4 
       (.I0(characters_drum_1_lut[16]),
        .I1(characters_drum_1_lut[6]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[24]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[14]),
        .O(\c_chars_in_process[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[22]_i_1 
       (.I0(\c_chars_in_process[22]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[23]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[22]_0 ),
        .O(n_chars_in_process1_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_2 
       (.I0(\c_chars_in_process[22]_i_4_n_0 ),
        .I1(\c_chars_in_process[24]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_10_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_11_n_0 ),
        .O(\c_chars_in_process[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[22]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [22]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [22]),
        .O(\c_chars_out_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_4 
       (.I0(characters_drum_1_lut[17]),
        .I1(characters_drum_1_lut[7]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[25]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[15]),
        .O(\c_chars_in_process[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[23]_i_1 
       (.I0(\c_chars_in_process[23]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[24]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[23]_0 ),
        .O(n_chars_in_process1_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_2 
       (.I0(\c_chars_in_process[23]_i_4_n_0 ),
        .I1(\c_chars_in_process[25]_i_6_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_7_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_8_n_0 ),
        .O(\c_chars_in_process[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[23]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [23]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [23]),
        .O(\c_chars_out_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_4 
       (.I0(characters_drum_1_lut[18]),
        .I1(characters_drum_1_lut[8]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[0]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[16]),
        .O(\c_chars_in_process[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[24]_i_1 
       (.I0(\c_chars_in_process[24]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_3_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[24]_0 ),
        .O(n_chars_in_process1_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_2 
       (.I0(\c_chars_in_process[24]_i_4_n_0 ),
        .I1(\c_chars_in_process[25]_i_10_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_11_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_12_n_0 ),
        .O(\c_chars_in_process[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[24]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [24]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [24]),
        .O(\c_chars_out_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_4 
       (.I0(characters_drum_1_lut[19]),
        .I1(characters_drum_1_lut[9]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[1]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[17]),
        .O(\c_chars_in_process[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00007774)) 
    \c_chars_in_process[25]_i_1 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(ready_out_drum_2_bwd),
        .I3(\c_chars_in_process_reg[0]_0 ),
        .I4(\FSM_sequential_c_status_reg[1]_0 ),
        .O(n_chars_in_process));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_10 
       (.I0(characters_drum_1_lut[21]),
        .I1(characters_drum_1_lut[11]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[3]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[19]),
        .O(\c_chars_in_process[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_11 
       (.I0(characters_drum_1_lut[23]),
        .I1(characters_drum_1_lut[13]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[5]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[21]),
        .O(\c_chars_in_process[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_12 
       (.I0(characters_drum_1_lut[25]),
        .I1(characters_drum_1_lut[15]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[7]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[23]),
        .O(\c_chars_in_process[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_13 
       (.I0(characters_drum_1_lut[1]),
        .I1(characters_drum_1_lut[17]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[9]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[25]),
        .O(\c_chars_in_process[25]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[25]_i_1__3 
       (.I0(E),
        .I1(START_IN),
        .O(c_ready_out_bwd_reg_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[25]_i_2 
       (.I0(\c_chars_in_process[25]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_4_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[25]_0 ),
        .O(n_chars_in_process1_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_3 
       (.I0(\c_chars_in_process[25]_i_6_n_0 ),
        .I1(\c_chars_in_process[25]_i_7_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_8_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_9_n_0 ),
        .O(\c_chars_in_process[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_4 
       (.I0(\c_chars_in_process[25]_i_10_n_0 ),
        .I1(\c_chars_in_process[25]_i_11_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_12_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_13_n_0 ),
        .O(\c_chars_in_process[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[25]_i_5__0 
       (.I0(\c_chars_out_reg[25]_1 [25]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [25]),
        .O(\c_chars_out_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_6 
       (.I0(characters_drum_1_lut[20]),
        .I1(characters_drum_1_lut[10]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[2]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[18]),
        .O(\c_chars_in_process[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_7 
       (.I0(characters_drum_1_lut[22]),
        .I1(characters_drum_1_lut[12]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[4]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[20]),
        .O(\c_chars_in_process[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_8 
       (.I0(characters_drum_1_lut[24]),
        .I1(characters_drum_1_lut[14]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[6]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[22]),
        .O(\c_chars_in_process[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_9 
       (.I0(characters_drum_1_lut[0]),
        .I1(characters_drum_1_lut[16]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[8]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[24]),
        .O(\c_chars_in_process[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[2]_i_1 
       (.I0(\c_chars_in_process[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[3]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[2]_0 ),
        .O(n_chars_in_process1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[2]_i_2 
       (.I0(\c_chars_in_process[25]_i_11_n_0 ),
        .I1(\c_chars_in_process[25]_i_12_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_13_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[8]_i_4_n_0 ),
        .O(\c_chars_in_process[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[2]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [2]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [2]),
        .O(\c_chars_out_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[3]_i_1 
       (.I0(\c_chars_in_process[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[4]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[3]_0 ),
        .O(n_chars_in_process1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[3]_i_2 
       (.I0(\c_chars_in_process[25]_i_8_n_0 ),
        .I1(\c_chars_in_process[25]_i_9_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[7]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[9]_i_4_n_0 ),
        .O(\c_chars_in_process[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[3]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [3]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [3]),
        .O(\c_chars_out_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[4]_i_1 
       (.I0(\c_chars_in_process[4]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[5]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[4]_0 ),
        .O(n_chars_in_process1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[4]_i_2 
       (.I0(\c_chars_in_process[25]_i_12_n_0 ),
        .I1(\c_chars_in_process[25]_i_13_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[8]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[10]_i_4_n_0 ),
        .O(\c_chars_in_process[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[4]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [4]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [4]),
        .O(\c_chars_out_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[5]_i_1 
       (.I0(\c_chars_in_process[5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[6]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[5]_0 ),
        .O(n_chars_in_process1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[5]_i_2 
       (.I0(\c_chars_in_process[25]_i_9_n_0 ),
        .I1(\c_chars_in_process[7]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[9]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[11]_i_4_n_0 ),
        .O(\c_chars_in_process[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[5]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [5]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [5]),
        .O(\c_chars_out_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[6]_i_1 
       (.I0(\c_chars_in_process[6]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[7]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[6]_0 ),
        .O(n_chars_in_process1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[6]_i_2 
       (.I0(\c_chars_in_process[25]_i_13_n_0 ),
        .I1(\c_chars_in_process[8]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[10]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[12]_i_4_n_0 ),
        .O(\c_chars_in_process[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[6]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [6]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [6]),
        .O(\c_chars_out_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[7]_i_1 
       (.I0(\c_chars_in_process[7]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[8]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[7]_0 ),
        .O(n_chars_in_process1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_2 
       (.I0(\c_chars_in_process[7]_i_4_n_0 ),
        .I1(\c_chars_in_process[9]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[11]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[13]_i_4_n_0 ),
        .O(\c_chars_in_process[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[7]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [7]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [7]),
        .O(\c_chars_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_4 
       (.I0(characters_drum_1_lut[2]),
        .I1(characters_drum_1_lut[18]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[10]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[0]),
        .O(\c_chars_in_process[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[8]_i_1 
       (.I0(\c_chars_in_process[8]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[9]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[8]_0 ),
        .O(n_chars_in_process1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_2 
       (.I0(\c_chars_in_process[8]_i_4_n_0 ),
        .I1(\c_chars_in_process[10]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[12]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[14]_i_4_n_0 ),
        .O(\c_chars_in_process[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[8]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [8]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [8]),
        .O(\c_chars_out_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_4 
       (.I0(characters_drum_1_lut[3]),
        .I1(characters_drum_1_lut[19]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[11]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[1]),
        .O(\c_chars_in_process[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[9]_i_1 
       (.I0(\c_chars_in_process[9]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[10]_i_2_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[9]_0 ),
        .O(n_chars_in_process1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_2 
       (.I0(\c_chars_in_process[9]_i_4_n_0 ),
        .I1(\c_chars_in_process[11]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[13]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[15]_i_4_n_0 ),
        .O(\c_chars_in_process[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[9]_i_3__0 
       (.I0(\c_chars_out_reg[25]_1 [9]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [9]),
        .O(\c_chars_out_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_4 
       (.I0(characters_drum_1_lut[4]),
        .I1(characters_drum_1_lut[20]),
        .I2(Q[3]),
        .I3(characters_drum_1_lut[12]),
        .I4(Q[4]),
        .I5(characters_drum_1_lut[2]),
        .O(\c_chars_in_process[9]_i_4_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[0]),
        .Q(characters_drum_1_lut[0]),
        .R(SR));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[10]),
        .Q(characters_drum_1_lut[10]),
        .R(SR));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[11]),
        .Q(characters_drum_1_lut[11]),
        .R(SR));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[12]),
        .Q(characters_drum_1_lut[12]),
        .R(SR));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[13]),
        .Q(characters_drum_1_lut[13]),
        .R(SR));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[14]),
        .Q(characters_drum_1_lut[14]),
        .R(SR));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[15]),
        .Q(characters_drum_1_lut[15]),
        .R(SR));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[16]),
        .Q(characters_drum_1_lut[16]),
        .R(SR));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[17]),
        .Q(characters_drum_1_lut[17]),
        .R(SR));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[18]),
        .Q(characters_drum_1_lut[18]),
        .R(SR));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[19]),
        .Q(characters_drum_1_lut[19]),
        .R(SR));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[1]),
        .Q(characters_drum_1_lut[1]),
        .R(SR));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[20]),
        .Q(characters_drum_1_lut[20]),
        .R(SR));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[21]),
        .Q(characters_drum_1_lut[21]),
        .R(SR));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[22]),
        .Q(characters_drum_1_lut[22]),
        .R(SR));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[23]),
        .Q(characters_drum_1_lut[23]),
        .R(SR));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[24]),
        .Q(characters_drum_1_lut[24]),
        .R(SR));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[25]),
        .Q(characters_drum_1_lut[25]),
        .R(SR));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[2]),
        .Q(characters_drum_1_lut[2]),
        .R(SR));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[3]),
        .Q(characters_drum_1_lut[3]),
        .R(SR));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[4]),
        .Q(characters_drum_1_lut[4]),
        .R(SR));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[5]),
        .Q(characters_drum_1_lut[5]),
        .R(SR));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[6]),
        .Q(characters_drum_1_lut[6]),
        .R(SR));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[7]),
        .Q(characters_drum_1_lut[7]),
        .R(SR));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[8]),
        .Q(characters_drum_1_lut[8]),
        .R(SR));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[9]),
        .Q(characters_drum_1_lut[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1__0 
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(\c_chars_out_reg[25]_2 ),
        .I2(\FSM_sequential_c_status_reg[0]_0 ),
        .O(n_chars_out));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [0]),
        .Q(\c_chars_out_reg[25]_1 [0]),
        .R(SR));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [10]),
        .Q(\c_chars_out_reg[25]_1 [10]),
        .R(SR));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [11]),
        .Q(\c_chars_out_reg[25]_1 [11]),
        .R(SR));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [12]),
        .Q(\c_chars_out_reg[25]_1 [12]),
        .R(SR));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [13]),
        .Q(\c_chars_out_reg[25]_1 [13]),
        .R(SR));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [14]),
        .Q(\c_chars_out_reg[25]_1 [14]),
        .R(SR));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [15]),
        .Q(\c_chars_out_reg[25]_1 [15]),
        .R(SR));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [16]),
        .Q(\c_chars_out_reg[25]_1 [16]),
        .R(SR));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [17]),
        .Q(\c_chars_out_reg[25]_1 [17]),
        .R(SR));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [18]),
        .Q(\c_chars_out_reg[25]_1 [18]),
        .R(SR));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [19]),
        .Q(\c_chars_out_reg[25]_1 [19]),
        .R(SR));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [1]),
        .Q(\c_chars_out_reg[25]_1 [1]),
        .R(SR));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [20]),
        .Q(\c_chars_out_reg[25]_1 [20]),
        .R(SR));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [21]),
        .Q(\c_chars_out_reg[25]_1 [21]),
        .R(SR));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [22]),
        .Q(\c_chars_out_reg[25]_1 [22]),
        .R(SR));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [23]),
        .Q(\c_chars_out_reg[25]_1 [23]),
        .R(SR));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [24]),
        .Q(\c_chars_out_reg[25]_1 [24]),
        .R(SR));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [25]),
        .Q(\c_chars_out_reg[25]_1 [25]),
        .R(SR));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [2]),
        .Q(\c_chars_out_reg[25]_1 [2]),
        .R(SR));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [3]),
        .Q(\c_chars_out_reg[25]_1 [3]),
        .R(SR));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [4]),
        .Q(\c_chars_out_reg[25]_1 [4]),
        .R(SR));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [5]),
        .Q(\c_chars_out_reg[25]_1 [5]),
        .R(SR));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [6]),
        .Q(\c_chars_out_reg[25]_1 [6]),
        .R(SR));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [7]),
        .Q(\c_chars_out_reg[25]_1 [7]),
        .R(SR));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [8]),
        .Q(\c_chars_out_reg[25]_1 [8]),
        .R(SR));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [9]),
        .Q(\c_chars_out_reg[25]_1 [9]),
        .R(SR));
  FDSE c_dir_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_dir_to_lut_reg_1),
        .Q(c_dir_to_lut_reg_0),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    c_direction_i_1
       (.I0(c_request_to_lut_reg_0),
        .I1(c_dir_to_lut_reg_0),
        .I2(c_direction_reg),
        .O(c_request_to_lut_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[0]_i_1 
       (.I0(n_drum_count[0]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_1_IN[0]),
        .O(\c_drum_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[1]_i_1 
       (.I0(n_drum_count[1]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_1_IN[1]),
        .O(\c_drum_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[2]_i_1 
       (.I0(n_drum_count[2]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_1_IN[2]),
        .O(\c_drum_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[3]_i_1 
       (.I0(n_drum_count[3]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_1_IN[3]),
        .O(\c_drum_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[4]_i_1 
       (.I0(n_drum_count[4]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_1_IN[4]),
        .O(\c_drum_count[4]_i_1_n_0 ));
  FDRE \c_drum_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \c_drum_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \c_drum_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \c_drum_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \c_drum_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    c_ready_out_bwd_i_1__0
       (.I0(\FSM_sequential_c_status_reg[0]_0 ),
        .I1(\FSM_sequential_c_status_reg[1]_0 ),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(E),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    c_ready_out_fwd_i_1
       (.I0(\FSM_sequential_c_status_reg[0]_0 ),
        .I1(\FSM_sequential_c_status_reg[1]_0 ),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_fwd));
  FDRE c_ready_out_fwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_fwd),
        .Q(c_ready_out_fwd_reg_0),
        .R(SR));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_reg_3),
        .Q(c_request_to_lut_reg_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \n_drum_count[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_drum_count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_drum_count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_drum_count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \n_drum_count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\n_drum_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n_drum_count[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(plusOp[4]));
  FDRE \n_drum_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(n_drum_count[0]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(n_drum_count[1]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(n_drum_count[2]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(n_drum_count[3]),
        .R(\n_drum_count[4]_i_1_n_0 ));
  FDRE \n_drum_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(n_drum_count[4]),
        .R(\n_drum_count[4]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "drum" *) 
module design_test_TURBO_enigma_0_0_drum_0
   (c_ready_out_fwd_reg_0,
    ready_out_drum_2_bwd,
    c_drum_impuls_out_reg_0,
    c_dir_to_lut_reg_0,
    c_request_to_lut_reg_0,
    \FSM_sequential_c_status_reg[1]_0 ,
    \FSM_sequential_c_status_reg[0]_0 ,
    Q,
    \c_chars_in_process_reg[25]_0 ,
    \c_chars_out_reg[25]_0 ,
    \c_chars_out_reg[25]_1 ,
    \c_chars_out_reg[24]_0 ,
    \c_chars_out_reg[23]_0 ,
    \c_chars_out_reg[22]_0 ,
    \c_chars_out_reg[21]_0 ,
    \c_chars_out_reg[20]_0 ,
    \c_chars_out_reg[19]_0 ,
    \c_chars_out_reg[18]_0 ,
    \c_chars_out_reg[17]_0 ,
    \c_chars_out_reg[16]_0 ,
    \c_chars_out_reg[15]_0 ,
    \c_chars_out_reg[14]_0 ,
    \c_chars_out_reg[13]_0 ,
    \c_chars_out_reg[12]_0 ,
    \c_chars_out_reg[11]_0 ,
    \c_chars_out_reg[10]_0 ,
    \c_chars_out_reg[9]_0 ,
    \c_chars_out_reg[8]_0 ,
    \c_chars_out_reg[7]_0 ,
    \c_chars_out_reg[6]_0 ,
    \c_chars_out_reg[5]_0 ,
    \c_chars_out_reg[4]_0 ,
    \c_chars_out_reg[3]_0 ,
    \c_chars_out_reg[2]_0 ,
    \c_chars_out_reg[1]_0 ,
    \c_chars_out_reg[0]_0 ,
    D,
    SR,
    UB_CLK_IN,
    CLK,
    c_dir_to_lut_reg_1,
    c_request_to_lut_reg_1,
    \FSM_sequential_c_status_reg[0]_1 ,
    \FSM_sequential_c_status_reg[1]_1 ,
    ready_out_drum_1_fwd,
    ready_out_drum_3_bwd,
    \c_chars_out_reg[25]_2 ,
    \c_chars_in_process_reg[10]_0 ,
    \c_chars_in_process_reg[11]_0 ,
    \c_chars_in_process_reg[14]_0 ,
    \c_chars_in_process_reg[15]_0 ,
    \c_chars_in_process_reg[12]_0 ,
    \c_chars_in_process_reg[13]_0 ,
    \c_chars_in_process_reg[16]_0 ,
    \c_chars_in_process_reg[17]_0 ,
    \c_chars_in_process_reg[18]_0 ,
    \c_chars_in_process_reg[19]_0 ,
    \c_chars_in_process_reg[22]_0 ,
    \c_chars_in_process_reg[23]_0 ,
    \c_chars_in_process_reg[20]_0 ,
    \c_chars_in_process_reg[21]_0 ,
    \c_chars_in_process_reg[24]_0 ,
    \c_chars_in_process_reg[25]_1 ,
    \c_chars_in_process_reg[0]_0 ,
    \c_chars_in_process_reg[1]_0 ,
    \c_chars_in_process_reg[4]_0 ,
    \c_chars_in_process_reg[5]_0 ,
    \c_chars_in_process_reg[2]_0 ,
    \c_chars_in_process_reg[3]_0 ,
    \c_chars_in_process_reg[6]_0 ,
    \c_chars_in_process_reg[7]_0 ,
    \c_chars_in_process_reg[8]_0 ,
    \c_chars_in_process_reg[9]_0 ,
    \c_chars_in_process_reg[25]_2 ,
    \c_drum_typ_reg[0] ,
    CONFIG_DRUM_TYP_3_IN,
    CONFIG_DRUM_TYP_2_IN,
    \c_drum_typ_reg[0]_0 ,
    CONFIG_DRUM_TYP_1_IN,
    \c_chars_out_reg[25]_3 ,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_2_IN);
  output c_ready_out_fwd_reg_0;
  output ready_out_drum_2_bwd;
  output c_drum_impuls_out_reg_0;
  output c_dir_to_lut_reg_0;
  output c_request_to_lut_reg_0;
  output \FSM_sequential_c_status_reg[1]_0 ;
  output \FSM_sequential_c_status_reg[0]_0 ;
  output [4:0]Q;
  output [25:0]\c_chars_in_process_reg[25]_0 ;
  output \c_chars_out_reg[25]_0 ;
  output [25:0]\c_chars_out_reg[25]_1 ;
  output \c_chars_out_reg[24]_0 ;
  output \c_chars_out_reg[23]_0 ;
  output \c_chars_out_reg[22]_0 ;
  output \c_chars_out_reg[21]_0 ;
  output \c_chars_out_reg[20]_0 ;
  output \c_chars_out_reg[19]_0 ;
  output \c_chars_out_reg[18]_0 ;
  output \c_chars_out_reg[17]_0 ;
  output \c_chars_out_reg[16]_0 ;
  output \c_chars_out_reg[15]_0 ;
  output \c_chars_out_reg[14]_0 ;
  output \c_chars_out_reg[13]_0 ;
  output \c_chars_out_reg[12]_0 ;
  output \c_chars_out_reg[11]_0 ;
  output \c_chars_out_reg[10]_0 ;
  output \c_chars_out_reg[9]_0 ;
  output \c_chars_out_reg[8]_0 ;
  output \c_chars_out_reg[7]_0 ;
  output \c_chars_out_reg[6]_0 ;
  output \c_chars_out_reg[5]_0 ;
  output \c_chars_out_reg[4]_0 ;
  output \c_chars_out_reg[3]_0 ;
  output \c_chars_out_reg[2]_0 ;
  output \c_chars_out_reg[1]_0 ;
  output \c_chars_out_reg[0]_0 ;
  output [0:0]D;
  input [0:0]SR;
  input UB_CLK_IN;
  input CLK;
  input c_dir_to_lut_reg_1;
  input c_request_to_lut_reg_1;
  input \FSM_sequential_c_status_reg[0]_1 ;
  input \FSM_sequential_c_status_reg[1]_1 ;
  input ready_out_drum_1_fwd;
  input ready_out_drum_3_bwd;
  input \c_chars_out_reg[25]_2 ;
  input \c_chars_in_process_reg[10]_0 ;
  input \c_chars_in_process_reg[11]_0 ;
  input \c_chars_in_process_reg[14]_0 ;
  input \c_chars_in_process_reg[15]_0 ;
  input \c_chars_in_process_reg[12]_0 ;
  input \c_chars_in_process_reg[13]_0 ;
  input \c_chars_in_process_reg[16]_0 ;
  input \c_chars_in_process_reg[17]_0 ;
  input \c_chars_in_process_reg[18]_0 ;
  input \c_chars_in_process_reg[19]_0 ;
  input \c_chars_in_process_reg[22]_0 ;
  input \c_chars_in_process_reg[23]_0 ;
  input \c_chars_in_process_reg[20]_0 ;
  input \c_chars_in_process_reg[21]_0 ;
  input \c_chars_in_process_reg[24]_0 ;
  input \c_chars_in_process_reg[25]_1 ;
  input \c_chars_in_process_reg[0]_0 ;
  input \c_chars_in_process_reg[1]_0 ;
  input \c_chars_in_process_reg[4]_0 ;
  input \c_chars_in_process_reg[5]_0 ;
  input \c_chars_in_process_reg[2]_0 ;
  input \c_chars_in_process_reg[3]_0 ;
  input \c_chars_in_process_reg[6]_0 ;
  input \c_chars_in_process_reg[7]_0 ;
  input \c_chars_in_process_reg[8]_0 ;
  input \c_chars_in_process_reg[9]_0 ;
  input [25:0]\c_chars_in_process_reg[25]_2 ;
  input \c_drum_typ_reg[0] ;
  input [0:0]CONFIG_DRUM_TYP_3_IN;
  input [0:0]CONFIG_DRUM_TYP_2_IN;
  input \c_drum_typ_reg[0]_0 ;
  input [0:0]CONFIG_DRUM_TYP_1_IN;
  input [25:0]\c_chars_out_reg[25]_3 ;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_2_IN;

  wire CLK;
  wire [0:0]CONFIG_DRUM_TYP_1_IN;
  wire [0:0]CONFIG_DRUM_TYP_2_IN;
  wire [0:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [0:0]D;
  wire \FSM_sequential_c_status[1]_i_1__0_n_0 ;
  wire \FSM_sequential_c_status_reg[0]_0 ;
  wire \FSM_sequential_c_status_reg[0]_1 ;
  wire \FSM_sequential_c_status_reg[1]_0 ;
  wire \FSM_sequential_c_status_reg[1]_1 ;
  wire [4:0]Q;
  wire SOFT_RESET_N_IN;
  wire [0:0]SR;
  wire UB_CLK_IN;
  wire \c_chars_in_process[10]_i_2__0_n_0 ;
  wire \c_chars_in_process[10]_i_4__0_n_0 ;
  wire \c_chars_in_process[11]_i_2__0_n_0 ;
  wire \c_chars_in_process[11]_i_4__0_n_0 ;
  wire \c_chars_in_process[12]_i_2__0_n_0 ;
  wire \c_chars_in_process[12]_i_4__0_n_0 ;
  wire \c_chars_in_process[13]_i_2__0_n_0 ;
  wire \c_chars_in_process[13]_i_4__0_n_0 ;
  wire \c_chars_in_process[14]_i_2__0_n_0 ;
  wire \c_chars_in_process[14]_i_4__0_n_0 ;
  wire \c_chars_in_process[15]_i_2__0_n_0 ;
  wire \c_chars_in_process[15]_i_4__0_n_0 ;
  wire \c_chars_in_process[16]_i_2__0_n_0 ;
  wire \c_chars_in_process[16]_i_4__0_n_0 ;
  wire \c_chars_in_process[17]_i_2__0_n_0 ;
  wire \c_chars_in_process[17]_i_4__0_n_0 ;
  wire \c_chars_in_process[18]_i_2__0_n_0 ;
  wire \c_chars_in_process[18]_i_4__0_n_0 ;
  wire \c_chars_in_process[19]_i_2__0_n_0 ;
  wire \c_chars_in_process[19]_i_4__0_n_0 ;
  wire \c_chars_in_process[1]_i_2__0_n_0 ;
  wire \c_chars_in_process[20]_i_2__0_n_0 ;
  wire \c_chars_in_process[20]_i_4__0_n_0 ;
  wire \c_chars_in_process[21]_i_2__0_n_0 ;
  wire \c_chars_in_process[21]_i_4__0_n_0 ;
  wire \c_chars_in_process[22]_i_2__0_n_0 ;
  wire \c_chars_in_process[22]_i_4__0_n_0 ;
  wire \c_chars_in_process[23]_i_2__0_n_0 ;
  wire \c_chars_in_process[23]_i_4__0_n_0 ;
  wire \c_chars_in_process[24]_i_2__0_n_0 ;
  wire \c_chars_in_process[24]_i_4__0_n_0 ;
  wire \c_chars_in_process[25]_i_10__0_n_0 ;
  wire \c_chars_in_process[25]_i_11__0_n_0 ;
  wire \c_chars_in_process[25]_i_12__0_n_0 ;
  wire \c_chars_in_process[25]_i_13__0_n_0 ;
  wire \c_chars_in_process[25]_i_3__0_n_0 ;
  wire \c_chars_in_process[25]_i_4__0_n_0 ;
  wire \c_chars_in_process[25]_i_6__0_n_0 ;
  wire \c_chars_in_process[25]_i_7__0_n_0 ;
  wire \c_chars_in_process[25]_i_8__0_n_0 ;
  wire \c_chars_in_process[25]_i_9__0_n_0 ;
  wire \c_chars_in_process[2]_i_2__0_n_0 ;
  wire \c_chars_in_process[3]_i_2__0_n_0 ;
  wire \c_chars_in_process[4]_i_2__0_n_0 ;
  wire \c_chars_in_process[5]_i_2__0_n_0 ;
  wire \c_chars_in_process[6]_i_2__0_n_0 ;
  wire \c_chars_in_process[7]_i_2__0_n_0 ;
  wire \c_chars_in_process[7]_i_4__0_n_0 ;
  wire \c_chars_in_process[8]_i_2__0_n_0 ;
  wire \c_chars_in_process[8]_i_4__0_n_0 ;
  wire \c_chars_in_process[9]_i_2__0_n_0 ;
  wire \c_chars_in_process[9]_i_4__0_n_0 ;
  wire \c_chars_in_process_reg[0]_0 ;
  wire \c_chars_in_process_reg[10]_0 ;
  wire \c_chars_in_process_reg[11]_0 ;
  wire \c_chars_in_process_reg[12]_0 ;
  wire \c_chars_in_process_reg[13]_0 ;
  wire \c_chars_in_process_reg[14]_0 ;
  wire \c_chars_in_process_reg[15]_0 ;
  wire \c_chars_in_process_reg[16]_0 ;
  wire \c_chars_in_process_reg[17]_0 ;
  wire \c_chars_in_process_reg[18]_0 ;
  wire \c_chars_in_process_reg[19]_0 ;
  wire \c_chars_in_process_reg[1]_0 ;
  wire \c_chars_in_process_reg[20]_0 ;
  wire \c_chars_in_process_reg[21]_0 ;
  wire \c_chars_in_process_reg[22]_0 ;
  wire \c_chars_in_process_reg[23]_0 ;
  wire \c_chars_in_process_reg[24]_0 ;
  wire [25:0]\c_chars_in_process_reg[25]_0 ;
  wire \c_chars_in_process_reg[25]_1 ;
  wire [25:0]\c_chars_in_process_reg[25]_2 ;
  wire \c_chars_in_process_reg[2]_0 ;
  wire \c_chars_in_process_reg[3]_0 ;
  wire \c_chars_in_process_reg[4]_0 ;
  wire \c_chars_in_process_reg[5]_0 ;
  wire \c_chars_in_process_reg[6]_0 ;
  wire \c_chars_in_process_reg[7]_0 ;
  wire \c_chars_in_process_reg[8]_0 ;
  wire \c_chars_in_process_reg[9]_0 ;
  wire \c_chars_out_reg[0]_0 ;
  wire \c_chars_out_reg[10]_0 ;
  wire \c_chars_out_reg[11]_0 ;
  wire \c_chars_out_reg[12]_0 ;
  wire \c_chars_out_reg[13]_0 ;
  wire \c_chars_out_reg[14]_0 ;
  wire \c_chars_out_reg[15]_0 ;
  wire \c_chars_out_reg[16]_0 ;
  wire \c_chars_out_reg[17]_0 ;
  wire \c_chars_out_reg[18]_0 ;
  wire \c_chars_out_reg[19]_0 ;
  wire \c_chars_out_reg[1]_0 ;
  wire \c_chars_out_reg[20]_0 ;
  wire \c_chars_out_reg[21]_0 ;
  wire \c_chars_out_reg[22]_0 ;
  wire \c_chars_out_reg[23]_0 ;
  wire \c_chars_out_reg[24]_0 ;
  wire \c_chars_out_reg[25]_0 ;
  wire [25:0]\c_chars_out_reg[25]_1 ;
  wire \c_chars_out_reg[25]_2 ;
  wire [25:0]\c_chars_out_reg[25]_3 ;
  wire \c_chars_out_reg[2]_0 ;
  wire \c_chars_out_reg[3]_0 ;
  wire \c_chars_out_reg[4]_0 ;
  wire \c_chars_out_reg[5]_0 ;
  wire \c_chars_out_reg[6]_0 ;
  wire \c_chars_out_reg[7]_0 ;
  wire \c_chars_out_reg[8]_0 ;
  wire \c_chars_out_reg[9]_0 ;
  wire c_dir_to_lut_reg_0;
  wire c_dir_to_lut_reg_1;
  wire \c_drum_count[0]_i_1_n_0 ;
  wire \c_drum_count[1]_i_1_n_0 ;
  wire \c_drum_count[2]_i_1_n_0 ;
  wire \c_drum_count[3]_i_1_n_0 ;
  wire \c_drum_count[4]_i_1_n_0 ;
  wire c_drum_impuls_out_reg_0;
  wire \c_drum_typ_reg[0] ;
  wire \c_drum_typ_reg[0]_0 ;
  wire [5:0]c_overflow_count;
  wire c_ready_out_fwd_reg_0;
  wire c_request_to_lut_reg_0;
  wire c_request_to_lut_reg_1;
  wire n_chars_in_process;
  wire [25:0]n_chars_in_process1_in;
  wire n_chars_out;
  wire [4:0]n_drum_count;
  wire \n_drum_count[4]_i_1__0_n_0 ;
  wire n_drum_impuls_out;
  wire [5:0]n_overflow_count;
  wire n_overflow_count0_n_0;
  wire \n_overflow_count[0]_i_1_n_0 ;
  wire \n_overflow_count[1]_i_1_n_0 ;
  wire \n_overflow_count[2]_i_1_n_0 ;
  wire \n_overflow_count[3]_i_1_n_0 ;
  wire \n_overflow_count[4]_i_1_n_0 ;
  wire \n_overflow_count[5]_i_1_n_0 ;
  wire n_ready_out_bwd;
  wire n_ready_out_fwd;
  wire [0:0]p_0_in;
  wire [4:1]plusOp;
  wire ready_out_drum_1_fwd;
  wire ready_out_drum_2_bwd;
  wire ready_out_drum_3_bwd;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_c_status[1]_i_1__0 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(\FSM_sequential_c_status_reg[1]_0 ),
        .O(\FSM_sequential_c_status[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status_reg[0]_1 ),
        .Q(\FSM_sequential_c_status_reg[0]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_c_status_reg[1]_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[0]_i_1__0 
       (.I0(\c_chars_in_process[25]_i_4__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[1]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[0]_0 ),
        .O(n_chars_in_process1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[0]_i_2__1 
       (.I0(\c_chars_out_reg[25]_1 [0]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [0]),
        .O(\c_chars_out_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[10]_i_1__0 
       (.I0(\c_chars_in_process[10]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[11]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[10]_0 ),
        .O(n_chars_in_process1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_2__0 
       (.I0(\c_chars_in_process[10]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[12]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[14]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[16]_i_4__0_n_0 ),
        .O(\c_chars_in_process[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[10]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [10]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [10]),
        .O(\c_chars_out_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [5]),
        .I1(\c_chars_in_process_reg[25]_0 [21]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [13]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [3]),
        .O(\c_chars_in_process[10]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[11]_i_1__0 
       (.I0(\c_chars_in_process[11]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[12]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[11]_0 ),
        .O(n_chars_in_process1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_2__0 
       (.I0(\c_chars_in_process[11]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[13]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[15]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[17]_i_4__0_n_0 ),
        .O(\c_chars_in_process[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[11]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [11]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [11]),
        .O(\c_chars_out_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [6]),
        .I1(\c_chars_in_process_reg[25]_0 [22]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [14]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [4]),
        .O(\c_chars_in_process[11]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[12]_i_1__0 
       (.I0(\c_chars_in_process[12]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[13]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[12]_0 ),
        .O(n_chars_in_process1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_2__0 
       (.I0(\c_chars_in_process[12]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[14]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[16]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[18]_i_4__0_n_0 ),
        .O(\c_chars_in_process[12]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[12]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [12]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [12]),
        .O(\c_chars_out_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [7]),
        .I1(\c_chars_in_process_reg[25]_0 [23]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [15]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [5]),
        .O(\c_chars_in_process[12]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[13]_i_1__0 
       (.I0(\c_chars_in_process[13]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[14]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[13]_0 ),
        .O(n_chars_in_process1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_2__0 
       (.I0(\c_chars_in_process[13]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[15]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[17]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[19]_i_4__0_n_0 ),
        .O(\c_chars_in_process[13]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[13]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [13]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [13]),
        .O(\c_chars_out_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [8]),
        .I1(\c_chars_in_process_reg[25]_0 [24]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [16]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [6]),
        .O(\c_chars_in_process[13]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[14]_i_1__0 
       (.I0(\c_chars_in_process[14]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[15]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[14]_0 ),
        .O(n_chars_in_process1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_2__0 
       (.I0(\c_chars_in_process[14]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[16]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[18]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[20]_i_4__0_n_0 ),
        .O(\c_chars_in_process[14]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[14]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [14]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [14]),
        .O(\c_chars_out_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [9]),
        .I1(\c_chars_in_process_reg[25]_0 [25]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [17]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [7]),
        .O(\c_chars_in_process[14]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[15]_i_1__0 
       (.I0(\c_chars_in_process[15]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[16]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[15]_0 ),
        .O(n_chars_in_process1_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_2__0 
       (.I0(\c_chars_in_process[15]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[17]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[19]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[21]_i_4__0_n_0 ),
        .O(\c_chars_in_process[15]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[15]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [15]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [15]),
        .O(\c_chars_out_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [10]),
        .I1(\c_chars_in_process_reg[25]_0 [0]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [18]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [8]),
        .O(\c_chars_in_process[15]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[16]_i_1__0 
       (.I0(\c_chars_in_process[16]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[17]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[16]_0 ),
        .O(n_chars_in_process1_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_2__0 
       (.I0(\c_chars_in_process[16]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[18]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[20]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[22]_i_4__0_n_0 ),
        .O(\c_chars_in_process[16]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[16]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [16]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [16]),
        .O(\c_chars_out_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [11]),
        .I1(\c_chars_in_process_reg[25]_0 [1]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [19]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [9]),
        .O(\c_chars_in_process[16]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[17]_i_1__0 
       (.I0(\c_chars_in_process[17]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[18]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[17]_0 ),
        .O(n_chars_in_process1_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_2__0 
       (.I0(\c_chars_in_process[17]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[19]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[21]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[23]_i_4__0_n_0 ),
        .O(\c_chars_in_process[17]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[17]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [17]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [17]),
        .O(\c_chars_out_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [12]),
        .I1(\c_chars_in_process_reg[25]_0 [2]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [20]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [10]),
        .O(\c_chars_in_process[17]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[18]_i_1__0 
       (.I0(\c_chars_in_process[18]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[19]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[18]_0 ),
        .O(n_chars_in_process1_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_2__0 
       (.I0(\c_chars_in_process[18]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[20]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[22]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[24]_i_4__0_n_0 ),
        .O(\c_chars_in_process[18]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[18]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [18]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [18]),
        .O(\c_chars_out_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [13]),
        .I1(\c_chars_in_process_reg[25]_0 [3]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [21]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [11]),
        .O(\c_chars_in_process[18]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[19]_i_1__0 
       (.I0(\c_chars_in_process[19]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[20]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[19]_0 ),
        .O(n_chars_in_process1_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_2__0 
       (.I0(\c_chars_in_process[19]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[21]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[23]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_6__0_n_0 ),
        .O(\c_chars_in_process[19]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[19]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [19]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [19]),
        .O(\c_chars_out_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [14]),
        .I1(\c_chars_in_process_reg[25]_0 [4]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [22]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [12]),
        .O(\c_chars_in_process[19]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[1]_i_1__0 
       (.I0(\c_chars_in_process[1]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[2]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[1]_0 ),
        .O(n_chars_in_process1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[1]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_7__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_8__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_9__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[7]_i_4__0_n_0 ),
        .O(\c_chars_in_process[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[1]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [1]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [1]),
        .O(\c_chars_out_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[20]_i_1__0 
       (.I0(\c_chars_in_process[20]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[21]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[20]_0 ),
        .O(n_chars_in_process1_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_2__0 
       (.I0(\c_chars_in_process[20]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[22]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[24]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_10__0_n_0 ),
        .O(\c_chars_in_process[20]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[20]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [20]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [20]),
        .O(\c_chars_out_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [15]),
        .I1(\c_chars_in_process_reg[25]_0 [5]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [23]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [13]),
        .O(\c_chars_in_process[20]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[21]_i_1__0 
       (.I0(\c_chars_in_process[21]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[22]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[21]_0 ),
        .O(n_chars_in_process1_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_2__0 
       (.I0(\c_chars_in_process[21]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[23]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_6__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_7__0_n_0 ),
        .O(\c_chars_in_process[21]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[21]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [21]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [21]),
        .O(\c_chars_out_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [16]),
        .I1(\c_chars_in_process_reg[25]_0 [6]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [24]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [14]),
        .O(\c_chars_in_process[21]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[22]_i_1__0 
       (.I0(\c_chars_in_process[22]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[23]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[22]_0 ),
        .O(n_chars_in_process1_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_2__0 
       (.I0(\c_chars_in_process[22]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[24]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_10__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_11__0_n_0 ),
        .O(\c_chars_in_process[22]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[22]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [22]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [22]),
        .O(\c_chars_out_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [17]),
        .I1(\c_chars_in_process_reg[25]_0 [7]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [25]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [15]),
        .O(\c_chars_in_process[22]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[23]_i_1__0 
       (.I0(\c_chars_in_process[23]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[24]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[23]_0 ),
        .O(n_chars_in_process1_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_2__0 
       (.I0(\c_chars_in_process[23]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_6__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_7__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_8__0_n_0 ),
        .O(\c_chars_in_process[23]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[23]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [23]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [23]),
        .O(\c_chars_out_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [18]),
        .I1(\c_chars_in_process_reg[25]_0 [8]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [0]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [16]),
        .O(\c_chars_in_process[23]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[24]_i_1__0 
       (.I0(\c_chars_in_process[24]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_3__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[24]_0 ),
        .O(n_chars_in_process1_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_2__0 
       (.I0(\c_chars_in_process[24]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_10__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_11__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_12__0_n_0 ),
        .O(\c_chars_in_process[24]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[24]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [24]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [24]),
        .O(\c_chars_out_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [19]),
        .I1(\c_chars_in_process_reg[25]_0 [9]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [1]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [17]),
        .O(\c_chars_in_process[24]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_10__0 
       (.I0(\c_chars_in_process_reg[25]_0 [21]),
        .I1(\c_chars_in_process_reg[25]_0 [11]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [3]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [19]),
        .O(\c_chars_in_process[25]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_11__0 
       (.I0(\c_chars_in_process_reg[25]_0 [23]),
        .I1(\c_chars_in_process_reg[25]_0 [13]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [5]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [21]),
        .O(\c_chars_in_process[25]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_12__0 
       (.I0(\c_chars_in_process_reg[25]_0 [25]),
        .I1(\c_chars_in_process_reg[25]_0 [15]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [7]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [23]),
        .O(\c_chars_in_process[25]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_13__0 
       (.I0(\c_chars_in_process_reg[25]_0 [1]),
        .I1(\c_chars_in_process_reg[25]_0 [17]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [9]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [25]),
        .O(\c_chars_in_process[25]_i_13__0_n_0 ));
  LUT5 #(
    .INIT(32'h00007774)) 
    \c_chars_in_process[25]_i_1__0 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(ready_out_drum_1_fwd),
        .I3(ready_out_drum_3_bwd),
        .I4(\FSM_sequential_c_status_reg[1]_0 ),
        .O(n_chars_in_process));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[25]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_4__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[25]_1 ),
        .O(n_chars_in_process1_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_3__0 
       (.I0(\c_chars_in_process[25]_i_6__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_7__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_8__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_9__0_n_0 ),
        .O(\c_chars_in_process[25]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_4__0 
       (.I0(\c_chars_in_process[25]_i_10__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_11__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_12__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_13__0_n_0 ),
        .O(\c_chars_in_process[25]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[25]_i_5__1 
       (.I0(\c_chars_out_reg[25]_1 [25]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [25]),
        .O(\c_chars_out_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_6__0 
       (.I0(\c_chars_in_process_reg[25]_0 [20]),
        .I1(\c_chars_in_process_reg[25]_0 [10]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [2]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [18]),
        .O(\c_chars_in_process[25]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_7__0 
       (.I0(\c_chars_in_process_reg[25]_0 [22]),
        .I1(\c_chars_in_process_reg[25]_0 [12]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [4]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [20]),
        .O(\c_chars_in_process[25]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_8__0 
       (.I0(\c_chars_in_process_reg[25]_0 [24]),
        .I1(\c_chars_in_process_reg[25]_0 [14]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [6]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [22]),
        .O(\c_chars_in_process[25]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_9__0 
       (.I0(\c_chars_in_process_reg[25]_0 [0]),
        .I1(\c_chars_in_process_reg[25]_0 [16]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [8]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [24]),
        .O(\c_chars_in_process[25]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[2]_i_1__0 
       (.I0(\c_chars_in_process[2]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[3]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[2]_0 ),
        .O(n_chars_in_process1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[2]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_11__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_12__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_13__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[8]_i_4__0_n_0 ),
        .O(\c_chars_in_process[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[2]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [2]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [2]),
        .O(\c_chars_out_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[3]_i_1__0 
       (.I0(\c_chars_in_process[3]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[4]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[3]_0 ),
        .O(n_chars_in_process1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[3]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_8__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_9__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[7]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[9]_i_4__0_n_0 ),
        .O(\c_chars_in_process[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[3]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [3]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [3]),
        .O(\c_chars_out_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[4]_i_1__0 
       (.I0(\c_chars_in_process[4]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[5]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[4]_0 ),
        .O(n_chars_in_process1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[4]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_12__0_n_0 ),
        .I1(\c_chars_in_process[25]_i_13__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[8]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[10]_i_4__0_n_0 ),
        .O(\c_chars_in_process[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[4]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [4]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [4]),
        .O(\c_chars_out_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[5]_i_1__0 
       (.I0(\c_chars_in_process[5]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[6]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[5]_0 ),
        .O(n_chars_in_process1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[5]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_9__0_n_0 ),
        .I1(\c_chars_in_process[7]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[9]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[11]_i_4__0_n_0 ),
        .O(\c_chars_in_process[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[5]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [5]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [5]),
        .O(\c_chars_out_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[6]_i_1__0 
       (.I0(\c_chars_in_process[6]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[7]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[6]_0 ),
        .O(n_chars_in_process1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[6]_i_2__0 
       (.I0(\c_chars_in_process[25]_i_13__0_n_0 ),
        .I1(\c_chars_in_process[8]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[10]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[12]_i_4__0_n_0 ),
        .O(\c_chars_in_process[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[6]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [6]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [6]),
        .O(\c_chars_out_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[7]_i_1__0 
       (.I0(\c_chars_in_process[7]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[8]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[7]_0 ),
        .O(n_chars_in_process1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_2__0 
       (.I0(\c_chars_in_process[7]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[9]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[11]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[13]_i_4__0_n_0 ),
        .O(\c_chars_in_process[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[7]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [7]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [7]),
        .O(\c_chars_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [2]),
        .I1(\c_chars_in_process_reg[25]_0 [18]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [10]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [0]),
        .O(\c_chars_in_process[7]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[8]_i_1__0 
       (.I0(\c_chars_in_process[8]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[9]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[8]_0 ),
        .O(n_chars_in_process1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_2__0 
       (.I0(\c_chars_in_process[8]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[10]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[12]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[14]_i_4__0_n_0 ),
        .O(\c_chars_in_process[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[8]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [8]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [8]),
        .O(\c_chars_out_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [3]),
        .I1(\c_chars_in_process_reg[25]_0 [19]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [11]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [1]),
        .O(\c_chars_in_process[8]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[9]_i_1__0 
       (.I0(\c_chars_in_process[9]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[10]_i_2__0_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[9]_0 ),
        .O(n_chars_in_process1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_2__0 
       (.I0(\c_chars_in_process[9]_i_4__0_n_0 ),
        .I1(\c_chars_in_process[11]_i_4__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[13]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[15]_i_4__0_n_0 ),
        .O(\c_chars_in_process[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[9]_i_3__1 
       (.I0(\c_chars_out_reg[25]_1 [9]),
        .I1(c_ready_out_fwd_reg_0),
        .I2(\c_chars_in_process_reg[25]_2 [9]),
        .O(\c_chars_out_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_4__0 
       (.I0(\c_chars_in_process_reg[25]_0 [4]),
        .I1(\c_chars_in_process_reg[25]_0 [20]),
        .I2(Q[3]),
        .I3(\c_chars_in_process_reg[25]_0 [12]),
        .I4(Q[4]),
        .I5(\c_chars_in_process_reg[25]_0 [2]),
        .O(\c_chars_in_process[9]_i_4__0_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[0]),
        .Q(\c_chars_in_process_reg[25]_0 [0]),
        .R(SR));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[10]),
        .Q(\c_chars_in_process_reg[25]_0 [10]),
        .R(SR));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[11]),
        .Q(\c_chars_in_process_reg[25]_0 [11]),
        .R(SR));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[12]),
        .Q(\c_chars_in_process_reg[25]_0 [12]),
        .R(SR));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[13]),
        .Q(\c_chars_in_process_reg[25]_0 [13]),
        .R(SR));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[14]),
        .Q(\c_chars_in_process_reg[25]_0 [14]),
        .R(SR));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[15]),
        .Q(\c_chars_in_process_reg[25]_0 [15]),
        .R(SR));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[16]),
        .Q(\c_chars_in_process_reg[25]_0 [16]),
        .R(SR));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[17]),
        .Q(\c_chars_in_process_reg[25]_0 [17]),
        .R(SR));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[18]),
        .Q(\c_chars_in_process_reg[25]_0 [18]),
        .R(SR));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[19]),
        .Q(\c_chars_in_process_reg[25]_0 [19]),
        .R(SR));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[1]),
        .Q(\c_chars_in_process_reg[25]_0 [1]),
        .R(SR));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[20]),
        .Q(\c_chars_in_process_reg[25]_0 [20]),
        .R(SR));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[21]),
        .Q(\c_chars_in_process_reg[25]_0 [21]),
        .R(SR));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[22]),
        .Q(\c_chars_in_process_reg[25]_0 [22]),
        .R(SR));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[23]),
        .Q(\c_chars_in_process_reg[25]_0 [23]),
        .R(SR));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[24]),
        .Q(\c_chars_in_process_reg[25]_0 [24]),
        .R(SR));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[25]),
        .Q(\c_chars_in_process_reg[25]_0 [25]),
        .R(SR));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[2]),
        .Q(\c_chars_in_process_reg[25]_0 [2]),
        .R(SR));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[3]),
        .Q(\c_chars_in_process_reg[25]_0 [3]),
        .R(SR));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[4]),
        .Q(\c_chars_in_process_reg[25]_0 [4]),
        .R(SR));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[5]),
        .Q(\c_chars_in_process_reg[25]_0 [5]),
        .R(SR));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[6]),
        .Q(\c_chars_in_process_reg[25]_0 [6]),
        .R(SR));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[7]),
        .Q(\c_chars_in_process_reg[25]_0 [7]),
        .R(SR));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[8]),
        .Q(\c_chars_in_process_reg[25]_0 [8]),
        .R(SR));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[9]),
        .Q(\c_chars_in_process_reg[25]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1__1 
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(\c_chars_out_reg[25]_2 ),
        .I2(\FSM_sequential_c_status_reg[0]_0 ),
        .O(n_chars_out));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [0]),
        .Q(\c_chars_out_reg[25]_1 [0]),
        .R(SR));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [10]),
        .Q(\c_chars_out_reg[25]_1 [10]),
        .R(SR));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [11]),
        .Q(\c_chars_out_reg[25]_1 [11]),
        .R(SR));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [12]),
        .Q(\c_chars_out_reg[25]_1 [12]),
        .R(SR));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [13]),
        .Q(\c_chars_out_reg[25]_1 [13]),
        .R(SR));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [14]),
        .Q(\c_chars_out_reg[25]_1 [14]),
        .R(SR));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [15]),
        .Q(\c_chars_out_reg[25]_1 [15]),
        .R(SR));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [16]),
        .Q(\c_chars_out_reg[25]_1 [16]),
        .R(SR));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [17]),
        .Q(\c_chars_out_reg[25]_1 [17]),
        .R(SR));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [18]),
        .Q(\c_chars_out_reg[25]_1 [18]),
        .R(SR));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [19]),
        .Q(\c_chars_out_reg[25]_1 [19]),
        .R(SR));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [1]),
        .Q(\c_chars_out_reg[25]_1 [1]),
        .R(SR));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [20]),
        .Q(\c_chars_out_reg[25]_1 [20]),
        .R(SR));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [21]),
        .Q(\c_chars_out_reg[25]_1 [21]),
        .R(SR));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [22]),
        .Q(\c_chars_out_reg[25]_1 [22]),
        .R(SR));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [23]),
        .Q(\c_chars_out_reg[25]_1 [23]),
        .R(SR));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [24]),
        .Q(\c_chars_out_reg[25]_1 [24]),
        .R(SR));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [25]),
        .Q(\c_chars_out_reg[25]_1 [25]),
        .R(SR));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [2]),
        .Q(\c_chars_out_reg[25]_1 [2]),
        .R(SR));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [3]),
        .Q(\c_chars_out_reg[25]_1 [3]),
        .R(SR));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [4]),
        .Q(\c_chars_out_reg[25]_1 [4]),
        .R(SR));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [5]),
        .Q(\c_chars_out_reg[25]_1 [5]),
        .R(SR));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [6]),
        .Q(\c_chars_out_reg[25]_1 [6]),
        .R(SR));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [7]),
        .Q(\c_chars_out_reg[25]_1 [7]),
        .R(SR));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [8]),
        .Q(\c_chars_out_reg[25]_1 [8]),
        .R(SR));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_3 [9]),
        .Q(\c_chars_out_reg[25]_1 [9]),
        .R(SR));
  FDSE c_dir_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_dir_to_lut_reg_1),
        .Q(c_dir_to_lut_reg_0),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[0]_i_1 
       (.I0(n_drum_count[0]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_2_IN[0]),
        .O(\c_drum_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[1]_i_1 
       (.I0(n_drum_count[1]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_2_IN[1]),
        .O(\c_drum_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[2]_i_1 
       (.I0(n_drum_count[2]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_2_IN[2]),
        .O(\c_drum_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[3]_i_1 
       (.I0(n_drum_count[3]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_2_IN[3]),
        .O(\c_drum_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[4]_i_1 
       (.I0(n_drum_count[4]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_2_IN[4]),
        .O(\c_drum_count[4]_i_1_n_0 ));
  FDRE \c_drum_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \c_drum_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \c_drum_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \c_drum_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \c_drum_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE c_drum_impuls_out_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_drum_impuls_out),
        .Q(c_drum_impuls_out_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \c_drum_typ[0]_i_1 
       (.I0(c_request_to_lut_reg_0),
        .I1(\c_drum_typ_reg[0] ),
        .I2(CONFIG_DRUM_TYP_3_IN),
        .I3(CONFIG_DRUM_TYP_2_IN),
        .I4(\c_drum_typ_reg[0]_0 ),
        .I5(CONFIG_DRUM_TYP_1_IN),
        .O(D));
  FDRE \c_overflow_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[0]),
        .Q(c_overflow_count[0]),
        .R(SR));
  FDRE \c_overflow_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[1]),
        .Q(c_overflow_count[1]),
        .R(SR));
  FDRE \c_overflow_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[2]),
        .Q(c_overflow_count[2]),
        .R(SR));
  FDRE \c_overflow_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[3]),
        .Q(c_overflow_count[3]),
        .R(SR));
  FDRE \c_overflow_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[4]),
        .Q(c_overflow_count[4]),
        .R(SR));
  FDRE \c_overflow_count_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[5]),
        .Q(c_overflow_count[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    c_ready_out_bwd_i_1__1
       (.I0(c_dir_to_lut_reg_0),
        .I1(\FSM_sequential_c_status_reg[1]_0 ),
        .I2(\FSM_sequential_c_status_reg[0]_0 ),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(ready_out_drum_2_bwd),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    c_ready_out_fwd_i_1__0
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(c_dir_to_lut_reg_0),
        .I2(\FSM_sequential_c_status_reg[0]_0 ),
        .O(n_ready_out_fwd));
  FDRE c_ready_out_fwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_fwd),
        .Q(c_ready_out_fwd_reg_0),
        .R(SR));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_reg_1),
        .Q(c_request_to_lut_reg_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \n_drum_count[0]_i_1__0 
       (.I0(Q[0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_drum_count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_drum_count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_drum_count[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \n_drum_count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\n_drum_count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n_drum_count[4]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(plusOp[4]));
  FDRE \n_drum_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(n_drum_count[0]),
        .R(\n_drum_count[4]_i_1__0_n_0 ));
  FDRE \n_drum_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(n_drum_count[1]),
        .R(\n_drum_count[4]_i_1__0_n_0 ));
  FDRE \n_drum_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(n_drum_count[2]),
        .R(\n_drum_count[4]_i_1__0_n_0 ));
  FDRE \n_drum_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(n_drum_count[3]),
        .R(\n_drum_count[4]_i_1__0_n_0 ));
  FDRE \n_drum_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(n_drum_count[4]),
        .R(\n_drum_count[4]_i_1__0_n_0 ));
  FDRE n_drum_impuls_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_overflow_count0_n_0),
        .Q(n_drum_impuls_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    n_overflow_count0
       (.I0(n_overflow_count[5]),
        .I1(n_overflow_count[2]),
        .I2(n_overflow_count[3]),
        .I3(n_overflow_count[0]),
        .I4(n_overflow_count[1]),
        .I5(n_overflow_count[4]),
        .O(n_overflow_count0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \n_overflow_count[0]_i_1 
       (.I0(c_overflow_count[0]),
        .O(\n_overflow_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_overflow_count[1]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .O(\n_overflow_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_overflow_count[2]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[2]),
        .O(\n_overflow_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_overflow_count[3]_i_1 
       (.I0(c_overflow_count[1]),
        .I1(c_overflow_count[0]),
        .I2(c_overflow_count[2]),
        .I3(c_overflow_count[3]),
        .O(\n_overflow_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
    \n_overflow_count[5]_i_1 
       (.I0(c_overflow_count[3]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[0]),
        .I3(c_overflow_count[2]),
        .I4(c_overflow_count[4]),
        .I5(c_overflow_count[5]),
        .O(\n_overflow_count[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[0]_i_1_n_0 ),
        .Q(n_overflow_count[0]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[1]_i_1_n_0 ),
        .Q(n_overflow_count[1]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[2]_i_1_n_0 ),
        .Q(n_overflow_count[2]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[3]_i_1_n_0 ),
        .Q(n_overflow_count[3]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[4]_i_1_n_0 ),
        .Q(n_overflow_count[4]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_overflow_count[5]_i_1_n_0 ),
        .Q(n_overflow_count[5]),
        .R(n_overflow_count0_n_0));
endmodule

(* ORIG_REF_NAME = "drum" *) 
module design_test_TURBO_enigma_0_0_drum_1
   (ready_out_drum_3_fwd,
    ready_out_drum_3_bwd,
    CLK,
    c_dir_to_lut_reg_0,
    c_request_to_lut_reg_0,
    \FSM_sequential_c_status_reg[1]_0 ,
    \FSM_sequential_c_status_reg[0]_0 ,
    Q,
    \c_chars_in_process_reg[0]_0 ,
    \c_chars_in_process_reg[1]_0 ,
    \c_chars_in_process_reg[2]_0 ,
    \c_chars_in_process_reg[3]_0 ,
    \c_chars_in_process_reg[4]_0 ,
    \c_chars_in_process_reg[5]_0 ,
    \c_chars_in_process_reg[6]_0 ,
    \c_chars_in_process_reg[7]_0 ,
    \c_chars_in_process_reg[8]_0 ,
    \c_chars_in_process_reg[9]_0 ,
    \c_chars_in_process_reg[10]_0 ,
    \c_chars_in_process_reg[11]_0 ,
    \c_chars_in_process_reg[12]_0 ,
    \c_chars_in_process_reg[13]_0 ,
    \c_chars_in_process_reg[14]_0 ,
    \c_chars_in_process_reg[15]_0 ,
    \c_chars_in_process_reg[16]_0 ,
    \c_chars_in_process_reg[17]_0 ,
    \c_chars_in_process_reg[18]_0 ,
    \c_chars_in_process_reg[19]_0 ,
    \c_chars_in_process_reg[20]_0 ,
    \c_chars_in_process_reg[21]_0 ,
    \c_chars_in_process_reg[22]_0 ,
    \c_chars_in_process_reg[23]_0 ,
    \c_chars_in_process_reg[24]_0 ,
    \c_chars_in_process_reg[25]_0 ,
    c_request_to_lut_reg_1,
    D,
    \c_chars_out_reg[25]_0 ,
    SR,
    UB_CLK_IN,
    DRUM_IMPULS_IN,
    c_dir_to_lut_reg_1,
    c_request_to_lut_reg_2,
    \FSM_sequential_c_status_reg[0]_1 ,
    \FSM_sequential_c_status_reg[1]_1 ,
    ready_out_drum_2_fwd,
    READY_OUT_BWD,
    \c_chars_out_reg[25]_1 ,
    \c_chars_in_process_reg[10]_1 ,
    \c_chars_in_process_reg[11]_1 ,
    \c_chars_in_process_reg[14]_1 ,
    \c_chars_in_process_reg[15]_1 ,
    \c_chars_in_process_reg[12]_1 ,
    \c_chars_in_process_reg[13]_1 ,
    \c_chars_in_process_reg[16]_1 ,
    \c_chars_in_process_reg[17]_1 ,
    \c_chars_in_process_reg[18]_1 ,
    \c_chars_in_process_reg[19]_1 ,
    \c_chars_in_process_reg[22]_1 ,
    \c_chars_in_process_reg[23]_1 ,
    \c_chars_in_process_reg[20]_1 ,
    \c_chars_in_process_reg[21]_1 ,
    \c_chars_in_process_reg[24]_1 ,
    \c_chars_in_process_reg[25]_1 ,
    \c_chars_in_process_reg[0]_1 ,
    \c_chars_in_process_reg[1]_1 ,
    \c_chars_in_process_reg[4]_1 ,
    \c_chars_in_process_reg[5]_1 ,
    \c_chars_in_process_reg[2]_1 ,
    \c_chars_in_process_reg[3]_1 ,
    \c_chars_in_process_reg[6]_1 ,
    \c_chars_in_process_reg[7]_1 ,
    \c_chars_in_process_reg[8]_1 ,
    \c_chars_in_process_reg[9]_1 ,
    CHARACTERS_TO_LUT,
    \c_chars_in_reg[25] ,
    \c_drum_typ_reg[2] ,
    \c_drum_typ_reg[2]_0 ,
    lut_request_drum_ukw,
    lut_direction_drum_2,
    CONFIG_DRUM_TYP_1_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_3_IN,
    \c_chars_out_reg[25]_2 ,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_3_IN);
  output ready_out_drum_3_fwd;
  output ready_out_drum_3_bwd;
  output CLK;
  output c_dir_to_lut_reg_0;
  output c_request_to_lut_reg_0;
  output \FSM_sequential_c_status_reg[1]_0 ;
  output \FSM_sequential_c_status_reg[0]_0 ;
  output [4:0]Q;
  output \c_chars_in_process_reg[0]_0 ;
  output \c_chars_in_process_reg[1]_0 ;
  output \c_chars_in_process_reg[2]_0 ;
  output \c_chars_in_process_reg[3]_0 ;
  output \c_chars_in_process_reg[4]_0 ;
  output \c_chars_in_process_reg[5]_0 ;
  output \c_chars_in_process_reg[6]_0 ;
  output \c_chars_in_process_reg[7]_0 ;
  output \c_chars_in_process_reg[8]_0 ;
  output \c_chars_in_process_reg[9]_0 ;
  output \c_chars_in_process_reg[10]_0 ;
  output \c_chars_in_process_reg[11]_0 ;
  output \c_chars_in_process_reg[12]_0 ;
  output \c_chars_in_process_reg[13]_0 ;
  output \c_chars_in_process_reg[14]_0 ;
  output \c_chars_in_process_reg[15]_0 ;
  output \c_chars_in_process_reg[16]_0 ;
  output \c_chars_in_process_reg[17]_0 ;
  output \c_chars_in_process_reg[18]_0 ;
  output \c_chars_in_process_reg[19]_0 ;
  output \c_chars_in_process_reg[20]_0 ;
  output \c_chars_in_process_reg[21]_0 ;
  output \c_chars_in_process_reg[22]_0 ;
  output \c_chars_in_process_reg[23]_0 ;
  output \c_chars_in_process_reg[24]_0 ;
  output \c_chars_in_process_reg[25]_0 ;
  output c_request_to_lut_reg_1;
  output [1:0]D;
  output [25:0]\c_chars_out_reg[25]_0 ;
  input [0:0]SR;
  input UB_CLK_IN;
  input DRUM_IMPULS_IN;
  input c_dir_to_lut_reg_1;
  input c_request_to_lut_reg_2;
  input \FSM_sequential_c_status_reg[0]_1 ;
  input \FSM_sequential_c_status_reg[1]_1 ;
  input ready_out_drum_2_fwd;
  input READY_OUT_BWD;
  input \c_chars_out_reg[25]_1 ;
  input \c_chars_in_process_reg[10]_1 ;
  input \c_chars_in_process_reg[11]_1 ;
  input \c_chars_in_process_reg[14]_1 ;
  input \c_chars_in_process_reg[15]_1 ;
  input \c_chars_in_process_reg[12]_1 ;
  input \c_chars_in_process_reg[13]_1 ;
  input \c_chars_in_process_reg[16]_1 ;
  input \c_chars_in_process_reg[17]_1 ;
  input \c_chars_in_process_reg[18]_1 ;
  input \c_chars_in_process_reg[19]_1 ;
  input \c_chars_in_process_reg[22]_1 ;
  input \c_chars_in_process_reg[23]_1 ;
  input \c_chars_in_process_reg[20]_1 ;
  input \c_chars_in_process_reg[21]_1 ;
  input \c_chars_in_process_reg[24]_1 ;
  input \c_chars_in_process_reg[25]_1 ;
  input \c_chars_in_process_reg[0]_1 ;
  input \c_chars_in_process_reg[1]_1 ;
  input \c_chars_in_process_reg[4]_1 ;
  input \c_chars_in_process_reg[5]_1 ;
  input \c_chars_in_process_reg[2]_1 ;
  input \c_chars_in_process_reg[3]_1 ;
  input \c_chars_in_process_reg[6]_1 ;
  input \c_chars_in_process_reg[7]_1 ;
  input \c_chars_in_process_reg[8]_1 ;
  input \c_chars_in_process_reg[9]_1 ;
  input [25:0]CHARACTERS_TO_LUT;
  input [25:0]\c_chars_in_reg[25] ;
  input \c_drum_typ_reg[2] ;
  input \c_drum_typ_reg[2]_0 ;
  input lut_request_drum_ukw;
  input lut_direction_drum_2;
  input [1:0]CONFIG_DRUM_TYP_1_IN;
  input [1:0]CONFIG_DRUM_TYP_2_IN;
  input [1:0]CONFIG_DRUM_TYP_3_IN;
  input [25:0]\c_chars_out_reg[25]_2 ;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_3_IN;

  wire [25:0]CHARACTERS_TO_LUT;
  wire CLK;
  wire [1:0]CONFIG_DRUM_TYP_1_IN;
  wire [1:0]CONFIG_DRUM_TYP_2_IN;
  wire [1:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire [1:0]D;
  wire DRUM_IMPULS_IN;
  wire \FSM_sequential_c_status[1]_i_1__1_n_0 ;
  wire \FSM_sequential_c_status_reg[0]_0 ;
  wire \FSM_sequential_c_status_reg[0]_1 ;
  wire \FSM_sequential_c_status_reg[1]_0 ;
  wire \FSM_sequential_c_status_reg[1]_1 ;
  wire [4:0]Q;
  wire READY_OUT_BWD;
  wire SOFT_RESET_N_IN;
  wire [0:0]SR;
  wire UB_CLK_IN;
  wire \c_chars_in_process[10]_i_2__1_n_0 ;
  wire \c_chars_in_process[10]_i_4__1_n_0 ;
  wire \c_chars_in_process[11]_i_2__1_n_0 ;
  wire \c_chars_in_process[11]_i_4__1_n_0 ;
  wire \c_chars_in_process[12]_i_2__1_n_0 ;
  wire \c_chars_in_process[12]_i_4__1_n_0 ;
  wire \c_chars_in_process[13]_i_2__1_n_0 ;
  wire \c_chars_in_process[13]_i_4__1_n_0 ;
  wire \c_chars_in_process[14]_i_2__1_n_0 ;
  wire \c_chars_in_process[14]_i_4__1_n_0 ;
  wire \c_chars_in_process[15]_i_2__1_n_0 ;
  wire \c_chars_in_process[15]_i_4__1_n_0 ;
  wire \c_chars_in_process[16]_i_2__1_n_0 ;
  wire \c_chars_in_process[16]_i_4__1_n_0 ;
  wire \c_chars_in_process[17]_i_2__1_n_0 ;
  wire \c_chars_in_process[17]_i_4__1_n_0 ;
  wire \c_chars_in_process[18]_i_2__1_n_0 ;
  wire \c_chars_in_process[18]_i_4__1_n_0 ;
  wire \c_chars_in_process[19]_i_2__1_n_0 ;
  wire \c_chars_in_process[19]_i_4__1_n_0 ;
  wire \c_chars_in_process[1]_i_2__1_n_0 ;
  wire \c_chars_in_process[20]_i_2__1_n_0 ;
  wire \c_chars_in_process[20]_i_4__1_n_0 ;
  wire \c_chars_in_process[21]_i_2__1_n_0 ;
  wire \c_chars_in_process[21]_i_4__1_n_0 ;
  wire \c_chars_in_process[22]_i_2__1_n_0 ;
  wire \c_chars_in_process[22]_i_4__1_n_0 ;
  wire \c_chars_in_process[23]_i_2__1_n_0 ;
  wire \c_chars_in_process[23]_i_4__1_n_0 ;
  wire \c_chars_in_process[24]_i_2__1_n_0 ;
  wire \c_chars_in_process[24]_i_4__1_n_0 ;
  wire \c_chars_in_process[25]_i_10__1_n_0 ;
  wire \c_chars_in_process[25]_i_11__1_n_0 ;
  wire \c_chars_in_process[25]_i_12__1_n_0 ;
  wire \c_chars_in_process[25]_i_13__1_n_0 ;
  wire \c_chars_in_process[25]_i_3__1_n_0 ;
  wire \c_chars_in_process[25]_i_4__1_n_0 ;
  wire \c_chars_in_process[25]_i_6__1_n_0 ;
  wire \c_chars_in_process[25]_i_7__1_n_0 ;
  wire \c_chars_in_process[25]_i_8__1_n_0 ;
  wire \c_chars_in_process[25]_i_9__1_n_0 ;
  wire \c_chars_in_process[2]_i_2__1_n_0 ;
  wire \c_chars_in_process[3]_i_2__1_n_0 ;
  wire \c_chars_in_process[4]_i_2__1_n_0 ;
  wire \c_chars_in_process[5]_i_2__1_n_0 ;
  wire \c_chars_in_process[6]_i_2__1_n_0 ;
  wire \c_chars_in_process[7]_i_2__1_n_0 ;
  wire \c_chars_in_process[7]_i_4__1_n_0 ;
  wire \c_chars_in_process[8]_i_2__1_n_0 ;
  wire \c_chars_in_process[8]_i_4__1_n_0 ;
  wire \c_chars_in_process[9]_i_2__1_n_0 ;
  wire \c_chars_in_process[9]_i_4__1_n_0 ;
  wire \c_chars_in_process_reg[0]_0 ;
  wire \c_chars_in_process_reg[0]_1 ;
  wire \c_chars_in_process_reg[10]_0 ;
  wire \c_chars_in_process_reg[10]_1 ;
  wire \c_chars_in_process_reg[11]_0 ;
  wire \c_chars_in_process_reg[11]_1 ;
  wire \c_chars_in_process_reg[12]_0 ;
  wire \c_chars_in_process_reg[12]_1 ;
  wire \c_chars_in_process_reg[13]_0 ;
  wire \c_chars_in_process_reg[13]_1 ;
  wire \c_chars_in_process_reg[14]_0 ;
  wire \c_chars_in_process_reg[14]_1 ;
  wire \c_chars_in_process_reg[15]_0 ;
  wire \c_chars_in_process_reg[15]_1 ;
  wire \c_chars_in_process_reg[16]_0 ;
  wire \c_chars_in_process_reg[16]_1 ;
  wire \c_chars_in_process_reg[17]_0 ;
  wire \c_chars_in_process_reg[17]_1 ;
  wire \c_chars_in_process_reg[18]_0 ;
  wire \c_chars_in_process_reg[18]_1 ;
  wire \c_chars_in_process_reg[19]_0 ;
  wire \c_chars_in_process_reg[19]_1 ;
  wire \c_chars_in_process_reg[1]_0 ;
  wire \c_chars_in_process_reg[1]_1 ;
  wire \c_chars_in_process_reg[20]_0 ;
  wire \c_chars_in_process_reg[20]_1 ;
  wire \c_chars_in_process_reg[21]_0 ;
  wire \c_chars_in_process_reg[21]_1 ;
  wire \c_chars_in_process_reg[22]_0 ;
  wire \c_chars_in_process_reg[22]_1 ;
  wire \c_chars_in_process_reg[23]_0 ;
  wire \c_chars_in_process_reg[23]_1 ;
  wire \c_chars_in_process_reg[24]_0 ;
  wire \c_chars_in_process_reg[24]_1 ;
  wire \c_chars_in_process_reg[25]_0 ;
  wire \c_chars_in_process_reg[25]_1 ;
  wire \c_chars_in_process_reg[2]_0 ;
  wire \c_chars_in_process_reg[2]_1 ;
  wire \c_chars_in_process_reg[3]_0 ;
  wire \c_chars_in_process_reg[3]_1 ;
  wire \c_chars_in_process_reg[4]_0 ;
  wire \c_chars_in_process_reg[4]_1 ;
  wire \c_chars_in_process_reg[5]_0 ;
  wire \c_chars_in_process_reg[5]_1 ;
  wire \c_chars_in_process_reg[6]_0 ;
  wire \c_chars_in_process_reg[6]_1 ;
  wire \c_chars_in_process_reg[7]_0 ;
  wire \c_chars_in_process_reg[7]_1 ;
  wire \c_chars_in_process_reg[8]_0 ;
  wire \c_chars_in_process_reg[8]_1 ;
  wire \c_chars_in_process_reg[9]_0 ;
  wire \c_chars_in_process_reg[9]_1 ;
  wire [25:0]\c_chars_in_reg[25] ;
  wire [25:0]\c_chars_out_reg[25]_0 ;
  wire \c_chars_out_reg[25]_1 ;
  wire [25:0]\c_chars_out_reg[25]_2 ;
  wire c_dir_to_lut_reg_0;
  wire c_dir_to_lut_reg_1;
  wire \c_drum_count[0]_i_1_n_0 ;
  wire \c_drum_count[1]_i_1_n_0 ;
  wire \c_drum_count[2]_i_1_n_0 ;
  wire \c_drum_count[3]_i_1_n_0 ;
  wire \c_drum_count[4]_i_1_n_0 ;
  wire \c_drum_typ_reg[2] ;
  wire \c_drum_typ_reg[2]_0 ;
  wire [5:0]c_overflow_count;
  wire c_request_to_lut_reg_0;
  wire c_request_to_lut_reg_1;
  wire c_request_to_lut_reg_2;
  wire [25:0]characters_drum_3_lut;
  wire lut_direction_drum_2;
  wire lut_request_drum_ukw;
  wire n_chars_in_process;
  wire [25:0]n_chars_in_process1_in;
  wire n_chars_out;
  wire [4:0]n_drum_count;
  wire \n_drum_count[4]_i_1__1_n_0 ;
  wire n_drum_impuls_out;
  wire [5:0]n_overflow_count;
  wire n_overflow_count0_n_0;
  wire \n_overflow_count[0]_i_1_n_0 ;
  wire \n_overflow_count[1]_i_1_n_0 ;
  wire \n_overflow_count[2]_i_1_n_0 ;
  wire \n_overflow_count[3]_i_1_n_0 ;
  wire \n_overflow_count[4]_i_1_n_0 ;
  wire \n_overflow_count[5]_i_1_n_0 ;
  wire n_ready_out_bwd;
  wire n_ready_out_fwd;
  wire [0:0]p_0_in;
  wire [4:1]plusOp;
  wire ready_out_drum_2_fwd;
  wire ready_out_drum_3_bwd;
  wire ready_out_drum_3_fwd;

  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_c_status[1]_i_1__1 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(\FSM_sequential_c_status_reg[1]_0 ),
        .O(\FSM_sequential_c_status[1]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status_reg[0]_1 ),
        .Q(\FSM_sequential_c_status_reg[0]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[1]_i_1__1_n_0 ),
        .Q(\FSM_sequential_c_status_reg[1]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[0]_i_2 
       (.I0(CHARACTERS_TO_LUT[0]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[0]),
        .I3(\c_chars_in_reg[25] [0]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[10]_i_2 
       (.I0(CHARACTERS_TO_LUT[10]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[10]),
        .I3(\c_chars_in_reg[25] [10]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[11]_i_2 
       (.I0(CHARACTERS_TO_LUT[11]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[11]),
        .I3(\c_chars_in_reg[25] [11]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[12]_i_2 
       (.I0(CHARACTERS_TO_LUT[12]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[12]),
        .I3(\c_chars_in_reg[25] [12]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[13]_i_2 
       (.I0(CHARACTERS_TO_LUT[13]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[13]),
        .I3(\c_chars_in_reg[25] [13]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[14]_i_2 
       (.I0(CHARACTERS_TO_LUT[14]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[14]),
        .I3(\c_chars_in_reg[25] [14]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[15]_i_2 
       (.I0(CHARACTERS_TO_LUT[15]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[15]),
        .I3(\c_chars_in_reg[25] [15]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[16]_i_2 
       (.I0(CHARACTERS_TO_LUT[16]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[16]),
        .I3(\c_chars_in_reg[25] [16]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[17]_i_2 
       (.I0(CHARACTERS_TO_LUT[17]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[17]),
        .I3(\c_chars_in_reg[25] [17]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[18]_i_2 
       (.I0(CHARACTERS_TO_LUT[18]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[18]),
        .I3(\c_chars_in_reg[25] [18]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[19]_i_2 
       (.I0(CHARACTERS_TO_LUT[19]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[19]),
        .I3(\c_chars_in_reg[25] [19]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[1]_i_2 
       (.I0(CHARACTERS_TO_LUT[1]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[1]),
        .I3(\c_chars_in_reg[25] [1]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[20]_i_2 
       (.I0(CHARACTERS_TO_LUT[20]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[20]),
        .I3(\c_chars_in_reg[25] [20]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[21]_i_2 
       (.I0(CHARACTERS_TO_LUT[21]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[21]),
        .I3(\c_chars_in_reg[25] [21]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[22]_i_2 
       (.I0(CHARACTERS_TO_LUT[22]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[22]),
        .I3(\c_chars_in_reg[25] [22]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[23]_i_2 
       (.I0(CHARACTERS_TO_LUT[23]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[23]),
        .I3(\c_chars_in_reg[25] [23]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[24]_i_2 
       (.I0(CHARACTERS_TO_LUT[24]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[24]),
        .I3(\c_chars_in_reg[25] [24]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[25]_i_2 
       (.I0(CHARACTERS_TO_LUT[25]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[25]),
        .I3(\c_chars_in_reg[25] [25]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[2]_i_2 
       (.I0(CHARACTERS_TO_LUT[2]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[2]),
        .I3(\c_chars_in_reg[25] [2]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[3]_i_2 
       (.I0(CHARACTERS_TO_LUT[3]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[3]),
        .I3(\c_chars_in_reg[25] [3]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[4]_i_2 
       (.I0(CHARACTERS_TO_LUT[4]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[4]),
        .I3(\c_chars_in_reg[25] [4]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[5]_i_2 
       (.I0(CHARACTERS_TO_LUT[5]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[5]),
        .I3(\c_chars_in_reg[25] [5]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[6]_i_2 
       (.I0(CHARACTERS_TO_LUT[6]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[6]),
        .I3(\c_chars_in_reg[25] [6]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[7]_i_2 
       (.I0(CHARACTERS_TO_LUT[7]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[7]),
        .I3(\c_chars_in_reg[25] [7]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[8]_i_2 
       (.I0(CHARACTERS_TO_LUT[8]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[8]),
        .I3(\c_chars_in_reg[25] [8]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \c_chars_in[9]_i_2 
       (.I0(CHARACTERS_TO_LUT[9]),
        .I1(c_request_to_lut_reg_0),
        .I2(characters_drum_3_lut[9]),
        .I3(\c_chars_in_reg[25] [9]),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(\c_chars_in_process_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[0]_i_1__1 
       (.I0(\c_chars_in_process[25]_i_4__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[1]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[0]_1 ),
        .O(n_chars_in_process1_in[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[10]_i_1__1 
       (.I0(\c_chars_in_process[10]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[11]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[10]_1 ),
        .O(n_chars_in_process1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_2__1 
       (.I0(\c_chars_in_process[10]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[12]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[14]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[16]_i_4__1_n_0 ),
        .O(\c_chars_in_process[10]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[10]_i_4__1 
       (.I0(characters_drum_3_lut[5]),
        .I1(characters_drum_3_lut[21]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[13]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[3]),
        .O(\c_chars_in_process[10]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[11]_i_1__1 
       (.I0(\c_chars_in_process[11]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[12]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[11]_1 ),
        .O(n_chars_in_process1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_2__1 
       (.I0(\c_chars_in_process[11]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[13]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[15]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[17]_i_4__1_n_0 ),
        .O(\c_chars_in_process[11]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[11]_i_4__1 
       (.I0(characters_drum_3_lut[6]),
        .I1(characters_drum_3_lut[22]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[14]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[4]),
        .O(\c_chars_in_process[11]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[12]_i_1__1 
       (.I0(\c_chars_in_process[12]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[13]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[12]_1 ),
        .O(n_chars_in_process1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_2__1 
       (.I0(\c_chars_in_process[12]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[14]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[16]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[18]_i_4__1_n_0 ),
        .O(\c_chars_in_process[12]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[12]_i_4__1 
       (.I0(characters_drum_3_lut[7]),
        .I1(characters_drum_3_lut[23]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[15]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[5]),
        .O(\c_chars_in_process[12]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[13]_i_1__1 
       (.I0(\c_chars_in_process[13]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[14]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[13]_1 ),
        .O(n_chars_in_process1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_2__1 
       (.I0(\c_chars_in_process[13]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[15]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[17]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[19]_i_4__1_n_0 ),
        .O(\c_chars_in_process[13]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[13]_i_4__1 
       (.I0(characters_drum_3_lut[8]),
        .I1(characters_drum_3_lut[24]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[16]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[6]),
        .O(\c_chars_in_process[13]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[14]_i_1__1 
       (.I0(\c_chars_in_process[14]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[15]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[14]_1 ),
        .O(n_chars_in_process1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_2__1 
       (.I0(\c_chars_in_process[14]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[16]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[18]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[20]_i_4__1_n_0 ),
        .O(\c_chars_in_process[14]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[14]_i_4__1 
       (.I0(characters_drum_3_lut[9]),
        .I1(characters_drum_3_lut[25]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[17]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[7]),
        .O(\c_chars_in_process[14]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[15]_i_1__1 
       (.I0(\c_chars_in_process[15]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[16]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[15]_1 ),
        .O(n_chars_in_process1_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_2__1 
       (.I0(\c_chars_in_process[15]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[17]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[19]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[21]_i_4__1_n_0 ),
        .O(\c_chars_in_process[15]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[15]_i_4__1 
       (.I0(characters_drum_3_lut[10]),
        .I1(characters_drum_3_lut[0]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[18]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[8]),
        .O(\c_chars_in_process[15]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[16]_i_1__1 
       (.I0(\c_chars_in_process[16]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[17]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[16]_1 ),
        .O(n_chars_in_process1_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_2__1 
       (.I0(\c_chars_in_process[16]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[18]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[20]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[22]_i_4__1_n_0 ),
        .O(\c_chars_in_process[16]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[16]_i_4__1 
       (.I0(characters_drum_3_lut[11]),
        .I1(characters_drum_3_lut[1]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[19]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[9]),
        .O(\c_chars_in_process[16]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[17]_i_1__1 
       (.I0(\c_chars_in_process[17]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[18]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[17]_1 ),
        .O(n_chars_in_process1_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_2__1 
       (.I0(\c_chars_in_process[17]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[19]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[21]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[23]_i_4__1_n_0 ),
        .O(\c_chars_in_process[17]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[17]_i_4__1 
       (.I0(characters_drum_3_lut[12]),
        .I1(characters_drum_3_lut[2]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[20]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[10]),
        .O(\c_chars_in_process[17]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[18]_i_1__1 
       (.I0(\c_chars_in_process[18]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[19]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[18]_1 ),
        .O(n_chars_in_process1_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_2__1 
       (.I0(\c_chars_in_process[18]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[20]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[22]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[24]_i_4__1_n_0 ),
        .O(\c_chars_in_process[18]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[18]_i_4__1 
       (.I0(characters_drum_3_lut[13]),
        .I1(characters_drum_3_lut[3]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[21]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[11]),
        .O(\c_chars_in_process[18]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[19]_i_1__1 
       (.I0(\c_chars_in_process[19]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[20]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[19]_1 ),
        .O(n_chars_in_process1_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_2__1 
       (.I0(\c_chars_in_process[19]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[21]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[23]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_6__1_n_0 ),
        .O(\c_chars_in_process[19]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[19]_i_4__1 
       (.I0(characters_drum_3_lut[14]),
        .I1(characters_drum_3_lut[4]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[22]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[12]),
        .O(\c_chars_in_process[19]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[1]_i_1__1 
       (.I0(\c_chars_in_process[1]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[2]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[1]_1 ),
        .O(n_chars_in_process1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[1]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_7__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_8__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_9__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[7]_i_4__1_n_0 ),
        .O(\c_chars_in_process[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[20]_i_1__1 
       (.I0(\c_chars_in_process[20]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[21]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[20]_1 ),
        .O(n_chars_in_process1_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_2__1 
       (.I0(\c_chars_in_process[20]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[22]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[24]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_10__1_n_0 ),
        .O(\c_chars_in_process[20]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[20]_i_4__1 
       (.I0(characters_drum_3_lut[15]),
        .I1(characters_drum_3_lut[5]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[23]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[13]),
        .O(\c_chars_in_process[20]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[21]_i_1__1 
       (.I0(\c_chars_in_process[21]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[22]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[21]_1 ),
        .O(n_chars_in_process1_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_2__1 
       (.I0(\c_chars_in_process[21]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[23]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_6__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_7__1_n_0 ),
        .O(\c_chars_in_process[21]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[21]_i_4__1 
       (.I0(characters_drum_3_lut[16]),
        .I1(characters_drum_3_lut[6]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[24]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[14]),
        .O(\c_chars_in_process[21]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[22]_i_1__1 
       (.I0(\c_chars_in_process[22]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[23]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[22]_1 ),
        .O(n_chars_in_process1_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_2__1 
       (.I0(\c_chars_in_process[22]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[24]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_10__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_11__1_n_0 ),
        .O(\c_chars_in_process[22]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[22]_i_4__1 
       (.I0(characters_drum_3_lut[17]),
        .I1(characters_drum_3_lut[7]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[25]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[15]),
        .O(\c_chars_in_process[22]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[23]_i_1__1 
       (.I0(\c_chars_in_process[23]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[24]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[23]_1 ),
        .O(n_chars_in_process1_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_2__1 
       (.I0(\c_chars_in_process[23]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_6__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_7__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_8__1_n_0 ),
        .O(\c_chars_in_process[23]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[23]_i_4__1 
       (.I0(characters_drum_3_lut[18]),
        .I1(characters_drum_3_lut[8]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[0]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[16]),
        .O(\c_chars_in_process[23]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[24]_i_1__1 
       (.I0(\c_chars_in_process[24]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_3__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[24]_1 ),
        .O(n_chars_in_process1_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_2__1 
       (.I0(\c_chars_in_process[24]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_10__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_11__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_12__1_n_0 ),
        .O(\c_chars_in_process[24]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[24]_i_4__1 
       (.I0(characters_drum_3_lut[19]),
        .I1(characters_drum_3_lut[9]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[1]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[17]),
        .O(\c_chars_in_process[24]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_10__1 
       (.I0(characters_drum_3_lut[21]),
        .I1(characters_drum_3_lut[11]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[3]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[19]),
        .O(\c_chars_in_process[25]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_11__1 
       (.I0(characters_drum_3_lut[23]),
        .I1(characters_drum_3_lut[13]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[5]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[21]),
        .O(\c_chars_in_process[25]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_12__1 
       (.I0(characters_drum_3_lut[25]),
        .I1(characters_drum_3_lut[15]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[7]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[23]),
        .O(\c_chars_in_process[25]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_13__1 
       (.I0(characters_drum_3_lut[1]),
        .I1(characters_drum_3_lut[17]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[9]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[25]),
        .O(\c_chars_in_process[25]_i_13__1_n_0 ));
  LUT5 #(
    .INIT(32'h00007774)) 
    \c_chars_in_process[25]_i_1__1 
       (.I0(\FSM_sequential_c_status_reg[1]_1 ),
        .I1(\FSM_sequential_c_status_reg[0]_0 ),
        .I2(ready_out_drum_2_fwd),
        .I3(READY_OUT_BWD),
        .I4(\FSM_sequential_c_status_reg[1]_0 ),
        .O(n_chars_in_process));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[25]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_3__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[25]_i_4__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[25]_1 ),
        .O(n_chars_in_process1_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_3__1 
       (.I0(\c_chars_in_process[25]_i_6__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_7__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_8__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_9__1_n_0 ),
        .O(\c_chars_in_process[25]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_4__1 
       (.I0(\c_chars_in_process[25]_i_10__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_11__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_12__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[25]_i_13__1_n_0 ),
        .O(\c_chars_in_process[25]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_6__1 
       (.I0(characters_drum_3_lut[20]),
        .I1(characters_drum_3_lut[10]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[2]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[18]),
        .O(\c_chars_in_process[25]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_7__1 
       (.I0(characters_drum_3_lut[22]),
        .I1(characters_drum_3_lut[12]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[4]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[20]),
        .O(\c_chars_in_process[25]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_8__1 
       (.I0(characters_drum_3_lut[24]),
        .I1(characters_drum_3_lut[14]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[6]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[22]),
        .O(\c_chars_in_process[25]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[25]_i_9__1 
       (.I0(characters_drum_3_lut[0]),
        .I1(characters_drum_3_lut[16]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[8]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[24]),
        .O(\c_chars_in_process[25]_i_9__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[2]_i_1__1 
       (.I0(\c_chars_in_process[2]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[3]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[2]_1 ),
        .O(n_chars_in_process1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[2]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_11__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_12__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[25]_i_13__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[8]_i_4__1_n_0 ),
        .O(\c_chars_in_process[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[3]_i_1__1 
       (.I0(\c_chars_in_process[3]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[4]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[3]_1 ),
        .O(n_chars_in_process1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[3]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_8__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_9__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[7]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[9]_i_4__1_n_0 ),
        .O(\c_chars_in_process[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[4]_i_1__1 
       (.I0(\c_chars_in_process[4]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[5]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[4]_1 ),
        .O(n_chars_in_process1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[4]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_12__1_n_0 ),
        .I1(\c_chars_in_process[25]_i_13__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[8]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[10]_i_4__1_n_0 ),
        .O(\c_chars_in_process[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[5]_i_1__1 
       (.I0(\c_chars_in_process[5]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[6]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[5]_1 ),
        .O(n_chars_in_process1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[5]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_9__1_n_0 ),
        .I1(\c_chars_in_process[7]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[9]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[11]_i_4__1_n_0 ),
        .O(\c_chars_in_process[5]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[6]_i_1__1 
       (.I0(\c_chars_in_process[6]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[7]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[6]_1 ),
        .O(n_chars_in_process1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[6]_i_2__1 
       (.I0(\c_chars_in_process[25]_i_13__1_n_0 ),
        .I1(\c_chars_in_process[8]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[10]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[12]_i_4__1_n_0 ),
        .O(\c_chars_in_process[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[7]_i_1__1 
       (.I0(\c_chars_in_process[7]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[8]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[7]_1 ),
        .O(n_chars_in_process1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_2__1 
       (.I0(\c_chars_in_process[7]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[9]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[11]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[13]_i_4__1_n_0 ),
        .O(\c_chars_in_process[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[7]_i_4__1 
       (.I0(characters_drum_3_lut[2]),
        .I1(characters_drum_3_lut[18]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[10]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[0]),
        .O(\c_chars_in_process[7]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[8]_i_1__1 
       (.I0(\c_chars_in_process[8]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[9]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[8]_1 ),
        .O(n_chars_in_process1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_2__1 
       (.I0(\c_chars_in_process[8]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[10]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[12]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[14]_i_4__1_n_0 ),
        .O(\c_chars_in_process[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[8]_i_4__1 
       (.I0(characters_drum_3_lut[3]),
        .I1(characters_drum_3_lut[19]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[11]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[1]),
        .O(\c_chars_in_process[8]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \c_chars_in_process[9]_i_1__1 
       (.I0(\c_chars_in_process[9]_i_2__1_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_in_process[10]_i_2__1_n_0 ),
        .I3(\FSM_sequential_c_status_reg[0]_0 ),
        .I4(\c_chars_in_process_reg[9]_1 ),
        .O(n_chars_in_process1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_2__1 
       (.I0(\c_chars_in_process[9]_i_4__1_n_0 ),
        .I1(\c_chars_in_process[11]_i_4__1_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_in_process[13]_i_4__1_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_in_process[15]_i_4__1_n_0 ),
        .O(\c_chars_in_process[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_in_process[9]_i_4__1 
       (.I0(characters_drum_3_lut[4]),
        .I1(characters_drum_3_lut[20]),
        .I2(Q[3]),
        .I3(characters_drum_3_lut[12]),
        .I4(Q[4]),
        .I5(characters_drum_3_lut[2]),
        .O(\c_chars_in_process[9]_i_4__1_n_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[0]),
        .Q(characters_drum_3_lut[0]),
        .R(SR));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[10]),
        .Q(characters_drum_3_lut[10]),
        .R(SR));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[11]),
        .Q(characters_drum_3_lut[11]),
        .R(SR));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[12]),
        .Q(characters_drum_3_lut[12]),
        .R(SR));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[13]),
        .Q(characters_drum_3_lut[13]),
        .R(SR));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[14]),
        .Q(characters_drum_3_lut[14]),
        .R(SR));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[15]),
        .Q(characters_drum_3_lut[15]),
        .R(SR));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[16]),
        .Q(characters_drum_3_lut[16]),
        .R(SR));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[17]),
        .Q(characters_drum_3_lut[17]),
        .R(SR));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[18]),
        .Q(characters_drum_3_lut[18]),
        .R(SR));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[19]),
        .Q(characters_drum_3_lut[19]),
        .R(SR));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[1]),
        .Q(characters_drum_3_lut[1]),
        .R(SR));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[20]),
        .Q(characters_drum_3_lut[20]),
        .R(SR));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[21]),
        .Q(characters_drum_3_lut[21]),
        .R(SR));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[22]),
        .Q(characters_drum_3_lut[22]),
        .R(SR));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[23]),
        .Q(characters_drum_3_lut[23]),
        .R(SR));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[24]),
        .Q(characters_drum_3_lut[24]),
        .R(SR));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[25]),
        .Q(characters_drum_3_lut[25]),
        .R(SR));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[2]),
        .Q(characters_drum_3_lut[2]),
        .R(SR));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[3]),
        .Q(characters_drum_3_lut[3]),
        .R(SR));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[4]),
        .Q(characters_drum_3_lut[4]),
        .R(SR));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[5]),
        .Q(characters_drum_3_lut[5]),
        .R(SR));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[6]),
        .Q(characters_drum_3_lut[6]),
        .R(SR));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[7]),
        .Q(characters_drum_3_lut[7]),
        .R(SR));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[8]),
        .Q(characters_drum_3_lut[8]),
        .R(SR));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(n_chars_in_process1_in[9]),
        .Q(characters_drum_3_lut[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1__2 
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(\c_chars_out_reg[25]_1 ),
        .I2(\FSM_sequential_c_status_reg[0]_0 ),
        .O(n_chars_out));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [0]),
        .Q(\c_chars_out_reg[25]_0 [0]),
        .R(SR));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [10]),
        .Q(\c_chars_out_reg[25]_0 [10]),
        .R(SR));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [11]),
        .Q(\c_chars_out_reg[25]_0 [11]),
        .R(SR));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [12]),
        .Q(\c_chars_out_reg[25]_0 [12]),
        .R(SR));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [13]),
        .Q(\c_chars_out_reg[25]_0 [13]),
        .R(SR));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [14]),
        .Q(\c_chars_out_reg[25]_0 [14]),
        .R(SR));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [15]),
        .Q(\c_chars_out_reg[25]_0 [15]),
        .R(SR));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [16]),
        .Q(\c_chars_out_reg[25]_0 [16]),
        .R(SR));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [17]),
        .Q(\c_chars_out_reg[25]_0 [17]),
        .R(SR));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [18]),
        .Q(\c_chars_out_reg[25]_0 [18]),
        .R(SR));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [19]),
        .Q(\c_chars_out_reg[25]_0 [19]),
        .R(SR));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [1]),
        .Q(\c_chars_out_reg[25]_0 [1]),
        .R(SR));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [20]),
        .Q(\c_chars_out_reg[25]_0 [20]),
        .R(SR));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [21]),
        .Q(\c_chars_out_reg[25]_0 [21]),
        .R(SR));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [22]),
        .Q(\c_chars_out_reg[25]_0 [22]),
        .R(SR));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [23]),
        .Q(\c_chars_out_reg[25]_0 [23]),
        .R(SR));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [24]),
        .Q(\c_chars_out_reg[25]_0 [24]),
        .R(SR));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [25]),
        .Q(\c_chars_out_reg[25]_0 [25]),
        .R(SR));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [2]),
        .Q(\c_chars_out_reg[25]_0 [2]),
        .R(SR));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [3]),
        .Q(\c_chars_out_reg[25]_0 [3]),
        .R(SR));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [4]),
        .Q(\c_chars_out_reg[25]_0 [4]),
        .R(SR));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [5]),
        .Q(\c_chars_out_reg[25]_0 [5]),
        .R(SR));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [6]),
        .Q(\c_chars_out_reg[25]_0 [6]),
        .R(SR));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [7]),
        .Q(\c_chars_out_reg[25]_0 [7]),
        .R(SR));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [8]),
        .Q(\c_chars_out_reg[25]_0 [8]),
        .R(SR));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(\c_chars_out_reg[25]_2 [9]),
        .Q(\c_chars_out_reg[25]_0 [9]),
        .R(SR));
  FDSE c_dir_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_dir_to_lut_reg_1),
        .Q(c_dir_to_lut_reg_0),
        .S(SR));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    c_direction_i_2
       (.I0(lut_request_drum_ukw),
        .I1(c_request_to_lut_reg_0),
        .I2(c_dir_to_lut_reg_0),
        .I3(lut_direction_drum_2),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(c_request_to_lut_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[0]_i_1 
       (.I0(n_drum_count[0]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_3_IN[0]),
        .O(\c_drum_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[1]_i_1 
       (.I0(n_drum_count[1]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_3_IN[1]),
        .O(\c_drum_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[2]_i_1 
       (.I0(n_drum_count[2]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_3_IN[2]),
        .O(\c_drum_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[3]_i_1 
       (.I0(n_drum_count[3]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_3_IN[3]),
        .O(\c_drum_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_drum_count[4]_i_1 
       (.I0(n_drum_count[4]),
        .I1(SOFT_RESET_N_IN),
        .I2(CONFIG_START_POS_DRUM_3_IN[4]),
        .O(\c_drum_count[4]_i_1_n_0 ));
  FDRE \c_drum_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \c_drum_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \c_drum_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \c_drum_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \c_drum_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_drum_count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE c_drum_impuls_out_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_drum_impuls_out),
        .Q(CLK),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCCF0FF)) 
    \c_drum_typ[1]_i_1 
       (.I0(CONFIG_DRUM_TYP_1_IN[0]),
        .I1(CONFIG_DRUM_TYP_2_IN[0]),
        .I2(CONFIG_DRUM_TYP_3_IN[0]),
        .I3(c_request_to_lut_reg_0),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCCF0FF)) 
    \c_drum_typ[2]_i_2 
       (.I0(CONFIG_DRUM_TYP_1_IN[1]),
        .I1(CONFIG_DRUM_TYP_2_IN[1]),
        .I2(CONFIG_DRUM_TYP_3_IN[1]),
        .I3(c_request_to_lut_reg_0),
        .I4(\c_drum_typ_reg[2] ),
        .I5(\c_drum_typ_reg[2]_0 ),
        .O(D[1]));
  FDRE \c_overflow_count_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[0]),
        .Q(c_overflow_count[0]),
        .R(SR));
  FDRE \c_overflow_count_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[1]),
        .Q(c_overflow_count[1]),
        .R(SR));
  FDRE \c_overflow_count_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[2]),
        .Q(c_overflow_count[2]),
        .R(SR));
  FDRE \c_overflow_count_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[3]),
        .Q(c_overflow_count[3]),
        .R(SR));
  FDRE \c_overflow_count_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[4]),
        .Q(c_overflow_count[4]),
        .R(SR));
  FDRE \c_overflow_count_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_overflow_count[5]),
        .Q(c_overflow_count[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    c_ready_out_bwd_i_1__2
       (.I0(\FSM_sequential_c_status_reg[0]_0 ),
        .I1(\FSM_sequential_c_status_reg[1]_0 ),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(ready_out_drum_3_bwd),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h80)) 
    c_ready_out_fwd_i_1__1
       (.I0(\FSM_sequential_c_status_reg[0]_0 ),
        .I1(\FSM_sequential_c_status_reg[1]_0 ),
        .I2(c_dir_to_lut_reg_0),
        .O(n_ready_out_fwd));
  FDRE c_ready_out_fwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_fwd),
        .Q(ready_out_drum_3_fwd),
        .R(SR));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_reg_2),
        .Q(c_request_to_lut_reg_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \n_drum_count[0]_i_1__1 
       (.I0(Q[0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_drum_count[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_drum_count[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_drum_count[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \n_drum_count[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\n_drum_count[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n_drum_count[4]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(plusOp[4]));
  FDRE \n_drum_count_reg[0] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(p_0_in),
        .Q(n_drum_count[0]),
        .R(\n_drum_count[4]_i_1__1_n_0 ));
  FDRE \n_drum_count_reg[1] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(n_drum_count[1]),
        .R(\n_drum_count[4]_i_1__1_n_0 ));
  FDRE \n_drum_count_reg[2] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(n_drum_count[2]),
        .R(\n_drum_count[4]_i_1__1_n_0 ));
  FDRE \n_drum_count_reg[3] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(n_drum_count[3]),
        .R(\n_drum_count[4]_i_1__1_n_0 ));
  FDRE \n_drum_count_reg[4] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(n_drum_count[4]),
        .R(\n_drum_count[4]_i_1__1_n_0 ));
  FDRE n_drum_impuls_out_reg
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(n_overflow_count0_n_0),
        .Q(n_drum_impuls_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    n_overflow_count0
       (.I0(n_overflow_count[0]),
        .I1(n_overflow_count[4]),
        .I2(n_overflow_count[1]),
        .I3(n_overflow_count[2]),
        .I4(n_overflow_count[3]),
        .I5(n_overflow_count[5]),
        .O(n_overflow_count0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \n_overflow_count[0]_i_1 
       (.I0(c_overflow_count[0]),
        .O(\n_overflow_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n_overflow_count[1]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .O(\n_overflow_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n_overflow_count[2]_i_1 
       (.I0(c_overflow_count[0]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[2]),
        .O(\n_overflow_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n_overflow_count[3]_i_1 
       (.I0(c_overflow_count[1]),
        .I1(c_overflow_count[0]),
        .I2(c_overflow_count[2]),
        .I3(c_overflow_count[3]),
        .O(\n_overflow_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
    \n_overflow_count[5]_i_1 
       (.I0(c_overflow_count[3]),
        .I1(c_overflow_count[1]),
        .I2(c_overflow_count[0]),
        .I3(c_overflow_count[2]),
        .I4(c_overflow_count[4]),
        .I5(c_overflow_count[5]),
        .O(\n_overflow_count[5]_i_1_n_0 ));
  FDRE \n_overflow_count_reg[0] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[0]_i_1_n_0 ),
        .Q(n_overflow_count[0]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[1] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[1]_i_1_n_0 ),
        .Q(n_overflow_count[1]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[2] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[2]_i_1_n_0 ),
        .Q(n_overflow_count[2]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[3] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[3]_i_1_n_0 ),
        .Q(n_overflow_count[3]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[4] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[4]_i_1_n_0 ),
        .Q(n_overflow_count[4]),
        .R(n_overflow_count0_n_0));
  FDRE \n_overflow_count_reg[5] 
       (.C(DRUM_IMPULS_IN),
        .CE(1'b1),
        .D(\n_overflow_count[5]_i_1_n_0 ),
        .Q(n_overflow_count[5]),
        .R(n_overflow_count0_n_0));
endmodule

(* ORIG_REF_NAME = "drum_ukw" *) 
module design_test_TURBO_enigma_0_0_drum_ukw
   (c_status,
    Q,
    \c_chars_in_process_reg[25]_0 ,
    READY_OUT_BWD,
    lut_request_drum_ukw,
    SR,
    UB_CLK_IN,
    \FSM_sequential_c_status_reg[0]_0 ,
    \FSM_sequential_c_status_reg[1]_0 ,
    lut_ready_to_drum_ukw,
    ready_out_drum_3_fwd,
    lut_projection,
    D);
  output [1:0]c_status;
  output [25:0]Q;
  output [25:0]\c_chars_in_process_reg[25]_0 ;
  output READY_OUT_BWD;
  output lut_request_drum_ukw;
  input [0:0]SR;
  input UB_CLK_IN;
  input \FSM_sequential_c_status_reg[0]_0 ;
  input \FSM_sequential_c_status_reg[1]_0 ;
  input lut_ready_to_drum_ukw;
  input ready_out_drum_3_fwd;
  input [25:0]lut_projection;
  input [25:0]D;

  wire [25:0]D;
  wire \FSM_sequential_c_status[1]_i_1__2_n_0 ;
  wire \FSM_sequential_c_status_reg[0]_0 ;
  wire \FSM_sequential_c_status_reg[1]_0 ;
  wire [25:0]Q;
  wire READY_OUT_BWD;
  wire [0:0]SR;
  wire UB_CLK_IN;
  wire [25:0]\c_chars_in_process_reg[25]_0 ;
  wire c_request_to_lut_i_1_n_0;
  wire [1:0]c_status;
  wire [25:0]lut_projection;
  wire lut_ready_to_drum_ukw;
  wire lut_request_drum_ukw;
  wire n_chars_in_process;
  wire n_chars_out;
  wire n_ready_out_bwd;
  wire ready_out_drum_3_fwd;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_c_status[1]_i_1__2 
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(c_status[0]),
        .I2(c_status[1]),
        .O(\FSM_sequential_c_status[1]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status_reg[0]_0 ),
        .Q(c_status[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "working_1:01,waiting:10,idle:00,working_2:11" *) 
  FDRE \FSM_sequential_c_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_c_status[1]_i_1__2_n_0 ),
        .Q(c_status[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_in_process[25]_i_1__2 
       (.I0(c_status[1]),
        .I1(ready_out_drum_3_fwd),
        .I2(c_status[0]),
        .O(n_chars_in_process));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[0]),
        .Q(\c_chars_in_process_reg[25]_0 [0]),
        .R(SR));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[10]),
        .Q(\c_chars_in_process_reg[25]_0 [10]),
        .R(SR));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[11]),
        .Q(\c_chars_in_process_reg[25]_0 [11]),
        .R(SR));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[12]),
        .Q(\c_chars_in_process_reg[25]_0 [12]),
        .R(SR));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[13]),
        .Q(\c_chars_in_process_reg[25]_0 [13]),
        .R(SR));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[14]),
        .Q(\c_chars_in_process_reg[25]_0 [14]),
        .R(SR));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[15]),
        .Q(\c_chars_in_process_reg[25]_0 [15]),
        .R(SR));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[16]),
        .Q(\c_chars_in_process_reg[25]_0 [16]),
        .R(SR));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[17]),
        .Q(\c_chars_in_process_reg[25]_0 [17]),
        .R(SR));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[18]),
        .Q(\c_chars_in_process_reg[25]_0 [18]),
        .R(SR));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[19]),
        .Q(\c_chars_in_process_reg[25]_0 [19]),
        .R(SR));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[1]),
        .Q(\c_chars_in_process_reg[25]_0 [1]),
        .R(SR));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[20]),
        .Q(\c_chars_in_process_reg[25]_0 [20]),
        .R(SR));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[21]),
        .Q(\c_chars_in_process_reg[25]_0 [21]),
        .R(SR));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[22]),
        .Q(\c_chars_in_process_reg[25]_0 [22]),
        .R(SR));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[23]),
        .Q(\c_chars_in_process_reg[25]_0 [23]),
        .R(SR));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[24]),
        .Q(\c_chars_in_process_reg[25]_0 [24]),
        .R(SR));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[25]),
        .Q(\c_chars_in_process_reg[25]_0 [25]),
        .R(SR));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[2]),
        .Q(\c_chars_in_process_reg[25]_0 [2]),
        .R(SR));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[3]),
        .Q(\c_chars_in_process_reg[25]_0 [3]),
        .R(SR));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[4]),
        .Q(\c_chars_in_process_reg[25]_0 [4]),
        .R(SR));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[5]),
        .Q(\c_chars_in_process_reg[25]_0 [5]),
        .R(SR));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[6]),
        .Q(\c_chars_in_process_reg[25]_0 [6]),
        .R(SR));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[7]),
        .Q(\c_chars_in_process_reg[25]_0 [7]),
        .R(SR));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[8]),
        .Q(\c_chars_in_process_reg[25]_0 [8]),
        .R(SR));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in_process),
        .D(D[9]),
        .Q(\c_chars_in_process_reg[25]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[25]_i_1__3 
       (.I0(c_status[1]),
        .I1(lut_ready_to_drum_ukw),
        .I2(c_status[0]),
        .O(n_chars_out));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_out),
        .D(lut_projection[9]),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    c_ready_out_bwd_i_1
       (.I0(c_status[1]),
        .I1(c_status[0]),
        .O(n_ready_out_bwd));
  FDRE c_ready_out_bwd_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_ready_out_bwd),
        .Q(READY_OUT_BWD),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hCFFF0044)) 
    c_request_to_lut_i_1
       (.I0(\FSM_sequential_c_status_reg[1]_0 ),
        .I1(c_status[0]),
        .I2(lut_ready_to_drum_ukw),
        .I3(c_status[1]),
        .I4(lut_request_drum_ukw),
        .O(c_request_to_lut_i_1_n_0));
  FDRE c_request_to_lut_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_request_to_lut_i_1_n_0),
        .Q(lut_request_drum_ukw),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "enigma_control" *) 
module design_test_TURBO_enigma_0_0_enigma_control
   (READY_OUT,
    c_start_to_first_drum_reg_0,
    \c_chars_in_process_reg[25]_0 ,
    \c_chars_in_process_reg[24]_0 ,
    \c_chars_in_process_reg[23]_0 ,
    \c_chars_in_process_reg[22]_0 ,
    \c_chars_in_process_reg[21]_0 ,
    \c_chars_in_process_reg[20]_0 ,
    \c_chars_in_process_reg[19]_0 ,
    \c_chars_in_process_reg[18]_0 ,
    \c_chars_in_process_reg[17]_0 ,
    \c_chars_in_process_reg[16]_0 ,
    \c_chars_in_process_reg[15]_0 ,
    \c_chars_in_process_reg[14]_0 ,
    \c_chars_in_process_reg[13]_0 ,
    \c_chars_in_process_reg[12]_0 ,
    \c_chars_in_process_reg[11]_0 ,
    \c_chars_in_process_reg[10]_0 ,
    \c_chars_in_process_reg[9]_0 ,
    \c_chars_in_process_reg[8]_0 ,
    \c_chars_in_process_reg[7]_0 ,
    \c_chars_in_process_reg[6]_0 ,
    \c_chars_in_process_reg[5]_0 ,
    \c_chars_in_process_reg[4]_0 ,
    \c_chars_in_process_reg[3]_0 ,
    \c_chars_in_process_reg[2]_0 ,
    \c_chars_in_process_reg[1]_0 ,
    \c_chars_in_process_reg[0]_0 ,
    CODED_CHARACTERS_OUT_DB0,
    CODED_CHARACTERS_OUT_DB1,
    SR,
    UB_CLK_IN,
    E,
    CHARACTERS_IN_DB1,
    CHARACTERS_IN_DB0,
    \c_chars_in_process_reg[25]_1 ,
    D,
    \n_coded_chars_out_db0_reg[0]_0 );
  output READY_OUT;
  output c_start_to_first_drum_reg_0;
  output \c_chars_in_process_reg[25]_0 ;
  output \c_chars_in_process_reg[24]_0 ;
  output \c_chars_in_process_reg[23]_0 ;
  output \c_chars_in_process_reg[22]_0 ;
  output \c_chars_in_process_reg[21]_0 ;
  output \c_chars_in_process_reg[20]_0 ;
  output \c_chars_in_process_reg[19]_0 ;
  output \c_chars_in_process_reg[18]_0 ;
  output \c_chars_in_process_reg[17]_0 ;
  output \c_chars_in_process_reg[16]_0 ;
  output \c_chars_in_process_reg[15]_0 ;
  output \c_chars_in_process_reg[14]_0 ;
  output \c_chars_in_process_reg[13]_0 ;
  output \c_chars_in_process_reg[12]_0 ;
  output \c_chars_in_process_reg[11]_0 ;
  output \c_chars_in_process_reg[10]_0 ;
  output \c_chars_in_process_reg[9]_0 ;
  output \c_chars_in_process_reg[8]_0 ;
  output \c_chars_in_process_reg[7]_0 ;
  output \c_chars_in_process_reg[6]_0 ;
  output \c_chars_in_process_reg[5]_0 ;
  output \c_chars_in_process_reg[4]_0 ;
  output \c_chars_in_process_reg[3]_0 ;
  output \c_chars_in_process_reg[2]_0 ;
  output \c_chars_in_process_reg[1]_0 ;
  output \c_chars_in_process_reg[0]_0 ;
  output [25:0]CODED_CHARACTERS_OUT_DB0;
  output [25:0]CODED_CHARACTERS_OUT_DB1;
  input [0:0]SR;
  input UB_CLK_IN;
  input [0:0]E;
  input [25:0]CHARACTERS_IN_DB1;
  input [25:0]CHARACTERS_IN_DB0;
  input [25:0]\c_chars_in_process_reg[25]_1 ;
  input [25:0]D;
  input [0:0]\n_coded_chars_out_db0_reg[0]_0 ;

  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CODED_CHARACTERS_OUT_DB0;
  wire [25:0]CODED_CHARACTERS_OUT_DB1;
  wire [25:0]D;
  wire [0:0]E;
  wire READY_OUT;
  wire [0:0]SR;
  wire UB_CLK_IN;
  wire \c_chars_in_process[0]_i_1__2_n_0 ;
  wire \c_chars_in_process[10]_i_1__2_n_0 ;
  wire \c_chars_in_process[11]_i_1__2_n_0 ;
  wire \c_chars_in_process[12]_i_1__2_n_0 ;
  wire \c_chars_in_process[13]_i_1__2_n_0 ;
  wire \c_chars_in_process[14]_i_1__2_n_0 ;
  wire \c_chars_in_process[15]_i_1__2_n_0 ;
  wire \c_chars_in_process[16]_i_1__2_n_0 ;
  wire \c_chars_in_process[17]_i_1__2_n_0 ;
  wire \c_chars_in_process[18]_i_1__2_n_0 ;
  wire \c_chars_in_process[19]_i_1__2_n_0 ;
  wire \c_chars_in_process[1]_i_1__2_n_0 ;
  wire \c_chars_in_process[20]_i_1__2_n_0 ;
  wire \c_chars_in_process[21]_i_1__2_n_0 ;
  wire \c_chars_in_process[22]_i_1__2_n_0 ;
  wire \c_chars_in_process[23]_i_1__2_n_0 ;
  wire \c_chars_in_process[24]_i_1__2_n_0 ;
  wire \c_chars_in_process[25]_i_2__2_n_0 ;
  wire \c_chars_in_process[2]_i_1__2_n_0 ;
  wire \c_chars_in_process[3]_i_1__2_n_0 ;
  wire \c_chars_in_process[4]_i_1__2_n_0 ;
  wire \c_chars_in_process[5]_i_1__2_n_0 ;
  wire \c_chars_in_process[6]_i_1__2_n_0 ;
  wire \c_chars_in_process[7]_i_1__2_n_0 ;
  wire \c_chars_in_process[8]_i_1__2_n_0 ;
  wire \c_chars_in_process[9]_i_1__2_n_0 ;
  wire \c_chars_in_process_reg[0]_0 ;
  wire \c_chars_in_process_reg[10]_0 ;
  wire \c_chars_in_process_reg[11]_0 ;
  wire \c_chars_in_process_reg[12]_0 ;
  wire \c_chars_in_process_reg[13]_0 ;
  wire \c_chars_in_process_reg[14]_0 ;
  wire \c_chars_in_process_reg[15]_0 ;
  wire \c_chars_in_process_reg[16]_0 ;
  wire \c_chars_in_process_reg[17]_0 ;
  wire \c_chars_in_process_reg[18]_0 ;
  wire \c_chars_in_process_reg[19]_0 ;
  wire \c_chars_in_process_reg[1]_0 ;
  wire \c_chars_in_process_reg[20]_0 ;
  wire \c_chars_in_process_reg[21]_0 ;
  wire \c_chars_in_process_reg[22]_0 ;
  wire \c_chars_in_process_reg[23]_0 ;
  wire \c_chars_in_process_reg[24]_0 ;
  wire \c_chars_in_process_reg[25]_0 ;
  wire [25:0]\c_chars_in_process_reg[25]_1 ;
  wire \c_chars_in_process_reg[2]_0 ;
  wire \c_chars_in_process_reg[3]_0 ;
  wire \c_chars_in_process_reg[4]_0 ;
  wire \c_chars_in_process_reg[5]_0 ;
  wire \c_chars_in_process_reg[6]_0 ;
  wire \c_chars_in_process_reg[7]_0 ;
  wire \c_chars_in_process_reg[8]_0 ;
  wire \c_chars_in_process_reg[9]_0 ;
  wire c_start_to_first_drum_reg_0;
  wire [25:0]characters_drum_1_in;
  wire [25:0]n_coded_chars_out_db0;
  wire [0:0]\n_coded_chars_out_db0_reg[0]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[0]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[0]),
        .I1(CHARACTERS_IN_DB0[0]),
        .O(\c_chars_in_process[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[0]_i_2 
       (.I0(characters_drum_1_in[0]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [0]),
        .O(\c_chars_in_process_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[10]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[10]),
        .I1(CHARACTERS_IN_DB0[10]),
        .O(\c_chars_in_process[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[10]_i_3 
       (.I0(characters_drum_1_in[10]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [10]),
        .O(\c_chars_in_process_reg[10]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[11]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[11]),
        .I1(CHARACTERS_IN_DB0[11]),
        .O(\c_chars_in_process[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[11]_i_3 
       (.I0(characters_drum_1_in[11]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [11]),
        .O(\c_chars_in_process_reg[11]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[12]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[12]),
        .I1(CHARACTERS_IN_DB0[12]),
        .O(\c_chars_in_process[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[12]_i_3 
       (.I0(characters_drum_1_in[12]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [12]),
        .O(\c_chars_in_process_reg[12]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[13]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[13]),
        .I1(CHARACTERS_IN_DB0[13]),
        .O(\c_chars_in_process[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[13]_i_3 
       (.I0(characters_drum_1_in[13]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [13]),
        .O(\c_chars_in_process_reg[13]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[14]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[14]),
        .I1(CHARACTERS_IN_DB0[14]),
        .O(\c_chars_in_process[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[14]_i_3 
       (.I0(characters_drum_1_in[14]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [14]),
        .O(\c_chars_in_process_reg[14]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[15]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[15]),
        .I1(CHARACTERS_IN_DB0[15]),
        .O(\c_chars_in_process[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[15]_i_3 
       (.I0(characters_drum_1_in[15]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [15]),
        .O(\c_chars_in_process_reg[15]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[16]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[16]),
        .I1(CHARACTERS_IN_DB0[16]),
        .O(\c_chars_in_process[16]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[16]_i_3 
       (.I0(characters_drum_1_in[16]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [16]),
        .O(\c_chars_in_process_reg[16]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[17]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[17]),
        .I1(CHARACTERS_IN_DB0[17]),
        .O(\c_chars_in_process[17]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[17]_i_3 
       (.I0(characters_drum_1_in[17]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [17]),
        .O(\c_chars_in_process_reg[17]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[18]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[18]),
        .I1(CHARACTERS_IN_DB0[18]),
        .O(\c_chars_in_process[18]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[18]_i_3 
       (.I0(characters_drum_1_in[18]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [18]),
        .O(\c_chars_in_process_reg[18]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[19]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[19]),
        .I1(CHARACTERS_IN_DB0[19]),
        .O(\c_chars_in_process[19]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[19]_i_3 
       (.I0(characters_drum_1_in[19]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [19]),
        .O(\c_chars_in_process_reg[19]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[1]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[1]),
        .I1(CHARACTERS_IN_DB0[1]),
        .O(\c_chars_in_process[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[1]_i_3 
       (.I0(characters_drum_1_in[1]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [1]),
        .O(\c_chars_in_process_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[20]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[20]),
        .I1(CHARACTERS_IN_DB0[20]),
        .O(\c_chars_in_process[20]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[20]_i_3 
       (.I0(characters_drum_1_in[20]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [20]),
        .O(\c_chars_in_process_reg[20]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[21]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[21]),
        .I1(CHARACTERS_IN_DB0[21]),
        .O(\c_chars_in_process[21]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[21]_i_3 
       (.I0(characters_drum_1_in[21]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [21]),
        .O(\c_chars_in_process_reg[21]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[22]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[22]),
        .I1(CHARACTERS_IN_DB0[22]),
        .O(\c_chars_in_process[22]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[22]_i_3 
       (.I0(characters_drum_1_in[22]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [22]),
        .O(\c_chars_in_process_reg[22]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[23]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[23]),
        .I1(CHARACTERS_IN_DB0[23]),
        .O(\c_chars_in_process[23]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[23]_i_3 
       (.I0(characters_drum_1_in[23]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [23]),
        .O(\c_chars_in_process_reg[23]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[24]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[24]),
        .I1(CHARACTERS_IN_DB0[24]),
        .O(\c_chars_in_process[24]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[24]_i_3 
       (.I0(characters_drum_1_in[24]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [24]),
        .O(\c_chars_in_process_reg[24]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[25]_i_2__2 
       (.I0(CHARACTERS_IN_DB1[25]),
        .I1(CHARACTERS_IN_DB0[25]),
        .O(\c_chars_in_process[25]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[25]_i_5 
       (.I0(characters_drum_1_in[25]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [25]),
        .O(\c_chars_in_process_reg[25]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[2]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[2]),
        .I1(CHARACTERS_IN_DB0[2]),
        .O(\c_chars_in_process[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[2]_i_3 
       (.I0(characters_drum_1_in[2]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [2]),
        .O(\c_chars_in_process_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[3]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[3]),
        .I1(CHARACTERS_IN_DB0[3]),
        .O(\c_chars_in_process[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[3]_i_3 
       (.I0(characters_drum_1_in[3]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [3]),
        .O(\c_chars_in_process_reg[3]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[4]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[4]),
        .I1(CHARACTERS_IN_DB0[4]),
        .O(\c_chars_in_process[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[4]_i_3 
       (.I0(characters_drum_1_in[4]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [4]),
        .O(\c_chars_in_process_reg[4]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[5]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[5]),
        .I1(CHARACTERS_IN_DB0[5]),
        .O(\c_chars_in_process[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[5]_i_3 
       (.I0(characters_drum_1_in[5]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [5]),
        .O(\c_chars_in_process_reg[5]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[6]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[6]),
        .I1(CHARACTERS_IN_DB0[6]),
        .O(\c_chars_in_process[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[6]_i_3 
       (.I0(characters_drum_1_in[6]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [6]),
        .O(\c_chars_in_process_reg[6]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[7]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[7]),
        .I1(CHARACTERS_IN_DB0[7]),
        .O(\c_chars_in_process[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[7]_i_3 
       (.I0(characters_drum_1_in[7]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [7]),
        .O(\c_chars_in_process_reg[7]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[8]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[8]),
        .I1(CHARACTERS_IN_DB0[8]),
        .O(\c_chars_in_process[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[8]_i_3 
       (.I0(characters_drum_1_in[8]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [8]),
        .O(\c_chars_in_process_reg[8]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \c_chars_in_process[9]_i_1__2 
       (.I0(CHARACTERS_IN_DB1[9]),
        .I1(CHARACTERS_IN_DB0[9]),
        .O(\c_chars_in_process[9]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_in_process[9]_i_3 
       (.I0(characters_drum_1_in[9]),
        .I1(c_start_to_first_drum_reg_0),
        .I2(\c_chars_in_process_reg[25]_1 [9]),
        .O(\c_chars_in_process_reg[9]_0 ));
  FDRE \c_chars_in_process_reg[0] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[0]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[0]),
        .R(SR));
  FDRE \c_chars_in_process_reg[10] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[10]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[10]),
        .R(SR));
  FDRE \c_chars_in_process_reg[11] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[11]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[11]),
        .R(SR));
  FDRE \c_chars_in_process_reg[12] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[12]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[12]),
        .R(SR));
  FDRE \c_chars_in_process_reg[13] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[13]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[13]),
        .R(SR));
  FDRE \c_chars_in_process_reg[14] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[14]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[14]),
        .R(SR));
  FDRE \c_chars_in_process_reg[15] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[15]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[15]),
        .R(SR));
  FDRE \c_chars_in_process_reg[16] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[16]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[16]),
        .R(SR));
  FDRE \c_chars_in_process_reg[17] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[17]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[17]),
        .R(SR));
  FDRE \c_chars_in_process_reg[18] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[18]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[18]),
        .R(SR));
  FDRE \c_chars_in_process_reg[19] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[19]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[19]),
        .R(SR));
  FDRE \c_chars_in_process_reg[1] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[1]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[1]),
        .R(SR));
  FDRE \c_chars_in_process_reg[20] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[20]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[20]),
        .R(SR));
  FDRE \c_chars_in_process_reg[21] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[21]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[21]),
        .R(SR));
  FDRE \c_chars_in_process_reg[22] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[22]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[22]),
        .R(SR));
  FDRE \c_chars_in_process_reg[23] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[23]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[23]),
        .R(SR));
  FDRE \c_chars_in_process_reg[24] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[24]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[24]),
        .R(SR));
  FDRE \c_chars_in_process_reg[25] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[25]_i_2__2_n_0 ),
        .Q(characters_drum_1_in[25]),
        .R(SR));
  FDRE \c_chars_in_process_reg[2] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[2]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[2]),
        .R(SR));
  FDRE \c_chars_in_process_reg[3] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[3]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[3]),
        .R(SR));
  FDRE \c_chars_in_process_reg[4] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[4]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[4]),
        .R(SR));
  FDRE \c_chars_in_process_reg[5] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[5]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[5]),
        .R(SR));
  FDRE \c_chars_in_process_reg[6] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[6]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[6]),
        .R(SR));
  FDRE \c_chars_in_process_reg[7] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[7]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[7]),
        .R(SR));
  FDRE \c_chars_in_process_reg[8] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[8]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[8]),
        .R(SR));
  FDRE \c_chars_in_process_reg[9] 
       (.C(UB_CLK_IN),
        .CE(E),
        .D(\c_chars_in_process[9]_i_1__2_n_0 ),
        .Q(characters_drum_1_in[9]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[0]),
        .Q(CODED_CHARACTERS_OUT_DB0[0]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[10] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[10]),
        .Q(CODED_CHARACTERS_OUT_DB0[10]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[11] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[11]),
        .Q(CODED_CHARACTERS_OUT_DB0[11]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[12] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[12]),
        .Q(CODED_CHARACTERS_OUT_DB0[12]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[13] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[13]),
        .Q(CODED_CHARACTERS_OUT_DB0[13]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[14] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[14]),
        .Q(CODED_CHARACTERS_OUT_DB0[14]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[15] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[15]),
        .Q(CODED_CHARACTERS_OUT_DB0[15]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[16] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[16]),
        .Q(CODED_CHARACTERS_OUT_DB0[16]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[17] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[17]),
        .Q(CODED_CHARACTERS_OUT_DB0[17]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[18] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[18]),
        .Q(CODED_CHARACTERS_OUT_DB0[18]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[19] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[19]),
        .Q(CODED_CHARACTERS_OUT_DB0[19]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[1]),
        .Q(CODED_CHARACTERS_OUT_DB0[1]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[20] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[20]),
        .Q(CODED_CHARACTERS_OUT_DB0[20]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[21] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[21]),
        .Q(CODED_CHARACTERS_OUT_DB0[21]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[22] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[22]),
        .Q(CODED_CHARACTERS_OUT_DB0[22]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[23] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[23]),
        .Q(CODED_CHARACTERS_OUT_DB0[23]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[24] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[24]),
        .Q(CODED_CHARACTERS_OUT_DB0[24]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[25] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[25]),
        .Q(CODED_CHARACTERS_OUT_DB0[25]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[2]),
        .Q(CODED_CHARACTERS_OUT_DB0[2]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[3]),
        .Q(CODED_CHARACTERS_OUT_DB0[3]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[4]),
        .Q(CODED_CHARACTERS_OUT_DB0[4]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[5]),
        .Q(CODED_CHARACTERS_OUT_DB0[5]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[6] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[6]),
        .Q(CODED_CHARACTERS_OUT_DB0[6]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[7] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[7]),
        .Q(CODED_CHARACTERS_OUT_DB0[7]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[8] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[8]),
        .Q(CODED_CHARACTERS_OUT_DB0[8]),
        .R(SR));
  FDRE \c_coded_chars_out_db0_reg[9] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_coded_chars_out_db0[9]),
        .Q(CODED_CHARACTERS_OUT_DB0[9]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[0] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[0]),
        .Q(CODED_CHARACTERS_OUT_DB1[0]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[10] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[10]),
        .Q(CODED_CHARACTERS_OUT_DB1[10]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[11] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[11]),
        .Q(CODED_CHARACTERS_OUT_DB1[11]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[12] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[12]),
        .Q(CODED_CHARACTERS_OUT_DB1[12]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[13] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[13]),
        .Q(CODED_CHARACTERS_OUT_DB1[13]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[14] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[14]),
        .Q(CODED_CHARACTERS_OUT_DB1[14]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[15] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[15]),
        .Q(CODED_CHARACTERS_OUT_DB1[15]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[16] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[16]),
        .Q(CODED_CHARACTERS_OUT_DB1[16]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[17] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[17]),
        .Q(CODED_CHARACTERS_OUT_DB1[17]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[18] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[18]),
        .Q(CODED_CHARACTERS_OUT_DB1[18]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[19] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[19]),
        .Q(CODED_CHARACTERS_OUT_DB1[19]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[1] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[1]),
        .Q(CODED_CHARACTERS_OUT_DB1[1]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[20] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[20]),
        .Q(CODED_CHARACTERS_OUT_DB1[20]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[21] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[21]),
        .Q(CODED_CHARACTERS_OUT_DB1[21]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[22] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[22]),
        .Q(CODED_CHARACTERS_OUT_DB1[22]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[23] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[23]),
        .Q(CODED_CHARACTERS_OUT_DB1[23]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[24] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[24]),
        .Q(CODED_CHARACTERS_OUT_DB1[24]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[25] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[25]),
        .Q(CODED_CHARACTERS_OUT_DB1[25]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[2] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[2]),
        .Q(CODED_CHARACTERS_OUT_DB1[2]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[3] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[3]),
        .Q(CODED_CHARACTERS_OUT_DB1[3]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[4] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[4]),
        .Q(CODED_CHARACTERS_OUT_DB1[4]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[5] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[5]),
        .Q(CODED_CHARACTERS_OUT_DB1[5]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[6] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[6]),
        .Q(CODED_CHARACTERS_OUT_DB1[6]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[7] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[7]),
        .Q(CODED_CHARACTERS_OUT_DB1[7]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[8] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[8]),
        .Q(CODED_CHARACTERS_OUT_DB1[8]),
        .R(SR));
  FDRE \c_coded_chars_out_db1_reg[9] 
       (.C(UB_CLK_IN),
        .CE(\n_coded_chars_out_db0_reg[0]_0 ),
        .D(D[9]),
        .Q(CODED_CHARACTERS_OUT_DB1[9]),
        .R(SR));
  FDRE c_ready_out_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(1'b1),
        .Q(READY_OUT),
        .R(SR));
  FDRE c_start_to_first_drum_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(E),
        .Q(c_start_to_first_drum_reg_0),
        .R(SR));
  FDRE \n_coded_chars_out_db0_reg[0] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[0]),
        .Q(n_coded_chars_out_db0[0]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[10] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[10]),
        .Q(n_coded_chars_out_db0[10]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[11] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[11]),
        .Q(n_coded_chars_out_db0[11]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[12] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[12]),
        .Q(n_coded_chars_out_db0[12]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[13] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[13]),
        .Q(n_coded_chars_out_db0[13]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[14] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[14]),
        .Q(n_coded_chars_out_db0[14]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[15] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[15]),
        .Q(n_coded_chars_out_db0[15]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[16] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[16]),
        .Q(n_coded_chars_out_db0[16]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[17] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[17]),
        .Q(n_coded_chars_out_db0[17]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[18] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[18]),
        .Q(n_coded_chars_out_db0[18]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[19] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[19]),
        .Q(n_coded_chars_out_db0[19]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[1] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[1]),
        .Q(n_coded_chars_out_db0[1]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[20] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[20]),
        .Q(n_coded_chars_out_db0[20]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[21] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[21]),
        .Q(n_coded_chars_out_db0[21]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[22] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[22]),
        .Q(n_coded_chars_out_db0[22]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[23] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[23]),
        .Q(n_coded_chars_out_db0[23]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[24] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[24]),
        .Q(n_coded_chars_out_db0[24]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[25] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[25]),
        .Q(n_coded_chars_out_db0[25]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[2] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[2]),
        .Q(n_coded_chars_out_db0[2]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[3] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[3]),
        .Q(n_coded_chars_out_db0[3]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[4] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[4]),
        .Q(n_coded_chars_out_db0[4]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[5] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[5]),
        .Q(n_coded_chars_out_db0[5]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[6] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[6]),
        .Q(n_coded_chars_out_db0[6]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[7] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[7]),
        .Q(n_coded_chars_out_db0[7]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[8] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[8]),
        .Q(n_coded_chars_out_db0[8]),
        .R(1'b0));
  FDRE \n_coded_chars_out_db0_reg[9] 
       (.C(\n_coded_chars_out_db0_reg[0]_0 ),
        .CE(1'b1),
        .D(D[9]),
        .Q(n_coded_chars_out_db0[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "enigma_top" *) 
module design_test_TURBO_enigma_0_0_enigma_top
   (READY_OUT,
    ready_out_drum_1_fwd,
    ready_out_drum_2_fwd,
    ready_out_drum_2_bwd,
    ready_out_drum_3_bwd,
    start_to_drum_1,
    lut_direction_drum_1,
    lut_request_drum_1,
    lut_direction_drum_2,
    lut_request_drum_2,
    lut_direction_drum_3,
    lut_request_drum_3,
    CODED_CHARACTERS_OUT_DB0,
    CODED_CHARACTERS_OUT_DB1,
    lut_busy,
    c_status,
    lut_ready_to_drum_1,
    c_status_0,
    lut_ready_to_drum_2,
    c_status_1,
    lut_ready_to_drum_3,
    READY_OUT_BWD,
    UB_CLK_IN,
    DRUM_IMPULS_IN,
    c_dir_to_lut_reg,
    c_request_to_lut_reg,
    c_dir_to_lut_reg_0,
    c_request_to_lut_reg_0,
    c_dir_to_lut_reg_1,
    c_request_to_lut_reg_1,
    CHARACTERS_IN_DB1,
    CHARACTERS_IN_DB0,
    START_IN,
    SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN,
    CONFIG_DRUM_TYP_3_IN,
    CONFIG_DRUM_TYP_2_IN,
    CONFIG_DRUM_TYP_1_IN);
  output READY_OUT;
  output ready_out_drum_1_fwd;
  output ready_out_drum_2_fwd;
  output ready_out_drum_2_bwd;
  output ready_out_drum_3_bwd;
  output start_to_drum_1;
  output lut_direction_drum_1;
  output lut_request_drum_1;
  output lut_direction_drum_2;
  output lut_request_drum_2;
  output lut_direction_drum_3;
  output lut_request_drum_3;
  output [25:0]CODED_CHARACTERS_OUT_DB0;
  output [25:0]CODED_CHARACTERS_OUT_DB1;
  output lut_busy;
  output [1:0]c_status;
  output lut_ready_to_drum_1;
  output [1:0]c_status_0;
  output lut_ready_to_drum_2;
  output [1:0]c_status_1;
  output lut_ready_to_drum_3;
  output READY_OUT_BWD;
  input UB_CLK_IN;
  input DRUM_IMPULS_IN;
  input c_dir_to_lut_reg;
  input c_request_to_lut_reg;
  input c_dir_to_lut_reg_0;
  input c_request_to_lut_reg_0;
  input c_dir_to_lut_reg_1;
  input c_request_to_lut_reg_1;
  input [25:0]CHARACTERS_IN_DB1;
  input [25:0]CHARACTERS_IN_DB0;
  input START_IN;
  input SOFT_RESET_N_IN;
  input [4:0]CONFIG_START_POS_DRUM_1_IN;
  input [4:0]CONFIG_START_POS_DRUM_2_IN;
  input [4:0]CONFIG_START_POS_DRUM_3_IN;
  input [2:0]CONFIG_DRUM_TYP_3_IN;
  input [2:0]CONFIG_DRUM_TYP_2_IN;
  input [2:0]CONFIG_DRUM_TYP_1_IN;

  wire [25:0]CHARACTERS_IN_DB0;
  wire [25:0]CHARACTERS_IN_DB1;
  wire [25:0]CODED_CHARACTERS_OUT_DB0;
  wire [25:0]CODED_CHARACTERS_OUT_DB1;
  wire [2:0]CONFIG_DRUM_TYP_1_IN;
  wire [2:0]CONFIG_DRUM_TYP_2_IN;
  wire [2:0]CONFIG_DRUM_TYP_3_IN;
  wire [4:0]CONFIG_START_POS_DRUM_1_IN;
  wire [4:0]CONFIG_START_POS_DRUM_2_IN;
  wire [4:0]CONFIG_START_POS_DRUM_3_IN;
  wire DRUM_IMPULS_IN;
  wire READY_OUT;
  wire READY_OUT_BWD;
  wire [25:0]ROTATE_RIGHT;
  wire [25:0]ROTATE_RIGHT_3;
  wire [25:0]ROTATE_RIGHT_4;
  wire SOFT_RESET_N_IN;
  wire START_IN;
  wire UB_CLK_IN;
  wire c_busy_i_1_n_0;
  wire c_dir_to_lut_reg;
  wire c_dir_to_lut_reg_0;
  wire c_dir_to_lut_reg_1;
  wire [4:0]c_drum_count;
  wire [4:0]c_drum_count_0;
  wire [4:0]c_drum_count_1;
  wire c_request_to_lut_reg;
  wire c_request_to_lut_reg_0;
  wire c_request_to_lut_reg_1;
  wire [1:0]c_status;
  wire [1:0]c_status_0;
  wire [1:0]c_status_1;
  wire [1:0]c_status_2;
  wire [25:0]characters_drum_1_out;
  wire [25:0]characters_drum_2_lut;
  wire [25:0]characters_drum_2_out;
  wire [25:0]characters_drum_3_out;
  wire [25:0]characters_drum_ukw_lut;
  wire [25:0]characters_drum_ukw_out;
  wire drum_1_init_n_12;
  wire drum_1_init_n_39;
  wire drum_1_init_n_40;
  wire drum_1_init_n_41;
  wire drum_1_init_n_42;
  wire drum_1_init_n_43;
  wire drum_1_init_n_44;
  wire drum_1_init_n_45;
  wire drum_1_init_n_46;
  wire drum_1_init_n_47;
  wire drum_1_init_n_48;
  wire drum_1_init_n_49;
  wire drum_1_init_n_50;
  wire drum_1_init_n_51;
  wire drum_1_init_n_52;
  wire drum_1_init_n_53;
  wire drum_1_init_n_54;
  wire drum_1_init_n_55;
  wire drum_1_init_n_56;
  wire drum_1_init_n_57;
  wire drum_1_init_n_58;
  wire drum_1_init_n_59;
  wire drum_1_init_n_6;
  wire drum_1_init_n_60;
  wire drum_1_init_n_61;
  wire drum_1_init_n_62;
  wire drum_1_init_n_63;
  wire drum_1_init_n_90;
  wire drum_1_init_n_91;
  wire drum_2_init_n_38;
  wire drum_2_init_n_65;
  wire drum_2_init_n_66;
  wire drum_2_init_n_67;
  wire drum_2_init_n_68;
  wire drum_2_init_n_69;
  wire drum_2_init_n_70;
  wire drum_2_init_n_71;
  wire drum_2_init_n_72;
  wire drum_2_init_n_73;
  wire drum_2_init_n_74;
  wire drum_2_init_n_75;
  wire drum_2_init_n_76;
  wire drum_2_init_n_77;
  wire drum_2_init_n_78;
  wire drum_2_init_n_79;
  wire drum_2_init_n_80;
  wire drum_2_init_n_81;
  wire drum_2_init_n_82;
  wire drum_2_init_n_83;
  wire drum_2_init_n_84;
  wire drum_2_init_n_85;
  wire drum_2_init_n_86;
  wire drum_2_init_n_87;
  wire drum_2_init_n_88;
  wire drum_2_init_n_89;
  wire drum_2_init_n_90;
  wire drum_3_init_n_12;
  wire drum_3_init_n_13;
  wire drum_3_init_n_14;
  wire drum_3_init_n_15;
  wire drum_3_init_n_16;
  wire drum_3_init_n_17;
  wire drum_3_init_n_18;
  wire drum_3_init_n_19;
  wire drum_3_init_n_20;
  wire drum_3_init_n_21;
  wire drum_3_init_n_22;
  wire drum_3_init_n_23;
  wire drum_3_init_n_24;
  wire drum_3_init_n_25;
  wire drum_3_init_n_26;
  wire drum_3_init_n_27;
  wire drum_3_init_n_28;
  wire drum_3_init_n_29;
  wire drum_3_init_n_30;
  wire drum_3_init_n_31;
  wire drum_3_init_n_32;
  wire drum_3_init_n_33;
  wire drum_3_init_n_34;
  wire drum_3_init_n_35;
  wire drum_3_init_n_36;
  wire drum_3_init_n_37;
  wire drum_3_init_n_38;
  wire drum_3_init_n_39;
  wire drum_3_init_n_40;
  wire drum_impuls_to_drum_1;
  wire drum_impuls_to_drum_2;
  wire enigma_control_init_n_10;
  wire enigma_control_init_n_11;
  wire enigma_control_init_n_12;
  wire enigma_control_init_n_13;
  wire enigma_control_init_n_14;
  wire enigma_control_init_n_15;
  wire enigma_control_init_n_16;
  wire enigma_control_init_n_17;
  wire enigma_control_init_n_18;
  wire enigma_control_init_n_19;
  wire enigma_control_init_n_2;
  wire enigma_control_init_n_20;
  wire enigma_control_init_n_21;
  wire enigma_control_init_n_22;
  wire enigma_control_init_n_23;
  wire enigma_control_init_n_24;
  wire enigma_control_init_n_25;
  wire enigma_control_init_n_26;
  wire enigma_control_init_n_27;
  wire enigma_control_init_n_3;
  wire enigma_control_init_n_4;
  wire enigma_control_init_n_5;
  wire enigma_control_init_n_6;
  wire enigma_control_init_n_7;
  wire enigma_control_init_n_8;
  wire enigma_control_init_n_9;
  wire lut_busy;
  wire lut_direction_drum_1;
  wire lut_direction_drum_2;
  wire lut_direction_drum_3;
  wire [25:0]lut_projection;
  wire lut_ready_to_drum_1;
  wire lut_ready_to_drum_2;
  wire lut_ready_to_drum_3;
  wire lut_ready_to_drum_ukw;
  wire lut_request_drum_1;
  wire lut_request_drum_2;
  wire lut_request_drum_3;
  wire lut_request_drum_ukw;
  wire p_0_in;
  wire [25:0]p_1_in;
  wire pseudo_lut_init_n_1;
  wire pseudo_lut_init_n_113;
  wire pseudo_lut_init_n_3;
  wire pseudo_lut_init_n_5;
  wire pseudo_lut_init_n_7;
  wire ready_out_drum_1_bwd;
  wire ready_out_drum_1_fwd;
  wire ready_out_drum_2_bwd;
  wire ready_out_drum_2_fwd;
  wire ready_out_drum_3_bwd;
  wire ready_out_drum_3_fwd;
  wire start_to_drum_1;

  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    c_busy_i_1
       (.I0(lut_busy),
        .I1(pseudo_lut_init_n_113),
        .I2(lut_request_drum_3),
        .I3(lut_request_drum_2),
        .I4(lut_request_drum_1),
        .I5(lut_request_drum_ukw),
        .O(c_busy_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \c_coded_chars_out_db0[25]_i_1 
       (.I0(SOFT_RESET_N_IN),
        .O(p_0_in));
  design_test_TURBO_enigma_0_0_drum drum_1_init
       (.CLK(drum_impuls_to_drum_1),
        .CONFIG_START_POS_DRUM_1_IN(CONFIG_START_POS_DRUM_1_IN),
        .D(p_1_in),
        .E(ready_out_drum_1_bwd),
        .\FSM_sequential_c_status_reg[0]_0 (c_status[0]),
        .\FSM_sequential_c_status_reg[0]_1 (pseudo_lut_init_n_1),
        .\FSM_sequential_c_status_reg[1]_0 (c_status[1]),
        .\FSM_sequential_c_status_reg[1]_1 (lut_busy),
        .\FSM_sequential_status_reg[0] (lut_request_drum_2),
        .\FSM_sequential_status_reg[0]_0 (lut_request_drum_3),
        .Q(c_drum_count),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .SR(p_0_in),
        .START_IN(START_IN),
        .UB_CLK_IN(UB_CLK_IN),
        .\c_chars_in_process_reg[0]_0 (start_to_drum_1),
        .\c_chars_in_process_reg[0]_1 (enigma_control_init_n_27),
        .\c_chars_in_process_reg[10]_0 (enigma_control_init_n_17),
        .\c_chars_in_process_reg[11]_0 (enigma_control_init_n_16),
        .\c_chars_in_process_reg[12]_0 (enigma_control_init_n_15),
        .\c_chars_in_process_reg[13]_0 (enigma_control_init_n_14),
        .\c_chars_in_process_reg[14]_0 (enigma_control_init_n_13),
        .\c_chars_in_process_reg[15]_0 (enigma_control_init_n_12),
        .\c_chars_in_process_reg[16]_0 (enigma_control_init_n_11),
        .\c_chars_in_process_reg[17]_0 (enigma_control_init_n_10),
        .\c_chars_in_process_reg[18]_0 (enigma_control_init_n_9),
        .\c_chars_in_process_reg[19]_0 (enigma_control_init_n_8),
        .\c_chars_in_process_reg[1]_0 (enigma_control_init_n_26),
        .\c_chars_in_process_reg[20]_0 (enigma_control_init_n_7),
        .\c_chars_in_process_reg[21]_0 (enigma_control_init_n_6),
        .\c_chars_in_process_reg[22]_0 (enigma_control_init_n_5),
        .\c_chars_in_process_reg[23]_0 (enigma_control_init_n_4),
        .\c_chars_in_process_reg[24]_0 (enigma_control_init_n_3),
        .\c_chars_in_process_reg[25]_0 (enigma_control_init_n_2),
        .\c_chars_in_process_reg[25]_1 (characters_drum_3_out),
        .\c_chars_in_process_reg[2]_0 (enigma_control_init_n_25),
        .\c_chars_in_process_reg[3]_0 (enigma_control_init_n_24),
        .\c_chars_in_process_reg[4]_0 (enigma_control_init_n_23),
        .\c_chars_in_process_reg[5]_0 (enigma_control_init_n_22),
        .\c_chars_in_process_reg[6]_0 (enigma_control_init_n_21),
        .\c_chars_in_process_reg[7]_0 (enigma_control_init_n_20),
        .\c_chars_in_process_reg[8]_0 (enigma_control_init_n_19),
        .\c_chars_in_process_reg[9]_0 (enigma_control_init_n_18),
        .\c_chars_in_reg[0] (drum_3_init_n_12),
        .\c_chars_in_reg[10] (drum_3_init_n_22),
        .\c_chars_in_reg[11] (drum_3_init_n_23),
        .\c_chars_in_reg[12] (drum_3_init_n_24),
        .\c_chars_in_reg[13] (drum_3_init_n_25),
        .\c_chars_in_reg[14] (drum_3_init_n_26),
        .\c_chars_in_reg[15] (drum_3_init_n_27),
        .\c_chars_in_reg[16] (drum_3_init_n_28),
        .\c_chars_in_reg[17] (drum_3_init_n_29),
        .\c_chars_in_reg[18] (drum_3_init_n_30),
        .\c_chars_in_reg[19] (drum_3_init_n_31),
        .\c_chars_in_reg[1] (drum_3_init_n_13),
        .\c_chars_in_reg[20] (drum_3_init_n_32),
        .\c_chars_in_reg[21] (drum_3_init_n_33),
        .\c_chars_in_reg[22] (drum_3_init_n_34),
        .\c_chars_in_reg[23] (drum_3_init_n_35),
        .\c_chars_in_reg[24] (drum_3_init_n_36),
        .\c_chars_in_reg[25] (drum_3_init_n_37),
        .\c_chars_in_reg[2] (drum_3_init_n_14),
        .\c_chars_in_reg[3] (drum_3_init_n_15),
        .\c_chars_in_reg[4] (drum_3_init_n_16),
        .\c_chars_in_reg[5] (drum_3_init_n_17),
        .\c_chars_in_reg[6] (drum_3_init_n_18),
        .\c_chars_in_reg[7] (drum_3_init_n_19),
        .\c_chars_in_reg[8] (drum_3_init_n_20),
        .\c_chars_in_reg[9] (drum_3_init_n_21),
        .\c_chars_out_reg[0]_0 (drum_1_init_n_63),
        .\c_chars_out_reg[10]_0 (drum_1_init_n_53),
        .\c_chars_out_reg[11]_0 (drum_1_init_n_52),
        .\c_chars_out_reg[12]_0 (drum_1_init_n_51),
        .\c_chars_out_reg[13]_0 (drum_1_init_n_50),
        .\c_chars_out_reg[14]_0 (drum_1_init_n_49),
        .\c_chars_out_reg[15]_0 (drum_1_init_n_48),
        .\c_chars_out_reg[16]_0 (drum_1_init_n_47),
        .\c_chars_out_reg[17]_0 (drum_1_init_n_46),
        .\c_chars_out_reg[18]_0 (drum_1_init_n_45),
        .\c_chars_out_reg[19]_0 (drum_1_init_n_44),
        .\c_chars_out_reg[1]_0 (drum_1_init_n_62),
        .\c_chars_out_reg[20]_0 (drum_1_init_n_43),
        .\c_chars_out_reg[21]_0 (drum_1_init_n_42),
        .\c_chars_out_reg[22]_0 (drum_1_init_n_41),
        .\c_chars_out_reg[23]_0 (drum_1_init_n_40),
        .\c_chars_out_reg[24]_0 (drum_1_init_n_39),
        .\c_chars_out_reg[25]_0 (drum_1_init_n_12),
        .\c_chars_out_reg[25]_1 (characters_drum_1_out),
        .\c_chars_out_reg[25]_2 (lut_ready_to_drum_1),
        .\c_chars_out_reg[25]_3 (ROTATE_RIGHT_4),
        .\c_chars_out_reg[2]_0 (drum_1_init_n_61),
        .\c_chars_out_reg[3]_0 (drum_1_init_n_60),
        .\c_chars_out_reg[4]_0 (drum_1_init_n_59),
        .\c_chars_out_reg[5]_0 (drum_1_init_n_58),
        .\c_chars_out_reg[6]_0 (drum_1_init_n_57),
        .\c_chars_out_reg[7]_0 (drum_1_init_n_56),
        .\c_chars_out_reg[8]_0 (drum_1_init_n_55),
        .\c_chars_out_reg[9]_0 (drum_1_init_n_54),
        .c_dir_to_lut_reg_0(lut_direction_drum_1),
        .c_dir_to_lut_reg_1(c_dir_to_lut_reg),
        .c_direction_reg(drum_3_init_n_38),
        .c_ready_out_bwd_reg_0(drum_1_init_n_6),
        .c_ready_out_fwd_reg_0(ready_out_drum_1_fwd),
        .c_request_to_lut_reg_0(lut_request_drum_1),
        .c_request_to_lut_reg_1(drum_1_init_n_90),
        .c_request_to_lut_reg_2(drum_1_init_n_91),
        .c_request_to_lut_reg_3(c_request_to_lut_reg),
        .ready_out_drum_2_bwd(ready_out_drum_2_bwd));
  design_test_TURBO_enigma_0_0_drum_0 drum_2_init
       (.CLK(drum_impuls_to_drum_2),
        .CONFIG_DRUM_TYP_1_IN(CONFIG_DRUM_TYP_1_IN[0]),
        .CONFIG_DRUM_TYP_2_IN(CONFIG_DRUM_TYP_2_IN[0]),
        .CONFIG_DRUM_TYP_3_IN(CONFIG_DRUM_TYP_3_IN[0]),
        .CONFIG_START_POS_DRUM_2_IN(CONFIG_START_POS_DRUM_2_IN),
        .D(drum_2_init_n_90),
        .\FSM_sequential_c_status_reg[0]_0 (c_status_0[0]),
        .\FSM_sequential_c_status_reg[0]_1 (pseudo_lut_init_n_3),
        .\FSM_sequential_c_status_reg[1]_0 (c_status_0[1]),
        .\FSM_sequential_c_status_reg[1]_1 (lut_busy),
        .Q(c_drum_count_0),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .SR(p_0_in),
        .UB_CLK_IN(UB_CLK_IN),
        .\c_chars_in_process_reg[0]_0 (drum_1_init_n_63),
        .\c_chars_in_process_reg[10]_0 (drum_1_init_n_53),
        .\c_chars_in_process_reg[11]_0 (drum_1_init_n_52),
        .\c_chars_in_process_reg[12]_0 (drum_1_init_n_51),
        .\c_chars_in_process_reg[13]_0 (drum_1_init_n_50),
        .\c_chars_in_process_reg[14]_0 (drum_1_init_n_49),
        .\c_chars_in_process_reg[15]_0 (drum_1_init_n_48),
        .\c_chars_in_process_reg[16]_0 (drum_1_init_n_47),
        .\c_chars_in_process_reg[17]_0 (drum_1_init_n_46),
        .\c_chars_in_process_reg[18]_0 (drum_1_init_n_45),
        .\c_chars_in_process_reg[19]_0 (drum_1_init_n_44),
        .\c_chars_in_process_reg[1]_0 (drum_1_init_n_62),
        .\c_chars_in_process_reg[20]_0 (drum_1_init_n_43),
        .\c_chars_in_process_reg[21]_0 (drum_1_init_n_42),
        .\c_chars_in_process_reg[22]_0 (drum_1_init_n_41),
        .\c_chars_in_process_reg[23]_0 (drum_1_init_n_40),
        .\c_chars_in_process_reg[24]_0 (drum_1_init_n_39),
        .\c_chars_in_process_reg[25]_0 (characters_drum_2_lut),
        .\c_chars_in_process_reg[25]_1 (drum_1_init_n_12),
        .\c_chars_in_process_reg[25]_2 (characters_drum_ukw_out),
        .\c_chars_in_process_reg[2]_0 (drum_1_init_n_61),
        .\c_chars_in_process_reg[3]_0 (drum_1_init_n_60),
        .\c_chars_in_process_reg[4]_0 (drum_1_init_n_59),
        .\c_chars_in_process_reg[5]_0 (drum_1_init_n_58),
        .\c_chars_in_process_reg[6]_0 (drum_1_init_n_57),
        .\c_chars_in_process_reg[7]_0 (drum_1_init_n_56),
        .\c_chars_in_process_reg[8]_0 (drum_1_init_n_55),
        .\c_chars_in_process_reg[9]_0 (drum_1_init_n_54),
        .\c_chars_out_reg[0]_0 (drum_2_init_n_89),
        .\c_chars_out_reg[10]_0 (drum_2_init_n_79),
        .\c_chars_out_reg[11]_0 (drum_2_init_n_78),
        .\c_chars_out_reg[12]_0 (drum_2_init_n_77),
        .\c_chars_out_reg[13]_0 (drum_2_init_n_76),
        .\c_chars_out_reg[14]_0 (drum_2_init_n_75),
        .\c_chars_out_reg[15]_0 (drum_2_init_n_74),
        .\c_chars_out_reg[16]_0 (drum_2_init_n_73),
        .\c_chars_out_reg[17]_0 (drum_2_init_n_72),
        .\c_chars_out_reg[18]_0 (drum_2_init_n_71),
        .\c_chars_out_reg[19]_0 (drum_2_init_n_70),
        .\c_chars_out_reg[1]_0 (drum_2_init_n_88),
        .\c_chars_out_reg[20]_0 (drum_2_init_n_69),
        .\c_chars_out_reg[21]_0 (drum_2_init_n_68),
        .\c_chars_out_reg[22]_0 (drum_2_init_n_67),
        .\c_chars_out_reg[23]_0 (drum_2_init_n_66),
        .\c_chars_out_reg[24]_0 (drum_2_init_n_65),
        .\c_chars_out_reg[25]_0 (drum_2_init_n_38),
        .\c_chars_out_reg[25]_1 (characters_drum_2_out),
        .\c_chars_out_reg[25]_2 (lut_ready_to_drum_2),
        .\c_chars_out_reg[25]_3 (ROTATE_RIGHT_3),
        .\c_chars_out_reg[2]_0 (drum_2_init_n_87),
        .\c_chars_out_reg[3]_0 (drum_2_init_n_86),
        .\c_chars_out_reg[4]_0 (drum_2_init_n_85),
        .\c_chars_out_reg[5]_0 (drum_2_init_n_84),
        .\c_chars_out_reg[6]_0 (drum_2_init_n_83),
        .\c_chars_out_reg[7]_0 (drum_2_init_n_82),
        .\c_chars_out_reg[8]_0 (drum_2_init_n_81),
        .\c_chars_out_reg[9]_0 (drum_2_init_n_80),
        .c_dir_to_lut_reg_0(lut_direction_drum_2),
        .c_dir_to_lut_reg_1(c_dir_to_lut_reg_0),
        .c_drum_impuls_out_reg_0(drum_impuls_to_drum_1),
        .\c_drum_typ_reg[0] (lut_request_drum_3),
        .\c_drum_typ_reg[0]_0 (lut_request_drum_1),
        .c_ready_out_fwd_reg_0(ready_out_drum_2_fwd),
        .c_request_to_lut_reg_0(lut_request_drum_2),
        .c_request_to_lut_reg_1(c_request_to_lut_reg_0),
        .ready_out_drum_1_fwd(ready_out_drum_1_fwd),
        .ready_out_drum_2_bwd(ready_out_drum_2_bwd),
        .ready_out_drum_3_bwd(ready_out_drum_3_bwd));
  design_test_TURBO_enigma_0_0_drum_1 drum_3_init
       (.CHARACTERS_TO_LUT(characters_drum_ukw_lut),
        .CLK(drum_impuls_to_drum_2),
        .CONFIG_DRUM_TYP_1_IN(CONFIG_DRUM_TYP_1_IN[2:1]),
        .CONFIG_DRUM_TYP_2_IN(CONFIG_DRUM_TYP_2_IN[2:1]),
        .CONFIG_DRUM_TYP_3_IN(CONFIG_DRUM_TYP_3_IN[2:1]),
        .CONFIG_START_POS_DRUM_3_IN(CONFIG_START_POS_DRUM_3_IN),
        .D({drum_3_init_n_39,drum_3_init_n_40}),
        .DRUM_IMPULS_IN(DRUM_IMPULS_IN),
        .\FSM_sequential_c_status_reg[0]_0 (c_status_1[0]),
        .\FSM_sequential_c_status_reg[0]_1 (pseudo_lut_init_n_5),
        .\FSM_sequential_c_status_reg[1]_0 (c_status_1[1]),
        .\FSM_sequential_c_status_reg[1]_1 (lut_busy),
        .Q(c_drum_count_1),
        .READY_OUT_BWD(READY_OUT_BWD),
        .SOFT_RESET_N_IN(SOFT_RESET_N_IN),
        .SR(p_0_in),
        .UB_CLK_IN(UB_CLK_IN),
        .\c_chars_in_process_reg[0]_0 (drum_3_init_n_12),
        .\c_chars_in_process_reg[0]_1 (drum_2_init_n_89),
        .\c_chars_in_process_reg[10]_0 (drum_3_init_n_22),
        .\c_chars_in_process_reg[10]_1 (drum_2_init_n_79),
        .\c_chars_in_process_reg[11]_0 (drum_3_init_n_23),
        .\c_chars_in_process_reg[11]_1 (drum_2_init_n_78),
        .\c_chars_in_process_reg[12]_0 (drum_3_init_n_24),
        .\c_chars_in_process_reg[12]_1 (drum_2_init_n_77),
        .\c_chars_in_process_reg[13]_0 (drum_3_init_n_25),
        .\c_chars_in_process_reg[13]_1 (drum_2_init_n_76),
        .\c_chars_in_process_reg[14]_0 (drum_3_init_n_26),
        .\c_chars_in_process_reg[14]_1 (drum_2_init_n_75),
        .\c_chars_in_process_reg[15]_0 (drum_3_init_n_27),
        .\c_chars_in_process_reg[15]_1 (drum_2_init_n_74),
        .\c_chars_in_process_reg[16]_0 (drum_3_init_n_28),
        .\c_chars_in_process_reg[16]_1 (drum_2_init_n_73),
        .\c_chars_in_process_reg[17]_0 (drum_3_init_n_29),
        .\c_chars_in_process_reg[17]_1 (drum_2_init_n_72),
        .\c_chars_in_process_reg[18]_0 (drum_3_init_n_30),
        .\c_chars_in_process_reg[18]_1 (drum_2_init_n_71),
        .\c_chars_in_process_reg[19]_0 (drum_3_init_n_31),
        .\c_chars_in_process_reg[19]_1 (drum_2_init_n_70),
        .\c_chars_in_process_reg[1]_0 (drum_3_init_n_13),
        .\c_chars_in_process_reg[1]_1 (drum_2_init_n_88),
        .\c_chars_in_process_reg[20]_0 (drum_3_init_n_32),
        .\c_chars_in_process_reg[20]_1 (drum_2_init_n_69),
        .\c_chars_in_process_reg[21]_0 (drum_3_init_n_33),
        .\c_chars_in_process_reg[21]_1 (drum_2_init_n_68),
        .\c_chars_in_process_reg[22]_0 (drum_3_init_n_34),
        .\c_chars_in_process_reg[22]_1 (drum_2_init_n_67),
        .\c_chars_in_process_reg[23]_0 (drum_3_init_n_35),
        .\c_chars_in_process_reg[23]_1 (drum_2_init_n_66),
        .\c_chars_in_process_reg[24]_0 (drum_3_init_n_36),
        .\c_chars_in_process_reg[24]_1 (drum_2_init_n_65),
        .\c_chars_in_process_reg[25]_0 (drum_3_init_n_37),
        .\c_chars_in_process_reg[25]_1 (drum_2_init_n_38),
        .\c_chars_in_process_reg[2]_0 (drum_3_init_n_14),
        .\c_chars_in_process_reg[2]_1 (drum_2_init_n_87),
        .\c_chars_in_process_reg[3]_0 (drum_3_init_n_15),
        .\c_chars_in_process_reg[3]_1 (drum_2_init_n_86),
        .\c_chars_in_process_reg[4]_0 (drum_3_init_n_16),
        .\c_chars_in_process_reg[4]_1 (drum_2_init_n_85),
        .\c_chars_in_process_reg[5]_0 (drum_3_init_n_17),
        .\c_chars_in_process_reg[5]_1 (drum_2_init_n_84),
        .\c_chars_in_process_reg[6]_0 (drum_3_init_n_18),
        .\c_chars_in_process_reg[6]_1 (drum_2_init_n_83),
        .\c_chars_in_process_reg[7]_0 (drum_3_init_n_19),
        .\c_chars_in_process_reg[7]_1 (drum_2_init_n_82),
        .\c_chars_in_process_reg[8]_0 (drum_3_init_n_20),
        .\c_chars_in_process_reg[8]_1 (drum_2_init_n_81),
        .\c_chars_in_process_reg[9]_0 (drum_3_init_n_21),
        .\c_chars_in_process_reg[9]_1 (drum_2_init_n_80),
        .\c_chars_in_reg[25] (characters_drum_2_lut),
        .\c_chars_out_reg[25]_0 (characters_drum_3_out),
        .\c_chars_out_reg[25]_1 (lut_ready_to_drum_3),
        .\c_chars_out_reg[25]_2 (ROTATE_RIGHT),
        .c_dir_to_lut_reg_0(lut_direction_drum_3),
        .c_dir_to_lut_reg_1(c_dir_to_lut_reg_1),
        .\c_drum_typ_reg[2] (lut_request_drum_2),
        .\c_drum_typ_reg[2]_0 (lut_request_drum_1),
        .c_request_to_lut_reg_0(lut_request_drum_3),
        .c_request_to_lut_reg_1(drum_3_init_n_38),
        .c_request_to_lut_reg_2(c_request_to_lut_reg_1),
        .lut_direction_drum_2(lut_direction_drum_2),
        .lut_request_drum_ukw(lut_request_drum_ukw),
        .ready_out_drum_2_fwd(ready_out_drum_2_fwd),
        .ready_out_drum_3_bwd(ready_out_drum_3_bwd),
        .ready_out_drum_3_fwd(ready_out_drum_3_fwd));
  design_test_TURBO_enigma_0_0_drum_ukw drum_ukw_init
       (.D(characters_drum_3_out),
        .\FSM_sequential_c_status_reg[0]_0 (pseudo_lut_init_n_7),
        .\FSM_sequential_c_status_reg[1]_0 (lut_busy),
        .Q(characters_drum_ukw_out),
        .READY_OUT_BWD(READY_OUT_BWD),
        .SR(p_0_in),
        .UB_CLK_IN(UB_CLK_IN),
        .\c_chars_in_process_reg[25]_0 (characters_drum_ukw_lut),
        .c_status(c_status_2),
        .lut_projection(lut_projection),
        .lut_ready_to_drum_ukw(lut_ready_to_drum_ukw),
        .lut_request_drum_ukw(lut_request_drum_ukw),
        .ready_out_drum_3_fwd(ready_out_drum_3_fwd));
  design_test_TURBO_enigma_0_0_enigma_control enigma_control_init
       (.CHARACTERS_IN_DB0(CHARACTERS_IN_DB0),
        .CHARACTERS_IN_DB1(CHARACTERS_IN_DB1),
        .CODED_CHARACTERS_OUT_DB0(CODED_CHARACTERS_OUT_DB0),
        .CODED_CHARACTERS_OUT_DB1(CODED_CHARACTERS_OUT_DB1),
        .D(characters_drum_1_out),
        .E(drum_1_init_n_6),
        .READY_OUT(READY_OUT),
        .SR(p_0_in),
        .UB_CLK_IN(UB_CLK_IN),
        .\c_chars_in_process_reg[0]_0 (enigma_control_init_n_27),
        .\c_chars_in_process_reg[10]_0 (enigma_control_init_n_17),
        .\c_chars_in_process_reg[11]_0 (enigma_control_init_n_16),
        .\c_chars_in_process_reg[12]_0 (enigma_control_init_n_15),
        .\c_chars_in_process_reg[13]_0 (enigma_control_init_n_14),
        .\c_chars_in_process_reg[14]_0 (enigma_control_init_n_13),
        .\c_chars_in_process_reg[15]_0 (enigma_control_init_n_12),
        .\c_chars_in_process_reg[16]_0 (enigma_control_init_n_11),
        .\c_chars_in_process_reg[17]_0 (enigma_control_init_n_10),
        .\c_chars_in_process_reg[18]_0 (enigma_control_init_n_9),
        .\c_chars_in_process_reg[19]_0 (enigma_control_init_n_8),
        .\c_chars_in_process_reg[1]_0 (enigma_control_init_n_26),
        .\c_chars_in_process_reg[20]_0 (enigma_control_init_n_7),
        .\c_chars_in_process_reg[21]_0 (enigma_control_init_n_6),
        .\c_chars_in_process_reg[22]_0 (enigma_control_init_n_5),
        .\c_chars_in_process_reg[23]_0 (enigma_control_init_n_4),
        .\c_chars_in_process_reg[24]_0 (enigma_control_init_n_3),
        .\c_chars_in_process_reg[25]_0 (enigma_control_init_n_2),
        .\c_chars_in_process_reg[25]_1 (characters_drum_2_out),
        .\c_chars_in_process_reg[2]_0 (enigma_control_init_n_25),
        .\c_chars_in_process_reg[3]_0 (enigma_control_init_n_24),
        .\c_chars_in_process_reg[4]_0 (enigma_control_init_n_23),
        .\c_chars_in_process_reg[5]_0 (enigma_control_init_n_22),
        .\c_chars_in_process_reg[6]_0 (enigma_control_init_n_21),
        .\c_chars_in_process_reg[7]_0 (enigma_control_init_n_20),
        .\c_chars_in_process_reg[8]_0 (enigma_control_init_n_19),
        .\c_chars_in_process_reg[9]_0 (enigma_control_init_n_18),
        .c_start_to_first_drum_reg_0(start_to_drum_1),
        .\n_coded_chars_out_db0_reg[0]_0 (ready_out_drum_1_bwd));
  design_test_TURBO_enigma_0_0_pseudo_lut pseudo_lut_init
       (.D({drum_3_init_n_39,drum_3_init_n_40,drum_2_init_n_90}),
        .\FSM_sequential_status_reg[0]_0 (pseudo_lut_init_n_113),
        .\FSM_sequential_status_reg[0]_1 (drum_1_init_n_91),
        .Q(c_drum_count),
        .READY_OUT_BWD(READY_OUT_BWD),
        .SR(p_0_in),
        .UB_CLK_IN(UB_CLK_IN),
        .c_busy_reg_0(lut_busy),
        .c_busy_reg_1(pseudo_lut_init_n_1),
        .c_busy_reg_2(pseudo_lut_init_n_3),
        .c_busy_reg_3(pseudo_lut_init_n_5),
        .c_busy_reg_4(pseudo_lut_init_n_7),
        .c_busy_reg_5(c_busy_i_1_n_0),
        .\c_chars_in_reg[25]_0 (p_1_in),
        .\c_chars_out[11]_i_2__1_0 (c_drum_count_0),
        .\c_chars_out[11]_i_2__2_0 (c_drum_count_1),
        .c_direction_reg_0(drum_1_init_n_90),
        .c_direction_reg_1(lut_request_drum_2),
        .c_direction_reg_2(lut_request_drum_3),
        .c_direction_reg_3(lut_request_drum_1),
        .\c_drum_count_reg[0] (ROTATE_RIGHT_4),
        .\c_drum_count_reg[0]_0 (ROTATE_RIGHT_3),
        .\c_drum_count_reg[0]_1 (ROTATE_RIGHT),
        .\c_ready_reg[0]_0 (lut_ready_to_drum_1),
        .\c_ready_reg[1]_0 (lut_ready_to_drum_2),
        .\c_ready_reg[2]_0 (lut_ready_to_drum_3),
        .c_status(c_status),
        .c_status_0(c_status_0),
        .c_status_1(c_status_1),
        .c_status_2(c_status_2),
        .lut_projection(lut_projection),
        .lut_ready_to_drum_ukw(lut_ready_to_drum_ukw),
        .lut_request_drum_ukw(lut_request_drum_ukw),
        .ready_out_drum_1_fwd(ready_out_drum_1_fwd),
        .ready_out_drum_2_bwd(ready_out_drum_2_bwd),
        .ready_out_drum_2_fwd(ready_out_drum_2_fwd),
        .ready_out_drum_3_bwd(ready_out_drum_3_bwd),
        .ready_out_drum_3_fwd(ready_out_drum_3_fwd),
        .start_to_drum_1(start_to_drum_1));
endmodule

(* ORIG_REF_NAME = "pseudo_lut" *) 
module design_test_TURBO_enigma_0_0_pseudo_lut
   (c_busy_reg_0,
    c_busy_reg_1,
    \c_ready_reg[0]_0 ,
    c_busy_reg_2,
    \c_ready_reg[1]_0 ,
    c_busy_reg_3,
    \c_ready_reg[2]_0 ,
    c_busy_reg_4,
    lut_ready_to_drum_ukw,
    \c_drum_count_reg[0] ,
    lut_projection,
    \c_drum_count_reg[0]_0 ,
    \c_drum_count_reg[0]_1 ,
    \FSM_sequential_status_reg[0]_0 ,
    SR,
    UB_CLK_IN,
    c_direction_reg_0,
    c_busy_reg_5,
    c_status,
    start_to_drum_1,
    ready_out_drum_2_bwd,
    c_status_0,
    ready_out_drum_3_bwd,
    ready_out_drum_1_fwd,
    c_status_1,
    READY_OUT_BWD,
    ready_out_drum_2_fwd,
    c_status_2,
    ready_out_drum_3_fwd,
    Q,
    \c_chars_out[11]_i_2__1_0 ,
    \c_chars_out[11]_i_2__2_0 ,
    c_direction_reg_1,
    lut_request_drum_ukw,
    c_direction_reg_2,
    c_direction_reg_3,
    \FSM_sequential_status_reg[0]_1 ,
    D,
    \c_chars_in_reg[25]_0 );
  output c_busy_reg_0;
  output c_busy_reg_1;
  output \c_ready_reg[0]_0 ;
  output c_busy_reg_2;
  output \c_ready_reg[1]_0 ;
  output c_busy_reg_3;
  output \c_ready_reg[2]_0 ;
  output c_busy_reg_4;
  output lut_ready_to_drum_ukw;
  output [25:0]\c_drum_count_reg[0] ;
  output [25:0]lut_projection;
  output [25:0]\c_drum_count_reg[0]_0 ;
  output [25:0]\c_drum_count_reg[0]_1 ;
  output \FSM_sequential_status_reg[0]_0 ;
  input [0:0]SR;
  input UB_CLK_IN;
  input c_direction_reg_0;
  input c_busy_reg_5;
  input [1:0]c_status;
  input start_to_drum_1;
  input ready_out_drum_2_bwd;
  input [1:0]c_status_0;
  input ready_out_drum_3_bwd;
  input ready_out_drum_1_fwd;
  input [1:0]c_status_1;
  input READY_OUT_BWD;
  input ready_out_drum_2_fwd;
  input [1:0]c_status_2;
  input ready_out_drum_3_fwd;
  input [4:0]Q;
  input [4:0]\c_chars_out[11]_i_2__1_0 ;
  input [4:0]\c_chars_out[11]_i_2__2_0 ;
  input c_direction_reg_1;
  input lut_request_drum_ukw;
  input c_direction_reg_2;
  input c_direction_reg_3;
  input \FSM_sequential_status_reg[0]_1 ;
  input [2:0]D;
  input [25:0]\c_chars_in_reg[25]_0 ;

  wire [2:0]D;
  wire \FSM_sequential_status[0]_i_1_n_0 ;
  wire \FSM_sequential_status[1]_i_1_n_0 ;
  wire \FSM_sequential_status[1]_i_2_n_0 ;
  wire \FSM_sequential_status_reg[0]_0 ;
  wire \FSM_sequential_status_reg[0]_1 ;
  wire \FSM_sequential_status_reg_n_0_[1] ;
  wire [4:0]Q;
  wire READY_OUT_BWD;
  wire [0:0]SR;
  wire UB_CLK_IN;
  wire c_busy_reg_0;
  wire c_busy_reg_1;
  wire c_busy_reg_2;
  wire c_busy_reg_3;
  wire c_busy_reg_4;
  wire c_busy_reg_5;
  wire [1:0]c_chars_in;
  wire [25:0]\c_chars_in_reg[25]_0 ;
  wire \c_chars_out[0]_i_10_n_0 ;
  wire \c_chars_out[0]_i_11_n_0 ;
  wire \c_chars_out[0]_i_12_n_0 ;
  wire \c_chars_out[0]_i_1_n_0 ;
  wire \c_chars_out[0]_i_2_n_0 ;
  wire \c_chars_out[0]_i_3_n_0 ;
  wire \c_chars_out[0]_i_4_n_0 ;
  wire \c_chars_out[0]_i_5_n_0 ;
  wire \c_chars_out[0]_i_6_n_0 ;
  wire \c_chars_out[0]_i_7_n_0 ;
  wire \c_chars_out[0]_i_8_n_0 ;
  wire \c_chars_out[0]_i_9_n_0 ;
  wire \c_chars_out[10]_i_10_n_0 ;
  wire \c_chars_out[10]_i_11_n_0 ;
  wire \c_chars_out[10]_i_12_n_0 ;
  wire \c_chars_out[10]_i_13_n_0 ;
  wire \c_chars_out[10]_i_14_n_0 ;
  wire \c_chars_out[10]_i_15_n_0 ;
  wire \c_chars_out[10]_i_16_n_0 ;
  wire \c_chars_out[10]_i_17_n_0 ;
  wire \c_chars_out[10]_i_18_n_0 ;
  wire \c_chars_out[10]_i_1_n_0 ;
  wire \c_chars_out[10]_i_2__0_n_0 ;
  wire \c_chars_out[10]_i_2__1_n_0 ;
  wire \c_chars_out[10]_i_2__2_n_0 ;
  wire \c_chars_out[10]_i_2_n_0 ;
  wire \c_chars_out[10]_i_3__0_n_0 ;
  wire \c_chars_out[10]_i_3__1_n_0 ;
  wire \c_chars_out[10]_i_3__2_n_0 ;
  wire \c_chars_out[10]_i_3_n_0 ;
  wire \c_chars_out[10]_i_4_n_0 ;
  wire \c_chars_out[10]_i_5_n_0 ;
  wire \c_chars_out[10]_i_6_n_0 ;
  wire \c_chars_out[10]_i_7_n_0 ;
  wire \c_chars_out[10]_i_8_n_0 ;
  wire \c_chars_out[10]_i_9_n_0 ;
  wire \c_chars_out[11]_i_10_n_0 ;
  wire \c_chars_out[11]_i_11_n_0 ;
  wire \c_chars_out[11]_i_12_n_0 ;
  wire \c_chars_out[11]_i_13_n_0 ;
  wire \c_chars_out[11]_i_14_n_0 ;
  wire \c_chars_out[11]_i_15_n_0 ;
  wire \c_chars_out[11]_i_16_n_0 ;
  wire \c_chars_out[11]_i_17_n_0 ;
  wire \c_chars_out[11]_i_18_n_0 ;
  wire \c_chars_out[11]_i_1_n_0 ;
  wire \c_chars_out[11]_i_2__0_n_0 ;
  wire [4:0]\c_chars_out[11]_i_2__1_0 ;
  wire \c_chars_out[11]_i_2__1_n_0 ;
  wire [4:0]\c_chars_out[11]_i_2__2_0 ;
  wire \c_chars_out[11]_i_2__2_n_0 ;
  wire \c_chars_out[11]_i_2_n_0 ;
  wire \c_chars_out[11]_i_3__0_n_0 ;
  wire \c_chars_out[11]_i_3__1_n_0 ;
  wire \c_chars_out[11]_i_3__2_n_0 ;
  wire \c_chars_out[11]_i_3_n_0 ;
  wire \c_chars_out[11]_i_4_n_0 ;
  wire \c_chars_out[11]_i_5_n_0 ;
  wire \c_chars_out[11]_i_6_n_0 ;
  wire \c_chars_out[11]_i_7_n_0 ;
  wire \c_chars_out[11]_i_8_n_0 ;
  wire \c_chars_out[11]_i_9_n_0 ;
  wire \c_chars_out[12]_i_10_n_0 ;
  wire \c_chars_out[12]_i_11_n_0 ;
  wire \c_chars_out[12]_i_12_n_0 ;
  wire \c_chars_out[12]_i_13_n_0 ;
  wire \c_chars_out[12]_i_14_n_0 ;
  wire \c_chars_out[12]_i_15_n_0 ;
  wire \c_chars_out[12]_i_16_n_0 ;
  wire \c_chars_out[12]_i_17_n_0 ;
  wire \c_chars_out[12]_i_18_n_0 ;
  wire \c_chars_out[12]_i_19_n_0 ;
  wire \c_chars_out[12]_i_1_n_0 ;
  wire \c_chars_out[12]_i_20_n_0 ;
  wire \c_chars_out[12]_i_21_n_0 ;
  wire \c_chars_out[12]_i_22_n_0 ;
  wire \c_chars_out[12]_i_2__0_n_0 ;
  wire \c_chars_out[12]_i_2__1_n_0 ;
  wire \c_chars_out[12]_i_2__2_n_0 ;
  wire \c_chars_out[12]_i_2_n_0 ;
  wire \c_chars_out[12]_i_3__0_n_0 ;
  wire \c_chars_out[12]_i_3__1_n_0 ;
  wire \c_chars_out[12]_i_3__2_n_0 ;
  wire \c_chars_out[12]_i_3_n_0 ;
  wire \c_chars_out[12]_i_4_n_0 ;
  wire \c_chars_out[12]_i_5_n_0 ;
  wire \c_chars_out[12]_i_6_n_0 ;
  wire \c_chars_out[12]_i_7_n_0 ;
  wire \c_chars_out[12]_i_8_n_0 ;
  wire \c_chars_out[12]_i_9_n_0 ;
  wire \c_chars_out[13]_i_10_n_0 ;
  wire \c_chars_out[13]_i_11_n_0 ;
  wire \c_chars_out[13]_i_12_n_0 ;
  wire \c_chars_out[13]_i_13_n_0 ;
  wire \c_chars_out[13]_i_14_n_0 ;
  wire \c_chars_out[13]_i_15_n_0 ;
  wire \c_chars_out[13]_i_16_n_0 ;
  wire \c_chars_out[13]_i_17_n_0 ;
  wire \c_chars_out[13]_i_18_n_0 ;
  wire \c_chars_out[13]_i_19_n_0 ;
  wire \c_chars_out[13]_i_1_n_0 ;
  wire \c_chars_out[13]_i_20_n_0 ;
  wire \c_chars_out[13]_i_21_n_0 ;
  wire \c_chars_out[13]_i_22_n_0 ;
  wire \c_chars_out[13]_i_23_n_0 ;
  wire \c_chars_out[13]_i_24_n_0 ;
  wire \c_chars_out[13]_i_25_n_0 ;
  wire \c_chars_out[13]_i_26_n_0 ;
  wire \c_chars_out[13]_i_27_n_0 ;
  wire \c_chars_out[13]_i_28_n_0 ;
  wire \c_chars_out[13]_i_29_n_0 ;
  wire \c_chars_out[13]_i_2__0_n_0 ;
  wire \c_chars_out[13]_i_2__1_n_0 ;
  wire \c_chars_out[13]_i_2__2_n_0 ;
  wire \c_chars_out[13]_i_2_n_0 ;
  wire \c_chars_out[13]_i_30_n_0 ;
  wire \c_chars_out[13]_i_3__0_n_0 ;
  wire \c_chars_out[13]_i_3__1_n_0 ;
  wire \c_chars_out[13]_i_3__2_n_0 ;
  wire \c_chars_out[13]_i_3_n_0 ;
  wire \c_chars_out[13]_i_4_n_0 ;
  wire \c_chars_out[13]_i_5_n_0 ;
  wire \c_chars_out[13]_i_6_n_0 ;
  wire \c_chars_out[13]_i_7_n_0 ;
  wire \c_chars_out[13]_i_8_n_0 ;
  wire \c_chars_out[13]_i_9_n_0 ;
  wire \c_chars_out[14]_i_10_n_0 ;
  wire \c_chars_out[14]_i_11_n_0 ;
  wire \c_chars_out[14]_i_12_n_0 ;
  wire \c_chars_out[14]_i_13_n_0 ;
  wire \c_chars_out[14]_i_14_n_0 ;
  wire \c_chars_out[14]_i_15_n_0 ;
  wire \c_chars_out[14]_i_16_n_0 ;
  wire \c_chars_out[14]_i_17_n_0 ;
  wire \c_chars_out[14]_i_18_n_0 ;
  wire \c_chars_out[14]_i_19_n_0 ;
  wire \c_chars_out[14]_i_1_n_0 ;
  wire \c_chars_out[14]_i_20_n_0 ;
  wire \c_chars_out[14]_i_21_n_0 ;
  wire \c_chars_out[14]_i_22_n_0 ;
  wire \c_chars_out[14]_i_23_n_0 ;
  wire \c_chars_out[14]_i_24_n_0 ;
  wire \c_chars_out[14]_i_25_n_0 ;
  wire \c_chars_out[14]_i_26_n_0 ;
  wire \c_chars_out[14]_i_27_n_0 ;
  wire \c_chars_out[14]_i_28_n_0 ;
  wire \c_chars_out[14]_i_29_n_0 ;
  wire \c_chars_out[14]_i_2__0_n_0 ;
  wire \c_chars_out[14]_i_2__1_n_0 ;
  wire \c_chars_out[14]_i_2__2_n_0 ;
  wire \c_chars_out[14]_i_2_n_0 ;
  wire \c_chars_out[14]_i_30_n_0 ;
  wire \c_chars_out[14]_i_31_n_0 ;
  wire \c_chars_out[14]_i_32_n_0 ;
  wire \c_chars_out[14]_i_33_n_0 ;
  wire \c_chars_out[14]_i_34_n_0 ;
  wire \c_chars_out[14]_i_3__0_n_0 ;
  wire \c_chars_out[14]_i_3__1_n_0 ;
  wire \c_chars_out[14]_i_3__2_n_0 ;
  wire \c_chars_out[14]_i_3_n_0 ;
  wire \c_chars_out[14]_i_4_n_0 ;
  wire \c_chars_out[14]_i_5_n_0 ;
  wire \c_chars_out[14]_i_6_n_0 ;
  wire \c_chars_out[14]_i_7_n_0 ;
  wire \c_chars_out[14]_i_8_n_0 ;
  wire \c_chars_out[14]_i_9_n_0 ;
  wire \c_chars_out[15]_i_10_n_0 ;
  wire \c_chars_out[15]_i_11_n_0 ;
  wire \c_chars_out[15]_i_12_n_0 ;
  wire \c_chars_out[15]_i_13_n_0 ;
  wire \c_chars_out[15]_i_14_n_0 ;
  wire \c_chars_out[15]_i_15_n_0 ;
  wire \c_chars_out[15]_i_16_n_0 ;
  wire \c_chars_out[15]_i_17_n_0 ;
  wire \c_chars_out[15]_i_18_n_0 ;
  wire \c_chars_out[15]_i_19_n_0 ;
  wire \c_chars_out[15]_i_1_n_0 ;
  wire \c_chars_out[15]_i_20_n_0 ;
  wire \c_chars_out[15]_i_21_n_0 ;
  wire \c_chars_out[15]_i_22_n_0 ;
  wire \c_chars_out[15]_i_23_n_0 ;
  wire \c_chars_out[15]_i_24_n_0 ;
  wire \c_chars_out[15]_i_25_n_0 ;
  wire \c_chars_out[15]_i_26_n_0 ;
  wire \c_chars_out[15]_i_27_n_0 ;
  wire \c_chars_out[15]_i_28_n_0 ;
  wire \c_chars_out[15]_i_29_n_0 ;
  wire \c_chars_out[15]_i_2__0_n_0 ;
  wire \c_chars_out[15]_i_2__1_n_0 ;
  wire \c_chars_out[15]_i_2__2_n_0 ;
  wire \c_chars_out[15]_i_2_n_0 ;
  wire \c_chars_out[15]_i_30_n_0 ;
  wire \c_chars_out[15]_i_31_n_0 ;
  wire \c_chars_out[15]_i_32_n_0 ;
  wire \c_chars_out[15]_i_33_n_0 ;
  wire \c_chars_out[15]_i_34_n_0 ;
  wire \c_chars_out[15]_i_35_n_0 ;
  wire \c_chars_out[15]_i_36_n_0 ;
  wire \c_chars_out[15]_i_37_n_0 ;
  wire \c_chars_out[15]_i_38_n_0 ;
  wire \c_chars_out[15]_i_39_n_0 ;
  wire \c_chars_out[15]_i_3__0_n_0 ;
  wire \c_chars_out[15]_i_3__1_n_0 ;
  wire \c_chars_out[15]_i_3__2_n_0 ;
  wire \c_chars_out[15]_i_3_n_0 ;
  wire \c_chars_out[15]_i_40_n_0 ;
  wire \c_chars_out[15]_i_4_n_0 ;
  wire \c_chars_out[15]_i_5_n_0 ;
  wire \c_chars_out[15]_i_6_n_0 ;
  wire \c_chars_out[15]_i_7_n_0 ;
  wire \c_chars_out[15]_i_8_n_0 ;
  wire \c_chars_out[15]_i_9_n_0 ;
  wire \c_chars_out[16]_i_10_n_0 ;
  wire \c_chars_out[16]_i_11_n_0 ;
  wire \c_chars_out[16]_i_12_n_0 ;
  wire \c_chars_out[16]_i_1_n_0 ;
  wire \c_chars_out[16]_i_2__0_n_0 ;
  wire \c_chars_out[16]_i_2__1_n_0 ;
  wire \c_chars_out[16]_i_2__2_n_0 ;
  wire \c_chars_out[16]_i_2_n_0 ;
  wire \c_chars_out[16]_i_3__0_n_0 ;
  wire \c_chars_out[16]_i_3__1_n_0 ;
  wire \c_chars_out[16]_i_3__2_n_0 ;
  wire \c_chars_out[16]_i_3_n_0 ;
  wire \c_chars_out[16]_i_4_n_0 ;
  wire \c_chars_out[16]_i_5_n_0 ;
  wire \c_chars_out[16]_i_6_n_0 ;
  wire \c_chars_out[16]_i_7_n_0 ;
  wire \c_chars_out[16]_i_8_n_0 ;
  wire \c_chars_out[16]_i_9_n_0 ;
  wire \c_chars_out[17]_i_10_n_0 ;
  wire \c_chars_out[17]_i_11_n_0 ;
  wire \c_chars_out[17]_i_12_n_0 ;
  wire \c_chars_out[17]_i_13_n_0 ;
  wire \c_chars_out[17]_i_14_n_0 ;
  wire \c_chars_out[17]_i_15_n_0 ;
  wire \c_chars_out[17]_i_16_n_0 ;
  wire \c_chars_out[17]_i_17_n_0 ;
  wire \c_chars_out[17]_i_18_n_0 ;
  wire \c_chars_out[17]_i_19_n_0 ;
  wire \c_chars_out[17]_i_1_n_0 ;
  wire \c_chars_out[17]_i_20_n_0 ;
  wire \c_chars_out[17]_i_21_n_0 ;
  wire \c_chars_out[17]_i_22_n_0 ;
  wire \c_chars_out[17]_i_23_n_0 ;
  wire \c_chars_out[17]_i_24_n_0 ;
  wire \c_chars_out[17]_i_25_n_0 ;
  wire \c_chars_out[17]_i_26_n_0 ;
  wire \c_chars_out[17]_i_27_n_0 ;
  wire \c_chars_out[17]_i_28_n_0 ;
  wire \c_chars_out[17]_i_29_n_0 ;
  wire \c_chars_out[17]_i_2__0_n_0 ;
  wire \c_chars_out[17]_i_2__1_n_0 ;
  wire \c_chars_out[17]_i_2__2_n_0 ;
  wire \c_chars_out[17]_i_2_n_0 ;
  wire \c_chars_out[17]_i_30_n_0 ;
  wire \c_chars_out[17]_i_31_n_0 ;
  wire \c_chars_out[17]_i_32_n_0 ;
  wire \c_chars_out[17]_i_3__0_n_0 ;
  wire \c_chars_out[17]_i_3__1_n_0 ;
  wire \c_chars_out[17]_i_3__2_n_0 ;
  wire \c_chars_out[17]_i_3_n_0 ;
  wire \c_chars_out[17]_i_4_n_0 ;
  wire \c_chars_out[17]_i_5_n_0 ;
  wire \c_chars_out[17]_i_6_n_0 ;
  wire \c_chars_out[17]_i_7_n_0 ;
  wire \c_chars_out[17]_i_8_n_0 ;
  wire \c_chars_out[17]_i_9_n_0 ;
  wire \c_chars_out[18]_i_10_n_0 ;
  wire \c_chars_out[18]_i_11_n_0 ;
  wire \c_chars_out[18]_i_12_n_0 ;
  wire \c_chars_out[18]_i_13_n_0 ;
  wire \c_chars_out[18]_i_1_n_0 ;
  wire \c_chars_out[18]_i_2__0_n_0 ;
  wire \c_chars_out[18]_i_2__1_n_0 ;
  wire \c_chars_out[18]_i_2__2_n_0 ;
  wire \c_chars_out[18]_i_2_n_0 ;
  wire \c_chars_out[18]_i_3__0_n_0 ;
  wire \c_chars_out[18]_i_3__1_n_0 ;
  wire \c_chars_out[18]_i_3__2_n_0 ;
  wire \c_chars_out[18]_i_3_n_0 ;
  wire \c_chars_out[18]_i_4_n_0 ;
  wire \c_chars_out[18]_i_5_n_0 ;
  wire \c_chars_out[18]_i_6_n_0 ;
  wire \c_chars_out[18]_i_7_n_0 ;
  wire \c_chars_out[18]_i_8_n_0 ;
  wire \c_chars_out[18]_i_9_n_0 ;
  wire \c_chars_out[19]_i_10_n_0 ;
  wire \c_chars_out[19]_i_11_n_0 ;
  wire \c_chars_out[19]_i_12_n_0 ;
  wire \c_chars_out[19]_i_13_n_0 ;
  wire \c_chars_out[19]_i_14_n_0 ;
  wire \c_chars_out[19]_i_15_n_0 ;
  wire \c_chars_out[19]_i_16_n_0 ;
  wire \c_chars_out[19]_i_17_n_0 ;
  wire \c_chars_out[19]_i_18_n_0 ;
  wire \c_chars_out[19]_i_19_n_0 ;
  wire \c_chars_out[19]_i_1_n_0 ;
  wire \c_chars_out[19]_i_20_n_0 ;
  wire \c_chars_out[19]_i_21_n_0 ;
  wire \c_chars_out[19]_i_22_n_0 ;
  wire \c_chars_out[19]_i_23_n_0 ;
  wire \c_chars_out[19]_i_24_n_0 ;
  wire \c_chars_out[19]_i_25_n_0 ;
  wire \c_chars_out[19]_i_26_n_0 ;
  wire \c_chars_out[19]_i_27_n_0 ;
  wire \c_chars_out[19]_i_28_n_0 ;
  wire \c_chars_out[19]_i_29_n_0 ;
  wire \c_chars_out[19]_i_2__0_n_0 ;
  wire \c_chars_out[19]_i_2__1_n_0 ;
  wire \c_chars_out[19]_i_2__2_n_0 ;
  wire \c_chars_out[19]_i_2_n_0 ;
  wire \c_chars_out[19]_i_30_n_0 ;
  wire \c_chars_out[19]_i_31_n_0 ;
  wire \c_chars_out[19]_i_32_n_0 ;
  wire \c_chars_out[19]_i_33_n_0 ;
  wire \c_chars_out[19]_i_3__0_n_0 ;
  wire \c_chars_out[19]_i_3__1_n_0 ;
  wire \c_chars_out[19]_i_3__2_n_0 ;
  wire \c_chars_out[19]_i_3_n_0 ;
  wire \c_chars_out[19]_i_4_n_0 ;
  wire \c_chars_out[19]_i_5_n_0 ;
  wire \c_chars_out[19]_i_6_n_0 ;
  wire \c_chars_out[19]_i_7_n_0 ;
  wire \c_chars_out[19]_i_8_n_0 ;
  wire \c_chars_out[19]_i_9_n_0 ;
  wire \c_chars_out[1]_i_10_n_0 ;
  wire \c_chars_out[1]_i_11_n_0 ;
  wire \c_chars_out[1]_i_12_n_0 ;
  wire \c_chars_out[1]_i_13_n_0 ;
  wire \c_chars_out[1]_i_14_n_0 ;
  wire \c_chars_out[1]_i_1_n_0 ;
  wire \c_chars_out[1]_i_2__0_n_0 ;
  wire \c_chars_out[1]_i_2__1_n_0 ;
  wire \c_chars_out[1]_i_2__2_n_0 ;
  wire \c_chars_out[1]_i_2_n_0 ;
  wire \c_chars_out[1]_i_3_n_0 ;
  wire \c_chars_out[1]_i_4_n_0 ;
  wire \c_chars_out[1]_i_5_n_0 ;
  wire \c_chars_out[1]_i_6_n_0 ;
  wire \c_chars_out[1]_i_7_n_0 ;
  wire \c_chars_out[1]_i_8_n_0 ;
  wire \c_chars_out[1]_i_9_n_0 ;
  wire \c_chars_out[20]_i_10_n_0 ;
  wire \c_chars_out[20]_i_11_n_0 ;
  wire \c_chars_out[20]_i_12_n_0 ;
  wire \c_chars_out[20]_i_13_n_0 ;
  wire \c_chars_out[20]_i_14_n_0 ;
  wire \c_chars_out[20]_i_1_n_0 ;
  wire \c_chars_out[20]_i_2__0_n_0 ;
  wire \c_chars_out[20]_i_2__1_n_0 ;
  wire \c_chars_out[20]_i_2__2_n_0 ;
  wire \c_chars_out[20]_i_2_n_0 ;
  wire \c_chars_out[20]_i_3__0_n_0 ;
  wire \c_chars_out[20]_i_3__1_n_0 ;
  wire \c_chars_out[20]_i_3__2_n_0 ;
  wire \c_chars_out[20]_i_3_n_0 ;
  wire \c_chars_out[20]_i_4_n_0 ;
  wire \c_chars_out[20]_i_5_n_0 ;
  wire \c_chars_out[20]_i_6_n_0 ;
  wire \c_chars_out[20]_i_7_n_0 ;
  wire \c_chars_out[20]_i_8_n_0 ;
  wire \c_chars_out[20]_i_9_n_0 ;
  wire \c_chars_out[21]_i_10_n_0 ;
  wire \c_chars_out[21]_i_11_n_0 ;
  wire \c_chars_out[21]_i_12_n_0 ;
  wire \c_chars_out[21]_i_13_n_0 ;
  wire \c_chars_out[21]_i_14_n_0 ;
  wire \c_chars_out[21]_i_15_n_0 ;
  wire \c_chars_out[21]_i_16_n_0 ;
  wire \c_chars_out[21]_i_17_n_0 ;
  wire \c_chars_out[21]_i_18_n_0 ;
  wire \c_chars_out[21]_i_19_n_0 ;
  wire \c_chars_out[21]_i_1_n_0 ;
  wire \c_chars_out[21]_i_20_n_0 ;
  wire \c_chars_out[21]_i_21_n_0 ;
  wire \c_chars_out[21]_i_22_n_0 ;
  wire \c_chars_out[21]_i_23_n_0 ;
  wire \c_chars_out[21]_i_24_n_0 ;
  wire \c_chars_out[21]_i_25_n_0 ;
  wire \c_chars_out[21]_i_26_n_0 ;
  wire \c_chars_out[21]_i_27_n_0 ;
  wire \c_chars_out[21]_i_28_n_0 ;
  wire \c_chars_out[21]_i_29_n_0 ;
  wire \c_chars_out[21]_i_2__0_n_0 ;
  wire \c_chars_out[21]_i_2__1_n_0 ;
  wire \c_chars_out[21]_i_2__2_n_0 ;
  wire \c_chars_out[21]_i_2_n_0 ;
  wire \c_chars_out[21]_i_30_n_0 ;
  wire \c_chars_out[21]_i_31_n_0 ;
  wire \c_chars_out[21]_i_32_n_0 ;
  wire \c_chars_out[21]_i_33_n_0 ;
  wire \c_chars_out[21]_i_34_n_0 ;
  wire \c_chars_out[21]_i_3__0_n_0 ;
  wire \c_chars_out[21]_i_3__1_n_0 ;
  wire \c_chars_out[21]_i_3__2_n_0 ;
  wire \c_chars_out[21]_i_3_n_0 ;
  wire \c_chars_out[21]_i_4_n_0 ;
  wire \c_chars_out[21]_i_5_n_0 ;
  wire \c_chars_out[21]_i_6_n_0 ;
  wire \c_chars_out[21]_i_7_n_0 ;
  wire \c_chars_out[21]_i_8_n_0 ;
  wire \c_chars_out[21]_i_9_n_0 ;
  wire \c_chars_out[22]_i_10_n_0 ;
  wire \c_chars_out[22]_i_11_n_0 ;
  wire \c_chars_out[22]_i_12_n_0 ;
  wire \c_chars_out[22]_i_13_n_0 ;
  wire \c_chars_out[22]_i_14_n_0 ;
  wire \c_chars_out[22]_i_15_n_0 ;
  wire \c_chars_out[22]_i_16_n_0 ;
  wire \c_chars_out[22]_i_17_n_0 ;
  wire \c_chars_out[22]_i_18_n_0 ;
  wire \c_chars_out[22]_i_19_n_0 ;
  wire \c_chars_out[22]_i_1_n_0 ;
  wire \c_chars_out[22]_i_20_n_0 ;
  wire \c_chars_out[22]_i_21_n_0 ;
  wire \c_chars_out[22]_i_22_n_0 ;
  wire \c_chars_out[22]_i_23_n_0 ;
  wire \c_chars_out[22]_i_24_n_0 ;
  wire \c_chars_out[22]_i_25_n_0 ;
  wire \c_chars_out[22]_i_2__0_n_0 ;
  wire \c_chars_out[22]_i_2__1_n_0 ;
  wire \c_chars_out[22]_i_2__2_n_0 ;
  wire \c_chars_out[22]_i_2_n_0 ;
  wire \c_chars_out[22]_i_3__0_n_0 ;
  wire \c_chars_out[22]_i_3__1_n_0 ;
  wire \c_chars_out[22]_i_3__2_n_0 ;
  wire \c_chars_out[22]_i_3_n_0 ;
  wire \c_chars_out[22]_i_4_n_0 ;
  wire \c_chars_out[22]_i_5_n_0 ;
  wire \c_chars_out[22]_i_6_n_0 ;
  wire \c_chars_out[22]_i_7_n_0 ;
  wire \c_chars_out[22]_i_8_n_0 ;
  wire \c_chars_out[22]_i_9_n_0 ;
  wire \c_chars_out[23]_i_10_n_0 ;
  wire \c_chars_out[23]_i_11_n_0 ;
  wire \c_chars_out[23]_i_12_n_0 ;
  wire \c_chars_out[23]_i_13_n_0 ;
  wire \c_chars_out[23]_i_14_n_0 ;
  wire \c_chars_out[23]_i_15_n_0 ;
  wire \c_chars_out[23]_i_16_n_0 ;
  wire \c_chars_out[23]_i_17_n_0 ;
  wire \c_chars_out[23]_i_18_n_0 ;
  wire \c_chars_out[23]_i_19_n_0 ;
  wire \c_chars_out[23]_i_1_n_0 ;
  wire \c_chars_out[23]_i_20_n_0 ;
  wire \c_chars_out[23]_i_21_n_0 ;
  wire \c_chars_out[23]_i_22_n_0 ;
  wire \c_chars_out[23]_i_23_n_0 ;
  wire \c_chars_out[23]_i_24_n_0 ;
  wire \c_chars_out[23]_i_25_n_0 ;
  wire \c_chars_out[23]_i_26_n_0 ;
  wire \c_chars_out[23]_i_27_n_0 ;
  wire \c_chars_out[23]_i_28_n_0 ;
  wire \c_chars_out[23]_i_29_n_0 ;
  wire \c_chars_out[23]_i_2__0_n_0 ;
  wire \c_chars_out[23]_i_2__1_n_0 ;
  wire \c_chars_out[23]_i_2__2_n_0 ;
  wire \c_chars_out[23]_i_2_n_0 ;
  wire \c_chars_out[23]_i_30_n_0 ;
  wire \c_chars_out[23]_i_31_n_0 ;
  wire \c_chars_out[23]_i_32_n_0 ;
  wire \c_chars_out[23]_i_33_n_0 ;
  wire \c_chars_out[23]_i_34_n_0 ;
  wire \c_chars_out[23]_i_35_n_0 ;
  wire \c_chars_out[23]_i_36_n_0 ;
  wire \c_chars_out[23]_i_37_n_0 ;
  wire \c_chars_out[23]_i_38_n_0 ;
  wire \c_chars_out[23]_i_39_n_0 ;
  wire \c_chars_out[23]_i_3__0_n_0 ;
  wire \c_chars_out[23]_i_3__1_n_0 ;
  wire \c_chars_out[23]_i_3__2_n_0 ;
  wire \c_chars_out[23]_i_3_n_0 ;
  wire \c_chars_out[23]_i_40_n_0 ;
  wire \c_chars_out[23]_i_41_n_0 ;
  wire \c_chars_out[23]_i_42_n_0 ;
  wire \c_chars_out[23]_i_43_n_0 ;
  wire \c_chars_out[23]_i_44_n_0 ;
  wire \c_chars_out[23]_i_45_n_0 ;
  wire \c_chars_out[23]_i_4_n_0 ;
  wire \c_chars_out[23]_i_5_n_0 ;
  wire \c_chars_out[23]_i_6_n_0 ;
  wire \c_chars_out[23]_i_7_n_0 ;
  wire \c_chars_out[23]_i_8_n_0 ;
  wire \c_chars_out[23]_i_9_n_0 ;
  wire \c_chars_out[24]_i_10_n_0 ;
  wire \c_chars_out[24]_i_11_n_0 ;
  wire \c_chars_out[24]_i_12_n_0 ;
  wire \c_chars_out[24]_i_13_n_0 ;
  wire \c_chars_out[24]_i_14_n_0 ;
  wire \c_chars_out[24]_i_15_n_0 ;
  wire \c_chars_out[24]_i_16_n_0 ;
  wire \c_chars_out[24]_i_17_n_0 ;
  wire \c_chars_out[24]_i_18_n_0 ;
  wire \c_chars_out[24]_i_19_n_0 ;
  wire \c_chars_out[24]_i_1_n_0 ;
  wire \c_chars_out[24]_i_20_n_0 ;
  wire \c_chars_out[24]_i_21_n_0 ;
  wire \c_chars_out[24]_i_22_n_0 ;
  wire \c_chars_out[24]_i_23_n_0 ;
  wire \c_chars_out[24]_i_24_n_0 ;
  wire \c_chars_out[24]_i_25_n_0 ;
  wire \c_chars_out[24]_i_26_n_0 ;
  wire \c_chars_out[24]_i_27_n_0 ;
  wire \c_chars_out[24]_i_28_n_0 ;
  wire \c_chars_out[24]_i_29_n_0 ;
  wire \c_chars_out[24]_i_2__0_n_0 ;
  wire \c_chars_out[24]_i_2__1_n_0 ;
  wire \c_chars_out[24]_i_2__2_n_0 ;
  wire \c_chars_out[24]_i_2_n_0 ;
  wire \c_chars_out[24]_i_3__0_n_0 ;
  wire \c_chars_out[24]_i_3__1_n_0 ;
  wire \c_chars_out[24]_i_3__2_n_0 ;
  wire \c_chars_out[24]_i_3_n_0 ;
  wire \c_chars_out[24]_i_4_n_0 ;
  wire \c_chars_out[24]_i_5_n_0 ;
  wire \c_chars_out[24]_i_6_n_0 ;
  wire \c_chars_out[24]_i_7_n_0 ;
  wire \c_chars_out[24]_i_8_n_0 ;
  wire \c_chars_out[24]_i_9_n_0 ;
  wire \c_chars_out[25]_i_10__0_n_0 ;
  wire \c_chars_out[25]_i_10__1_n_0 ;
  wire \c_chars_out[25]_i_10__2_n_0 ;
  wire \c_chars_out[25]_i_10_n_0 ;
  wire \c_chars_out[25]_i_11__0_n_0 ;
  wire \c_chars_out[25]_i_11__1_n_0 ;
  wire \c_chars_out[25]_i_11__2_n_0 ;
  wire \c_chars_out[25]_i_11_n_0 ;
  wire \c_chars_out[25]_i_12__0_n_0 ;
  wire \c_chars_out[25]_i_12__1_n_0 ;
  wire \c_chars_out[25]_i_12__2_n_0 ;
  wire \c_chars_out[25]_i_12_n_0 ;
  wire \c_chars_out[25]_i_13_n_0 ;
  wire \c_chars_out[25]_i_14_n_0 ;
  wire \c_chars_out[25]_i_15_n_0 ;
  wire \c_chars_out[25]_i_16_n_0 ;
  wire \c_chars_out[25]_i_17_n_0 ;
  wire \c_chars_out[25]_i_18_n_0 ;
  wire \c_chars_out[25]_i_19_n_0 ;
  wire \c_chars_out[25]_i_1_n_0 ;
  wire \c_chars_out[25]_i_20_n_0 ;
  wire \c_chars_out[25]_i_21_n_0 ;
  wire \c_chars_out[25]_i_22_n_0 ;
  wire \c_chars_out[25]_i_23_n_0 ;
  wire \c_chars_out[25]_i_24_n_0 ;
  wire \c_chars_out[25]_i_25_n_0 ;
  wire \c_chars_out[25]_i_26_n_0 ;
  wire \c_chars_out[25]_i_27_n_0 ;
  wire \c_chars_out[25]_i_28_n_0 ;
  wire \c_chars_out[25]_i_29_n_0 ;
  wire \c_chars_out[25]_i_2_n_0 ;
  wire \c_chars_out[25]_i_30_n_0 ;
  wire \c_chars_out[25]_i_31_n_0 ;
  wire \c_chars_out[25]_i_32_n_0 ;
  wire \c_chars_out[25]_i_33_n_0 ;
  wire \c_chars_out[25]_i_34_n_0 ;
  wire \c_chars_out[25]_i_35_n_0 ;
  wire \c_chars_out[25]_i_36_n_0 ;
  wire \c_chars_out[25]_i_37_n_0 ;
  wire \c_chars_out[25]_i_38_n_0 ;
  wire \c_chars_out[25]_i_39_n_0 ;
  wire \c_chars_out[25]_i_3__0_n_0 ;
  wire \c_chars_out[25]_i_3__1_n_0 ;
  wire \c_chars_out[25]_i_3__2_n_0 ;
  wire \c_chars_out[25]_i_3_n_0 ;
  wire \c_chars_out[25]_i_40_n_0 ;
  wire \c_chars_out[25]_i_41_n_0 ;
  wire \c_chars_out[25]_i_42_n_0 ;
  wire \c_chars_out[25]_i_43_n_0 ;
  wire \c_chars_out[25]_i_44_n_0 ;
  wire \c_chars_out[25]_i_45_n_0 ;
  wire \c_chars_out[25]_i_46_n_0 ;
  wire \c_chars_out[25]_i_47_n_0 ;
  wire \c_chars_out[25]_i_48_n_0 ;
  wire \c_chars_out[25]_i_49_n_0 ;
  wire \c_chars_out[25]_i_4__0_n_0 ;
  wire \c_chars_out[25]_i_4__1_n_0 ;
  wire \c_chars_out[25]_i_4__2_n_0 ;
  wire \c_chars_out[25]_i_4_n_0 ;
  wire \c_chars_out[25]_i_50_n_0 ;
  wire \c_chars_out[25]_i_51_n_0 ;
  wire \c_chars_out[25]_i_52_n_0 ;
  wire \c_chars_out[25]_i_53_n_0 ;
  wire \c_chars_out[25]_i_54_n_0 ;
  wire \c_chars_out[25]_i_55_n_0 ;
  wire \c_chars_out[25]_i_56_n_0 ;
  wire \c_chars_out[25]_i_57_n_0 ;
  wire \c_chars_out[25]_i_58_n_0 ;
  wire \c_chars_out[25]_i_59_n_0 ;
  wire \c_chars_out[25]_i_5__0_n_0 ;
  wire \c_chars_out[25]_i_5__1_n_0 ;
  wire \c_chars_out[25]_i_5__2_n_0 ;
  wire \c_chars_out[25]_i_5_n_0 ;
  wire \c_chars_out[25]_i_60_n_0 ;
  wire \c_chars_out[25]_i_61_n_0 ;
  wire \c_chars_out[25]_i_62_n_0 ;
  wire \c_chars_out[25]_i_63_n_0 ;
  wire \c_chars_out[25]_i_64_n_0 ;
  wire \c_chars_out[25]_i_65_n_0 ;
  wire \c_chars_out[25]_i_66_n_0 ;
  wire \c_chars_out[25]_i_67_n_0 ;
  wire \c_chars_out[25]_i_68_n_0 ;
  wire \c_chars_out[25]_i_69_n_0 ;
  wire \c_chars_out[25]_i_6__0_n_0 ;
  wire \c_chars_out[25]_i_6__1_n_0 ;
  wire \c_chars_out[25]_i_6__2_n_0 ;
  wire \c_chars_out[25]_i_6_n_0 ;
  wire \c_chars_out[25]_i_70_n_0 ;
  wire \c_chars_out[25]_i_71_n_0 ;
  wire \c_chars_out[25]_i_7__0_n_0 ;
  wire \c_chars_out[25]_i_7__1_n_0 ;
  wire \c_chars_out[25]_i_7__2_n_0 ;
  wire \c_chars_out[25]_i_7_n_0 ;
  wire \c_chars_out[25]_i_8__0_n_0 ;
  wire \c_chars_out[25]_i_8__1_n_0 ;
  wire \c_chars_out[25]_i_8__2_n_0 ;
  wire \c_chars_out[25]_i_8_n_0 ;
  wire \c_chars_out[25]_i_9__0_n_0 ;
  wire \c_chars_out[25]_i_9__1_n_0 ;
  wire \c_chars_out[25]_i_9__2_n_0 ;
  wire \c_chars_out[25]_i_9_n_0 ;
  wire \c_chars_out[2]_i_10_n_0 ;
  wire \c_chars_out[2]_i_11_n_0 ;
  wire \c_chars_out[2]_i_12_n_0 ;
  wire \c_chars_out[2]_i_1_n_0 ;
  wire \c_chars_out[2]_i_2__0_n_0 ;
  wire \c_chars_out[2]_i_2__1_n_0 ;
  wire \c_chars_out[2]_i_2__2_n_0 ;
  wire \c_chars_out[2]_i_2_n_0 ;
  wire \c_chars_out[2]_i_3_n_0 ;
  wire \c_chars_out[2]_i_4_n_0 ;
  wire \c_chars_out[2]_i_5_n_0 ;
  wire \c_chars_out[2]_i_6_n_0 ;
  wire \c_chars_out[2]_i_7_n_0 ;
  wire \c_chars_out[2]_i_8_n_0 ;
  wire \c_chars_out[2]_i_9_n_0 ;
  wire \c_chars_out[3]_i_10_n_0 ;
  wire \c_chars_out[3]_i_11_n_0 ;
  wire \c_chars_out[3]_i_12_n_0 ;
  wire \c_chars_out[3]_i_13_n_0 ;
  wire \c_chars_out[3]_i_1_n_0 ;
  wire \c_chars_out[3]_i_2__0_n_0 ;
  wire \c_chars_out[3]_i_2__1_n_0 ;
  wire \c_chars_out[3]_i_2__2_n_0 ;
  wire \c_chars_out[3]_i_2_n_0 ;
  wire \c_chars_out[3]_i_3_n_0 ;
  wire \c_chars_out[3]_i_4_n_0 ;
  wire \c_chars_out[3]_i_5_n_0 ;
  wire \c_chars_out[3]_i_6_n_0 ;
  wire \c_chars_out[3]_i_7_n_0 ;
  wire \c_chars_out[3]_i_8_n_0 ;
  wire \c_chars_out[3]_i_9_n_0 ;
  wire \c_chars_out[4]_i_10_n_0 ;
  wire \c_chars_out[4]_i_11_n_0 ;
  wire \c_chars_out[4]_i_12_n_0 ;
  wire \c_chars_out[4]_i_1_n_0 ;
  wire \c_chars_out[4]_i_2__0_n_0 ;
  wire \c_chars_out[4]_i_2__1_n_0 ;
  wire \c_chars_out[4]_i_2__2_n_0 ;
  wire \c_chars_out[4]_i_2_n_0 ;
  wire \c_chars_out[4]_i_3_n_0 ;
  wire \c_chars_out[4]_i_4_n_0 ;
  wire \c_chars_out[4]_i_5_n_0 ;
  wire \c_chars_out[4]_i_6_n_0 ;
  wire \c_chars_out[4]_i_7_n_0 ;
  wire \c_chars_out[4]_i_8_n_0 ;
  wire \c_chars_out[4]_i_9_n_0 ;
  wire \c_chars_out[5]_i_10_n_0 ;
  wire \c_chars_out[5]_i_11_n_0 ;
  wire \c_chars_out[5]_i_12_n_0 ;
  wire \c_chars_out[5]_i_13_n_0 ;
  wire \c_chars_out[5]_i_14_n_0 ;
  wire \c_chars_out[5]_i_15_n_0 ;
  wire \c_chars_out[5]_i_16_n_0 ;
  wire \c_chars_out[5]_i_17_n_0 ;
  wire \c_chars_out[5]_i_1_n_0 ;
  wire \c_chars_out[5]_i_2__0_n_0 ;
  wire \c_chars_out[5]_i_2__1_n_0 ;
  wire \c_chars_out[5]_i_2__2_n_0 ;
  wire \c_chars_out[5]_i_2_n_0 ;
  wire \c_chars_out[5]_i_3_n_0 ;
  wire \c_chars_out[5]_i_4_n_0 ;
  wire \c_chars_out[5]_i_5_n_0 ;
  wire \c_chars_out[5]_i_6_n_0 ;
  wire \c_chars_out[5]_i_7_n_0 ;
  wire \c_chars_out[5]_i_8_n_0 ;
  wire \c_chars_out[5]_i_9_n_0 ;
  wire \c_chars_out[6]_i_10_n_0 ;
  wire \c_chars_out[6]_i_11_n_0 ;
  wire \c_chars_out[6]_i_12_n_0 ;
  wire \c_chars_out[6]_i_13_n_0 ;
  wire \c_chars_out[6]_i_14_n_0 ;
  wire \c_chars_out[6]_i_15_n_0 ;
  wire \c_chars_out[6]_i_16_n_0 ;
  wire \c_chars_out[6]_i_17_n_0 ;
  wire \c_chars_out[6]_i_18_n_0 ;
  wire \c_chars_out[6]_i_19_n_0 ;
  wire \c_chars_out[6]_i_1_n_0 ;
  wire \c_chars_out[6]_i_20_n_0 ;
  wire \c_chars_out[6]_i_21_n_0 ;
  wire \c_chars_out[6]_i_22_n_0 ;
  wire \c_chars_out[6]_i_23_n_0 ;
  wire \c_chars_out[6]_i_24_n_0 ;
  wire \c_chars_out[6]_i_25_n_0 ;
  wire \c_chars_out[6]_i_26_n_0 ;
  wire \c_chars_out[6]_i_27_n_0 ;
  wire \c_chars_out[6]_i_2__0_n_0 ;
  wire \c_chars_out[6]_i_2__1_n_0 ;
  wire \c_chars_out[6]_i_2__2_n_0 ;
  wire \c_chars_out[6]_i_2_n_0 ;
  wire \c_chars_out[6]_i_3_n_0 ;
  wire \c_chars_out[6]_i_4_n_0 ;
  wire \c_chars_out[6]_i_5_n_0 ;
  wire \c_chars_out[6]_i_6_n_0 ;
  wire \c_chars_out[6]_i_7_n_0 ;
  wire \c_chars_out[6]_i_8_n_0 ;
  wire \c_chars_out[6]_i_9_n_0 ;
  wire \c_chars_out[7]_i_10_n_0 ;
  wire \c_chars_out[7]_i_11_n_0 ;
  wire \c_chars_out[7]_i_12_n_0 ;
  wire \c_chars_out[7]_i_13_n_0 ;
  wire \c_chars_out[7]_i_14_n_0 ;
  wire \c_chars_out[7]_i_15_n_0 ;
  wire \c_chars_out[7]_i_16_n_0 ;
  wire \c_chars_out[7]_i_17_n_0 ;
  wire \c_chars_out[7]_i_18_n_0 ;
  wire \c_chars_out[7]_i_19_n_0 ;
  wire \c_chars_out[7]_i_1_n_0 ;
  wire \c_chars_out[7]_i_20_n_0 ;
  wire \c_chars_out[7]_i_21_n_0 ;
  wire \c_chars_out[7]_i_22_n_0 ;
  wire \c_chars_out[7]_i_23_n_0 ;
  wire \c_chars_out[7]_i_24_n_0 ;
  wire \c_chars_out[7]_i_25_n_0 ;
  wire \c_chars_out[7]_i_26_n_0 ;
  wire \c_chars_out[7]_i_27_n_0 ;
  wire \c_chars_out[7]_i_28_n_0 ;
  wire \c_chars_out[7]_i_29_n_0 ;
  wire \c_chars_out[7]_i_2__0_n_0 ;
  wire \c_chars_out[7]_i_2__1_n_0 ;
  wire \c_chars_out[7]_i_2__2_n_0 ;
  wire \c_chars_out[7]_i_2_n_0 ;
  wire \c_chars_out[7]_i_30_n_0 ;
  wire \c_chars_out[7]_i_31_n_0 ;
  wire \c_chars_out[7]_i_3__0_n_0 ;
  wire \c_chars_out[7]_i_3__1_n_0 ;
  wire \c_chars_out[7]_i_3__2_n_0 ;
  wire \c_chars_out[7]_i_3_n_0 ;
  wire \c_chars_out[7]_i_4_n_0 ;
  wire \c_chars_out[7]_i_5_n_0 ;
  wire \c_chars_out[7]_i_6_n_0 ;
  wire \c_chars_out[7]_i_7_n_0 ;
  wire \c_chars_out[7]_i_8_n_0 ;
  wire \c_chars_out[7]_i_9_n_0 ;
  wire \c_chars_out[8]_i_10_n_0 ;
  wire \c_chars_out[8]_i_11_n_0 ;
  wire \c_chars_out[8]_i_12_n_0 ;
  wire \c_chars_out[8]_i_13_n_0 ;
  wire \c_chars_out[8]_i_1_n_0 ;
  wire \c_chars_out[8]_i_2__0_n_0 ;
  wire \c_chars_out[8]_i_2__1_n_0 ;
  wire \c_chars_out[8]_i_2__2_n_0 ;
  wire \c_chars_out[8]_i_2_n_0 ;
  wire \c_chars_out[8]_i_3__0_n_0 ;
  wire \c_chars_out[8]_i_3__1_n_0 ;
  wire \c_chars_out[8]_i_3__2_n_0 ;
  wire \c_chars_out[8]_i_3_n_0 ;
  wire \c_chars_out[8]_i_4_n_0 ;
  wire \c_chars_out[8]_i_5_n_0 ;
  wire \c_chars_out[8]_i_6_n_0 ;
  wire \c_chars_out[8]_i_7_n_0 ;
  wire \c_chars_out[8]_i_8_n_0 ;
  wire \c_chars_out[8]_i_9_n_0 ;
  wire \c_chars_out[9]_i_10_n_0 ;
  wire \c_chars_out[9]_i_11_n_0 ;
  wire \c_chars_out[9]_i_12_n_0 ;
  wire \c_chars_out[9]_i_13_n_0 ;
  wire \c_chars_out[9]_i_14_n_0 ;
  wire \c_chars_out[9]_i_15_n_0 ;
  wire \c_chars_out[9]_i_16_n_0 ;
  wire \c_chars_out[9]_i_17_n_0 ;
  wire \c_chars_out[9]_i_1_n_0 ;
  wire \c_chars_out[9]_i_2__0_n_0 ;
  wire \c_chars_out[9]_i_2__1_n_0 ;
  wire \c_chars_out[9]_i_2__2_n_0 ;
  wire \c_chars_out[9]_i_2_n_0 ;
  wire \c_chars_out[9]_i_3__0_n_0 ;
  wire \c_chars_out[9]_i_3__1_n_0 ;
  wire \c_chars_out[9]_i_3__2_n_0 ;
  wire \c_chars_out[9]_i_3_n_0 ;
  wire \c_chars_out[9]_i_4_n_0 ;
  wire \c_chars_out[9]_i_5_n_0 ;
  wire \c_chars_out[9]_i_6_n_0 ;
  wire \c_chars_out[9]_i_7_n_0 ;
  wire \c_chars_out[9]_i_8_n_0 ;
  wire \c_chars_out[9]_i_9_n_0 ;
  wire c_direction;
  wire c_direction_reg_0;
  wire c_direction_reg_1;
  wire c_direction_reg_2;
  wire c_direction_reg_3;
  wire [25:0]\c_drum_count_reg[0] ;
  wire [25:0]\c_drum_count_reg[0]_0 ;
  wire [25:0]\c_drum_count_reg[0]_1 ;
  wire [1:0]c_drum_inprocess;
  wire [2:0]c_drum_typ;
  wire \c_ready[0]_i_1_n_0 ;
  wire \c_ready[1]_i_1_n_0 ;
  wire \c_ready[2]_i_1_n_0 ;
  wire \c_ready[3]_i_1_n_0 ;
  wire \c_ready_reg[0]_0 ;
  wire \c_ready_reg[1]_0 ;
  wire \c_ready_reg[2]_0 ;
  wire [1:0]c_status;
  wire [1:0]c_status_0;
  wire [1:0]c_status_1;
  wire [1:0]c_status_2;
  wire \c_table[0][0]_i_1_n_0 ;
  wire \c_table[0][1]_i_1_n_0 ;
  wire \c_table[0][2]_i_1_n_0 ;
  wire \c_table[0][3]_i_1_n_0 ;
  wire \c_table[0][4]_i_1_n_0 ;
  wire \c_table[11][3]_i_1_n_0 ;
  wire \c_table[13][0]_i_1_n_0 ;
  wire \c_table[13][1]_i_1_n_0 ;
  wire \c_table[13][2]_i_1_n_0 ;
  wire \c_table[13][3]_i_1_n_0 ;
  wire \c_table[13][4]_i_1_n_0 ;
  wire \c_table[14][3]_i_1_n_0 ;
  wire \c_table[16][2]_i_1_n_0 ;
  wire \c_table[21][0]_i_1_n_0 ;
  wire \c_table[21][1]_i_1_n_0 ;
  wire \c_table[21][2]_i_1_n_0 ;
  wire \c_table[21][3]_i_1_n_0 ;
  wire \c_table[21][4]_i_1_n_0 ;
  wire \c_table[22][1]_i_1_n_0 ;
  wire \c_table[23][2]_i_1_n_0 ;
  wire \c_table[6][2]_i_1_n_0 ;
  wire \c_table[9][0]_i_1_n_0 ;
  wire \c_table[9][1]_i_1_n_0 ;
  wire \c_table[9][2]_i_1_n_0 ;
  wire \c_table[9][3]_i_1_n_0 ;
  wire \c_table[9][4]_i_1_n_0 ;
  wire [4:0]\c_table_reg[0]__0 ;
  wire [4:0]\c_table_reg[10]__0 ;
  wire [4:0]\c_table_reg[11]__0 ;
  wire [4:0]\c_table_reg[12]__0 ;
  wire [4:0]\c_table_reg[13]__0 ;
  wire [4:0]\c_table_reg[14]__0 ;
  wire [4:0]\c_table_reg[15]__0 ;
  wire [4:0]\c_table_reg[16]__0 ;
  wire [4:0]\c_table_reg[17]__0 ;
  wire [4:0]\c_table_reg[18]__0 ;
  wire [4:0]\c_table_reg[19]__0 ;
  wire [4:0]\c_table_reg[1]__0 ;
  wire [4:0]\c_table_reg[20]__0 ;
  wire [4:0]\c_table_reg[21]__0 ;
  wire [4:0]\c_table_reg[22]__0 ;
  wire [4:0]\c_table_reg[23]__0 ;
  wire [4:0]\c_table_reg[24]__0 ;
  wire [4:0]\c_table_reg[25]__0 ;
  wire [4:0]\c_table_reg[2]__0 ;
  wire [4:0]\c_table_reg[3]__0 ;
  wire [4:0]\c_table_reg[4]__0 ;
  wire [4:0]\c_table_reg[5]__0 ;
  wire [4:0]\c_table_reg[6]__0 ;
  wire [4:0]\c_table_reg[7]__0 ;
  wire [4:0]\c_table_reg[8]__0 ;
  wire [4:0]\c_table_reg[9]__0 ;
  wire [25:0]lut_projection;
  wire lut_ready_to_drum_ukw;
  wire lut_request_drum_ukw;
  wire n_chars_in;
  wire [1:0]n_drum_inprocess;
  wire \n_table[0]_0 ;
  wire [4:0]\n_table[10]_9 ;
  wire [4:0]\n_table[11]_10 ;
  wire [4:0]\n_table[12]_11 ;
  wire [4:0]\n_table[14]_12 ;
  wire [4:0]\n_table[15]_13 ;
  wire [4:0]\n_table[16]_14 ;
  wire [4:0]\n_table[17]_15 ;
  wire [4:0]\n_table[18]_16 ;
  wire [4:0]\n_table[19]_17 ;
  wire [4:0]\n_table[1]_2 ;
  wire [4:0]\n_table[20]_18 ;
  wire [4:0]\n_table[22]_19 ;
  wire [4:0]\n_table[23]_20 ;
  wire [4:0]\n_table[24]_21 ;
  wire [4:0]\n_table[25]_22 ;
  wire [4:0]\n_table[2]_1 ;
  wire [4:0]\n_table[3]_3 ;
  wire [4:0]\n_table[4]_4 ;
  wire [4:0]\n_table[5]_5 ;
  wire [4:0]\n_table[6]_6 ;
  wire [4:0]\n_table[7]_7 ;
  wire [4:0]\n_table[8]_8 ;
  wire p_0_in11_in;
  wire p_0_in13_in;
  wire p_0_in15_in;
  wire p_0_in17_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in21_in;
  wire p_0_in23_in;
  wire p_0_in25_in;
  wire p_0_in27_in;
  wire p_0_in29_in;
  wire p_0_in31_in;
  wire p_0_in33_in;
  wire p_0_in35_in;
  wire p_0_in37_in;
  wire p_0_in39_in;
  wire p_0_in3_in;
  wire p_0_in41_in;
  wire p_0_in43_in;
  wire p_0_in45_in;
  wire p_0_in47_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in9_in;
  wire ready_out_drum_1_fwd;
  wire ready_out_drum_2_bwd;
  wire ready_out_drum_2_fwd;
  wire ready_out_drum_3_bwd;
  wire ready_out_drum_3_fwd;
  wire start_to_drum_1;
  wire [0:0]status;

  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_c_status[0]_i_1 
       (.I0(c_busy_reg_0),
        .I1(c_status[0]),
        .I2(\c_ready_reg[0]_0 ),
        .I3(c_status[1]),
        .I4(start_to_drum_1),
        .I5(ready_out_drum_2_bwd),
        .O(c_busy_reg_1));
  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_c_status[0]_i_1__0 
       (.I0(c_busy_reg_0),
        .I1(c_status_0[0]),
        .I2(\c_ready_reg[1]_0 ),
        .I3(c_status_0[1]),
        .I4(ready_out_drum_3_bwd),
        .I5(ready_out_drum_1_fwd),
        .O(c_busy_reg_2));
  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_c_status[0]_i_1__1 
       (.I0(c_busy_reg_0),
        .I1(c_status_1[0]),
        .I2(\c_ready_reg[2]_0 ),
        .I3(c_status_1[1]),
        .I4(READY_OUT_BWD),
        .I5(ready_out_drum_2_fwd),
        .O(c_busy_reg_3));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \FSM_sequential_c_status[0]_i_1__2 
       (.I0(c_busy_reg_0),
        .I1(c_status_2[0]),
        .I2(lut_ready_to_drum_ukw),
        .I3(c_status_2[1]),
        .I4(ready_out_drum_3_fwd),
        .O(c_busy_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hF000FEFE)) 
    \FSM_sequential_status[0]_i_1 
       (.I0(\FSM_sequential_status_reg[0]_1 ),
        .I1(lut_request_drum_ukw),
        .I2(\FSM_sequential_status_reg_n_0_[1] ),
        .I3(\FSM_sequential_status[1]_i_2_n_0 ),
        .I4(status),
        .O(\FSM_sequential_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_status[1]_i_1 
       (.I0(\FSM_sequential_status[1]_i_2_n_0 ),
        .I1(\FSM_sequential_status_reg_n_0_[1] ),
        .I2(status),
        .O(\FSM_sequential_status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_status[1]_i_2 
       (.I0(lut_request_drum_ukw),
        .I1(c_direction_reg_1),
        .I2(c_drum_inprocess[0]),
        .I3(c_direction_reg_2),
        .I4(c_drum_inprocess[1]),
        .I5(c_direction_reg_3),
        .O(\FSM_sequential_status[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "working:10,chosedrum:01,waiting:11,idle:00" *) 
  FDRE \FSM_sequential_status_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_status[0]_i_1_n_0 ),
        .Q(status),
        .R(SR));
  (* FSM_ENCODED_STATES = "working:10,chosedrum:01,waiting:11,idle:00" *) 
  FDRE \FSM_sequential_status_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\FSM_sequential_status[1]_i_1_n_0 ),
        .Q(\FSM_sequential_status_reg_n_0_[1] ),
        .R(SR));
  FDRE c_busy_reg
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(c_busy_reg_5),
        .Q(c_busy_reg_0),
        .R(SR));
  FDRE \c_chars_in_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [0]),
        .Q(c_chars_in[0]),
        .R(SR));
  FDRE \c_chars_in_reg[10] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [10]),
        .Q(p_0_in17_in),
        .R(SR));
  FDRE \c_chars_in_reg[11] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [11]),
        .Q(p_0_in19_in),
        .R(SR));
  FDRE \c_chars_in_reg[12] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [12]),
        .Q(p_0_in21_in),
        .R(SR));
  FDRE \c_chars_in_reg[13] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [13]),
        .Q(p_0_in23_in),
        .R(SR));
  FDRE \c_chars_in_reg[14] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [14]),
        .Q(p_0_in25_in),
        .R(SR));
  FDRE \c_chars_in_reg[15] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [15]),
        .Q(p_0_in27_in),
        .R(SR));
  FDRE \c_chars_in_reg[16] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [16]),
        .Q(p_0_in29_in),
        .R(SR));
  FDRE \c_chars_in_reg[17] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [17]),
        .Q(p_0_in31_in),
        .R(SR));
  FDRE \c_chars_in_reg[18] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [18]),
        .Q(p_0_in33_in),
        .R(SR));
  FDRE \c_chars_in_reg[19] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [19]),
        .Q(p_0_in35_in),
        .R(SR));
  FDRE \c_chars_in_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [1]),
        .Q(c_chars_in[1]),
        .R(SR));
  FDRE \c_chars_in_reg[20] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [20]),
        .Q(p_0_in37_in),
        .R(SR));
  FDRE \c_chars_in_reg[21] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [21]),
        .Q(p_0_in39_in),
        .R(SR));
  FDRE \c_chars_in_reg[22] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [22]),
        .Q(p_0_in41_in),
        .R(SR));
  FDRE \c_chars_in_reg[23] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [23]),
        .Q(p_0_in43_in),
        .R(SR));
  FDRE \c_chars_in_reg[24] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [24]),
        .Q(p_0_in45_in),
        .R(SR));
  FDRE \c_chars_in_reg[25] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [25]),
        .Q(p_0_in47_in),
        .R(SR));
  FDRE \c_chars_in_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [2]),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE \c_chars_in_reg[3] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [3]),
        .Q(p_0_in3_in),
        .R(SR));
  FDRE \c_chars_in_reg[4] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [4]),
        .Q(p_0_in5_in),
        .R(SR));
  FDRE \c_chars_in_reg[5] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [5]),
        .Q(p_0_in7_in),
        .R(SR));
  FDRE \c_chars_in_reg[6] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [6]),
        .Q(p_0_in9_in),
        .R(SR));
  FDRE \c_chars_in_reg[7] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [7]),
        .Q(p_0_in11_in),
        .R(SR));
  FDRE \c_chars_in_reg[8] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [8]),
        .Q(p_0_in13_in),
        .R(SR));
  FDRE \c_chars_in_reg[9] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(\c_chars_in_reg[25]_0 [9]),
        .Q(p_0_in15_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[0]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[0]_i_2_n_0 ),
        .I2(\c_chars_out[0]_i_3_n_0 ),
        .I3(\c_chars_out[0]_i_4_n_0 ),
        .I4(\c_chars_out[0]_i_5_n_0 ),
        .I5(lut_projection[0]),
        .O(\c_chars_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[0]_i_10 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[17]_i_32_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[17]_i_31_n_0 ),
        .O(\c_chars_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[0]_i_11 
       (.I0(\c_chars_out[12]_i_21_n_0 ),
        .I1(\c_chars_out[17]_i_8_n_0 ),
        .I2(\c_chars_out[12]_i_22_n_0 ),
        .I3(\c_chars_out[17]_i_7_n_0 ),
        .I4(\c_chars_out[6]_i_24_n_0 ),
        .I5(\c_chars_out[17]_i_21_n_0 ),
        .O(\c_chars_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[0]_i_12 
       (.I0(\c_chars_out[17]_i_22_n_0 ),
        .I1(\c_chars_out[6]_i_25_n_0 ),
        .I2(\c_chars_out[17]_i_23_n_0 ),
        .I3(\c_chars_out[6]_i_26_n_0 ),
        .I4(\c_chars_out[6]_i_27_n_0 ),
        .I5(\c_chars_out[17]_i_27_n_0 ),
        .O(\c_chars_out[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[0]_i_1__0 
       (.I0(\c_chars_out[1]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[25]_i_3__0_n_0 ),
        .O(\c_drum_count_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[0]_i_1__1 
       (.I0(\c_chars_out[1]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[25]_i_3__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[0]_i_1__2 
       (.I0(\c_chars_out[1]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[25]_i_3__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[0]_i_2 
       (.I0(\c_chars_out[8]_i_6_n_0 ),
        .I1(\c_chars_out[3]_i_6_n_0 ),
        .I2(\c_chars_out[10]_i_5_n_0 ),
        .I3(\c_chars_out[5]_i_6_n_0 ),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[10]_i_6_n_0 ),
        .O(\c_chars_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[0]_i_3 
       (.I0(\c_chars_out[0]_i_6_n_0 ),
        .I1(\c_chars_out[1]_i_7_n_0 ),
        .I2(\c_chars_out[6]_i_8_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[10]_i_7_n_0 ),
        .I5(\c_chars_out[5]_i_10_n_0 ),
        .O(\c_chars_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[0]_i_4 
       (.I0(\c_chars_out[1]_i_8_n_0 ),
        .I1(\c_chars_out[6]_i_9_n_0 ),
        .I2(\c_chars_out[0]_i_7_n_0 ),
        .I3(\c_chars_out[17]_i_9_n_0 ),
        .I4(\c_chars_out[6]_i_11_n_0 ),
        .I5(\c_chars_out[0]_i_8_n_0 ),
        .O(\c_chars_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[0]_i_5 
       (.I0(\c_chars_out[0]_i_9_n_0 ),
        .I1(\c_chars_out[0]_i_10_n_0 ),
        .I2(\c_chars_out[6]_i_15_n_0 ),
        .I3(\c_chars_out[17]_i_12_n_0 ),
        .I4(\c_chars_out[0]_i_11_n_0 ),
        .I5(\c_chars_out[0]_i_12_n_0 ),
        .O(\c_chars_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[0]_i_6 
       (.I0(\c_chars_out[17]_i_24_n_0 ),
        .I1(\c_chars_out[6]_i_18_n_0 ),
        .I2(\c_chars_out[17]_i_25_n_0 ),
        .I3(\c_chars_out[6]_i_19_n_0 ),
        .I4(\c_chars_out[6]_i_20_n_0 ),
        .I5(\c_chars_out[17]_i_26_n_0 ),
        .O(\c_chars_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[0]_i_7 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[17]_i_11_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[17]_i_10_n_0 ),
        .O(\c_chars_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[0]_i_8 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[17]_i_14_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[17]_i_13_n_0 ),
        .O(\c_chars_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[0]_i_9 
       (.I0(\c_chars_out[17]_i_28_n_0 ),
        .I1(\c_chars_out[6]_i_21_n_0 ),
        .I2(\c_chars_out[17]_i_29_n_0 ),
        .I3(\c_chars_out[6]_i_22_n_0 ),
        .I4(\c_chars_out[6]_i_23_n_0 ),
        .I5(\c_chars_out[17]_i_30_n_0 ),
        .O(\c_chars_out[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \c_chars_out[10]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[10]_i_2_n_0 ),
        .I2(\c_chars_out[10]_i_3_n_0 ),
        .I3(\c_chars_out[10]_i_4_n_0 ),
        .I4(lut_projection[10]),
        .O(\c_chars_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_10 
       (.I0(\c_chars_out[14]_i_23_n_0 ),
        .I1(\c_table_reg[21]__0 [1]),
        .I2(\c_table_reg[21]__0 [2]),
        .I3(\c_chars_out[14]_i_24_n_0 ),
        .I4(\c_table_reg[23]__0 [1]),
        .I5(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_11 
       (.I0(\c_chars_out[14]_i_25_n_0 ),
        .I1(\c_table_reg[16]__0 [1]),
        .I2(\c_table_reg[16]__0 [2]),
        .I3(\c_chars_out[12]_i_18_n_0 ),
        .I4(\c_table_reg[17]__0 [1]),
        .I5(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_12 
       (.I0(\c_chars_out[12]_i_16_n_0 ),
        .I1(\c_table_reg[14]__0 [1]),
        .I2(\c_table_reg[14]__0 [2]),
        .I3(\c_chars_out[14]_i_26_n_0 ),
        .I4(\c_table_reg[15]__0 [1]),
        .I5(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_13 
       (.I0(\c_chars_out[14]_i_27_n_0 ),
        .I1(\c_table_reg[10]__0 [1]),
        .I2(\c_table_reg[10]__0 [2]),
        .I3(\c_chars_out[12]_i_14_n_0 ),
        .I4(\c_table_reg[11]__0 [1]),
        .I5(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_14 
       (.I0(\c_chars_out[14]_i_28_n_0 ),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_table_reg[12]__0 [2]),
        .I3(\c_chars_out[14]_i_29_n_0 ),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_15 
       (.I0(\c_chars_out[14]_i_30_n_0 ),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_table_reg[6]__0 [2]),
        .I3(\c_chars_out[14]_i_31_n_0 ),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_16 
       (.I0(\c_chars_out[12]_i_12_n_0 ),
        .I1(\c_table_reg[8]__0 [1]),
        .I2(\c_table_reg[8]__0 [2]),
        .I3(\c_chars_out[14]_i_32_n_0 ),
        .I4(\c_table_reg[9]__0 [1]),
        .I5(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_17 
       (.I0(\c_chars_out[12]_i_7_n_0 ),
        .I1(\c_table_reg[1]__0 [1]),
        .I2(\c_table_reg[1]__0 [2]),
        .I3(\c_chars_out[12]_i_10_n_0 ),
        .I4(\c_table_reg[5]__0 [1]),
        .I5(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[10]_i_18 
       (.I0(\c_chars_out[14]_i_33_n_0 ),
        .I1(\c_chars_out[25]_i_33_n_0 ),
        .I2(\c_chars_out[14]_i_34_n_0 ),
        .I3(\c_chars_out[25]_i_30_n_0 ),
        .I4(\c_chars_out[9]_i_7_n_0 ),
        .I5(\c_chars_out[6]_i_6_n_0 ),
        .O(\c_chars_out[10]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[10]_i_1__0 
       (.I0(\c_chars_out[11]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[10]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[10]_i_1__1 
       (.I0(\c_chars_out[11]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[10]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[10]_i_1__2 
       (.I0(\c_chars_out[11]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[10]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[10]_i_2 
       (.I0(\c_chars_out[10]_i_5_n_0 ),
        .I1(\c_chars_out[15]_i_6_n_0 ),
        .I2(\c_chars_out[10]_i_6_n_0 ),
        .I3(\c_chars_out[15]_i_8_n_0 ),
        .I4(\c_chars_out[15]_i_9_n_0 ),
        .I5(\c_chars_out[10]_i_7_n_0 ),
        .O(\c_chars_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_2__0 
       (.I0(\c_chars_out[16]_i_3__0_n_0 ),
        .I1(\c_chars_out[14]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[12]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[10]_i_3__0_n_0 ),
        .O(\c_chars_out[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_2__1 
       (.I0(\c_chars_out[16]_i_3__1_n_0 ),
        .I1(\c_chars_out[14]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[12]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[10]_i_3__1_n_0 ),
        .O(\c_chars_out[10]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_2__2 
       (.I0(\c_chars_out[16]_i_3__2_n_0 ),
        .I1(\c_chars_out[14]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[12]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[10]_i_3__2_n_0 ),
        .O(\c_chars_out[10]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[10]_i_3 
       (.I0(\c_chars_out[10]_i_8_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[10]_i_9_n_0 ),
        .I3(\c_chars_out[10]_i_10_n_0 ),
        .I4(\c_chars_out[10]_i_11_n_0 ),
        .I5(\c_chars_out[10]_i_12_n_0 ),
        .O(\c_chars_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_3__0 
       (.I0(lut_projection[8]),
        .I1(lut_projection[18]),
        .I2(Q[3]),
        .I3(lut_projection[0]),
        .I4(Q[4]),
        .I5(lut_projection[10]),
        .O(\c_chars_out[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_3__1 
       (.I0(lut_projection[8]),
        .I1(lut_projection[18]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[0]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[10]),
        .O(\c_chars_out[10]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[10]_i_3__2 
       (.I0(lut_projection[8]),
        .I1(lut_projection[18]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[0]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[10]),
        .O(\c_chars_out[10]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[10]_i_4 
       (.I0(\c_chars_out[10]_i_13_n_0 ),
        .I1(\c_chars_out[10]_i_14_n_0 ),
        .I2(\c_chars_out[10]_i_15_n_0 ),
        .I3(\c_chars_out[10]_i_16_n_0 ),
        .I4(\c_chars_out[10]_i_17_n_0 ),
        .I5(\c_chars_out[10]_i_18_n_0 ),
        .O(\c_chars_out[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[10]_i_5 
       (.I0(\c_table_reg[3]__0 [4]),
        .I1(\c_table_reg[3]__0 [0]),
        .I2(\c_table_reg[3]__0 [2]),
        .O(\c_chars_out[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[10]_i_6 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [0]),
        .I2(\c_table_reg[2]__0 [2]),
        .O(\c_chars_out[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[10]_i_7 
       (.I0(\c_table_reg[0]__0 [4]),
        .I1(\c_table_reg[0]__0 [0]),
        .I2(\c_table_reg[0]__0 [2]),
        .O(\c_chars_out[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_8 
       (.I0(\c_chars_out[14]_i_19_n_0 ),
        .I1(\c_table_reg[24]__0 [1]),
        .I2(\c_table_reg[24]__0 [2]),
        .I3(\c_chars_out[14]_i_20_n_0 ),
        .I4(\c_table_reg[25]__0 [1]),
        .I5(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[10]_i_9 
       (.I0(\c_chars_out[14]_i_21_n_0 ),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_table_reg[18]__0 [2]),
        .I3(\c_chars_out[14]_i_22_n_0 ),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \c_chars_out[11]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[11]_i_2_n_0 ),
        .I2(\c_chars_out[11]_i_3_n_0 ),
        .I3(\c_chars_out[11]_i_4_n_0 ),
        .I4(lut_projection[11]),
        .O(\c_chars_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_10 
       (.I0(\c_chars_out[15]_i_26_n_0 ),
        .I1(\c_table_reg[21]__0 [1]),
        .I2(\c_table_reg[21]__0 [2]),
        .I3(\c_chars_out[15]_i_27_n_0 ),
        .I4(\c_table_reg[23]__0 [1]),
        .I5(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_11 
       (.I0(\c_chars_out[15]_i_28_n_0 ),
        .I1(\c_table_reg[16]__0 [1]),
        .I2(\c_table_reg[16]__0 [2]),
        .I3(\c_chars_out[13]_i_22_n_0 ),
        .I4(\c_table_reg[17]__0 [1]),
        .I5(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_12 
       (.I0(\c_chars_out[13]_i_19_n_0 ),
        .I1(\c_table_reg[14]__0 [1]),
        .I2(\c_table_reg[14]__0 [2]),
        .I3(\c_chars_out[15]_i_29_n_0 ),
        .I4(\c_table_reg[15]__0 [1]),
        .I5(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_13 
       (.I0(\c_chars_out[15]_i_30_n_0 ),
        .I1(\c_table_reg[10]__0 [1]),
        .I2(\c_table_reg[10]__0 [2]),
        .I3(\c_chars_out[13]_i_16_n_0 ),
        .I4(\c_table_reg[11]__0 [1]),
        .I5(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_14 
       (.I0(\c_chars_out[15]_i_31_n_0 ),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_table_reg[12]__0 [2]),
        .I3(\c_chars_out[15]_i_32_n_0 ),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_15 
       (.I0(\c_chars_out[15]_i_33_n_0 ),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_table_reg[6]__0 [2]),
        .I3(\c_chars_out[15]_i_34_n_0 ),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_16 
       (.I0(\c_chars_out[13]_i_13_n_0 ),
        .I1(\c_table_reg[8]__0 [1]),
        .I2(\c_table_reg[8]__0 [2]),
        .I3(\c_chars_out[15]_i_35_n_0 ),
        .I4(\c_table_reg[9]__0 [1]),
        .I5(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_17 
       (.I0(\c_chars_out[13]_i_7_n_0 ),
        .I1(\c_table_reg[1]__0 [1]),
        .I2(\c_table_reg[1]__0 [2]),
        .I3(\c_chars_out[13]_i_10_n_0 ),
        .I4(\c_table_reg[5]__0 [1]),
        .I5(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[11]_i_18 
       (.I0(\c_chars_out[15]_i_36_n_0 ),
        .I1(\c_chars_out[25]_i_33_n_0 ),
        .I2(\c_chars_out[15]_i_38_n_0 ),
        .I3(\c_chars_out[25]_i_30_n_0 ),
        .I4(\c_chars_out[9]_i_7_n_0 ),
        .I5(\c_chars_out[7]_i_6_n_0 ),
        .O(\c_chars_out[11]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[11]_i_1__0 
       (.I0(\c_chars_out[12]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[11]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[11]_i_1__1 
       (.I0(\c_chars_out[12]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[11]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[11]_i_1__2 
       (.I0(\c_chars_out[12]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[11]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[11]_i_2 
       (.I0(\c_chars_out[11]_i_5_n_0 ),
        .I1(\c_chars_out[15]_i_6_n_0 ),
        .I2(\c_chars_out[11]_i_6_n_0 ),
        .I3(\c_chars_out[15]_i_8_n_0 ),
        .I4(\c_chars_out[15]_i_9_n_0 ),
        .I5(\c_chars_out[11]_i_7_n_0 ),
        .O(\c_chars_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_2__0 
       (.I0(\c_chars_out[17]_i_3__0_n_0 ),
        .I1(\c_chars_out[15]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[13]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[11]_i_3__0_n_0 ),
        .O(\c_chars_out[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_2__1 
       (.I0(\c_chars_out[17]_i_3__1_n_0 ),
        .I1(\c_chars_out[15]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[13]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[11]_i_3__1_n_0 ),
        .O(\c_chars_out[11]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_2__2 
       (.I0(\c_chars_out[17]_i_3__2_n_0 ),
        .I1(\c_chars_out[15]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[13]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[11]_i_3__2_n_0 ),
        .O(\c_chars_out[11]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[11]_i_3 
       (.I0(\c_chars_out[11]_i_8_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[11]_i_9_n_0 ),
        .I3(\c_chars_out[11]_i_10_n_0 ),
        .I4(\c_chars_out[11]_i_11_n_0 ),
        .I5(\c_chars_out[11]_i_12_n_0 ),
        .O(\c_chars_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_3__0 
       (.I0(lut_projection[9]),
        .I1(lut_projection[19]),
        .I2(Q[3]),
        .I3(lut_projection[1]),
        .I4(Q[4]),
        .I5(lut_projection[11]),
        .O(\c_chars_out[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_3__1 
       (.I0(lut_projection[9]),
        .I1(lut_projection[19]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[1]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[11]),
        .O(\c_chars_out[11]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[11]_i_3__2 
       (.I0(lut_projection[9]),
        .I1(lut_projection[19]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[1]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[11]),
        .O(\c_chars_out[11]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[11]_i_4 
       (.I0(\c_chars_out[11]_i_13_n_0 ),
        .I1(\c_chars_out[11]_i_14_n_0 ),
        .I2(\c_chars_out[11]_i_15_n_0 ),
        .I3(\c_chars_out[11]_i_16_n_0 ),
        .I4(\c_chars_out[11]_i_17_n_0 ),
        .I5(\c_chars_out[11]_i_18_n_0 ),
        .O(\c_chars_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[11]_i_5 
       (.I0(\c_table_reg[3]__0 [4]),
        .I1(\c_table_reg[3]__0 [0]),
        .I2(\c_table_reg[3]__0 [2]),
        .O(\c_chars_out[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[11]_i_6 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [0]),
        .I2(\c_table_reg[2]__0 [2]),
        .O(\c_chars_out[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[11]_i_7 
       (.I0(\c_table_reg[0]__0 [4]),
        .I1(\c_table_reg[0]__0 [0]),
        .I2(\c_table_reg[0]__0 [2]),
        .O(\c_chars_out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_8 
       (.I0(\c_chars_out[15]_i_22_n_0 ),
        .I1(\c_table_reg[24]__0 [1]),
        .I2(\c_table_reg[24]__0 [2]),
        .I3(\c_chars_out[15]_i_23_n_0 ),
        .I4(\c_table_reg[25]__0 [1]),
        .I5(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \c_chars_out[11]_i_9 
       (.I0(\c_chars_out[15]_i_24_n_0 ),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_table_reg[18]__0 [2]),
        .I3(\c_chars_out[15]_i_25_n_0 ),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[12]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[12]_i_2_n_0 ),
        .I2(\c_chars_out[12]_i_3_n_0 ),
        .I3(\c_chars_out[12]_i_4_n_0 ),
        .I4(\c_chars_out[12]_i_5_n_0 ),
        .I5(lut_projection[12]),
        .O(\c_chars_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_10 
       (.I0(\c_table_reg[5]__0 [4]),
        .I1(\c_table_reg[5]__0 [0]),
        .I2(\c_table_reg[5]__0 [3]),
        .I3(p_0_in7_in),
        .I4(status),
        .O(\c_chars_out[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[12]_i_11 
       (.I0(\c_table_reg[6]__0 [2]),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_chars_out[14]_i_30_n_0 ),
        .I3(\c_table_reg[7]__0 [2]),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_chars_out[14]_i_31_n_0 ),
        .O(\c_chars_out[12]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_12 
       (.I0(\c_table_reg[8]__0 [4]),
        .I1(\c_table_reg[8]__0 [0]),
        .I2(\c_table_reg[8]__0 [3]),
        .I3(p_0_in13_in),
        .I4(status),
        .O(\c_chars_out[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[12]_i_13 
       (.I0(\c_table_reg[9]__0 [2]),
        .I1(\c_table_reg[9]__0 [1]),
        .I2(\c_chars_out[14]_i_32_n_0 ),
        .I3(\c_table_reg[10]__0 [2]),
        .I4(\c_table_reg[10]__0 [1]),
        .I5(\c_chars_out[14]_i_27_n_0 ),
        .O(\c_chars_out[12]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_14 
       (.I0(\c_table_reg[11]__0 [4]),
        .I1(\c_table_reg[11]__0 [0]),
        .I2(\c_table_reg[11]__0 [3]),
        .I3(p_0_in19_in),
        .I4(status),
        .O(\c_chars_out[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[12]_i_15 
       (.I0(\c_table_reg[12]__0 [2]),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_chars_out[14]_i_28_n_0 ),
        .I3(\c_table_reg[13]__0 [2]),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_chars_out[14]_i_29_n_0 ),
        .O(\c_chars_out[12]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_16 
       (.I0(\c_table_reg[14]__0 [4]),
        .I1(\c_table_reg[14]__0 [0]),
        .I2(\c_table_reg[14]__0 [3]),
        .I3(p_0_in25_in),
        .I4(status),
        .O(\c_chars_out[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[12]_i_17 
       (.I0(\c_table_reg[15]__0 [2]),
        .I1(\c_table_reg[15]__0 [1]),
        .I2(\c_chars_out[14]_i_26_n_0 ),
        .I3(\c_table_reg[16]__0 [2]),
        .I4(\c_table_reg[16]__0 [1]),
        .I5(\c_chars_out[14]_i_25_n_0 ),
        .O(\c_chars_out[12]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_18 
       (.I0(\c_table_reg[17]__0 [4]),
        .I1(\c_table_reg[17]__0 [0]),
        .I2(\c_table_reg[17]__0 [3]),
        .I3(p_0_in31_in),
        .I4(status),
        .O(\c_chars_out[12]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[12]_i_19 
       (.I0(\c_table_reg[18]__0 [2]),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_chars_out[14]_i_21_n_0 ),
        .I3(\c_table_reg[19]__0 [2]),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_chars_out[14]_i_22_n_0 ),
        .O(\c_chars_out[12]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[12]_i_1__0 
       (.I0(\c_chars_out[13]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[12]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[12]_i_1__1 
       (.I0(\c_chars_out[13]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[12]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[12]_i_1__2 
       (.I0(\c_chars_out[13]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[12]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAEAA)) 
    \c_chars_out[12]_i_2 
       (.I0(\c_chars_out[12]_i_6_n_0 ),
        .I1(\c_table_reg[1]__0 [2]),
        .I2(\c_table_reg[1]__0 [1]),
        .I3(\c_chars_out[12]_i_7_n_0 ),
        .I4(\c_chars_out[12]_i_8_n_0 ),
        .I5(\c_chars_out[12]_i_9_n_0 ),
        .O(\c_chars_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[12]_i_20 
       (.I0(\c_chars_out[12]_i_21_n_0 ),
        .I1(\c_chars_out[15]_i_37_n_0 ),
        .I2(\c_chars_out[12]_i_22_n_0 ),
        .I3(\c_chars_out[15]_i_39_n_0 ),
        .I4(\c_chars_out[13]_i_30_n_0 ),
        .I5(\c_chars_out[14]_i_23_n_0 ),
        .O(\c_chars_out[12]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[12]_i_21 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [0]),
        .I2(\c_table_reg[22]__0 [1]),
        .O(\c_chars_out[12]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[12]_i_22 
       (.I0(\c_table_reg[20]__0 [4]),
        .I1(\c_table_reg[20]__0 [0]),
        .I2(\c_table_reg[20]__0 [1]),
        .O(\c_chars_out[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_2__0 
       (.I0(\c_chars_out[18]_i_3__0_n_0 ),
        .I1(\c_chars_out[16]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[14]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[12]_i_3__0_n_0 ),
        .O(\c_chars_out[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_2__1 
       (.I0(\c_chars_out[18]_i_3__1_n_0 ),
        .I1(\c_chars_out[16]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[14]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[12]_i_3__1_n_0 ),
        .O(\c_chars_out[12]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_2__2 
       (.I0(\c_chars_out[18]_i_3__2_n_0 ),
        .I1(\c_chars_out[16]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[14]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[12]_i_3__2_n_0 ),
        .O(\c_chars_out[12]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[12]_i_3 
       (.I0(\c_chars_out[12]_i_10_n_0 ),
        .I1(\c_chars_out[13]_i_11_n_0 ),
        .I2(\c_chars_out[12]_i_11_n_0 ),
        .I3(\c_chars_out[12]_i_12_n_0 ),
        .I4(\c_chars_out[13]_i_14_n_0 ),
        .I5(\c_chars_out[12]_i_13_n_0 ),
        .O(\c_chars_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_3__0 
       (.I0(lut_projection[10]),
        .I1(lut_projection[20]),
        .I2(Q[3]),
        .I3(lut_projection[2]),
        .I4(Q[4]),
        .I5(lut_projection[12]),
        .O(\c_chars_out[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_3__1 
       (.I0(lut_projection[10]),
        .I1(lut_projection[20]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[2]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[12]),
        .O(\c_chars_out[12]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[12]_i_3__2 
       (.I0(lut_projection[10]),
        .I1(lut_projection[20]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[2]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[12]),
        .O(\c_chars_out[12]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[12]_i_4 
       (.I0(\c_chars_out[12]_i_14_n_0 ),
        .I1(\c_chars_out[13]_i_17_n_0 ),
        .I2(\c_chars_out[12]_i_15_n_0 ),
        .I3(\c_chars_out[12]_i_16_n_0 ),
        .I4(\c_chars_out[13]_i_20_n_0 ),
        .I5(\c_chars_out[12]_i_17_n_0 ),
        .O(\c_chars_out[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    \c_chars_out[12]_i_5 
       (.I0(\c_chars_out[12]_i_18_n_0 ),
        .I1(\c_table_reg[17]__0 [1]),
        .I2(\c_table_reg[17]__0 [2]),
        .I3(\c_chars_out[12]_i_19_n_0 ),
        .I4(\c_chars_out[12]_i_20_n_0 ),
        .O(\c_chars_out[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h020002000200FFFF)) 
    \c_chars_out[12]_i_6 
       (.I0(\c_chars_out[25]_i_20_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [0]),
        .I3(\c_table_reg[0]__0 [2]),
        .I4(\FSM_sequential_status_reg_n_0_[1] ),
        .I5(status),
        .O(\c_chars_out[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[12]_i_7 
       (.I0(\c_table_reg[1]__0 [4]),
        .I1(\c_table_reg[1]__0 [0]),
        .I2(\c_table_reg[1]__0 [3]),
        .I3(c_chars_in[1]),
        .I4(status),
        .O(\c_chars_out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[12]_i_8 
       (.I0(\c_chars_out[14]_i_20_n_0 ),
        .I1(\c_chars_out[13]_i_25_n_0 ),
        .I2(\c_chars_out[14]_i_19_n_0 ),
        .I3(\c_chars_out[13]_i_26_n_0 ),
        .I4(\c_chars_out[13]_i_27_n_0 ),
        .I5(\c_chars_out[14]_i_24_n_0 ),
        .O(\c_chars_out[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[12]_i_9 
       (.I0(\c_chars_out[8]_i_6_n_0 ),
        .I1(\c_chars_out[15]_i_40_n_0 ),
        .I2(\c_chars_out[14]_i_5_n_0 ),
        .I3(\c_chars_out[25]_i_18_n_0 ),
        .I4(\c_chars_out[25]_i_17_n_0 ),
        .I5(\c_chars_out[14]_i_6_n_0 ),
        .O(\c_chars_out[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[13]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[13]_i_2_n_0 ),
        .I2(\c_chars_out[13]_i_3_n_0 ),
        .I3(\c_chars_out[13]_i_4_n_0 ),
        .I4(\c_chars_out[13]_i_5_n_0 ),
        .I5(lut_projection[13]),
        .O(\c_chars_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_10 
       (.I0(\c_table_reg[5]__0 [4]),
        .I1(\c_table_reg[5]__0 [0]),
        .I2(\c_table_reg[5]__0 [3]),
        .I3(p_0_in7_in),
        .I4(status),
        .O(\c_chars_out[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_11 
       (.I0(\c_table_reg[5]__0 [2]),
        .I1(\c_table_reg[5]__0 [1]),
        .O(\c_chars_out[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[13]_i_12 
       (.I0(\c_table_reg[6]__0 [2]),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_chars_out[15]_i_33_n_0 ),
        .I3(\c_table_reg[7]__0 [2]),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_chars_out[15]_i_34_n_0 ),
        .O(\c_chars_out[13]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_13 
       (.I0(\c_table_reg[8]__0 [4]),
        .I1(\c_table_reg[8]__0 [0]),
        .I2(\c_table_reg[8]__0 [3]),
        .I3(p_0_in13_in),
        .I4(status),
        .O(\c_chars_out[13]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_14 
       (.I0(\c_table_reg[8]__0 [2]),
        .I1(\c_table_reg[8]__0 [1]),
        .O(\c_chars_out[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[13]_i_15 
       (.I0(\c_table_reg[9]__0 [2]),
        .I1(\c_table_reg[9]__0 [1]),
        .I2(\c_chars_out[15]_i_35_n_0 ),
        .I3(\c_table_reg[10]__0 [2]),
        .I4(\c_table_reg[10]__0 [1]),
        .I5(\c_chars_out[15]_i_30_n_0 ),
        .O(\c_chars_out[13]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_16 
       (.I0(\c_table_reg[11]__0 [4]),
        .I1(\c_table_reg[11]__0 [0]),
        .I2(\c_table_reg[11]__0 [3]),
        .I3(p_0_in19_in),
        .I4(status),
        .O(\c_chars_out[13]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_17 
       (.I0(\c_table_reg[11]__0 [2]),
        .I1(\c_table_reg[11]__0 [1]),
        .O(\c_chars_out[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[13]_i_18 
       (.I0(\c_table_reg[12]__0 [2]),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_chars_out[15]_i_31_n_0 ),
        .I3(\c_table_reg[13]__0 [2]),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_chars_out[15]_i_32_n_0 ),
        .O(\c_chars_out[13]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_19 
       (.I0(\c_table_reg[14]__0 [4]),
        .I1(\c_table_reg[14]__0 [0]),
        .I2(\c_table_reg[14]__0 [3]),
        .I3(p_0_in25_in),
        .I4(status),
        .O(\c_chars_out[13]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[13]_i_1__0 
       (.I0(\c_chars_out[14]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[13]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[13]_i_1__1 
       (.I0(\c_chars_out[14]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[13]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[13]_i_1__2 
       (.I0(\c_chars_out[14]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[13]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAEAA)) 
    \c_chars_out[13]_i_2 
       (.I0(\c_chars_out[13]_i_6_n_0 ),
        .I1(\c_table_reg[1]__0 [2]),
        .I2(\c_table_reg[1]__0 [1]),
        .I3(\c_chars_out[13]_i_7_n_0 ),
        .I4(\c_chars_out[13]_i_8_n_0 ),
        .I5(\c_chars_out[13]_i_9_n_0 ),
        .O(\c_chars_out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_20 
       (.I0(\c_table_reg[14]__0 [2]),
        .I1(\c_table_reg[14]__0 [1]),
        .O(\c_chars_out[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[13]_i_21 
       (.I0(\c_table_reg[15]__0 [2]),
        .I1(\c_table_reg[15]__0 [1]),
        .I2(\c_chars_out[15]_i_29_n_0 ),
        .I3(\c_table_reg[16]__0 [2]),
        .I4(\c_table_reg[16]__0 [1]),
        .I5(\c_chars_out[15]_i_28_n_0 ),
        .O(\c_chars_out[13]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_22 
       (.I0(\c_table_reg[17]__0 [4]),
        .I1(\c_table_reg[17]__0 [0]),
        .I2(\c_table_reg[17]__0 [3]),
        .I3(p_0_in31_in),
        .I4(status),
        .O(\c_chars_out[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[13]_i_23 
       (.I0(\c_table_reg[18]__0 [2]),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_chars_out[15]_i_24_n_0 ),
        .I3(\c_table_reg[19]__0 [2]),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_chars_out[15]_i_25_n_0 ),
        .O(\c_chars_out[13]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[13]_i_24 
       (.I0(\c_chars_out[13]_i_28_n_0 ),
        .I1(\c_chars_out[15]_i_37_n_0 ),
        .I2(\c_chars_out[13]_i_29_n_0 ),
        .I3(\c_chars_out[15]_i_39_n_0 ),
        .I4(\c_chars_out[13]_i_30_n_0 ),
        .I5(\c_chars_out[15]_i_26_n_0 ),
        .O(\c_chars_out[13]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_25 
       (.I0(\c_table_reg[25]__0 [2]),
        .I1(\c_table_reg[25]__0 [1]),
        .O(\c_chars_out[13]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_26 
       (.I0(\c_table_reg[24]__0 [2]),
        .I1(\c_table_reg[24]__0 [1]),
        .O(\c_chars_out[13]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_27 
       (.I0(\c_table_reg[23]__0 [2]),
        .I1(\c_table_reg[23]__0 [1]),
        .O(\c_chars_out[13]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[13]_i_28 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [0]),
        .I2(\c_table_reg[22]__0 [1]),
        .O(\c_chars_out[13]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[13]_i_29 
       (.I0(\c_table_reg[20]__0 [4]),
        .I1(\c_table_reg[20]__0 [0]),
        .I2(\c_table_reg[20]__0 [1]),
        .O(\c_chars_out[13]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_2__0 
       (.I0(\c_chars_out[19]_i_3__0_n_0 ),
        .I1(\c_chars_out[17]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[15]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[13]_i_3__0_n_0 ),
        .O(\c_chars_out[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_2__1 
       (.I0(\c_chars_out[19]_i_3__1_n_0 ),
        .I1(\c_chars_out[17]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[15]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[13]_i_3__1_n_0 ),
        .O(\c_chars_out[13]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_2__2 
       (.I0(\c_chars_out[19]_i_3__2_n_0 ),
        .I1(\c_chars_out[17]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[15]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[13]_i_3__2_n_0 ),
        .O(\c_chars_out[13]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[13]_i_3 
       (.I0(\c_chars_out[13]_i_10_n_0 ),
        .I1(\c_chars_out[13]_i_11_n_0 ),
        .I2(\c_chars_out[13]_i_12_n_0 ),
        .I3(\c_chars_out[13]_i_13_n_0 ),
        .I4(\c_chars_out[13]_i_14_n_0 ),
        .I5(\c_chars_out[13]_i_15_n_0 ),
        .O(\c_chars_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[13]_i_30 
       (.I0(\c_table_reg[21]__0 [2]),
        .I1(\c_table_reg[21]__0 [1]),
        .O(\c_chars_out[13]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_3__0 
       (.I0(lut_projection[11]),
        .I1(lut_projection[21]),
        .I2(Q[3]),
        .I3(lut_projection[3]),
        .I4(Q[4]),
        .I5(lut_projection[13]),
        .O(\c_chars_out[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_3__1 
       (.I0(lut_projection[11]),
        .I1(lut_projection[21]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[3]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[13]),
        .O(\c_chars_out[13]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[13]_i_3__2 
       (.I0(lut_projection[11]),
        .I1(lut_projection[21]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[3]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[13]),
        .O(\c_chars_out[13]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[13]_i_4 
       (.I0(\c_chars_out[13]_i_16_n_0 ),
        .I1(\c_chars_out[13]_i_17_n_0 ),
        .I2(\c_chars_out[13]_i_18_n_0 ),
        .I3(\c_chars_out[13]_i_19_n_0 ),
        .I4(\c_chars_out[13]_i_20_n_0 ),
        .I5(\c_chars_out[13]_i_21_n_0 ),
        .O(\c_chars_out[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    \c_chars_out[13]_i_5 
       (.I0(\c_chars_out[13]_i_22_n_0 ),
        .I1(\c_table_reg[17]__0 [1]),
        .I2(\c_table_reg[17]__0 [2]),
        .I3(\c_chars_out[13]_i_23_n_0 ),
        .I4(\c_chars_out[13]_i_24_n_0 ),
        .O(\c_chars_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \c_chars_out[13]_i_6 
       (.I0(\c_chars_out[25]_i_20_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [0]),
        .I3(\c_table_reg[0]__0 [2]),
        .I4(\FSM_sequential_status_reg_n_0_[1] ),
        .I5(status),
        .O(\c_chars_out[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[13]_i_7 
       (.I0(\c_table_reg[1]__0 [4]),
        .I1(\c_table_reg[1]__0 [0]),
        .I2(\c_table_reg[1]__0 [3]),
        .I3(c_chars_in[1]),
        .I4(status),
        .O(\c_chars_out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[13]_i_8 
       (.I0(\c_chars_out[15]_i_23_n_0 ),
        .I1(\c_chars_out[13]_i_25_n_0 ),
        .I2(\c_chars_out[15]_i_22_n_0 ),
        .I3(\c_chars_out[13]_i_26_n_0 ),
        .I4(\c_chars_out[13]_i_27_n_0 ),
        .I5(\c_chars_out[15]_i_27_n_0 ),
        .O(\c_chars_out[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[13]_i_9 
       (.I0(\c_chars_out[9]_i_6_n_0 ),
        .I1(\c_chars_out[15]_i_40_n_0 ),
        .I2(\c_chars_out[15]_i_5_n_0 ),
        .I3(\c_chars_out[25]_i_18_n_0 ),
        .I4(\c_chars_out[25]_i_17_n_0 ),
        .I5(\c_chars_out[15]_i_7_n_0 ),
        .O(\c_chars_out[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \c_chars_out[14]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[14]_i_2_n_0 ),
        .I2(\c_chars_out[14]_i_3_n_0 ),
        .I3(\c_chars_out[14]_i_4_n_0 ),
        .I4(lut_projection[14]),
        .O(\c_chars_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_10 
       (.I0(\c_chars_out[14]_i_23_n_0 ),
        .I1(\c_table_reg[21]__0 [1]),
        .I2(\c_table_reg[21]__0 [2]),
        .I3(\c_chars_out[14]_i_24_n_0 ),
        .I4(\c_table_reg[23]__0 [1]),
        .I5(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_11 
       (.I0(\c_chars_out[14]_i_25_n_0 ),
        .I1(\c_table_reg[16]__0 [1]),
        .I2(\c_table_reg[16]__0 [2]),
        .I3(\c_chars_out[12]_i_18_n_0 ),
        .I4(\c_table_reg[17]__0 [1]),
        .I5(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_12 
       (.I0(\c_chars_out[12]_i_16_n_0 ),
        .I1(\c_table_reg[14]__0 [1]),
        .I2(\c_table_reg[14]__0 [2]),
        .I3(\c_chars_out[14]_i_26_n_0 ),
        .I4(\c_table_reg[15]__0 [1]),
        .I5(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_13 
       (.I0(\c_chars_out[14]_i_27_n_0 ),
        .I1(\c_table_reg[10]__0 [1]),
        .I2(\c_table_reg[10]__0 [2]),
        .I3(\c_chars_out[12]_i_14_n_0 ),
        .I4(\c_table_reg[11]__0 [1]),
        .I5(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_14 
       (.I0(\c_chars_out[14]_i_28_n_0 ),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_table_reg[12]__0 [2]),
        .I3(\c_chars_out[14]_i_29_n_0 ),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_15 
       (.I0(\c_chars_out[14]_i_30_n_0 ),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_table_reg[6]__0 [2]),
        .I3(\c_chars_out[14]_i_31_n_0 ),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_16 
       (.I0(\c_chars_out[12]_i_12_n_0 ),
        .I1(\c_table_reg[8]__0 [1]),
        .I2(\c_table_reg[8]__0 [2]),
        .I3(\c_chars_out[14]_i_32_n_0 ),
        .I4(\c_table_reg[9]__0 [1]),
        .I5(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_17 
       (.I0(\c_chars_out[12]_i_7_n_0 ),
        .I1(\c_table_reg[1]__0 [1]),
        .I2(\c_table_reg[1]__0 [2]),
        .I3(\c_chars_out[12]_i_10_n_0 ),
        .I4(\c_table_reg[5]__0 [1]),
        .I5(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[14]_i_18 
       (.I0(\c_chars_out[14]_i_33_n_0 ),
        .I1(\c_chars_out[15]_i_37_n_0 ),
        .I2(\c_chars_out[14]_i_34_n_0 ),
        .I3(\c_chars_out[15]_i_39_n_0 ),
        .I4(\c_chars_out[15]_i_40_n_0 ),
        .I5(\c_chars_out[6]_i_6_n_0 ),
        .O(\c_chars_out[14]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_19 
       (.I0(\c_table_reg[24]__0 [4]),
        .I1(\c_table_reg[24]__0 [0]),
        .I2(\c_table_reg[24]__0 [3]),
        .I3(p_0_in45_in),
        .I4(status),
        .O(\c_chars_out[14]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[14]_i_1__0 
       (.I0(\c_chars_out[15]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[14]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[14]_i_1__1 
       (.I0(\c_chars_out[15]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[14]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[14]_i_1__2 
       (.I0(\c_chars_out[15]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[14]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[14]_i_2 
       (.I0(\c_chars_out[14]_i_5_n_0 ),
        .I1(\c_chars_out[15]_i_6_n_0 ),
        .I2(\c_chars_out[14]_i_6_n_0 ),
        .I3(\c_chars_out[15]_i_8_n_0 ),
        .I4(\c_chars_out[15]_i_9_n_0 ),
        .I5(\c_chars_out[14]_i_7_n_0 ),
        .O(\c_chars_out[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_20 
       (.I0(\c_table_reg[25]__0 [4]),
        .I1(\c_table_reg[25]__0 [0]),
        .I2(\c_table_reg[25]__0 [3]),
        .I3(p_0_in47_in),
        .I4(status),
        .O(\c_chars_out[14]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_21 
       (.I0(\c_table_reg[18]__0 [4]),
        .I1(\c_table_reg[18]__0 [0]),
        .I2(\c_table_reg[18]__0 [3]),
        .I3(p_0_in33_in),
        .I4(status),
        .O(\c_chars_out[14]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_22 
       (.I0(\c_table_reg[19]__0 [4]),
        .I1(\c_table_reg[19]__0 [0]),
        .I2(\c_table_reg[19]__0 [3]),
        .I3(p_0_in35_in),
        .I4(status),
        .O(\c_chars_out[14]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_23 
       (.I0(\c_table_reg[21]__0 [4]),
        .I1(\c_table_reg[21]__0 [0]),
        .I2(\c_table_reg[21]__0 [3]),
        .I3(p_0_in39_in),
        .I4(status),
        .O(\c_chars_out[14]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_24 
       (.I0(\c_table_reg[23]__0 [4]),
        .I1(\c_table_reg[23]__0 [0]),
        .I2(\c_table_reg[23]__0 [3]),
        .I3(p_0_in43_in),
        .I4(status),
        .O(\c_chars_out[14]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_25 
       (.I0(\c_table_reg[16]__0 [4]),
        .I1(\c_table_reg[16]__0 [0]),
        .I2(\c_table_reg[16]__0 [3]),
        .I3(p_0_in29_in),
        .I4(status),
        .O(\c_chars_out[14]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_26 
       (.I0(\c_table_reg[15]__0 [4]),
        .I1(\c_table_reg[15]__0 [0]),
        .I2(\c_table_reg[15]__0 [3]),
        .I3(p_0_in27_in),
        .I4(status),
        .O(\c_chars_out[14]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_27 
       (.I0(\c_table_reg[10]__0 [4]),
        .I1(\c_table_reg[10]__0 [0]),
        .I2(\c_table_reg[10]__0 [3]),
        .I3(p_0_in17_in),
        .I4(status),
        .O(\c_chars_out[14]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_28 
       (.I0(\c_table_reg[12]__0 [4]),
        .I1(\c_table_reg[12]__0 [0]),
        .I2(\c_table_reg[12]__0 [3]),
        .I3(p_0_in21_in),
        .I4(status),
        .O(\c_chars_out[14]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_29 
       (.I0(\c_table_reg[13]__0 [4]),
        .I1(\c_table_reg[13]__0 [0]),
        .I2(\c_table_reg[13]__0 [3]),
        .I3(p_0_in23_in),
        .I4(status),
        .O(\c_chars_out[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_2__0 
       (.I0(\c_chars_out[20]_i_3__0_n_0 ),
        .I1(\c_chars_out[18]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[16]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[14]_i_3__0_n_0 ),
        .O(\c_chars_out[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_2__1 
       (.I0(\c_chars_out[20]_i_3__1_n_0 ),
        .I1(\c_chars_out[18]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[16]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[14]_i_3__1_n_0 ),
        .O(\c_chars_out[14]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_2__2 
       (.I0(\c_chars_out[20]_i_3__2_n_0 ),
        .I1(\c_chars_out[18]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[16]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[14]_i_3__2_n_0 ),
        .O(\c_chars_out[14]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[14]_i_3 
       (.I0(\c_chars_out[14]_i_8_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[14]_i_9_n_0 ),
        .I3(\c_chars_out[14]_i_10_n_0 ),
        .I4(\c_chars_out[14]_i_11_n_0 ),
        .I5(\c_chars_out[14]_i_12_n_0 ),
        .O(\c_chars_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_30 
       (.I0(\c_table_reg[6]__0 [4]),
        .I1(\c_table_reg[6]__0 [0]),
        .I2(\c_table_reg[6]__0 [3]),
        .I3(p_0_in9_in),
        .I4(status),
        .O(\c_chars_out[14]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_31 
       (.I0(\c_table_reg[7]__0 [4]),
        .I1(\c_table_reg[7]__0 [0]),
        .I2(\c_table_reg[7]__0 [3]),
        .I3(p_0_in11_in),
        .I4(status),
        .O(\c_chars_out[14]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \c_chars_out[14]_i_32 
       (.I0(\c_table_reg[9]__0 [4]),
        .I1(\c_table_reg[9]__0 [0]),
        .I2(\c_table_reg[9]__0 [3]),
        .I3(p_0_in15_in),
        .I4(status),
        .O(\c_chars_out[14]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[14]_i_33 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [0]),
        .I2(\c_table_reg[22]__0 [1]),
        .O(\c_chars_out[14]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[14]_i_34 
       (.I0(\c_table_reg[20]__0 [4]),
        .I1(\c_table_reg[20]__0 [0]),
        .I2(\c_table_reg[20]__0 [1]),
        .O(\c_chars_out[14]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_3__0 
       (.I0(lut_projection[12]),
        .I1(lut_projection[22]),
        .I2(Q[3]),
        .I3(lut_projection[4]),
        .I4(Q[4]),
        .I5(lut_projection[14]),
        .O(\c_chars_out[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_3__1 
       (.I0(lut_projection[12]),
        .I1(lut_projection[22]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[4]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[14]),
        .O(\c_chars_out[14]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[14]_i_3__2 
       (.I0(lut_projection[12]),
        .I1(lut_projection[22]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[4]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[14]),
        .O(\c_chars_out[14]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[14]_i_4 
       (.I0(\c_chars_out[14]_i_13_n_0 ),
        .I1(\c_chars_out[14]_i_14_n_0 ),
        .I2(\c_chars_out[14]_i_15_n_0 ),
        .I3(\c_chars_out[14]_i_16_n_0 ),
        .I4(\c_chars_out[14]_i_17_n_0 ),
        .I5(\c_chars_out[14]_i_18_n_0 ),
        .O(\c_chars_out[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[14]_i_5 
       (.I0(\c_table_reg[3]__0 [4]),
        .I1(\c_table_reg[3]__0 [0]),
        .I2(\c_table_reg[3]__0 [2]),
        .O(\c_chars_out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[14]_i_6 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [0]),
        .I2(\c_table_reg[2]__0 [2]),
        .O(\c_chars_out[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[14]_i_7 
       (.I0(\c_table_reg[0]__0 [4]),
        .I1(\c_table_reg[0]__0 [0]),
        .I2(\c_table_reg[0]__0 [2]),
        .O(\c_chars_out[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_8 
       (.I0(\c_chars_out[14]_i_19_n_0 ),
        .I1(\c_table_reg[24]__0 [1]),
        .I2(\c_table_reg[24]__0 [2]),
        .I3(\c_chars_out[14]_i_20_n_0 ),
        .I4(\c_table_reg[25]__0 [1]),
        .I5(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[14]_i_9 
       (.I0(\c_chars_out[14]_i_21_n_0 ),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_table_reg[18]__0 [2]),
        .I3(\c_chars_out[14]_i_22_n_0 ),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \c_chars_out[15]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[15]_i_2_n_0 ),
        .I2(\c_chars_out[15]_i_3_n_0 ),
        .I3(\c_chars_out[15]_i_4_n_0 ),
        .I4(lut_projection[15]),
        .O(\c_chars_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[15]_i_10 
       (.I0(\c_table_reg[0]__0 [4]),
        .I1(\c_table_reg[0]__0 [0]),
        .I2(\c_table_reg[0]__0 [2]),
        .O(\c_chars_out[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_11 
       (.I0(\c_chars_out[15]_i_22_n_0 ),
        .I1(\c_table_reg[24]__0 [1]),
        .I2(\c_table_reg[24]__0 [2]),
        .I3(\c_chars_out[15]_i_23_n_0 ),
        .I4(\c_table_reg[25]__0 [1]),
        .I5(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_12 
       (.I0(\c_chars_out[15]_i_24_n_0 ),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_table_reg[18]__0 [2]),
        .I3(\c_chars_out[15]_i_25_n_0 ),
        .I4(\c_table_reg[19]__0 [1]),
        .I5(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_13 
       (.I0(\c_chars_out[15]_i_26_n_0 ),
        .I1(\c_table_reg[21]__0 [1]),
        .I2(\c_table_reg[21]__0 [2]),
        .I3(\c_chars_out[15]_i_27_n_0 ),
        .I4(\c_table_reg[23]__0 [1]),
        .I5(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_14 
       (.I0(\c_chars_out[15]_i_28_n_0 ),
        .I1(\c_table_reg[16]__0 [1]),
        .I2(\c_table_reg[16]__0 [2]),
        .I3(\c_chars_out[13]_i_22_n_0 ),
        .I4(\c_table_reg[17]__0 [1]),
        .I5(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_15 
       (.I0(\c_chars_out[13]_i_19_n_0 ),
        .I1(\c_table_reg[14]__0 [1]),
        .I2(\c_table_reg[14]__0 [2]),
        .I3(\c_chars_out[15]_i_29_n_0 ),
        .I4(\c_table_reg[15]__0 [1]),
        .I5(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_16 
       (.I0(\c_chars_out[15]_i_30_n_0 ),
        .I1(\c_table_reg[10]__0 [1]),
        .I2(\c_table_reg[10]__0 [2]),
        .I3(\c_chars_out[13]_i_16_n_0 ),
        .I4(\c_table_reg[11]__0 [1]),
        .I5(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_17 
       (.I0(\c_chars_out[15]_i_31_n_0 ),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_table_reg[12]__0 [2]),
        .I3(\c_chars_out[15]_i_32_n_0 ),
        .I4(\c_table_reg[13]__0 [1]),
        .I5(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_18 
       (.I0(\c_chars_out[15]_i_33_n_0 ),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_table_reg[6]__0 [2]),
        .I3(\c_chars_out[15]_i_34_n_0 ),
        .I4(\c_table_reg[7]__0 [1]),
        .I5(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_19 
       (.I0(\c_chars_out[13]_i_13_n_0 ),
        .I1(\c_table_reg[8]__0 [1]),
        .I2(\c_table_reg[8]__0 [2]),
        .I3(\c_chars_out[15]_i_35_n_0 ),
        .I4(\c_table_reg[9]__0 [1]),
        .I5(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[15]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[15]_i_1__0 
       (.I0(\c_chars_out[16]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[15]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[15]_i_1__1 
       (.I0(\c_chars_out[16]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[15]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[15]_i_1__2 
       (.I0(\c_chars_out[16]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[15]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[15]_i_2 
       (.I0(\c_chars_out[15]_i_5_n_0 ),
        .I1(\c_chars_out[15]_i_6_n_0 ),
        .I2(\c_chars_out[15]_i_7_n_0 ),
        .I3(\c_chars_out[15]_i_8_n_0 ),
        .I4(\c_chars_out[15]_i_9_n_0 ),
        .I5(\c_chars_out[15]_i_10_n_0 ),
        .O(\c_chars_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[15]_i_20 
       (.I0(\c_chars_out[13]_i_7_n_0 ),
        .I1(\c_table_reg[1]__0 [1]),
        .I2(\c_table_reg[1]__0 [2]),
        .I3(\c_chars_out[13]_i_10_n_0 ),
        .I4(\c_table_reg[5]__0 [1]),
        .I5(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[15]_i_21 
       (.I0(\c_chars_out[15]_i_36_n_0 ),
        .I1(\c_chars_out[15]_i_37_n_0 ),
        .I2(\c_chars_out[15]_i_38_n_0 ),
        .I3(\c_chars_out[15]_i_39_n_0 ),
        .I4(\c_chars_out[15]_i_40_n_0 ),
        .I5(\c_chars_out[7]_i_6_n_0 ),
        .O(\c_chars_out[15]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_22 
       (.I0(\c_table_reg[24]__0 [4]),
        .I1(\c_table_reg[24]__0 [0]),
        .I2(\c_table_reg[24]__0 [3]),
        .I3(p_0_in45_in),
        .I4(status),
        .O(\c_chars_out[15]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_23 
       (.I0(\c_table_reg[25]__0 [4]),
        .I1(\c_table_reg[25]__0 [0]),
        .I2(\c_table_reg[25]__0 [3]),
        .I3(p_0_in47_in),
        .I4(status),
        .O(\c_chars_out[15]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_24 
       (.I0(\c_table_reg[18]__0 [4]),
        .I1(\c_table_reg[18]__0 [0]),
        .I2(\c_table_reg[18]__0 [3]),
        .I3(p_0_in33_in),
        .I4(status),
        .O(\c_chars_out[15]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_25 
       (.I0(\c_table_reg[19]__0 [4]),
        .I1(\c_table_reg[19]__0 [0]),
        .I2(\c_table_reg[19]__0 [3]),
        .I3(p_0_in35_in),
        .I4(status),
        .O(\c_chars_out[15]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_26 
       (.I0(\c_table_reg[21]__0 [4]),
        .I1(\c_table_reg[21]__0 [0]),
        .I2(\c_table_reg[21]__0 [3]),
        .I3(p_0_in39_in),
        .I4(status),
        .O(\c_chars_out[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_27 
       (.I0(\c_table_reg[23]__0 [4]),
        .I1(\c_table_reg[23]__0 [0]),
        .I2(\c_table_reg[23]__0 [3]),
        .I3(p_0_in43_in),
        .I4(status),
        .O(\c_chars_out[15]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_28 
       (.I0(\c_table_reg[16]__0 [4]),
        .I1(\c_table_reg[16]__0 [0]),
        .I2(\c_table_reg[16]__0 [3]),
        .I3(p_0_in29_in),
        .I4(status),
        .O(\c_chars_out[15]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_29 
       (.I0(\c_table_reg[15]__0 [4]),
        .I1(\c_table_reg[15]__0 [0]),
        .I2(\c_table_reg[15]__0 [3]),
        .I3(p_0_in27_in),
        .I4(status),
        .O(\c_chars_out[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_2__0 
       (.I0(\c_chars_out[21]_i_3__0_n_0 ),
        .I1(\c_chars_out[19]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[17]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[15]_i_3__0_n_0 ),
        .O(\c_chars_out[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_2__1 
       (.I0(\c_chars_out[21]_i_3__1_n_0 ),
        .I1(\c_chars_out[19]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[17]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[15]_i_3__1_n_0 ),
        .O(\c_chars_out[15]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_2__2 
       (.I0(\c_chars_out[21]_i_3__2_n_0 ),
        .I1(\c_chars_out[19]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[17]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[15]_i_3__2_n_0 ),
        .O(\c_chars_out[15]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[15]_i_3 
       (.I0(\c_chars_out[15]_i_11_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[15]_i_12_n_0 ),
        .I3(\c_chars_out[15]_i_13_n_0 ),
        .I4(\c_chars_out[15]_i_14_n_0 ),
        .I5(\c_chars_out[15]_i_15_n_0 ),
        .O(\c_chars_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_30 
       (.I0(\c_table_reg[10]__0 [4]),
        .I1(\c_table_reg[10]__0 [0]),
        .I2(\c_table_reg[10]__0 [3]),
        .I3(p_0_in17_in),
        .I4(status),
        .O(\c_chars_out[15]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_31 
       (.I0(\c_table_reg[12]__0 [4]),
        .I1(\c_table_reg[12]__0 [0]),
        .I2(\c_table_reg[12]__0 [3]),
        .I3(p_0_in21_in),
        .I4(status),
        .O(\c_chars_out[15]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_32 
       (.I0(\c_table_reg[13]__0 [4]),
        .I1(\c_table_reg[13]__0 [0]),
        .I2(\c_table_reg[13]__0 [3]),
        .I3(p_0_in23_in),
        .I4(status),
        .O(\c_chars_out[15]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_33 
       (.I0(\c_table_reg[6]__0 [4]),
        .I1(\c_table_reg[6]__0 [0]),
        .I2(\c_table_reg[6]__0 [3]),
        .I3(p_0_in9_in),
        .I4(status),
        .O(\c_chars_out[15]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_34 
       (.I0(\c_table_reg[7]__0 [4]),
        .I1(\c_table_reg[7]__0 [0]),
        .I2(\c_table_reg[7]__0 [3]),
        .I3(p_0_in11_in),
        .I4(status),
        .O(\c_chars_out[15]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \c_chars_out[15]_i_35 
       (.I0(\c_table_reg[9]__0 [4]),
        .I1(\c_table_reg[9]__0 [0]),
        .I2(\c_table_reg[9]__0 [3]),
        .I3(p_0_in15_in),
        .I4(status),
        .O(\c_chars_out[15]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[15]_i_36 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [0]),
        .I2(\c_table_reg[22]__0 [1]),
        .O(\c_chars_out[15]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_37 
       (.I0(p_0_in41_in),
        .I1(\c_table_reg[22]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[15]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[15]_i_38 
       (.I0(\c_table_reg[20]__0 [4]),
        .I1(\c_table_reg[20]__0 [0]),
        .I2(\c_table_reg[20]__0 [1]),
        .O(\c_chars_out[15]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_39 
       (.I0(p_0_in37_in),
        .I1(\c_table_reg[20]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_3__0 
       (.I0(lut_projection[13]),
        .I1(lut_projection[23]),
        .I2(Q[3]),
        .I3(lut_projection[5]),
        .I4(Q[4]),
        .I5(lut_projection[15]),
        .O(\c_chars_out[15]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_3__1 
       (.I0(lut_projection[13]),
        .I1(lut_projection[23]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[5]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[15]),
        .O(\c_chars_out[15]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[15]_i_3__2 
       (.I0(lut_projection[13]),
        .I1(lut_projection[23]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[5]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[15]),
        .O(\c_chars_out[15]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[15]_i_4 
       (.I0(\c_chars_out[15]_i_16_n_0 ),
        .I1(\c_chars_out[15]_i_17_n_0 ),
        .I2(\c_chars_out[15]_i_18_n_0 ),
        .I3(\c_chars_out[15]_i_19_n_0 ),
        .I4(\c_chars_out[15]_i_20_n_0 ),
        .I5(\c_chars_out[15]_i_21_n_0 ),
        .O(\c_chars_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_40 
       (.I0(p_0_in5_in),
        .I1(\c_table_reg[4]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[15]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[15]_i_5 
       (.I0(\c_table_reg[3]__0 [4]),
        .I1(\c_table_reg[3]__0 [0]),
        .I2(\c_table_reg[3]__0 [2]),
        .O(\c_chars_out[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_6 
       (.I0(p_0_in3_in),
        .I1(\c_table_reg[3]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[15]_i_7 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [0]),
        .I2(\c_table_reg[2]__0 [2]),
        .O(\c_chars_out[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_8 
       (.I0(p_0_in1_in),
        .I1(\c_table_reg[2]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \c_chars_out[15]_i_9 
       (.I0(c_chars_in[0]),
        .I1(\c_table_reg[0]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[16]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[16]_i_2_n_0 ),
        .I2(\c_chars_out[16]_i_3_n_0 ),
        .I3(\c_chars_out[16]_i_4_n_0 ),
        .I4(\c_chars_out[16]_i_5_n_0 ),
        .I5(lut_projection[16]),
        .O(\c_chars_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_10 
       (.I0(\c_chars_out[17]_i_24_n_0 ),
        .I1(\c_chars_out[24]_i_20_n_0 ),
        .I2(\c_chars_out[17]_i_25_n_0 ),
        .I3(\c_chars_out[24]_i_19_n_0 ),
        .I4(\c_chars_out[22]_i_25_n_0 ),
        .I5(\c_chars_out[17]_i_26_n_0 ),
        .O(\c_chars_out[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_11 
       (.I0(\c_chars_out[17]_i_27_n_0 ),
        .I1(\c_chars_out[24]_i_24_n_0 ),
        .I2(\c_chars_out[17]_i_28_n_0 ),
        .I3(\c_chars_out[24]_i_23_n_0 ),
        .I4(\c_chars_out[24]_i_28_n_0 ),
        .I5(\c_chars_out[17]_i_29_n_0 ),
        .O(\c_chars_out[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_12 
       (.I0(\c_chars_out[17]_i_30_n_0 ),
        .I1(\c_chars_out[24]_i_27_n_0 ),
        .I2(\c_chars_out[17]_i_31_n_0 ),
        .I3(\c_chars_out[24]_i_26_n_0 ),
        .I4(\c_chars_out[24]_i_25_n_0 ),
        .I5(\c_chars_out[17]_i_32_n_0 ),
        .O(\c_chars_out[16]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[16]_i_1__0 
       (.I0(\c_chars_out[17]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[16]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [16]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[16]_i_1__1 
       (.I0(\c_chars_out[17]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[16]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[16]_i_1__2 
       (.I0(\c_chars_out[17]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[16]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [16]));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \c_chars_out[16]_i_2 
       (.I0(\c_chars_out[16]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[17]_i_7_n_0 ),
        .I3(\c_chars_out[20]_i_7_n_0 ),
        .I4(\c_chars_out[17]_i_8_n_0 ),
        .I5(\c_chars_out[20]_i_8_n_0 ),
        .O(\c_chars_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_2__0 
       (.I0(\c_chars_out[22]_i_3__0_n_0 ),
        .I1(\c_chars_out[20]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[18]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[16]_i_3__0_n_0 ),
        .O(\c_chars_out[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_2__1 
       (.I0(\c_chars_out[22]_i_3__1_n_0 ),
        .I1(\c_chars_out[20]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[18]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[16]_i_3__1_n_0 ),
        .O(\c_chars_out[16]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_2__2 
       (.I0(\c_chars_out[22]_i_3__2_n_0 ),
        .I1(\c_chars_out[20]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[18]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[16]_i_3__2_n_0 ),
        .O(\c_chars_out[16]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_3 
       (.I0(\c_chars_out[17]_i_9_n_0 ),
        .I1(\c_chars_out[22]_i_9_n_0 ),
        .I2(\c_chars_out[17]_i_10_n_0 ),
        .I3(\c_chars_out[22]_i_10_n_0 ),
        .I4(\c_chars_out[22]_i_11_n_0 ),
        .I5(\c_chars_out[17]_i_11_n_0 ),
        .O(\c_chars_out[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_3__0 
       (.I0(lut_projection[14]),
        .I1(lut_projection[24]),
        .I2(Q[3]),
        .I3(lut_projection[6]),
        .I4(Q[4]),
        .I5(lut_projection[16]),
        .O(\c_chars_out[16]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_3__1 
       (.I0(lut_projection[14]),
        .I1(lut_projection[24]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[6]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[16]),
        .O(\c_chars_out[16]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[16]_i_3__2 
       (.I0(lut_projection[14]),
        .I1(lut_projection[24]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[6]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[16]),
        .O(\c_chars_out[16]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_4 
       (.I0(\c_chars_out[17]_i_12_n_0 ),
        .I1(\c_chars_out[22]_i_12_n_0 ),
        .I2(\c_chars_out[17]_i_13_n_0 ),
        .I3(\c_chars_out[22]_i_13_n_0 ),
        .I4(\c_chars_out[22]_i_14_n_0 ),
        .I5(\c_chars_out[17]_i_14_n_0 ),
        .O(\c_chars_out[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[16]_i_5 
       (.I0(\c_chars_out[16]_i_7_n_0 ),
        .I1(\c_chars_out[16]_i_8_n_0 ),
        .I2(\c_chars_out[16]_i_9_n_0 ),
        .I3(\c_chars_out[16]_i_10_n_0 ),
        .I4(\c_chars_out[16]_i_11_n_0 ),
        .I5(\c_chars_out[16]_i_12_n_0 ),
        .O(\c_chars_out[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[16]_i_6 
       (.I0(\c_table_reg[1]__0 [4]),
        .I1(\c_table_reg[1]__0 [0]),
        .I2(\c_chars_out[1]_i_7_n_0 ),
        .I3(\c_table_reg[5]__0 [4]),
        .I4(\c_table_reg[5]__0 [0]),
        .I5(\c_chars_out[1]_i_8_n_0 ),
        .O(\c_chars_out[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \c_chars_out[16]_i_7 
       (.I0(\c_chars_out[5]_i_10_n_0 ),
        .I1(\c_table_reg[0]__0 [2]),
        .I2(\c_table_reg[0]__0 [4]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[18]_i_13_n_0 ),
        .O(\c_chars_out[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \c_chars_out[16]_i_8 
       (.I0(\c_chars_out[5]_i_6_n_0 ),
        .I1(\c_table_reg[3]__0 [2]),
        .I2(\c_table_reg[3]__0 [4]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[3]_i_6_n_0 ),
        .I5(\c_chars_out[24]_i_29_n_0 ),
        .O(\c_chars_out[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[16]_i_9 
       (.I0(\c_chars_out[17]_i_21_n_0 ),
        .I1(\c_chars_out[22]_i_24_n_0 ),
        .I2(\c_chars_out[17]_i_22_n_0 ),
        .I3(\c_chars_out[24]_i_22_n_0 ),
        .I4(\c_chars_out[24]_i_21_n_0 ),
        .I5(\c_chars_out[17]_i_23_n_0 ),
        .O(\c_chars_out[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[17]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[17]_i_2_n_0 ),
        .I2(\c_chars_out[17]_i_3_n_0 ),
        .I3(\c_chars_out[17]_i_4_n_0 ),
        .I4(\c_chars_out[17]_i_5_n_0 ),
        .I5(lut_projection[17]),
        .O(\c_chars_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_10 
       (.I0(\c_table_reg[7]__0 [2]),
        .I1(\c_table_reg[7]__0 [1]),
        .I2(\c_table_reg[7]__0 [3]),
        .I3(p_0_in11_in),
        .I4(status),
        .O(\c_chars_out[17]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_11 
       (.I0(\c_table_reg[6]__0 [2]),
        .I1(\c_table_reg[6]__0 [1]),
        .I2(\c_table_reg[6]__0 [3]),
        .I3(p_0_in9_in),
        .I4(status),
        .O(\c_chars_out[17]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_12 
       (.I0(\c_table_reg[11]__0 [2]),
        .I1(\c_table_reg[11]__0 [1]),
        .I2(\c_table_reg[11]__0 [3]),
        .I3(p_0_in19_in),
        .I4(status),
        .O(\c_chars_out[17]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_13 
       (.I0(\c_table_reg[10]__0 [2]),
        .I1(\c_table_reg[10]__0 [1]),
        .I2(\c_table_reg[10]__0 [3]),
        .I3(p_0_in17_in),
        .I4(status),
        .O(\c_chars_out[17]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_14 
       (.I0(\c_table_reg[9]__0 [2]),
        .I1(\c_table_reg[9]__0 [1]),
        .I2(\c_table_reg[9]__0 [3]),
        .I3(p_0_in15_in),
        .I4(status),
        .O(\c_chars_out[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \c_chars_out[17]_i_15 
       (.I0(\c_chars_out[5]_i_10_n_0 ),
        .I1(\c_table_reg[0]__0 [2]),
        .I2(\c_table_reg[0]__0 [4]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[19]_i_21_n_0 ),
        .O(\c_chars_out[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \c_chars_out[17]_i_16 
       (.I0(\c_chars_out[5]_i_6_n_0 ),
        .I1(\c_table_reg[3]__0 [2]),
        .I2(\c_table_reg[3]__0 [4]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[3]_i_6_n_0 ),
        .I5(\c_chars_out[25]_i_70_n_0 ),
        .O(\c_chars_out[17]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_17 
       (.I0(\c_chars_out[17]_i_21_n_0 ),
        .I1(\c_chars_out[23]_i_33_n_0 ),
        .I2(\c_chars_out[17]_i_22_n_0 ),
        .I3(\c_chars_out[25]_i_40_n_0 ),
        .I4(\c_chars_out[25]_i_37_n_0 ),
        .I5(\c_chars_out[17]_i_23_n_0 ),
        .O(\c_chars_out[17]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_18 
       (.I0(\c_chars_out[17]_i_24_n_0 ),
        .I1(\c_chars_out[25]_i_28_n_0 ),
        .I2(\c_chars_out[17]_i_25_n_0 ),
        .I3(\c_chars_out[25]_i_25_n_0 ),
        .I4(\c_chars_out[23]_i_38_n_0 ),
        .I5(\c_chars_out[17]_i_26_n_0 ),
        .O(\c_chars_out[17]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_19 
       (.I0(\c_chars_out[17]_i_27_n_0 ),
        .I1(\c_chars_out[25]_i_46_n_0 ),
        .I2(\c_chars_out[17]_i_28_n_0 ),
        .I3(\c_chars_out[25]_i_43_n_0 ),
        .I4(\c_chars_out[25]_i_58_n_0 ),
        .I5(\c_chars_out[17]_i_29_n_0 ),
        .O(\c_chars_out[17]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[17]_i_1__0 
       (.I0(\c_chars_out[18]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[17]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [17]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[17]_i_1__1 
       (.I0(\c_chars_out[18]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[17]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[17]_i_1__2 
       (.I0(\c_chars_out[18]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[17]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [17]));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \c_chars_out[17]_i_2 
       (.I0(\c_chars_out[17]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[17]_i_7_n_0 ),
        .I3(\c_chars_out[21]_i_8_n_0 ),
        .I4(\c_chars_out[17]_i_8_n_0 ),
        .I5(\c_chars_out[21]_i_10_n_0 ),
        .O(\c_chars_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_20 
       (.I0(\c_chars_out[17]_i_30_n_0 ),
        .I1(\c_chars_out[25]_i_55_n_0 ),
        .I2(\c_chars_out[17]_i_31_n_0 ),
        .I3(\c_chars_out[25]_i_52_n_0 ),
        .I4(\c_chars_out[25]_i_49_n_0 ),
        .I5(\c_chars_out[17]_i_32_n_0 ),
        .O(\c_chars_out[17]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_21 
       (.I0(\c_table_reg[21]__0 [2]),
        .I1(\c_table_reg[21]__0 [1]),
        .I2(\c_table_reg[21]__0 [3]),
        .I3(p_0_in39_in),
        .I4(status),
        .O(\c_chars_out[17]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_22 
       (.I0(\c_table_reg[19]__0 [2]),
        .I1(\c_table_reg[19]__0 [1]),
        .I2(\c_table_reg[19]__0 [3]),
        .I3(p_0_in35_in),
        .I4(status),
        .O(\c_chars_out[17]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_23 
       (.I0(\c_table_reg[18]__0 [2]),
        .I1(\c_table_reg[18]__0 [1]),
        .I2(\c_table_reg[18]__0 [3]),
        .I3(p_0_in33_in),
        .I4(status),
        .O(\c_chars_out[17]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_24 
       (.I0(\c_table_reg[25]__0 [2]),
        .I1(\c_table_reg[25]__0 [1]),
        .I2(\c_table_reg[25]__0 [3]),
        .I3(p_0_in47_in),
        .I4(status),
        .O(\c_chars_out[17]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_25 
       (.I0(\c_table_reg[24]__0 [2]),
        .I1(\c_table_reg[24]__0 [1]),
        .I2(\c_table_reg[24]__0 [3]),
        .I3(p_0_in45_in),
        .I4(status),
        .O(\c_chars_out[17]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_26 
       (.I0(\c_table_reg[23]__0 [2]),
        .I1(\c_table_reg[23]__0 [1]),
        .I2(\c_table_reg[23]__0 [3]),
        .I3(p_0_in43_in),
        .I4(status),
        .O(\c_chars_out[17]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_27 
       (.I0(\c_table_reg[17]__0 [2]),
        .I1(\c_table_reg[17]__0 [1]),
        .I2(\c_table_reg[17]__0 [3]),
        .I3(p_0_in31_in),
        .I4(status),
        .O(\c_chars_out[17]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_28 
       (.I0(\c_table_reg[16]__0 [2]),
        .I1(\c_table_reg[16]__0 [1]),
        .I2(\c_table_reg[16]__0 [3]),
        .I3(p_0_in29_in),
        .I4(status),
        .O(\c_chars_out[17]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_29 
       (.I0(\c_table_reg[15]__0 [2]),
        .I1(\c_table_reg[15]__0 [1]),
        .I2(\c_table_reg[15]__0 [3]),
        .I3(p_0_in27_in),
        .I4(status),
        .O(\c_chars_out[17]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_2__0 
       (.I0(\c_chars_out[23]_i_3__0_n_0 ),
        .I1(\c_chars_out[21]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[19]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[17]_i_3__0_n_0 ),
        .O(\c_chars_out[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_2__1 
       (.I0(\c_chars_out[23]_i_3__1_n_0 ),
        .I1(\c_chars_out[21]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[19]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[17]_i_3__1_n_0 ),
        .O(\c_chars_out[17]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_2__2 
       (.I0(\c_chars_out[23]_i_3__2_n_0 ),
        .I1(\c_chars_out[21]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[19]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[17]_i_3__2_n_0 ),
        .O(\c_chars_out[17]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_3 
       (.I0(\c_chars_out[17]_i_9_n_0 ),
        .I1(\c_chars_out[23]_i_12_n_0 ),
        .I2(\c_chars_out[17]_i_10_n_0 ),
        .I3(\c_chars_out[23]_i_14_n_0 ),
        .I4(\c_chars_out[23]_i_15_n_0 ),
        .I5(\c_chars_out[17]_i_11_n_0 ),
        .O(\c_chars_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_30 
       (.I0(\c_table_reg[14]__0 [2]),
        .I1(\c_table_reg[14]__0 [1]),
        .I2(\c_table_reg[14]__0 [3]),
        .I3(p_0_in25_in),
        .I4(status),
        .O(\c_chars_out[17]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_31 
       (.I0(\c_table_reg[13]__0 [2]),
        .I1(\c_table_reg[13]__0 [1]),
        .I2(\c_table_reg[13]__0 [3]),
        .I3(p_0_in23_in),
        .I4(status),
        .O(\c_chars_out[17]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_32 
       (.I0(\c_table_reg[12]__0 [2]),
        .I1(\c_table_reg[12]__0 [1]),
        .I2(\c_table_reg[12]__0 [3]),
        .I3(p_0_in21_in),
        .I4(status),
        .O(\c_chars_out[17]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_3__0 
       (.I0(lut_projection[15]),
        .I1(lut_projection[25]),
        .I2(Q[3]),
        .I3(lut_projection[7]),
        .I4(Q[4]),
        .I5(lut_projection[17]),
        .O(\c_chars_out[17]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_3__1 
       (.I0(lut_projection[15]),
        .I1(lut_projection[25]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[7]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[17]),
        .O(\c_chars_out[17]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[17]_i_3__2 
       (.I0(lut_projection[15]),
        .I1(lut_projection[25]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[7]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[17]),
        .O(\c_chars_out[17]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[17]_i_4 
       (.I0(\c_chars_out[17]_i_12_n_0 ),
        .I1(\c_chars_out[23]_i_18_n_0 ),
        .I2(\c_chars_out[17]_i_13_n_0 ),
        .I3(\c_chars_out[23]_i_20_n_0 ),
        .I4(\c_chars_out[23]_i_21_n_0 ),
        .I5(\c_chars_out[17]_i_14_n_0 ),
        .O(\c_chars_out[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[17]_i_5 
       (.I0(\c_chars_out[17]_i_15_n_0 ),
        .I1(\c_chars_out[17]_i_16_n_0 ),
        .I2(\c_chars_out[17]_i_17_n_0 ),
        .I3(\c_chars_out[17]_i_18_n_0 ),
        .I4(\c_chars_out[17]_i_19_n_0 ),
        .I5(\c_chars_out[17]_i_20_n_0 ),
        .O(\c_chars_out[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[17]_i_6 
       (.I0(\c_table_reg[1]__0 [0]),
        .I1(\c_table_reg[1]__0 [4]),
        .I2(\c_chars_out[1]_i_7_n_0 ),
        .I3(\c_table_reg[5]__0 [0]),
        .I4(\c_table_reg[5]__0 [4]),
        .I5(\c_chars_out[1]_i_8_n_0 ),
        .O(\c_chars_out[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[17]_i_7 
       (.I0(\c_table_reg[20]__0 [3]),
        .I1(p_0_in37_in),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[17]_i_8 
       (.I0(\c_table_reg[22]__0 [3]),
        .I1(p_0_in41_in),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[17]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[17]_i_9 
       (.I0(\c_table_reg[8]__0 [2]),
        .I1(\c_table_reg[8]__0 [1]),
        .I2(\c_table_reg[8]__0 [3]),
        .I3(p_0_in13_in),
        .I4(status),
        .O(\c_chars_out[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[18]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[18]_i_2_n_0 ),
        .I2(\c_chars_out[18]_i_3_n_0 ),
        .I3(\c_chars_out[18]_i_4_n_0 ),
        .I4(\c_chars_out[18]_i_5_n_0 ),
        .I5(lut_projection[18]),
        .O(\c_chars_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_10 
       (.I0(\c_chars_out[19]_i_25_n_0 ),
        .I1(\c_chars_out[24]_i_20_n_0 ),
        .I2(\c_chars_out[19]_i_26_n_0 ),
        .I3(\c_chars_out[24]_i_19_n_0 ),
        .I4(\c_chars_out[22]_i_25_n_0 ),
        .I5(\c_chars_out[19]_i_27_n_0 ),
        .O(\c_chars_out[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_11 
       (.I0(\c_chars_out[19]_i_28_n_0 ),
        .I1(\c_chars_out[24]_i_24_n_0 ),
        .I2(\c_chars_out[19]_i_29_n_0 ),
        .I3(\c_chars_out[24]_i_23_n_0 ),
        .I4(\c_chars_out[24]_i_28_n_0 ),
        .I5(\c_chars_out[19]_i_30_n_0 ),
        .O(\c_chars_out[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_12 
       (.I0(\c_chars_out[19]_i_31_n_0 ),
        .I1(\c_chars_out[24]_i_27_n_0 ),
        .I2(\c_chars_out[19]_i_32_n_0 ),
        .I3(\c_chars_out[24]_i_26_n_0 ),
        .I4(\c_chars_out[24]_i_25_n_0 ),
        .I5(\c_chars_out[19]_i_33_n_0 ),
        .O(\c_chars_out[18]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[18]_i_13 
       (.I0(\c_table_reg[2]__0 [2]),
        .I1(\c_table_reg[2]__0 [4]),
        .I2(\c_table_reg[2]__0 [0]),
        .O(\c_chars_out[18]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[18]_i_1__0 
       (.I0(\c_chars_out[19]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[18]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [18]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[18]_i_1__1 
       (.I0(\c_chars_out[19]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[18]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[18]_i_1__2 
       (.I0(\c_chars_out[19]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[18]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    \c_chars_out[18]_i_2 
       (.I0(\c_chars_out[19]_i_6_n_0 ),
        .I1(\c_chars_out[22]_i_6_n_0 ),
        .I2(\c_chars_out[19]_i_7_n_0 ),
        .I3(\c_chars_out[22]_i_7_n_0 ),
        .I4(\FSM_sequential_status_reg[0]_0 ),
        .I5(\c_chars_out[18]_i_6_n_0 ),
        .O(\c_chars_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_2__0 
       (.I0(\c_chars_out[24]_i_3__0_n_0 ),
        .I1(\c_chars_out[22]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[20]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[18]_i_3__0_n_0 ),
        .O(\c_chars_out[18]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_2__1 
       (.I0(\c_chars_out[24]_i_3__1_n_0 ),
        .I1(\c_chars_out[22]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[20]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[18]_i_3__1_n_0 ),
        .O(\c_chars_out[18]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_2__2 
       (.I0(\c_chars_out[24]_i_3__2_n_0 ),
        .I1(\c_chars_out[22]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[20]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[18]_i_3__2_n_0 ),
        .O(\c_chars_out[18]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_3 
       (.I0(\c_chars_out[19]_i_9_n_0 ),
        .I1(\c_chars_out[22]_i_9_n_0 ),
        .I2(\c_chars_out[19]_i_10_n_0 ),
        .I3(\c_chars_out[22]_i_10_n_0 ),
        .I4(\c_chars_out[22]_i_11_n_0 ),
        .I5(\c_chars_out[19]_i_11_n_0 ),
        .O(\c_chars_out[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_3__0 
       (.I0(lut_projection[16]),
        .I1(lut_projection[0]),
        .I2(Q[3]),
        .I3(lut_projection[8]),
        .I4(Q[4]),
        .I5(lut_projection[18]),
        .O(\c_chars_out[18]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_3__1 
       (.I0(lut_projection[16]),
        .I1(lut_projection[0]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[8]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[18]),
        .O(\c_chars_out[18]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[18]_i_3__2 
       (.I0(lut_projection[16]),
        .I1(lut_projection[0]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[8]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[18]),
        .O(\c_chars_out[18]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_4 
       (.I0(\c_chars_out[19]_i_12_n_0 ),
        .I1(\c_chars_out[22]_i_12_n_0 ),
        .I2(\c_chars_out[19]_i_13_n_0 ),
        .I3(\c_chars_out[22]_i_13_n_0 ),
        .I4(\c_chars_out[22]_i_14_n_0 ),
        .I5(\c_chars_out[19]_i_14_n_0 ),
        .O(\c_chars_out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[18]_i_5 
       (.I0(\c_chars_out[18]_i_7_n_0 ),
        .I1(\c_chars_out[18]_i_8_n_0 ),
        .I2(\c_chars_out[18]_i_9_n_0 ),
        .I3(\c_chars_out[18]_i_10_n_0 ),
        .I4(\c_chars_out[18]_i_11_n_0 ),
        .I5(\c_chars_out[18]_i_12_n_0 ),
        .O(\c_chars_out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[18]_i_6 
       (.I0(\c_chars_out[17]_i_7_n_0 ),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [1]),
        .I3(\c_table_reg[20]__0 [0]),
        .I4(\c_chars_out[17]_i_8_n_0 ),
        .I5(\c_chars_out[22]_i_21_n_0 ),
        .O(\c_chars_out[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \c_chars_out[18]_i_7 
       (.I0(\c_chars_out[7]_i_12_n_0 ),
        .I1(\c_table_reg[0]__0 [2]),
        .I2(\c_table_reg[0]__0 [4]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[18]_i_13_n_0 ),
        .O(\c_chars_out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \c_chars_out[18]_i_8 
       (.I0(\c_chars_out[7]_i_8_n_0 ),
        .I1(\c_chars_out[24]_i_17_n_0 ),
        .I2(\c_chars_out[3]_i_6_n_0 ),
        .I3(\c_table_reg[4]__0 [4]),
        .I4(\c_table_reg[4]__0 [1]),
        .I5(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[18]_i_9 
       (.I0(\c_chars_out[19]_i_22_n_0 ),
        .I1(\c_chars_out[22]_i_24_n_0 ),
        .I2(\c_chars_out[19]_i_23_n_0 ),
        .I3(\c_chars_out[24]_i_22_n_0 ),
        .I4(\c_chars_out[24]_i_21_n_0 ),
        .I5(\c_chars_out[19]_i_24_n_0 ),
        .O(\c_chars_out[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[19]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[19]_i_2_n_0 ),
        .I2(\c_chars_out[19]_i_3_n_0 ),
        .I3(\c_chars_out[19]_i_4_n_0 ),
        .I4(\c_chars_out[19]_i_5_n_0 ),
        .I5(lut_projection[19]),
        .O(\c_chars_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_10 
       (.I0(\c_table_reg[7]__0 [1]),
        .I1(status),
        .I2(p_0_in11_in),
        .I3(\c_table_reg[7]__0 [3]),
        .I4(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_11 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(status),
        .I2(p_0_in9_in),
        .I3(\c_table_reg[6]__0 [3]),
        .I4(\c_table_reg[6]__0 [2]),
        .O(\c_chars_out[19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_12 
       (.I0(\c_table_reg[11]__0 [1]),
        .I1(status),
        .I2(p_0_in19_in),
        .I3(\c_table_reg[11]__0 [3]),
        .I4(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_13 
       (.I0(\c_table_reg[10]__0 [1]),
        .I1(status),
        .I2(p_0_in17_in),
        .I3(\c_table_reg[10]__0 [3]),
        .I4(\c_table_reg[10]__0 [2]),
        .O(\c_chars_out[19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_14 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(status),
        .I2(p_0_in15_in),
        .I3(\c_table_reg[9]__0 [3]),
        .I4(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \c_chars_out[19]_i_15 
       (.I0(\c_chars_out[7]_i_12_n_0 ),
        .I1(\c_table_reg[0]__0 [2]),
        .I2(\c_table_reg[0]__0 [4]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[19]_i_21_n_0 ),
        .O(\c_chars_out[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \c_chars_out[19]_i_16 
       (.I0(\c_chars_out[7]_i_8_n_0 ),
        .I1(\c_chars_out[25]_i_19_n_0 ),
        .I2(\c_chars_out[3]_i_6_n_0 ),
        .I3(\c_table_reg[4]__0 [4]),
        .I4(\c_table_reg[4]__0 [1]),
        .I5(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_17 
       (.I0(\c_chars_out[19]_i_22_n_0 ),
        .I1(\c_chars_out[23]_i_33_n_0 ),
        .I2(\c_chars_out[19]_i_23_n_0 ),
        .I3(\c_chars_out[25]_i_40_n_0 ),
        .I4(\c_chars_out[25]_i_37_n_0 ),
        .I5(\c_chars_out[19]_i_24_n_0 ),
        .O(\c_chars_out[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_18 
       (.I0(\c_chars_out[19]_i_25_n_0 ),
        .I1(\c_chars_out[25]_i_28_n_0 ),
        .I2(\c_chars_out[19]_i_26_n_0 ),
        .I3(\c_chars_out[25]_i_25_n_0 ),
        .I4(\c_chars_out[23]_i_38_n_0 ),
        .I5(\c_chars_out[19]_i_27_n_0 ),
        .O(\c_chars_out[19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_19 
       (.I0(\c_chars_out[19]_i_28_n_0 ),
        .I1(\c_chars_out[25]_i_46_n_0 ),
        .I2(\c_chars_out[19]_i_29_n_0 ),
        .I3(\c_chars_out[25]_i_43_n_0 ),
        .I4(\c_chars_out[25]_i_58_n_0 ),
        .I5(\c_chars_out[19]_i_30_n_0 ),
        .O(\c_chars_out[19]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[19]_i_1__0 
       (.I0(\c_chars_out[20]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[19]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [19]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[19]_i_1__1 
       (.I0(\c_chars_out[20]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[19]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[19]_i_1__2 
       (.I0(\c_chars_out[20]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[19]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    \c_chars_out[19]_i_2 
       (.I0(\c_chars_out[19]_i_6_n_0 ),
        .I1(\c_chars_out[23]_i_7_n_0 ),
        .I2(\c_chars_out[19]_i_7_n_0 ),
        .I3(\c_chars_out[23]_i_9_n_0 ),
        .I4(\FSM_sequential_status_reg[0]_0 ),
        .I5(\c_chars_out[19]_i_8_n_0 ),
        .O(\c_chars_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_20 
       (.I0(\c_chars_out[19]_i_31_n_0 ),
        .I1(\c_chars_out[25]_i_55_n_0 ),
        .I2(\c_chars_out[19]_i_32_n_0 ),
        .I3(\c_chars_out[25]_i_52_n_0 ),
        .I4(\c_chars_out[25]_i_49_n_0 ),
        .I5(\c_chars_out[19]_i_33_n_0 ),
        .O(\c_chars_out[19]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[19]_i_21 
       (.I0(\c_table_reg[2]__0 [2]),
        .I1(\c_table_reg[2]__0 [4]),
        .I2(\c_table_reg[2]__0 [0]),
        .O(\c_chars_out[19]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_22 
       (.I0(\c_table_reg[21]__0 [1]),
        .I1(status),
        .I2(p_0_in39_in),
        .I3(\c_table_reg[21]__0 [3]),
        .I4(\c_table_reg[21]__0 [2]),
        .O(\c_chars_out[19]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_23 
       (.I0(\c_table_reg[19]__0 [1]),
        .I1(status),
        .I2(p_0_in35_in),
        .I3(\c_table_reg[19]__0 [3]),
        .I4(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[19]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_24 
       (.I0(\c_table_reg[18]__0 [1]),
        .I1(status),
        .I2(p_0_in33_in),
        .I3(\c_table_reg[18]__0 [3]),
        .I4(\c_table_reg[18]__0 [2]),
        .O(\c_chars_out[19]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_25 
       (.I0(\c_table_reg[25]__0 [1]),
        .I1(status),
        .I2(p_0_in47_in),
        .I3(\c_table_reg[25]__0 [3]),
        .I4(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[19]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_26 
       (.I0(\c_table_reg[24]__0 [1]),
        .I1(status),
        .I2(p_0_in45_in),
        .I3(\c_table_reg[24]__0 [3]),
        .I4(\c_table_reg[24]__0 [2]),
        .O(\c_chars_out[19]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_27 
       (.I0(\c_table_reg[23]__0 [1]),
        .I1(status),
        .I2(p_0_in43_in),
        .I3(\c_table_reg[23]__0 [3]),
        .I4(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[19]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_28 
       (.I0(\c_table_reg[17]__0 [1]),
        .I1(status),
        .I2(p_0_in31_in),
        .I3(\c_table_reg[17]__0 [3]),
        .I4(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[19]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_29 
       (.I0(\c_table_reg[16]__0 [1]),
        .I1(status),
        .I2(p_0_in29_in),
        .I3(\c_table_reg[16]__0 [3]),
        .I4(\c_table_reg[16]__0 [2]),
        .O(\c_chars_out[19]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_2__0 
       (.I0(\c_chars_out[25]_i_12__0_n_0 ),
        .I1(\c_chars_out[23]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[21]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[19]_i_3__0_n_0 ),
        .O(\c_chars_out[19]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_2__1 
       (.I0(\c_chars_out[25]_i_12__1_n_0 ),
        .I1(\c_chars_out[23]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[21]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[19]_i_3__1_n_0 ),
        .O(\c_chars_out[19]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_2__2 
       (.I0(\c_chars_out[25]_i_12__2_n_0 ),
        .I1(\c_chars_out[23]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[21]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[19]_i_3__2_n_0 ),
        .O(\c_chars_out[19]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_3 
       (.I0(\c_chars_out[19]_i_9_n_0 ),
        .I1(\c_chars_out[23]_i_12_n_0 ),
        .I2(\c_chars_out[19]_i_10_n_0 ),
        .I3(\c_chars_out[23]_i_14_n_0 ),
        .I4(\c_chars_out[23]_i_15_n_0 ),
        .I5(\c_chars_out[19]_i_11_n_0 ),
        .O(\c_chars_out[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_30 
       (.I0(\c_table_reg[15]__0 [1]),
        .I1(status),
        .I2(p_0_in27_in),
        .I3(\c_table_reg[15]__0 [3]),
        .I4(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[19]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_31 
       (.I0(\c_table_reg[14]__0 [1]),
        .I1(status),
        .I2(p_0_in25_in),
        .I3(\c_table_reg[14]__0 [3]),
        .I4(\c_table_reg[14]__0 [2]),
        .O(\c_chars_out[19]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_32 
       (.I0(\c_table_reg[13]__0 [1]),
        .I1(status),
        .I2(p_0_in23_in),
        .I3(\c_table_reg[13]__0 [3]),
        .I4(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[19]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_33 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(status),
        .I2(p_0_in21_in),
        .I3(\c_table_reg[12]__0 [3]),
        .I4(\c_table_reg[12]__0 [2]),
        .O(\c_chars_out[19]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_3__0 
       (.I0(lut_projection[17]),
        .I1(lut_projection[1]),
        .I2(Q[3]),
        .I3(lut_projection[9]),
        .I4(Q[4]),
        .I5(lut_projection[19]),
        .O(\c_chars_out[19]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_3__1 
       (.I0(lut_projection[17]),
        .I1(lut_projection[1]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[9]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[19]),
        .O(\c_chars_out[19]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[19]_i_3__2 
       (.I0(lut_projection[17]),
        .I1(lut_projection[1]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[9]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[19]),
        .O(\c_chars_out[19]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[19]_i_4 
       (.I0(\c_chars_out[19]_i_12_n_0 ),
        .I1(\c_chars_out[23]_i_18_n_0 ),
        .I2(\c_chars_out[19]_i_13_n_0 ),
        .I3(\c_chars_out[23]_i_20_n_0 ),
        .I4(\c_chars_out[23]_i_21_n_0 ),
        .I5(\c_chars_out[19]_i_14_n_0 ),
        .O(\c_chars_out[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[19]_i_5 
       (.I0(\c_chars_out[19]_i_15_n_0 ),
        .I1(\c_chars_out[19]_i_16_n_0 ),
        .I2(\c_chars_out[19]_i_17_n_0 ),
        .I3(\c_chars_out[19]_i_18_n_0 ),
        .I4(\c_chars_out[19]_i_19_n_0 ),
        .I5(\c_chars_out[19]_i_20_n_0 ),
        .O(\c_chars_out[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_6 
       (.I0(\c_table_reg[5]__0 [1]),
        .I1(status),
        .I2(p_0_in7_in),
        .I3(\c_table_reg[5]__0 [3]),
        .I4(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_7 
       (.I0(\c_table_reg[1]__0 [1]),
        .I1(status),
        .I2(c_chars_in[1]),
        .I3(\c_table_reg[1]__0 [3]),
        .I4(\c_table_reg[1]__0 [2]),
        .O(\c_chars_out[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[19]_i_8 
       (.I0(\c_chars_out[17]_i_7_n_0 ),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [1]),
        .I3(\c_table_reg[20]__0 [0]),
        .I4(\c_chars_out[17]_i_8_n_0 ),
        .I5(\c_chars_out[23]_i_29_n_0 ),
        .O(\c_chars_out[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \c_chars_out[19]_i_9 
       (.I0(\c_table_reg[8]__0 [1]),
        .I1(status),
        .I2(p_0_in13_in),
        .I3(\c_table_reg[8]__0 [3]),
        .I4(\c_table_reg[8]__0 [2]),
        .O(\c_chars_out[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[1]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[1]_i_2_n_0 ),
        .I2(\c_chars_out[1]_i_3_n_0 ),
        .I3(\c_chars_out[1]_i_4_n_0 ),
        .I4(\c_chars_out[1]_i_5_n_0 ),
        .I5(lut_projection[1]),
        .O(\c_chars_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[1]_i_10 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[17]_i_14_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[17]_i_13_n_0 ),
        .O(\c_chars_out[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[1]_i_11 
       (.I0(\c_chars_out[17]_i_28_n_0 ),
        .I1(\c_chars_out[7]_i_25_n_0 ),
        .I2(\c_chars_out[17]_i_29_n_0 ),
        .I3(\c_chars_out[7]_i_26_n_0 ),
        .I4(\c_chars_out[7]_i_27_n_0 ),
        .I5(\c_chars_out[17]_i_30_n_0 ),
        .O(\c_chars_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[1]_i_12 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[17]_i_32_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[17]_i_31_n_0 ),
        .O(\c_chars_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[1]_i_13 
       (.I0(\c_chars_out[13]_i_28_n_0 ),
        .I1(\c_chars_out[17]_i_8_n_0 ),
        .I2(\c_chars_out[13]_i_29_n_0 ),
        .I3(\c_chars_out[17]_i_7_n_0 ),
        .I4(\c_chars_out[7]_i_28_n_0 ),
        .I5(\c_chars_out[17]_i_21_n_0 ),
        .O(\c_chars_out[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[1]_i_14 
       (.I0(\c_chars_out[17]_i_22_n_0 ),
        .I1(\c_chars_out[7]_i_29_n_0 ),
        .I2(\c_chars_out[17]_i_23_n_0 ),
        .I3(\c_chars_out[7]_i_30_n_0 ),
        .I4(\c_chars_out[7]_i_31_n_0 ),
        .I5(\c_chars_out[17]_i_27_n_0 ),
        .O(\c_chars_out[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[1]_i_1__0 
       (.I0(\c_chars_out[2]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[1]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[1]_i_1__1 
       (.I0(\c_chars_out[2]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[1]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[1]_i_1__2 
       (.I0(\c_chars_out[2]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[1]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[1]_i_2 
       (.I0(\c_chars_out[9]_i_6_n_0 ),
        .I1(\c_chars_out[3]_i_6_n_0 ),
        .I2(\c_chars_out[11]_i_5_n_0 ),
        .I3(\c_chars_out[5]_i_6_n_0 ),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[11]_i_6_n_0 ),
        .O(\c_chars_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[1]_i_2__0 
       (.I0(\c_chars_out[7]_i_3__0_n_0 ),
        .I1(\c_chars_out[25]_i_9__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_10__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_11__0_n_0 ),
        .O(\c_chars_out[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[1]_i_2__1 
       (.I0(\c_chars_out[7]_i_3__1_n_0 ),
        .I1(\c_chars_out[25]_i_9__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_10__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_11__1_n_0 ),
        .O(\c_chars_out[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[1]_i_2__2 
       (.I0(\c_chars_out[7]_i_3__2_n_0 ),
        .I1(\c_chars_out[25]_i_9__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_10__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_11__2_n_0 ),
        .O(\c_chars_out[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[1]_i_3 
       (.I0(\c_chars_out[1]_i_6_n_0 ),
        .I1(\c_chars_out[1]_i_7_n_0 ),
        .I2(\c_chars_out[7]_i_11_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[11]_i_7_n_0 ),
        .I5(\c_chars_out[5]_i_10_n_0 ),
        .O(\c_chars_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[1]_i_4 
       (.I0(\c_chars_out[1]_i_8_n_0 ),
        .I1(\c_chars_out[7]_i_13_n_0 ),
        .I2(\c_chars_out[1]_i_9_n_0 ),
        .I3(\c_chars_out[17]_i_9_n_0 ),
        .I4(\c_chars_out[7]_i_15_n_0 ),
        .I5(\c_chars_out[1]_i_10_n_0 ),
        .O(\c_chars_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[1]_i_5 
       (.I0(\c_chars_out[1]_i_11_n_0 ),
        .I1(\c_chars_out[1]_i_12_n_0 ),
        .I2(\c_chars_out[7]_i_19_n_0 ),
        .I3(\c_chars_out[17]_i_12_n_0 ),
        .I4(\c_chars_out[1]_i_13_n_0 ),
        .I5(\c_chars_out[1]_i_14_n_0 ),
        .O(\c_chars_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[1]_i_6 
       (.I0(\c_chars_out[17]_i_24_n_0 ),
        .I1(\c_chars_out[7]_i_22_n_0 ),
        .I2(\c_chars_out[17]_i_25_n_0 ),
        .I3(\c_chars_out[7]_i_23_n_0 ),
        .I4(\c_chars_out[7]_i_24_n_0 ),
        .I5(\c_chars_out[17]_i_26_n_0 ),
        .O(\c_chars_out[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[1]_i_7 
       (.I0(\c_table_reg[1]__0 [2]),
        .I1(\c_table_reg[1]__0 [1]),
        .I2(\c_table_reg[1]__0 [3]),
        .I3(c_chars_in[1]),
        .I4(status),
        .O(\c_chars_out[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \c_chars_out[1]_i_8 
       (.I0(\c_table_reg[5]__0 [2]),
        .I1(\c_table_reg[5]__0 [1]),
        .I2(\c_table_reg[5]__0 [3]),
        .I3(p_0_in7_in),
        .I4(status),
        .O(\c_chars_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[1]_i_9 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[17]_i_11_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[17]_i_10_n_0 ),
        .O(\c_chars_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[20]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[20]_i_2_n_0 ),
        .I2(\c_chars_out[20]_i_3_n_0 ),
        .I3(\c_chars_out[20]_i_4_n_0 ),
        .I4(\c_chars_out[20]_i_5_n_0 ),
        .I5(lut_projection[20]),
        .O(\c_chars_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[20]_i_10 
       (.I0(\c_chars_out[5]_i_6_n_0 ),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [2]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[7]_i_7_n_0 ),
        .I5(\c_chars_out[24]_i_29_n_0 ),
        .O(\c_chars_out[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_11 
       (.I0(\c_chars_out[21]_i_23_n_0 ),
        .I1(\c_chars_out[22]_i_24_n_0 ),
        .I2(\c_chars_out[21]_i_24_n_0 ),
        .I3(\c_chars_out[24]_i_22_n_0 ),
        .I4(\c_chars_out[24]_i_21_n_0 ),
        .I5(\c_chars_out[21]_i_25_n_0 ),
        .O(\c_chars_out[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_12 
       (.I0(\c_chars_out[21]_i_26_n_0 ),
        .I1(\c_chars_out[24]_i_20_n_0 ),
        .I2(\c_chars_out[21]_i_27_n_0 ),
        .I3(\c_chars_out[24]_i_19_n_0 ),
        .I4(\c_chars_out[22]_i_25_n_0 ),
        .I5(\c_chars_out[21]_i_28_n_0 ),
        .O(\c_chars_out[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_13 
       (.I0(\c_chars_out[21]_i_29_n_0 ),
        .I1(\c_chars_out[24]_i_24_n_0 ),
        .I2(\c_chars_out[21]_i_30_n_0 ),
        .I3(\c_chars_out[24]_i_23_n_0 ),
        .I4(\c_chars_out[24]_i_28_n_0 ),
        .I5(\c_chars_out[21]_i_31_n_0 ),
        .O(\c_chars_out[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_14 
       (.I0(\c_chars_out[21]_i_32_n_0 ),
        .I1(\c_chars_out[24]_i_27_n_0 ),
        .I2(\c_chars_out[21]_i_33_n_0 ),
        .I3(\c_chars_out[24]_i_26_n_0 ),
        .I4(\c_chars_out[24]_i_25_n_0 ),
        .I5(\c_chars_out[21]_i_34_n_0 ),
        .O(\c_chars_out[20]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[20]_i_1__0 
       (.I0(\c_chars_out[21]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[20]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [20]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[20]_i_1__1 
       (.I0(\c_chars_out[21]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[20]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[20]_i_1__2 
       (.I0(\c_chars_out[21]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[20]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [20]));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \c_chars_out[20]_i_2 
       (.I0(\c_chars_out[20]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[21]_i_7_n_0 ),
        .I3(\c_chars_out[20]_i_7_n_0 ),
        .I4(\c_chars_out[21]_i_9_n_0 ),
        .I5(\c_chars_out[20]_i_8_n_0 ),
        .O(\c_chars_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_2__0 
       (.I0(\c_chars_out[25]_i_8__0_n_0 ),
        .I1(\c_chars_out[24]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[22]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[20]_i_3__0_n_0 ),
        .O(\c_chars_out[20]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_2__1 
       (.I0(\c_chars_out[25]_i_8__1_n_0 ),
        .I1(\c_chars_out[24]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[22]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[20]_i_3__1_n_0 ),
        .O(\c_chars_out[20]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_2__2 
       (.I0(\c_chars_out[25]_i_8__2_n_0 ),
        .I1(\c_chars_out[24]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[22]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[20]_i_3__2_n_0 ),
        .O(\c_chars_out[20]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_3 
       (.I0(\c_chars_out[21]_i_11_n_0 ),
        .I1(\c_chars_out[22]_i_9_n_0 ),
        .I2(\c_chars_out[21]_i_12_n_0 ),
        .I3(\c_chars_out[22]_i_10_n_0 ),
        .I4(\c_chars_out[22]_i_11_n_0 ),
        .I5(\c_chars_out[21]_i_13_n_0 ),
        .O(\c_chars_out[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_3__0 
       (.I0(lut_projection[18]),
        .I1(lut_projection[2]),
        .I2(Q[3]),
        .I3(lut_projection[10]),
        .I4(Q[4]),
        .I5(lut_projection[20]),
        .O(\c_chars_out[20]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_3__1 
       (.I0(lut_projection[18]),
        .I1(lut_projection[2]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[10]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[20]),
        .O(\c_chars_out[20]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[20]_i_3__2 
       (.I0(lut_projection[18]),
        .I1(lut_projection[2]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[10]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[20]),
        .O(\c_chars_out[20]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[20]_i_4 
       (.I0(\c_chars_out[21]_i_14_n_0 ),
        .I1(\c_chars_out[22]_i_12_n_0 ),
        .I2(\c_chars_out[21]_i_15_n_0 ),
        .I3(\c_chars_out[22]_i_13_n_0 ),
        .I4(\c_chars_out[22]_i_14_n_0 ),
        .I5(\c_chars_out[21]_i_16_n_0 ),
        .O(\c_chars_out[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[20]_i_5 
       (.I0(\c_chars_out[20]_i_9_n_0 ),
        .I1(\c_chars_out[20]_i_10_n_0 ),
        .I2(\c_chars_out[20]_i_11_n_0 ),
        .I3(\c_chars_out[20]_i_12_n_0 ),
        .I4(\c_chars_out[20]_i_13_n_0 ),
        .I5(\c_chars_out[20]_i_14_n_0 ),
        .O(\c_chars_out[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[20]_i_6 
       (.I0(\c_table_reg[1]__0 [4]),
        .I1(\c_table_reg[1]__0 [0]),
        .I2(\c_chars_out[5]_i_9_n_0 ),
        .I3(\c_table_reg[5]__0 [4]),
        .I4(\c_table_reg[5]__0 [0]),
        .I5(\c_chars_out[5]_i_11_n_0 ),
        .O(\c_chars_out[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[20]_i_7 
       (.I0(\c_table_reg[20]__0 [1]),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [0]),
        .O(\c_chars_out[20]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[20]_i_8 
       (.I0(\c_table_reg[22]__0 [1]),
        .I1(\c_table_reg[22]__0 [4]),
        .I2(\c_table_reg[22]__0 [0]),
        .O(\c_chars_out[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[20]_i_9 
       (.I0(\c_chars_out[5]_i_10_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [2]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[22]_i_22_n_0 ),
        .O(\c_chars_out[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[21]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[21]_i_2_n_0 ),
        .I2(\c_chars_out[21]_i_3_n_0 ),
        .I3(\c_chars_out[21]_i_4_n_0 ),
        .I4(\c_chars_out[21]_i_5_n_0 ),
        .I5(lut_projection[21]),
        .O(\c_chars_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[21]_i_10 
       (.I0(\c_table_reg[22]__0 [1]),
        .I1(\c_table_reg[22]__0 [4]),
        .I2(\c_table_reg[22]__0 [0]),
        .O(\c_chars_out[21]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_11 
       (.I0(\c_table_reg[8]__0 [1]),
        .I1(\c_table_reg[8]__0 [2]),
        .I2(\c_table_reg[8]__0 [3]),
        .I3(p_0_in13_in),
        .I4(status),
        .O(\c_chars_out[21]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_12 
       (.I0(\c_table_reg[7]__0 [1]),
        .I1(\c_table_reg[7]__0 [2]),
        .I2(\c_table_reg[7]__0 [3]),
        .I3(p_0_in11_in),
        .I4(status),
        .O(\c_chars_out[21]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_13 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(\c_table_reg[6]__0 [2]),
        .I2(\c_table_reg[6]__0 [3]),
        .I3(p_0_in9_in),
        .I4(status),
        .O(\c_chars_out[21]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_14 
       (.I0(\c_table_reg[11]__0 [1]),
        .I1(\c_table_reg[11]__0 [2]),
        .I2(\c_table_reg[11]__0 [3]),
        .I3(p_0_in19_in),
        .I4(status),
        .O(\c_chars_out[21]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_15 
       (.I0(\c_table_reg[10]__0 [1]),
        .I1(\c_table_reg[10]__0 [2]),
        .I2(\c_table_reg[10]__0 [3]),
        .I3(p_0_in17_in),
        .I4(status),
        .O(\c_chars_out[21]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_16 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(\c_table_reg[9]__0 [2]),
        .I2(\c_table_reg[9]__0 [3]),
        .I3(p_0_in15_in),
        .I4(status),
        .O(\c_chars_out[21]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[21]_i_17 
       (.I0(\c_chars_out[5]_i_10_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [2]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[23]_i_30_n_0 ),
        .O(\c_chars_out[21]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[21]_i_18 
       (.I0(\c_chars_out[5]_i_6_n_0 ),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [2]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[7]_i_7_n_0 ),
        .I5(\c_chars_out[25]_i_70_n_0 ),
        .O(\c_chars_out[21]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_19 
       (.I0(\c_chars_out[21]_i_23_n_0 ),
        .I1(\c_chars_out[23]_i_33_n_0 ),
        .I2(\c_chars_out[21]_i_24_n_0 ),
        .I3(\c_chars_out[25]_i_40_n_0 ),
        .I4(\c_chars_out[25]_i_37_n_0 ),
        .I5(\c_chars_out[21]_i_25_n_0 ),
        .O(\c_chars_out[21]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[21]_i_1__0 
       (.I0(\c_chars_out[22]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[21]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [21]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[21]_i_1__1 
       (.I0(\c_chars_out[22]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[21]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[21]_i_1__2 
       (.I0(\c_chars_out[22]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[21]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [21]));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \c_chars_out[21]_i_2 
       (.I0(\c_chars_out[21]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[21]_i_7_n_0 ),
        .I3(\c_chars_out[21]_i_8_n_0 ),
        .I4(\c_chars_out[21]_i_9_n_0 ),
        .I5(\c_chars_out[21]_i_10_n_0 ),
        .O(\c_chars_out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_20 
       (.I0(\c_chars_out[21]_i_26_n_0 ),
        .I1(\c_chars_out[25]_i_28_n_0 ),
        .I2(\c_chars_out[21]_i_27_n_0 ),
        .I3(\c_chars_out[25]_i_25_n_0 ),
        .I4(\c_chars_out[23]_i_38_n_0 ),
        .I5(\c_chars_out[21]_i_28_n_0 ),
        .O(\c_chars_out[21]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_21 
       (.I0(\c_chars_out[21]_i_29_n_0 ),
        .I1(\c_chars_out[25]_i_46_n_0 ),
        .I2(\c_chars_out[21]_i_30_n_0 ),
        .I3(\c_chars_out[25]_i_43_n_0 ),
        .I4(\c_chars_out[25]_i_58_n_0 ),
        .I5(\c_chars_out[21]_i_31_n_0 ),
        .O(\c_chars_out[21]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_22 
       (.I0(\c_chars_out[21]_i_32_n_0 ),
        .I1(\c_chars_out[25]_i_55_n_0 ),
        .I2(\c_chars_out[21]_i_33_n_0 ),
        .I3(\c_chars_out[25]_i_52_n_0 ),
        .I4(\c_chars_out[25]_i_49_n_0 ),
        .I5(\c_chars_out[21]_i_34_n_0 ),
        .O(\c_chars_out[21]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_23 
       (.I0(\c_table_reg[21]__0 [1]),
        .I1(\c_table_reg[21]__0 [2]),
        .I2(\c_table_reg[21]__0 [3]),
        .I3(p_0_in39_in),
        .I4(status),
        .O(\c_chars_out[21]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_24 
       (.I0(\c_table_reg[19]__0 [1]),
        .I1(\c_table_reg[19]__0 [2]),
        .I2(\c_table_reg[19]__0 [3]),
        .I3(p_0_in35_in),
        .I4(status),
        .O(\c_chars_out[21]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_25 
       (.I0(\c_table_reg[18]__0 [1]),
        .I1(\c_table_reg[18]__0 [2]),
        .I2(\c_table_reg[18]__0 [3]),
        .I3(p_0_in33_in),
        .I4(status),
        .O(\c_chars_out[21]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_26 
       (.I0(\c_table_reg[25]__0 [1]),
        .I1(\c_table_reg[25]__0 [2]),
        .I2(\c_table_reg[25]__0 [3]),
        .I3(p_0_in47_in),
        .I4(status),
        .O(\c_chars_out[21]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_27 
       (.I0(\c_table_reg[24]__0 [1]),
        .I1(\c_table_reg[24]__0 [2]),
        .I2(\c_table_reg[24]__0 [3]),
        .I3(p_0_in45_in),
        .I4(status),
        .O(\c_chars_out[21]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_28 
       (.I0(\c_table_reg[23]__0 [1]),
        .I1(\c_table_reg[23]__0 [2]),
        .I2(\c_table_reg[23]__0 [3]),
        .I3(p_0_in43_in),
        .I4(status),
        .O(\c_chars_out[21]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_29 
       (.I0(\c_table_reg[17]__0 [1]),
        .I1(\c_table_reg[17]__0 [2]),
        .I2(\c_table_reg[17]__0 [3]),
        .I3(p_0_in31_in),
        .I4(status),
        .O(\c_chars_out[21]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_2__0 
       (.I0(\c_chars_out[25]_i_11__0_n_0 ),
        .I1(\c_chars_out[25]_i_12__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[23]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[21]_i_3__0_n_0 ),
        .O(\c_chars_out[21]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_2__1 
       (.I0(\c_chars_out[25]_i_11__1_n_0 ),
        .I1(\c_chars_out[25]_i_12__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[23]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[21]_i_3__1_n_0 ),
        .O(\c_chars_out[21]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_2__2 
       (.I0(\c_chars_out[25]_i_11__2_n_0 ),
        .I1(\c_chars_out[25]_i_12__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[23]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[21]_i_3__2_n_0 ),
        .O(\c_chars_out[21]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_3 
       (.I0(\c_chars_out[21]_i_11_n_0 ),
        .I1(\c_chars_out[23]_i_12_n_0 ),
        .I2(\c_chars_out[21]_i_12_n_0 ),
        .I3(\c_chars_out[23]_i_14_n_0 ),
        .I4(\c_chars_out[23]_i_15_n_0 ),
        .I5(\c_chars_out[21]_i_13_n_0 ),
        .O(\c_chars_out[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_30 
       (.I0(\c_table_reg[16]__0 [1]),
        .I1(\c_table_reg[16]__0 [2]),
        .I2(\c_table_reg[16]__0 [3]),
        .I3(p_0_in29_in),
        .I4(status),
        .O(\c_chars_out[21]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_31 
       (.I0(\c_table_reg[15]__0 [1]),
        .I1(\c_table_reg[15]__0 [2]),
        .I2(\c_table_reg[15]__0 [3]),
        .I3(p_0_in27_in),
        .I4(status),
        .O(\c_chars_out[21]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_32 
       (.I0(\c_table_reg[14]__0 [1]),
        .I1(\c_table_reg[14]__0 [2]),
        .I2(\c_table_reg[14]__0 [3]),
        .I3(p_0_in25_in),
        .I4(status),
        .O(\c_chars_out[21]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_33 
       (.I0(\c_table_reg[13]__0 [1]),
        .I1(\c_table_reg[13]__0 [2]),
        .I2(\c_table_reg[13]__0 [3]),
        .I3(p_0_in23_in),
        .I4(status),
        .O(\c_chars_out[21]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[21]_i_34 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(\c_table_reg[12]__0 [2]),
        .I2(\c_table_reg[12]__0 [3]),
        .I3(p_0_in21_in),
        .I4(status),
        .O(\c_chars_out[21]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_3__0 
       (.I0(lut_projection[19]),
        .I1(lut_projection[3]),
        .I2(Q[3]),
        .I3(lut_projection[11]),
        .I4(Q[4]),
        .I5(lut_projection[21]),
        .O(\c_chars_out[21]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_3__1 
       (.I0(lut_projection[19]),
        .I1(lut_projection[3]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[11]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[21]),
        .O(\c_chars_out[21]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[21]_i_3__2 
       (.I0(lut_projection[19]),
        .I1(lut_projection[3]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[11]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[21]),
        .O(\c_chars_out[21]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[21]_i_4 
       (.I0(\c_chars_out[21]_i_14_n_0 ),
        .I1(\c_chars_out[23]_i_18_n_0 ),
        .I2(\c_chars_out[21]_i_15_n_0 ),
        .I3(\c_chars_out[23]_i_20_n_0 ),
        .I4(\c_chars_out[23]_i_21_n_0 ),
        .I5(\c_chars_out[21]_i_16_n_0 ),
        .O(\c_chars_out[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[21]_i_5 
       (.I0(\c_chars_out[21]_i_17_n_0 ),
        .I1(\c_chars_out[21]_i_18_n_0 ),
        .I2(\c_chars_out[21]_i_19_n_0 ),
        .I3(\c_chars_out[21]_i_20_n_0 ),
        .I4(\c_chars_out[21]_i_21_n_0 ),
        .I5(\c_chars_out[21]_i_22_n_0 ),
        .O(\c_chars_out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[21]_i_6 
       (.I0(\c_table_reg[1]__0 [0]),
        .I1(\c_table_reg[1]__0 [4]),
        .I2(\c_chars_out[5]_i_9_n_0 ),
        .I3(\c_table_reg[5]__0 [0]),
        .I4(\c_table_reg[5]__0 [4]),
        .I5(\c_chars_out[5]_i_11_n_0 ),
        .O(\c_chars_out[21]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[21]_i_7 
       (.I0(\c_table_reg[20]__0 [3]),
        .I1(p_0_in37_in),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[21]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[21]_i_8 
       (.I0(\c_table_reg[20]__0 [1]),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [0]),
        .O(\c_chars_out[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[21]_i_9 
       (.I0(\c_table_reg[22]__0 [3]),
        .I1(p_0_in41_in),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[22]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[22]_i_2_n_0 ),
        .I2(\c_chars_out[22]_i_3_n_0 ),
        .I3(\c_chars_out[22]_i_4_n_0 ),
        .I4(\c_chars_out[22]_i_5_n_0 ),
        .I5(lut_projection[22]),
        .O(\c_chars_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_10 
       (.I0(\c_table_reg[7]__0 [4]),
        .I1(\c_table_reg[7]__0 [0]),
        .O(\c_chars_out[22]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_11 
       (.I0(\c_table_reg[6]__0 [4]),
        .I1(\c_table_reg[6]__0 [0]),
        .O(\c_chars_out[22]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_12 
       (.I0(\c_table_reg[11]__0 [4]),
        .I1(\c_table_reg[11]__0 [0]),
        .O(\c_chars_out[22]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_13 
       (.I0(\c_table_reg[10]__0 [4]),
        .I1(\c_table_reg[10]__0 [0]),
        .O(\c_chars_out[22]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_14 
       (.I0(\c_table_reg[9]__0 [4]),
        .I1(\c_table_reg[9]__0 [0]),
        .O(\c_chars_out[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[22]_i_15 
       (.I0(\c_chars_out[7]_i_12_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [2]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[22]_i_22_n_0 ),
        .O(\c_chars_out[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[22]_i_16 
       (.I0(\c_chars_out[7]_i_8_n_0 ),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [2]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[7]_i_7_n_0 ),
        .I5(\c_chars_out[22]_i_23_n_0 ),
        .O(\c_chars_out[22]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_17 
       (.I0(\c_chars_out[23]_i_32_n_0 ),
        .I1(\c_chars_out[22]_i_24_n_0 ),
        .I2(\c_chars_out[23]_i_34_n_0 ),
        .I3(\c_chars_out[24]_i_22_n_0 ),
        .I4(\c_chars_out[24]_i_21_n_0 ),
        .I5(\c_chars_out[23]_i_35_n_0 ),
        .O(\c_chars_out[22]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_18 
       (.I0(\c_chars_out[23]_i_36_n_0 ),
        .I1(\c_chars_out[24]_i_20_n_0 ),
        .I2(\c_chars_out[23]_i_37_n_0 ),
        .I3(\c_chars_out[24]_i_19_n_0 ),
        .I4(\c_chars_out[22]_i_25_n_0 ),
        .I5(\c_chars_out[23]_i_39_n_0 ),
        .O(\c_chars_out[22]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_19 
       (.I0(\c_chars_out[23]_i_40_n_0 ),
        .I1(\c_chars_out[24]_i_24_n_0 ),
        .I2(\c_chars_out[23]_i_41_n_0 ),
        .I3(\c_chars_out[24]_i_23_n_0 ),
        .I4(\c_chars_out[24]_i_28_n_0 ),
        .I5(\c_chars_out[23]_i_42_n_0 ),
        .O(\c_chars_out[22]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[22]_i_1__0 
       (.I0(\c_chars_out[23]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[22]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [22]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[22]_i_1__1 
       (.I0(\c_chars_out[23]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[22]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[22]_i_1__2 
       (.I0(\c_chars_out[23]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[22]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    \c_chars_out[22]_i_2 
       (.I0(\c_chars_out[23]_i_6_n_0 ),
        .I1(\c_chars_out[22]_i_6_n_0 ),
        .I2(\c_chars_out[23]_i_8_n_0 ),
        .I3(\c_chars_out[22]_i_7_n_0 ),
        .I4(\FSM_sequential_status_reg[0]_0 ),
        .I5(\c_chars_out[22]_i_8_n_0 ),
        .O(\c_chars_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_20 
       (.I0(\c_chars_out[23]_i_43_n_0 ),
        .I1(\c_chars_out[24]_i_27_n_0 ),
        .I2(\c_chars_out[23]_i_44_n_0 ),
        .I3(\c_chars_out[24]_i_26_n_0 ),
        .I4(\c_chars_out[24]_i_25_n_0 ),
        .I5(\c_chars_out[23]_i_45_n_0 ),
        .O(\c_chars_out[22]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[22]_i_21 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [1]),
        .I2(\c_table_reg[22]__0 [0]),
        .O(\c_chars_out[22]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[22]_i_22 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [2]),
        .I2(\c_table_reg[2]__0 [0]),
        .O(\c_chars_out[22]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \c_chars_out[22]_i_23 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [1]),
        .I2(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[22]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_24 
       (.I0(\c_table_reg[21]__0 [4]),
        .I1(\c_table_reg[21]__0 [0]),
        .O(\c_chars_out[22]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_25 
       (.I0(\c_table_reg[23]__0 [4]),
        .I1(\c_table_reg[23]__0 [0]),
        .O(\c_chars_out[22]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_2__0 
       (.I0(\c_chars_out[25]_i_7__0_n_0 ),
        .I1(\c_chars_out[25]_i_8__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[24]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[22]_i_3__0_n_0 ),
        .O(\c_chars_out[22]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_2__1 
       (.I0(\c_chars_out[25]_i_7__1_n_0 ),
        .I1(\c_chars_out[25]_i_8__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[24]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[22]_i_3__1_n_0 ),
        .O(\c_chars_out[22]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_2__2 
       (.I0(\c_chars_out[25]_i_7__2_n_0 ),
        .I1(\c_chars_out[25]_i_8__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[24]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[22]_i_3__2_n_0 ),
        .O(\c_chars_out[22]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_3 
       (.I0(\c_chars_out[23]_i_11_n_0 ),
        .I1(\c_chars_out[22]_i_9_n_0 ),
        .I2(\c_chars_out[23]_i_13_n_0 ),
        .I3(\c_chars_out[22]_i_10_n_0 ),
        .I4(\c_chars_out[22]_i_11_n_0 ),
        .I5(\c_chars_out[23]_i_16_n_0 ),
        .O(\c_chars_out[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_3__0 
       (.I0(lut_projection[20]),
        .I1(lut_projection[4]),
        .I2(Q[3]),
        .I3(lut_projection[12]),
        .I4(Q[4]),
        .I5(lut_projection[22]),
        .O(\c_chars_out[22]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_3__1 
       (.I0(lut_projection[20]),
        .I1(lut_projection[4]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[12]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[22]),
        .O(\c_chars_out[22]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[22]_i_3__2 
       (.I0(lut_projection[20]),
        .I1(lut_projection[4]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[12]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[22]),
        .O(\c_chars_out[22]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[22]_i_4 
       (.I0(\c_chars_out[23]_i_17_n_0 ),
        .I1(\c_chars_out[22]_i_12_n_0 ),
        .I2(\c_chars_out[23]_i_19_n_0 ),
        .I3(\c_chars_out[22]_i_13_n_0 ),
        .I4(\c_chars_out[22]_i_14_n_0 ),
        .I5(\c_chars_out[23]_i_22_n_0 ),
        .O(\c_chars_out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[22]_i_5 
       (.I0(\c_chars_out[22]_i_15_n_0 ),
        .I1(\c_chars_out[22]_i_16_n_0 ),
        .I2(\c_chars_out[22]_i_17_n_0 ),
        .I3(\c_chars_out[22]_i_18_n_0 ),
        .I4(\c_chars_out[22]_i_19_n_0 ),
        .I5(\c_chars_out[22]_i_20_n_0 ),
        .O(\c_chars_out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_6 
       (.I0(\c_table_reg[5]__0 [4]),
        .I1(\c_table_reg[5]__0 [0]),
        .O(\c_chars_out[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_7 
       (.I0(\c_table_reg[1]__0 [4]),
        .I1(\c_table_reg[1]__0 [0]),
        .O(\c_chars_out[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \c_chars_out[22]_i_8 
       (.I0(\c_chars_out[21]_i_7_n_0 ),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [1]),
        .I3(\c_table_reg[20]__0 [0]),
        .I4(\c_chars_out[21]_i_9_n_0 ),
        .I5(\c_chars_out[22]_i_21_n_0 ),
        .O(\c_chars_out[22]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[22]_i_9 
       (.I0(\c_table_reg[8]__0 [4]),
        .I1(\c_table_reg[8]__0 [0]),
        .O(\c_chars_out[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[23]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[23]_i_2_n_0 ),
        .I2(\c_chars_out[23]_i_3_n_0 ),
        .I3(\c_chars_out[23]_i_4_n_0 ),
        .I4(\c_chars_out[23]_i_5_n_0 ),
        .I5(lut_projection[23]),
        .O(\c_chars_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[23]_i_10 
       (.I0(\c_chars_out[21]_i_7_n_0 ),
        .I1(\c_table_reg[20]__0 [4]),
        .I2(\c_table_reg[20]__0 [1]),
        .I3(\c_table_reg[20]__0 [0]),
        .I4(\c_chars_out[21]_i_9_n_0 ),
        .I5(\c_chars_out[23]_i_29_n_0 ),
        .O(\c_chars_out[23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_11 
       (.I0(\c_table_reg[8]__0 [1]),
        .I1(status),
        .I2(p_0_in13_in),
        .I3(\c_table_reg[8]__0 [3]),
        .I4(\c_table_reg[8]__0 [2]),
        .O(\c_chars_out[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_12 
       (.I0(\c_table_reg[8]__0 [0]),
        .I1(\c_table_reg[8]__0 [4]),
        .O(\c_chars_out[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_13 
       (.I0(\c_table_reg[7]__0 [1]),
        .I1(status),
        .I2(p_0_in11_in),
        .I3(\c_table_reg[7]__0 [3]),
        .I4(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_14 
       (.I0(\c_table_reg[7]__0 [0]),
        .I1(\c_table_reg[7]__0 [4]),
        .O(\c_chars_out[23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_15 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .O(\c_chars_out[23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_16 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(status),
        .I2(p_0_in9_in),
        .I3(\c_table_reg[6]__0 [3]),
        .I4(\c_table_reg[6]__0 [2]),
        .O(\c_chars_out[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_17 
       (.I0(\c_table_reg[11]__0 [1]),
        .I1(status),
        .I2(p_0_in19_in),
        .I3(\c_table_reg[11]__0 [3]),
        .I4(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[23]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_18 
       (.I0(\c_table_reg[11]__0 [0]),
        .I1(\c_table_reg[11]__0 [4]),
        .O(\c_chars_out[23]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_19 
       (.I0(\c_table_reg[10]__0 [1]),
        .I1(status),
        .I2(p_0_in17_in),
        .I3(\c_table_reg[10]__0 [3]),
        .I4(\c_table_reg[10]__0 [2]),
        .O(\c_chars_out[23]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[23]_i_1__0 
       (.I0(\c_chars_out[24]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[23]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [23]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[23]_i_1__1 
       (.I0(\c_chars_out[24]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[23]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[23]_i_1__2 
       (.I0(\c_chars_out[24]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[23]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    \c_chars_out[23]_i_2 
       (.I0(\c_chars_out[23]_i_6_n_0 ),
        .I1(\c_chars_out[23]_i_7_n_0 ),
        .I2(\c_chars_out[23]_i_8_n_0 ),
        .I3(\c_chars_out[23]_i_9_n_0 ),
        .I4(\FSM_sequential_status_reg[0]_0 ),
        .I5(\c_chars_out[23]_i_10_n_0 ),
        .O(\c_chars_out[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_20 
       (.I0(\c_table_reg[10]__0 [0]),
        .I1(\c_table_reg[10]__0 [4]),
        .O(\c_chars_out[23]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_21 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .O(\c_chars_out[23]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_22 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(status),
        .I2(p_0_in15_in),
        .I3(\c_table_reg[9]__0 [3]),
        .I4(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[23]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[23]_i_23 
       (.I0(\c_chars_out[7]_i_12_n_0 ),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [2]),
        .I3(\c_table_reg[0]__0 [0]),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[23]_i_30_n_0 ),
        .O(\c_chars_out[23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \c_chars_out[23]_i_24 
       (.I0(\c_chars_out[7]_i_8_n_0 ),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [2]),
        .I3(\c_table_reg[3]__0 [0]),
        .I4(\c_chars_out[7]_i_7_n_0 ),
        .I5(\c_chars_out[23]_i_31_n_0 ),
        .O(\c_chars_out[23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_25 
       (.I0(\c_chars_out[23]_i_32_n_0 ),
        .I1(\c_chars_out[23]_i_33_n_0 ),
        .I2(\c_chars_out[23]_i_34_n_0 ),
        .I3(\c_chars_out[25]_i_40_n_0 ),
        .I4(\c_chars_out[25]_i_37_n_0 ),
        .I5(\c_chars_out[23]_i_35_n_0 ),
        .O(\c_chars_out[23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_26 
       (.I0(\c_chars_out[23]_i_36_n_0 ),
        .I1(\c_chars_out[25]_i_28_n_0 ),
        .I2(\c_chars_out[23]_i_37_n_0 ),
        .I3(\c_chars_out[25]_i_25_n_0 ),
        .I4(\c_chars_out[23]_i_38_n_0 ),
        .I5(\c_chars_out[23]_i_39_n_0 ),
        .O(\c_chars_out[23]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_27 
       (.I0(\c_chars_out[23]_i_40_n_0 ),
        .I1(\c_chars_out[25]_i_46_n_0 ),
        .I2(\c_chars_out[23]_i_41_n_0 ),
        .I3(\c_chars_out[25]_i_43_n_0 ),
        .I4(\c_chars_out[25]_i_58_n_0 ),
        .I5(\c_chars_out[23]_i_42_n_0 ),
        .O(\c_chars_out[23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_28 
       (.I0(\c_chars_out[23]_i_43_n_0 ),
        .I1(\c_chars_out[25]_i_55_n_0 ),
        .I2(\c_chars_out[23]_i_44_n_0 ),
        .I3(\c_chars_out[25]_i_52_n_0 ),
        .I4(\c_chars_out[25]_i_49_n_0 ),
        .I5(\c_chars_out[23]_i_45_n_0 ),
        .O(\c_chars_out[23]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_chars_out[23]_i_29 
       (.I0(\c_table_reg[22]__0 [4]),
        .I1(\c_table_reg[22]__0 [1]),
        .I2(\c_table_reg[22]__0 [0]),
        .O(\c_chars_out[23]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_2__0 
       (.I0(\c_chars_out[25]_i_10__0_n_0 ),
        .I1(\c_chars_out[25]_i_11__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_12__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[23]_i_3__0_n_0 ),
        .O(\c_chars_out[23]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_2__1 
       (.I0(\c_chars_out[25]_i_10__1_n_0 ),
        .I1(\c_chars_out[25]_i_11__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_12__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[23]_i_3__1_n_0 ),
        .O(\c_chars_out[23]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_2__2 
       (.I0(\c_chars_out[25]_i_10__2_n_0 ),
        .I1(\c_chars_out[25]_i_11__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_12__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[23]_i_3__2_n_0 ),
        .O(\c_chars_out[23]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_3 
       (.I0(\c_chars_out[23]_i_11_n_0 ),
        .I1(\c_chars_out[23]_i_12_n_0 ),
        .I2(\c_chars_out[23]_i_13_n_0 ),
        .I3(\c_chars_out[23]_i_14_n_0 ),
        .I4(\c_chars_out[23]_i_15_n_0 ),
        .I5(\c_chars_out[23]_i_16_n_0 ),
        .O(\c_chars_out[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_chars_out[23]_i_30 
       (.I0(\c_table_reg[2]__0 [4]),
        .I1(\c_table_reg[2]__0 [2]),
        .I2(\c_table_reg[2]__0 [0]),
        .O(\c_chars_out[23]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_chars_out[23]_i_31 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [1]),
        .I2(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[23]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_32 
       (.I0(\c_table_reg[21]__0 [1]),
        .I1(status),
        .I2(p_0_in39_in),
        .I3(\c_table_reg[21]__0 [3]),
        .I4(\c_table_reg[21]__0 [2]),
        .O(\c_chars_out[23]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_33 
       (.I0(\c_table_reg[21]__0 [0]),
        .I1(\c_table_reg[21]__0 [4]),
        .O(\c_chars_out[23]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_34 
       (.I0(\c_table_reg[19]__0 [1]),
        .I1(status),
        .I2(p_0_in35_in),
        .I3(\c_table_reg[19]__0 [3]),
        .I4(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[23]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_35 
       (.I0(\c_table_reg[18]__0 [1]),
        .I1(status),
        .I2(p_0_in33_in),
        .I3(\c_table_reg[18]__0 [3]),
        .I4(\c_table_reg[18]__0 [2]),
        .O(\c_chars_out[23]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_36 
       (.I0(\c_table_reg[25]__0 [1]),
        .I1(status),
        .I2(p_0_in47_in),
        .I3(\c_table_reg[25]__0 [3]),
        .I4(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[23]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_37 
       (.I0(\c_table_reg[24]__0 [1]),
        .I1(status),
        .I2(p_0_in45_in),
        .I3(\c_table_reg[24]__0 [3]),
        .I4(\c_table_reg[24]__0 [2]),
        .O(\c_chars_out[23]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_38 
       (.I0(\c_table_reg[23]__0 [0]),
        .I1(\c_table_reg[23]__0 [4]),
        .O(\c_chars_out[23]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_39 
       (.I0(\c_table_reg[23]__0 [1]),
        .I1(status),
        .I2(p_0_in43_in),
        .I3(\c_table_reg[23]__0 [3]),
        .I4(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[23]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_3__0 
       (.I0(lut_projection[21]),
        .I1(lut_projection[5]),
        .I2(Q[3]),
        .I3(lut_projection[13]),
        .I4(Q[4]),
        .I5(lut_projection[23]),
        .O(\c_chars_out[23]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_3__1 
       (.I0(lut_projection[21]),
        .I1(lut_projection[5]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[13]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[23]),
        .O(\c_chars_out[23]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[23]_i_3__2 
       (.I0(lut_projection[21]),
        .I1(lut_projection[5]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[13]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[23]),
        .O(\c_chars_out[23]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[23]_i_4 
       (.I0(\c_chars_out[23]_i_17_n_0 ),
        .I1(\c_chars_out[23]_i_18_n_0 ),
        .I2(\c_chars_out[23]_i_19_n_0 ),
        .I3(\c_chars_out[23]_i_20_n_0 ),
        .I4(\c_chars_out[23]_i_21_n_0 ),
        .I5(\c_chars_out[23]_i_22_n_0 ),
        .O(\c_chars_out[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_40 
       (.I0(\c_table_reg[17]__0 [1]),
        .I1(status),
        .I2(p_0_in31_in),
        .I3(\c_table_reg[17]__0 [3]),
        .I4(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[23]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_41 
       (.I0(\c_table_reg[16]__0 [1]),
        .I1(status),
        .I2(p_0_in29_in),
        .I3(\c_table_reg[16]__0 [3]),
        .I4(\c_table_reg[16]__0 [2]),
        .O(\c_chars_out[23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_42 
       (.I0(\c_table_reg[15]__0 [1]),
        .I1(status),
        .I2(p_0_in27_in),
        .I3(\c_table_reg[15]__0 [3]),
        .I4(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[23]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_43 
       (.I0(\c_table_reg[14]__0 [1]),
        .I1(status),
        .I2(p_0_in25_in),
        .I3(\c_table_reg[14]__0 [3]),
        .I4(\c_table_reg[14]__0 [2]),
        .O(\c_chars_out[23]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_44 
       (.I0(\c_table_reg[13]__0 [1]),
        .I1(status),
        .I2(p_0_in23_in),
        .I3(\c_table_reg[13]__0 [3]),
        .I4(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[23]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_45 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(status),
        .I2(p_0_in21_in),
        .I3(\c_table_reg[12]__0 [3]),
        .I4(\c_table_reg[12]__0 [2]),
        .O(\c_chars_out[23]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[23]_i_5 
       (.I0(\c_chars_out[23]_i_23_n_0 ),
        .I1(\c_chars_out[23]_i_24_n_0 ),
        .I2(\c_chars_out[23]_i_25_n_0 ),
        .I3(\c_chars_out[23]_i_26_n_0 ),
        .I4(\c_chars_out[23]_i_27_n_0 ),
        .I5(\c_chars_out[23]_i_28_n_0 ),
        .O(\c_chars_out[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_6 
       (.I0(\c_table_reg[5]__0 [1]),
        .I1(status),
        .I2(p_0_in7_in),
        .I3(\c_table_reg[5]__0 [3]),
        .I4(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_7 
       (.I0(\c_table_reg[5]__0 [0]),
        .I1(\c_table_reg[5]__0 [4]),
        .O(\c_chars_out[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \c_chars_out[23]_i_8 
       (.I0(\c_table_reg[1]__0 [1]),
        .I1(status),
        .I2(c_chars_in[1]),
        .I3(\c_table_reg[1]__0 [3]),
        .I4(\c_table_reg[1]__0 [2]),
        .O(\c_chars_out[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[23]_i_9 
       (.I0(\c_table_reg[1]__0 [0]),
        .I1(\c_table_reg[1]__0 [4]),
        .O(\c_chars_out[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[24]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[24]_i_2_n_0 ),
        .I2(\c_chars_out[24]_i_3_n_0 ),
        .I3(\c_chars_out[24]_i_4_n_0 ),
        .I4(\c_chars_out[24]_i_5_n_0 ),
        .I5(lut_projection[24]),
        .O(\c_chars_out[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_10 
       (.I0(\c_chars_out[25]_i_42_n_0 ),
        .I1(\c_chars_out[24]_i_23_n_0 ),
        .I2(\c_chars_out[25]_i_44_n_0 ),
        .I3(\c_chars_out[25]_i_45_n_0 ),
        .I4(\c_chars_out[24]_i_24_n_0 ),
        .I5(\c_chars_out[25]_i_47_n_0 ),
        .O(\c_chars_out[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_11 
       (.I0(\c_chars_out[25]_i_48_n_0 ),
        .I1(\c_chars_out[24]_i_25_n_0 ),
        .I2(\c_chars_out[25]_i_50_n_0 ),
        .I3(\c_chars_out[25]_i_51_n_0 ),
        .I4(\c_chars_out[24]_i_26_n_0 ),
        .I5(\c_chars_out[25]_i_53_n_0 ),
        .O(\c_chars_out[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_12 
       (.I0(\c_chars_out[25]_i_54_n_0 ),
        .I1(\c_chars_out[24]_i_27_n_0 ),
        .I2(\c_chars_out[25]_i_56_n_0 ),
        .I3(\c_chars_out[25]_i_57_n_0 ),
        .I4(\c_chars_out[24]_i_28_n_0 ),
        .I5(\c_chars_out[25]_i_59_n_0 ),
        .O(\c_chars_out[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_13 
       (.I0(\c_chars_out[25]_i_60_n_0 ),
        .I1(\c_chars_out[22]_i_9_n_0 ),
        .I2(\c_chars_out[9]_i_11_n_0 ),
        .I3(\c_chars_out[25]_i_61_n_0 ),
        .I4(\c_chars_out[22]_i_14_n_0 ),
        .I5(\c_chars_out[25]_i_62_n_0 ),
        .O(\c_chars_out[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_14 
       (.I0(\c_chars_out[25]_i_63_n_0 ),
        .I1(\c_chars_out[22]_i_13_n_0 ),
        .I2(\c_chars_out[25]_i_64_n_0 ),
        .I3(\c_chars_out[25]_i_65_n_0 ),
        .I4(\c_chars_out[22]_i_12_n_0 ),
        .I5(\c_chars_out[9]_i_15_n_0 ),
        .O(\c_chars_out[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_15 
       (.I0(\c_chars_out[25]_i_66_n_0 ),
        .I1(\c_chars_out[22]_i_11_n_0 ),
        .I2(\c_chars_out[25]_i_67_n_0 ),
        .I3(\c_chars_out[25]_i_68_n_0 ),
        .I4(\c_chars_out[22]_i_10_n_0 ),
        .I5(\c_chars_out[25]_i_69_n_0 ),
        .O(\c_chars_out[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \c_chars_out[24]_i_16 
       (.I0(\c_chars_out[9]_i_7_n_0 ),
        .I1(\c_chars_out[24]_i_29_n_0 ),
        .I2(\c_chars_out[25]_i_71_n_0 ),
        .I3(\c_table_reg[5]__0 [0]),
        .I4(\c_table_reg[5]__0 [4]),
        .I5(\c_chars_out[9]_i_9_n_0 ),
        .O(\c_chars_out[24]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[24]_i_17 
       (.I0(\c_table_reg[3]__0 [2]),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [0]),
        .O(\c_chars_out[24]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[24]_i_18 
       (.I0(\c_table_reg[0]__0 [2]),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [0]),
        .O(\c_chars_out[24]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_19 
       (.I0(\c_table_reg[24]__0 [4]),
        .I1(\c_table_reg[24]__0 [0]),
        .O(\c_chars_out[24]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[24]_i_1__0 
       (.I0(\c_chars_out[25]_i_4__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[24]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [24]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[24]_i_1__1 
       (.I0(\c_chars_out[25]_i_4__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[24]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[24]_i_1__2 
       (.I0(\c_chars_out[25]_i_4__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[24]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[24]_i_2 
       (.I0(\c_chars_out[24]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[24]_i_7_n_0 ),
        .I3(\c_chars_out[24]_i_8_n_0 ),
        .I4(\c_chars_out[24]_i_9_n_0 ),
        .I5(\c_chars_out[24]_i_10_n_0 ),
        .O(\c_chars_out[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_20 
       (.I0(\c_table_reg[25]__0 [4]),
        .I1(\c_table_reg[25]__0 [0]),
        .O(\c_chars_out[24]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_21 
       (.I0(\c_table_reg[18]__0 [4]),
        .I1(\c_table_reg[18]__0 [0]),
        .O(\c_chars_out[24]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_22 
       (.I0(\c_table_reg[19]__0 [4]),
        .I1(\c_table_reg[19]__0 [0]),
        .O(\c_chars_out[24]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_23 
       (.I0(\c_table_reg[16]__0 [4]),
        .I1(\c_table_reg[16]__0 [0]),
        .O(\c_chars_out[24]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_24 
       (.I0(\c_table_reg[17]__0 [4]),
        .I1(\c_table_reg[17]__0 [0]),
        .O(\c_chars_out[24]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_25 
       (.I0(\c_table_reg[12]__0 [4]),
        .I1(\c_table_reg[12]__0 [0]),
        .O(\c_chars_out[24]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_26 
       (.I0(\c_table_reg[13]__0 [4]),
        .I1(\c_table_reg[13]__0 [0]),
        .O(\c_chars_out[24]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_27 
       (.I0(\c_table_reg[14]__0 [4]),
        .I1(\c_table_reg[14]__0 [0]),
        .O(\c_chars_out[24]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[24]_i_28 
       (.I0(\c_table_reg[15]__0 [4]),
        .I1(\c_table_reg[15]__0 [0]),
        .O(\c_chars_out[24]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[24]_i_29 
       (.I0(\c_table_reg[4]__0 [1]),
        .I1(\c_table_reg[4]__0 [4]),
        .I2(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[24]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_2__0 
       (.I0(\c_chars_out[25]_i_6__0_n_0 ),
        .I1(\c_chars_out[25]_i_7__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_8__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[24]_i_3__0_n_0 ),
        .O(\c_chars_out[24]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_2__1 
       (.I0(\c_chars_out[25]_i_6__1_n_0 ),
        .I1(\c_chars_out[25]_i_7__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_8__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[24]_i_3__1_n_0 ),
        .O(\c_chars_out[24]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_2__2 
       (.I0(\c_chars_out[25]_i_6__2_n_0 ),
        .I1(\c_chars_out[25]_i_7__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_8__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[24]_i_3__2_n_0 ),
        .O(\c_chars_out[24]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[24]_i_3 
       (.I0(\c_chars_out[24]_i_11_n_0 ),
        .I1(\c_chars_out[24]_i_12_n_0 ),
        .I2(\c_chars_out[24]_i_13_n_0 ),
        .I3(\c_chars_out[24]_i_14_n_0 ),
        .I4(\c_chars_out[24]_i_15_n_0 ),
        .I5(\c_chars_out[24]_i_16_n_0 ),
        .O(\c_chars_out[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_3__0 
       (.I0(lut_projection[22]),
        .I1(lut_projection[6]),
        .I2(Q[3]),
        .I3(lut_projection[14]),
        .I4(Q[4]),
        .I5(lut_projection[24]),
        .O(\c_chars_out[24]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_3__1 
       (.I0(lut_projection[22]),
        .I1(lut_projection[6]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[14]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[24]),
        .O(\c_chars_out[24]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[24]_i_3__2 
       (.I0(lut_projection[22]),
        .I1(lut_projection[6]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[14]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[24]),
        .O(\c_chars_out[24]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \c_chars_out[24]_i_4 
       (.I0(\c_chars_out[25]_i_17_n_0 ),
        .I1(\c_table_reg[2]__0 [2]),
        .I2(\c_table_reg[2]__0 [4]),
        .I3(\c_table_reg[2]__0 [0]),
        .I4(\c_chars_out[25]_i_18_n_0 ),
        .I5(\c_chars_out[24]_i_17_n_0 ),
        .O(\c_chars_out[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \c_chars_out[24]_i_5 
       (.I0(\c_chars_out[25]_i_20_n_0 ),
        .I1(\c_chars_out[24]_i_18_n_0 ),
        .I2(\c_chars_out[25]_i_22_n_0 ),
        .I3(\c_table_reg[1]__0 [0]),
        .I4(\c_table_reg[1]__0 [4]),
        .I5(\c_chars_out[25]_i_23_n_0 ),
        .O(\c_chars_out[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_6 
       (.I0(\c_chars_out[25]_i_24_n_0 ),
        .I1(\c_chars_out[24]_i_19_n_0 ),
        .I2(\c_chars_out[25]_i_26_n_0 ),
        .I3(\c_chars_out[25]_i_27_n_0 ),
        .I4(\c_chars_out[24]_i_20_n_0 ),
        .I5(\c_chars_out[25]_i_29_n_0 ),
        .O(\c_chars_out[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \c_chars_out[24]_i_7 
       (.I0(\c_chars_out[25]_i_30_n_0 ),
        .I1(\c_chars_out[20]_i_7_n_0 ),
        .I2(\c_chars_out[25]_i_31_n_0 ),
        .I3(\c_table_reg[21]__0 [0]),
        .I4(\c_table_reg[21]__0 [4]),
        .I5(\c_chars_out[25]_i_32_n_0 ),
        .O(\c_chars_out[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \c_chars_out[24]_i_8 
       (.I0(\c_chars_out[25]_i_33_n_0 ),
        .I1(\c_chars_out[20]_i_8_n_0 ),
        .I2(\c_chars_out[25]_i_34_n_0 ),
        .I3(\c_table_reg[23]__0 [0]),
        .I4(\c_table_reg[23]__0 [4]),
        .I5(\c_chars_out[25]_i_35_n_0 ),
        .O(\c_chars_out[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[24]_i_9 
       (.I0(\c_chars_out[25]_i_36_n_0 ),
        .I1(\c_chars_out[24]_i_21_n_0 ),
        .I2(\c_chars_out[25]_i_38_n_0 ),
        .I3(\c_chars_out[25]_i_39_n_0 ),
        .I4(\c_chars_out[24]_i_22_n_0 ),
        .I5(\c_chars_out[25]_i_41_n_0 ),
        .O(\c_chars_out[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[25]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[25]_i_2_n_0 ),
        .I2(\c_chars_out[25]_i_3_n_0 ),
        .I3(\c_chars_out[25]_i_4_n_0 ),
        .I4(\c_chars_out[25]_i_5_n_0 ),
        .I5(lut_projection[25]),
        .O(\c_chars_out[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_10 
       (.I0(\c_chars_out[25]_i_42_n_0 ),
        .I1(\c_chars_out[25]_i_43_n_0 ),
        .I2(\c_chars_out[25]_i_44_n_0 ),
        .I3(\c_chars_out[25]_i_45_n_0 ),
        .I4(\c_chars_out[25]_i_46_n_0 ),
        .I5(\c_chars_out[25]_i_47_n_0 ),
        .O(\c_chars_out[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_10__0 
       (.I0(lut_projection[1]),
        .I1(lut_projection[11]),
        .I2(Q[3]),
        .I3(lut_projection[19]),
        .I4(Q[4]),
        .I5(lut_projection[3]),
        .O(\c_chars_out[25]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_10__1 
       (.I0(lut_projection[1]),
        .I1(lut_projection[11]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[19]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[3]),
        .O(\c_chars_out[25]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_10__2 
       (.I0(lut_projection[1]),
        .I1(lut_projection[11]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[19]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[3]),
        .O(\c_chars_out[25]_i_10__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_11 
       (.I0(\c_chars_out[25]_i_48_n_0 ),
        .I1(\c_chars_out[25]_i_49_n_0 ),
        .I2(\c_chars_out[25]_i_50_n_0 ),
        .I3(\c_chars_out[25]_i_51_n_0 ),
        .I4(\c_chars_out[25]_i_52_n_0 ),
        .I5(\c_chars_out[25]_i_53_n_0 ),
        .O(\c_chars_out[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_11__0 
       (.I0(lut_projection[25]),
        .I1(lut_projection[9]),
        .I2(Q[3]),
        .I3(lut_projection[17]),
        .I4(Q[4]),
        .I5(lut_projection[1]),
        .O(\c_chars_out[25]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_11__1 
       (.I0(lut_projection[25]),
        .I1(lut_projection[9]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[17]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[1]),
        .O(\c_chars_out[25]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_11__2 
       (.I0(lut_projection[25]),
        .I1(lut_projection[9]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[17]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[1]),
        .O(\c_chars_out[25]_i_11__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_12 
       (.I0(\c_chars_out[25]_i_54_n_0 ),
        .I1(\c_chars_out[25]_i_55_n_0 ),
        .I2(\c_chars_out[25]_i_56_n_0 ),
        .I3(\c_chars_out[25]_i_57_n_0 ),
        .I4(\c_chars_out[25]_i_58_n_0 ),
        .I5(\c_chars_out[25]_i_59_n_0 ),
        .O(\c_chars_out[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_12__0 
       (.I0(lut_projection[23]),
        .I1(lut_projection[7]),
        .I2(Q[3]),
        .I3(lut_projection[15]),
        .I4(Q[4]),
        .I5(lut_projection[25]),
        .O(\c_chars_out[25]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_12__1 
       (.I0(lut_projection[23]),
        .I1(lut_projection[7]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[15]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[25]),
        .O(\c_chars_out[25]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_12__2 
       (.I0(lut_projection[23]),
        .I1(lut_projection[7]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[15]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[25]),
        .O(\c_chars_out[25]_i_12__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_13 
       (.I0(\c_chars_out[25]_i_60_n_0 ),
        .I1(\c_chars_out[23]_i_12_n_0 ),
        .I2(\c_chars_out[9]_i_11_n_0 ),
        .I3(\c_chars_out[25]_i_61_n_0 ),
        .I4(\c_chars_out[23]_i_21_n_0 ),
        .I5(\c_chars_out[25]_i_62_n_0 ),
        .O(\c_chars_out[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_14 
       (.I0(\c_chars_out[25]_i_63_n_0 ),
        .I1(\c_chars_out[23]_i_20_n_0 ),
        .I2(\c_chars_out[25]_i_64_n_0 ),
        .I3(\c_chars_out[25]_i_65_n_0 ),
        .I4(\c_chars_out[23]_i_18_n_0 ),
        .I5(\c_chars_out[9]_i_15_n_0 ),
        .O(\c_chars_out[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_15 
       (.I0(\c_chars_out[25]_i_66_n_0 ),
        .I1(\c_chars_out[23]_i_15_n_0 ),
        .I2(\c_chars_out[25]_i_67_n_0 ),
        .I3(\c_chars_out[25]_i_68_n_0 ),
        .I4(\c_chars_out[23]_i_14_n_0 ),
        .I5(\c_chars_out[25]_i_69_n_0 ),
        .O(\c_chars_out[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \c_chars_out[25]_i_16 
       (.I0(\c_chars_out[9]_i_7_n_0 ),
        .I1(\c_chars_out[25]_i_70_n_0 ),
        .I2(\c_chars_out[25]_i_71_n_0 ),
        .I3(\c_table_reg[5]__0 [4]),
        .I4(\c_table_reg[5]__0 [0]),
        .I5(\c_chars_out[9]_i_9_n_0 ),
        .O(\c_chars_out[25]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[25]_i_17 
       (.I0(p_0_in1_in),
        .I1(\c_table_reg[2]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[25]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[25]_i_18 
       (.I0(p_0_in3_in),
        .I1(\c_table_reg[3]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[25]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_19 
       (.I0(\c_table_reg[3]__0 [2]),
        .I1(\c_table_reg[3]__0 [4]),
        .I2(\c_table_reg[3]__0 [0]),
        .O(\c_chars_out[25]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \c_chars_out[25]_i_2 
       (.I0(\c_chars_out[25]_i_6_n_0 ),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(\c_chars_out[25]_i_7_n_0 ),
        .I3(\c_chars_out[25]_i_8_n_0 ),
        .I4(\c_chars_out[25]_i_9_n_0 ),
        .I5(\c_chars_out[25]_i_10_n_0 ),
        .O(\c_chars_out[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[25]_i_20 
       (.I0(c_chars_in[0]),
        .I1(\c_table_reg[0]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[25]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_21 
       (.I0(\c_table_reg[0]__0 [2]),
        .I1(\c_table_reg[0]__0 [4]),
        .I2(\c_table_reg[0]__0 [0]),
        .O(\c_chars_out[25]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_22 
       (.I0(status),
        .I1(c_chars_in[1]),
        .I2(\c_table_reg[1]__0 [3]),
        .O(\c_chars_out[25]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_23 
       (.I0(\c_table_reg[1]__0 [1]),
        .I1(\c_table_reg[1]__0 [2]),
        .O(\c_chars_out[25]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_24 
       (.I0(status),
        .I1(p_0_in45_in),
        .I2(\c_table_reg[24]__0 [3]),
        .O(\c_chars_out[25]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_25 
       (.I0(\c_table_reg[24]__0 [0]),
        .I1(\c_table_reg[24]__0 [4]),
        .O(\c_chars_out[25]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_26 
       (.I0(\c_table_reg[24]__0 [1]),
        .I1(\c_table_reg[24]__0 [2]),
        .O(\c_chars_out[25]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_27 
       (.I0(status),
        .I1(p_0_in47_in),
        .I2(\c_table_reg[25]__0 [3]),
        .O(\c_chars_out[25]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_28 
       (.I0(\c_table_reg[25]__0 [0]),
        .I1(\c_table_reg[25]__0 [4]),
        .O(\c_chars_out[25]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_29 
       (.I0(\c_table_reg[25]__0 [1]),
        .I1(\c_table_reg[25]__0 [2]),
        .O(\c_chars_out[25]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[25]_i_2__0 
       (.I0(\c_chars_out[25]_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[25]_i_4__0_n_0 ),
        .O(\c_drum_count_reg[0] [25]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[25]_i_2__1 
       (.I0(\c_chars_out[25]_i_3__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[25]_i_4__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[25]_i_2__2 
       (.I0(\c_chars_out[25]_i_3__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[25]_i_4__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \c_chars_out[25]_i_3 
       (.I0(\c_chars_out[25]_i_11_n_0 ),
        .I1(\c_chars_out[25]_i_12_n_0 ),
        .I2(\c_chars_out[25]_i_13_n_0 ),
        .I3(\c_chars_out[25]_i_14_n_0 ),
        .I4(\c_chars_out[25]_i_15_n_0 ),
        .I5(\c_chars_out[25]_i_16_n_0 ),
        .O(\c_chars_out[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[25]_i_30 
       (.I0(p_0_in37_in),
        .I1(\c_table_reg[20]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[25]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_31 
       (.I0(status),
        .I1(p_0_in39_in),
        .I2(\c_table_reg[21]__0 [3]),
        .O(\c_chars_out[25]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_32 
       (.I0(\c_table_reg[21]__0 [1]),
        .I1(\c_table_reg[21]__0 [2]),
        .O(\c_chars_out[25]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[25]_i_33 
       (.I0(p_0_in41_in),
        .I1(\c_table_reg[22]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[25]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_34 
       (.I0(status),
        .I1(p_0_in43_in),
        .I2(\c_table_reg[23]__0 [3]),
        .O(\c_chars_out[25]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_35 
       (.I0(\c_table_reg[23]__0 [1]),
        .I1(\c_table_reg[23]__0 [2]),
        .O(\c_chars_out[25]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_36 
       (.I0(status),
        .I1(p_0_in33_in),
        .I2(\c_table_reg[18]__0 [3]),
        .O(\c_chars_out[25]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_37 
       (.I0(\c_table_reg[18]__0 [0]),
        .I1(\c_table_reg[18]__0 [4]),
        .O(\c_chars_out[25]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_38 
       (.I0(\c_table_reg[18]__0 [1]),
        .I1(\c_table_reg[18]__0 [2]),
        .O(\c_chars_out[25]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_39 
       (.I0(status),
        .I1(p_0_in35_in),
        .I2(\c_table_reg[19]__0 [3]),
        .O(\c_chars_out[25]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_3__0 
       (.I0(\c_chars_out[25]_i_5__0_n_0 ),
        .I1(\c_chars_out[25]_i_6__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_7__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_8__0_n_0 ),
        .O(\c_chars_out[25]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_3__1 
       (.I0(\c_chars_out[25]_i_5__1_n_0 ),
        .I1(\c_chars_out[25]_i_6__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_7__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_8__1_n_0 ),
        .O(\c_chars_out[25]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_3__2 
       (.I0(\c_chars_out[25]_i_5__2_n_0 ),
        .I1(\c_chars_out[25]_i_6__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_7__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_8__2_n_0 ),
        .O(\c_chars_out[25]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \c_chars_out[25]_i_4 
       (.I0(\c_chars_out[25]_i_17_n_0 ),
        .I1(\c_table_reg[2]__0 [2]),
        .I2(\c_table_reg[2]__0 [4]),
        .I3(\c_table_reg[2]__0 [0]),
        .I4(\c_chars_out[25]_i_18_n_0 ),
        .I5(\c_chars_out[25]_i_19_n_0 ),
        .O(\c_chars_out[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_40 
       (.I0(\c_table_reg[19]__0 [0]),
        .I1(\c_table_reg[19]__0 [4]),
        .O(\c_chars_out[25]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_41 
       (.I0(\c_table_reg[19]__0 [1]),
        .I1(\c_table_reg[19]__0 [2]),
        .O(\c_chars_out[25]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_42 
       (.I0(status),
        .I1(p_0_in29_in),
        .I2(\c_table_reg[16]__0 [3]),
        .O(\c_chars_out[25]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_43 
       (.I0(\c_table_reg[16]__0 [0]),
        .I1(\c_table_reg[16]__0 [4]),
        .O(\c_chars_out[25]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_44 
       (.I0(\c_table_reg[16]__0 [1]),
        .I1(\c_table_reg[16]__0 [2]),
        .O(\c_chars_out[25]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_45 
       (.I0(status),
        .I1(p_0_in31_in),
        .I2(\c_table_reg[17]__0 [3]),
        .O(\c_chars_out[25]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_46 
       (.I0(\c_table_reg[17]__0 [0]),
        .I1(\c_table_reg[17]__0 [4]),
        .O(\c_chars_out[25]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_47 
       (.I0(\c_table_reg[17]__0 [1]),
        .I1(\c_table_reg[17]__0 [2]),
        .O(\c_chars_out[25]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_48 
       (.I0(status),
        .I1(p_0_in21_in),
        .I2(\c_table_reg[12]__0 [3]),
        .O(\c_chars_out[25]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_49 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .O(\c_chars_out[25]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_4__0 
       (.I0(\c_chars_out[25]_i_9__0_n_0 ),
        .I1(\c_chars_out[25]_i_10__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_11__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_12__0_n_0 ),
        .O(\c_chars_out[25]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_4__1 
       (.I0(\c_chars_out[25]_i_9__1_n_0 ),
        .I1(\c_chars_out[25]_i_10__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_11__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_12__1_n_0 ),
        .O(\c_chars_out[25]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_4__2 
       (.I0(\c_chars_out[25]_i_9__2_n_0 ),
        .I1(\c_chars_out[25]_i_10__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_11__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_12__2_n_0 ),
        .O(\c_chars_out[25]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \c_chars_out[25]_i_5 
       (.I0(\c_chars_out[25]_i_20_n_0 ),
        .I1(\c_chars_out[25]_i_21_n_0 ),
        .I2(\c_chars_out[25]_i_22_n_0 ),
        .I3(\c_table_reg[1]__0 [4]),
        .I4(\c_table_reg[1]__0 [0]),
        .I5(\c_chars_out[25]_i_23_n_0 ),
        .O(\c_chars_out[25]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_50 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(\c_table_reg[12]__0 [2]),
        .O(\c_chars_out[25]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_51 
       (.I0(status),
        .I1(p_0_in23_in),
        .I2(\c_table_reg[13]__0 [3]),
        .O(\c_chars_out[25]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_52 
       (.I0(\c_table_reg[13]__0 [0]),
        .I1(\c_table_reg[13]__0 [4]),
        .O(\c_chars_out[25]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_53 
       (.I0(\c_table_reg[13]__0 [1]),
        .I1(\c_table_reg[13]__0 [2]),
        .O(\c_chars_out[25]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_54 
       (.I0(status),
        .I1(p_0_in25_in),
        .I2(\c_table_reg[14]__0 [3]),
        .O(\c_chars_out[25]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_55 
       (.I0(\c_table_reg[14]__0 [0]),
        .I1(\c_table_reg[14]__0 [4]),
        .O(\c_chars_out[25]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_56 
       (.I0(\c_table_reg[14]__0 [1]),
        .I1(\c_table_reg[14]__0 [2]),
        .O(\c_chars_out[25]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_57 
       (.I0(status),
        .I1(p_0_in27_in),
        .I2(\c_table_reg[15]__0 [3]),
        .O(\c_chars_out[25]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_chars_out[25]_i_58 
       (.I0(\c_table_reg[15]__0 [0]),
        .I1(\c_table_reg[15]__0 [4]),
        .O(\c_chars_out[25]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_59 
       (.I0(\c_table_reg[15]__0 [1]),
        .I1(\c_table_reg[15]__0 [2]),
        .O(\c_chars_out[25]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_5__0 
       (.I0(lut_projection[4]),
        .I1(lut_projection[14]),
        .I2(Q[3]),
        .I3(lut_projection[22]),
        .I4(Q[4]),
        .I5(lut_projection[6]),
        .O(\c_chars_out[25]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_5__1 
       (.I0(lut_projection[4]),
        .I1(lut_projection[14]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[22]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[6]),
        .O(\c_chars_out[25]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_5__2 
       (.I0(lut_projection[4]),
        .I1(lut_projection[14]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[22]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[6]),
        .O(\c_chars_out[25]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_6 
       (.I0(\c_chars_out[25]_i_24_n_0 ),
        .I1(\c_chars_out[25]_i_25_n_0 ),
        .I2(\c_chars_out[25]_i_26_n_0 ),
        .I3(\c_chars_out[25]_i_27_n_0 ),
        .I4(\c_chars_out[25]_i_28_n_0 ),
        .I5(\c_chars_out[25]_i_29_n_0 ),
        .O(\c_chars_out[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_60 
       (.I0(status),
        .I1(p_0_in13_in),
        .I2(\c_table_reg[8]__0 [3]),
        .O(\c_chars_out[25]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_61 
       (.I0(status),
        .I1(p_0_in15_in),
        .I2(\c_table_reg[9]__0 [3]),
        .O(\c_chars_out[25]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_62 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(\c_table_reg[9]__0 [2]),
        .O(\c_chars_out[25]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_63 
       (.I0(status),
        .I1(p_0_in17_in),
        .I2(\c_table_reg[10]__0 [3]),
        .O(\c_chars_out[25]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_64 
       (.I0(\c_table_reg[10]__0 [1]),
        .I1(\c_table_reg[10]__0 [2]),
        .O(\c_chars_out[25]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_65 
       (.I0(status),
        .I1(p_0_in19_in),
        .I2(\c_table_reg[11]__0 [3]),
        .O(\c_chars_out[25]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_66 
       (.I0(status),
        .I1(p_0_in9_in),
        .I2(\c_table_reg[6]__0 [3]),
        .O(\c_chars_out[25]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_67 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(\c_table_reg[6]__0 [2]),
        .O(\c_chars_out[25]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_68 
       (.I0(status),
        .I1(p_0_in11_in),
        .I2(\c_table_reg[7]__0 [3]),
        .O(\c_chars_out[25]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[25]_i_69 
       (.I0(\c_table_reg[7]__0 [1]),
        .I1(\c_table_reg[7]__0 [2]),
        .O(\c_chars_out[25]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_6__0 
       (.I0(lut_projection[2]),
        .I1(lut_projection[12]),
        .I2(Q[3]),
        .I3(lut_projection[20]),
        .I4(Q[4]),
        .I5(lut_projection[4]),
        .O(\c_chars_out[25]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_6__1 
       (.I0(lut_projection[2]),
        .I1(lut_projection[12]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[20]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[4]),
        .O(\c_chars_out[25]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_6__2 
       (.I0(lut_projection[2]),
        .I1(lut_projection[12]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[20]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[4]),
        .O(\c_chars_out[25]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \c_chars_out[25]_i_7 
       (.I0(\c_chars_out[25]_i_30_n_0 ),
        .I1(\c_chars_out[21]_i_8_n_0 ),
        .I2(\c_chars_out[25]_i_31_n_0 ),
        .I3(\c_table_reg[21]__0 [4]),
        .I4(\c_table_reg[21]__0 [0]),
        .I5(\c_chars_out[25]_i_32_n_0 ),
        .O(\c_chars_out[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_70 
       (.I0(\c_table_reg[4]__0 [1]),
        .I1(\c_table_reg[4]__0 [4]),
        .I2(\c_table_reg[4]__0 [0]),
        .O(\c_chars_out[25]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[25]_i_71 
       (.I0(status),
        .I1(p_0_in7_in),
        .I2(\c_table_reg[5]__0 [3]),
        .O(\c_chars_out[25]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_7__0 
       (.I0(lut_projection[0]),
        .I1(lut_projection[10]),
        .I2(Q[3]),
        .I3(lut_projection[18]),
        .I4(Q[4]),
        .I5(lut_projection[2]),
        .O(\c_chars_out[25]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_7__1 
       (.I0(lut_projection[0]),
        .I1(lut_projection[10]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[18]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[2]),
        .O(\c_chars_out[25]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_7__2 
       (.I0(lut_projection[0]),
        .I1(lut_projection[10]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[18]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[2]),
        .O(\c_chars_out[25]_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \c_chars_out[25]_i_8 
       (.I0(\c_chars_out[25]_i_33_n_0 ),
        .I1(\c_chars_out[21]_i_10_n_0 ),
        .I2(\c_chars_out[25]_i_34_n_0 ),
        .I3(\c_table_reg[23]__0 [4]),
        .I4(\c_table_reg[23]__0 [0]),
        .I5(\c_chars_out[25]_i_35_n_0 ),
        .O(\c_chars_out[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_8__0 
       (.I0(lut_projection[24]),
        .I1(lut_projection[8]),
        .I2(Q[3]),
        .I3(lut_projection[16]),
        .I4(Q[4]),
        .I5(lut_projection[0]),
        .O(\c_chars_out[25]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_8__1 
       (.I0(lut_projection[24]),
        .I1(lut_projection[8]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[16]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[0]),
        .O(\c_chars_out[25]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_8__2 
       (.I0(lut_projection[24]),
        .I1(lut_projection[8]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[16]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[0]),
        .O(\c_chars_out[25]_i_8__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \c_chars_out[25]_i_9 
       (.I0(\c_chars_out[25]_i_36_n_0 ),
        .I1(\c_chars_out[25]_i_37_n_0 ),
        .I2(\c_chars_out[25]_i_38_n_0 ),
        .I3(\c_chars_out[25]_i_39_n_0 ),
        .I4(\c_chars_out[25]_i_40_n_0 ),
        .I5(\c_chars_out[25]_i_41_n_0 ),
        .O(\c_chars_out[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_9__0 
       (.I0(lut_projection[3]),
        .I1(lut_projection[13]),
        .I2(Q[3]),
        .I3(lut_projection[21]),
        .I4(Q[4]),
        .I5(lut_projection[5]),
        .O(\c_chars_out[25]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_9__1 
       (.I0(lut_projection[3]),
        .I1(lut_projection[13]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[21]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[5]),
        .O(\c_chars_out[25]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[25]_i_9__2 
       (.I0(lut_projection[3]),
        .I1(lut_projection[13]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[21]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[5]),
        .O(\c_chars_out[25]_i_9__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[2]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[2]_i_2_n_0 ),
        .I2(\c_chars_out[2]_i_3_n_0 ),
        .I3(\c_chars_out[2]_i_4_n_0 ),
        .I4(\c_chars_out[2]_i_5_n_0 ),
        .I5(lut_projection[2]),
        .O(\c_chars_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[2]_i_10 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[19]_i_33_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[19]_i_32_n_0 ),
        .O(\c_chars_out[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[2]_i_11 
       (.I0(\c_chars_out[14]_i_33_n_0 ),
        .I1(\c_chars_out[17]_i_8_n_0 ),
        .I2(\c_chars_out[14]_i_34_n_0 ),
        .I3(\c_chars_out[17]_i_7_n_0 ),
        .I4(\c_chars_out[6]_i_24_n_0 ),
        .I5(\c_chars_out[19]_i_22_n_0 ),
        .O(\c_chars_out[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[2]_i_12 
       (.I0(\c_chars_out[19]_i_23_n_0 ),
        .I1(\c_chars_out[6]_i_25_n_0 ),
        .I2(\c_chars_out[19]_i_24_n_0 ),
        .I3(\c_chars_out[6]_i_26_n_0 ),
        .I4(\c_chars_out[6]_i_27_n_0 ),
        .I5(\c_chars_out[19]_i_28_n_0 ),
        .O(\c_chars_out[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[2]_i_1__0 
       (.I0(\c_chars_out[3]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[2]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[2]_i_1__1 
       (.I0(\c_chars_out[3]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[2]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[2]_i_1__2 
       (.I0(\c_chars_out[3]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[2]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[2]_i_2 
       (.I0(\c_chars_out[6]_i_6_n_0 ),
        .I1(\c_chars_out[3]_i_6_n_0 ),
        .I2(\c_chars_out[10]_i_5_n_0 ),
        .I3(\c_chars_out[7]_i_8_n_0 ),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[10]_i_6_n_0 ),
        .O(\c_chars_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[2]_i_2__0 
       (.I0(\c_chars_out[8]_i_3__0_n_0 ),
        .I1(\c_chars_out[25]_i_5__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_6__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_7__0_n_0 ),
        .O(\c_chars_out[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[2]_i_2__1 
       (.I0(\c_chars_out[8]_i_3__1_n_0 ),
        .I1(\c_chars_out[25]_i_5__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_6__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_7__1_n_0 ),
        .O(\c_chars_out[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[2]_i_2__2 
       (.I0(\c_chars_out[8]_i_3__2_n_0 ),
        .I1(\c_chars_out[25]_i_5__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_6__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_7__2_n_0 ),
        .O(\c_chars_out[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[2]_i_3 
       (.I0(\c_chars_out[2]_i_6_n_0 ),
        .I1(\c_chars_out[19]_i_7_n_0 ),
        .I2(\c_chars_out[6]_i_8_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[10]_i_7_n_0 ),
        .I5(\c_chars_out[7]_i_12_n_0 ),
        .O(\c_chars_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[2]_i_4 
       (.I0(\c_chars_out[19]_i_6_n_0 ),
        .I1(\c_chars_out[6]_i_9_n_0 ),
        .I2(\c_chars_out[2]_i_7_n_0 ),
        .I3(\c_chars_out[19]_i_9_n_0 ),
        .I4(\c_chars_out[6]_i_11_n_0 ),
        .I5(\c_chars_out[2]_i_8_n_0 ),
        .O(\c_chars_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[2]_i_5 
       (.I0(\c_chars_out[2]_i_9_n_0 ),
        .I1(\c_chars_out[2]_i_10_n_0 ),
        .I2(\c_chars_out[6]_i_15_n_0 ),
        .I3(\c_chars_out[19]_i_12_n_0 ),
        .I4(\c_chars_out[2]_i_11_n_0 ),
        .I5(\c_chars_out[2]_i_12_n_0 ),
        .O(\c_chars_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[2]_i_6 
       (.I0(\c_chars_out[19]_i_25_n_0 ),
        .I1(\c_chars_out[6]_i_18_n_0 ),
        .I2(\c_chars_out[19]_i_26_n_0 ),
        .I3(\c_chars_out[6]_i_19_n_0 ),
        .I4(\c_chars_out[6]_i_20_n_0 ),
        .I5(\c_chars_out[19]_i_27_n_0 ),
        .O(\c_chars_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[2]_i_7 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[19]_i_11_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[19]_i_10_n_0 ),
        .O(\c_chars_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[2]_i_8 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[19]_i_14_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[19]_i_13_n_0 ),
        .O(\c_chars_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[2]_i_9 
       (.I0(\c_chars_out[19]_i_29_n_0 ),
        .I1(\c_chars_out[6]_i_21_n_0 ),
        .I2(\c_chars_out[19]_i_30_n_0 ),
        .I3(\c_chars_out[6]_i_22_n_0 ),
        .I4(\c_chars_out[6]_i_23_n_0 ),
        .I5(\c_chars_out[19]_i_31_n_0 ),
        .O(\c_chars_out[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[3]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[3]_i_2_n_0 ),
        .I2(\c_chars_out[3]_i_3_n_0 ),
        .I3(\c_chars_out[3]_i_4_n_0 ),
        .I4(\c_chars_out[3]_i_5_n_0 ),
        .I5(lut_projection[3]),
        .O(\c_chars_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[3]_i_10 
       (.I0(\c_chars_out[19]_i_29_n_0 ),
        .I1(\c_chars_out[7]_i_25_n_0 ),
        .I2(\c_chars_out[19]_i_30_n_0 ),
        .I3(\c_chars_out[7]_i_26_n_0 ),
        .I4(\c_chars_out[7]_i_27_n_0 ),
        .I5(\c_chars_out[19]_i_31_n_0 ),
        .O(\c_chars_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[3]_i_11 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[19]_i_33_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[19]_i_32_n_0 ),
        .O(\c_chars_out[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[3]_i_12 
       (.I0(\c_chars_out[15]_i_36_n_0 ),
        .I1(\c_chars_out[17]_i_8_n_0 ),
        .I2(\c_chars_out[15]_i_38_n_0 ),
        .I3(\c_chars_out[17]_i_7_n_0 ),
        .I4(\c_chars_out[7]_i_28_n_0 ),
        .I5(\c_chars_out[19]_i_22_n_0 ),
        .O(\c_chars_out[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[3]_i_13 
       (.I0(\c_chars_out[19]_i_23_n_0 ),
        .I1(\c_chars_out[7]_i_29_n_0 ),
        .I2(\c_chars_out[19]_i_24_n_0 ),
        .I3(\c_chars_out[7]_i_30_n_0 ),
        .I4(\c_chars_out[7]_i_31_n_0 ),
        .I5(\c_chars_out[19]_i_28_n_0 ),
        .O(\c_chars_out[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[3]_i_1__0 
       (.I0(\c_chars_out[4]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[3]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[3]_i_1__1 
       (.I0(\c_chars_out[4]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[3]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[3]_i_1__2 
       (.I0(\c_chars_out[4]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[3]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[3]_i_2 
       (.I0(\c_chars_out[7]_i_6_n_0 ),
        .I1(\c_chars_out[3]_i_6_n_0 ),
        .I2(\c_chars_out[11]_i_5_n_0 ),
        .I3(\c_chars_out[7]_i_8_n_0 ),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[11]_i_6_n_0 ),
        .O(\c_chars_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[3]_i_2__0 
       (.I0(\c_chars_out[9]_i_3__0_n_0 ),
        .I1(\c_chars_out[7]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_9__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_10__0_n_0 ),
        .O(\c_chars_out[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[3]_i_2__1 
       (.I0(\c_chars_out[9]_i_3__1_n_0 ),
        .I1(\c_chars_out[7]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_9__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_10__1_n_0 ),
        .O(\c_chars_out[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[3]_i_2__2 
       (.I0(\c_chars_out[9]_i_3__2_n_0 ),
        .I1(\c_chars_out[7]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_9__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_10__2_n_0 ),
        .O(\c_chars_out[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[3]_i_3 
       (.I0(\c_chars_out[3]_i_7_n_0 ),
        .I1(\c_chars_out[19]_i_7_n_0 ),
        .I2(\c_chars_out[7]_i_11_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[11]_i_7_n_0 ),
        .I5(\c_chars_out[7]_i_12_n_0 ),
        .O(\c_chars_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[3]_i_4 
       (.I0(\c_chars_out[19]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_13_n_0 ),
        .I2(\c_chars_out[3]_i_8_n_0 ),
        .I3(\c_chars_out[19]_i_9_n_0 ),
        .I4(\c_chars_out[7]_i_15_n_0 ),
        .I5(\c_chars_out[3]_i_9_n_0 ),
        .O(\c_chars_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[3]_i_5 
       (.I0(\c_chars_out[3]_i_10_n_0 ),
        .I1(\c_chars_out[3]_i_11_n_0 ),
        .I2(\c_chars_out[7]_i_19_n_0 ),
        .I3(\c_chars_out[19]_i_12_n_0 ),
        .I4(\c_chars_out[3]_i_12_n_0 ),
        .I5(\c_chars_out[3]_i_13_n_0 ),
        .O(\c_chars_out[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[3]_i_6 
       (.I0(\c_table_reg[4]__0 [3]),
        .I1(p_0_in5_in),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[3]_i_7 
       (.I0(\c_chars_out[19]_i_25_n_0 ),
        .I1(\c_chars_out[7]_i_22_n_0 ),
        .I2(\c_chars_out[19]_i_26_n_0 ),
        .I3(\c_chars_out[7]_i_23_n_0 ),
        .I4(\c_chars_out[7]_i_24_n_0 ),
        .I5(\c_chars_out[19]_i_27_n_0 ),
        .O(\c_chars_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[3]_i_8 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[19]_i_11_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[19]_i_10_n_0 ),
        .O(\c_chars_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[3]_i_9 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[19]_i_14_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[19]_i_13_n_0 ),
        .O(\c_chars_out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[4]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[4]_i_2_n_0 ),
        .I2(\c_chars_out[4]_i_3_n_0 ),
        .I3(\c_chars_out[4]_i_4_n_0 ),
        .I4(\c_chars_out[4]_i_5_n_0 ),
        .I5(lut_projection[4]),
        .O(\c_chars_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[4]_i_10 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[21]_i_34_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[21]_i_33_n_0 ),
        .O(\c_chars_out[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[4]_i_11 
       (.I0(\c_chars_out[12]_i_21_n_0 ),
        .I1(\c_chars_out[21]_i_9_n_0 ),
        .I2(\c_chars_out[12]_i_22_n_0 ),
        .I3(\c_chars_out[21]_i_7_n_0 ),
        .I4(\c_chars_out[6]_i_24_n_0 ),
        .I5(\c_chars_out[21]_i_23_n_0 ),
        .O(\c_chars_out[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[4]_i_12 
       (.I0(\c_chars_out[21]_i_24_n_0 ),
        .I1(\c_chars_out[6]_i_25_n_0 ),
        .I2(\c_chars_out[21]_i_25_n_0 ),
        .I3(\c_chars_out[6]_i_26_n_0 ),
        .I4(\c_chars_out[6]_i_27_n_0 ),
        .I5(\c_chars_out[21]_i_29_n_0 ),
        .O(\c_chars_out[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[4]_i_1__0 
       (.I0(\c_chars_out[5]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[4]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[4]_i_1__1 
       (.I0(\c_chars_out[5]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[4]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[4]_i_1__2 
       (.I0(\c_chars_out[5]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[4]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[4]_i_2 
       (.I0(\c_chars_out[8]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_7_n_0 ),
        .I2(\c_chars_out[14]_i_5_n_0 ),
        .I3(\c_chars_out[5]_i_6_n_0 ),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[14]_i_6_n_0 ),
        .O(\c_chars_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[4]_i_2__0 
       (.I0(\c_chars_out[10]_i_3__0_n_0 ),
        .I1(\c_chars_out[8]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[25]_i_5__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_6__0_n_0 ),
        .O(\c_chars_out[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[4]_i_2__1 
       (.I0(\c_chars_out[10]_i_3__1_n_0 ),
        .I1(\c_chars_out[8]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[25]_i_5__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_6__1_n_0 ),
        .O(\c_chars_out[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[4]_i_2__2 
       (.I0(\c_chars_out[10]_i_3__2_n_0 ),
        .I1(\c_chars_out[8]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[25]_i_5__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_6__2_n_0 ),
        .O(\c_chars_out[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[4]_i_3 
       (.I0(\c_chars_out[4]_i_6_n_0 ),
        .I1(\c_chars_out[5]_i_9_n_0 ),
        .I2(\c_chars_out[6]_i_8_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[14]_i_7_n_0 ),
        .I5(\c_chars_out[5]_i_10_n_0 ),
        .O(\c_chars_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[4]_i_4 
       (.I0(\c_chars_out[5]_i_11_n_0 ),
        .I1(\c_chars_out[6]_i_9_n_0 ),
        .I2(\c_chars_out[4]_i_7_n_0 ),
        .I3(\c_chars_out[21]_i_11_n_0 ),
        .I4(\c_chars_out[6]_i_11_n_0 ),
        .I5(\c_chars_out[4]_i_8_n_0 ),
        .O(\c_chars_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[4]_i_5 
       (.I0(\c_chars_out[4]_i_9_n_0 ),
        .I1(\c_chars_out[4]_i_10_n_0 ),
        .I2(\c_chars_out[6]_i_15_n_0 ),
        .I3(\c_chars_out[21]_i_14_n_0 ),
        .I4(\c_chars_out[4]_i_11_n_0 ),
        .I5(\c_chars_out[4]_i_12_n_0 ),
        .O(\c_chars_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[4]_i_6 
       (.I0(\c_chars_out[21]_i_26_n_0 ),
        .I1(\c_chars_out[6]_i_18_n_0 ),
        .I2(\c_chars_out[21]_i_27_n_0 ),
        .I3(\c_chars_out[6]_i_19_n_0 ),
        .I4(\c_chars_out[6]_i_20_n_0 ),
        .I5(\c_chars_out[21]_i_28_n_0 ),
        .O(\c_chars_out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[4]_i_7 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[21]_i_13_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[21]_i_12_n_0 ),
        .O(\c_chars_out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[4]_i_8 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[21]_i_16_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[21]_i_15_n_0 ),
        .O(\c_chars_out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[4]_i_9 
       (.I0(\c_chars_out[21]_i_30_n_0 ),
        .I1(\c_chars_out[6]_i_21_n_0 ),
        .I2(\c_chars_out[21]_i_31_n_0 ),
        .I3(\c_chars_out[6]_i_22_n_0 ),
        .I4(\c_chars_out[6]_i_23_n_0 ),
        .I5(\c_chars_out[21]_i_32_n_0 ),
        .O(\c_chars_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[5]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[5]_i_2_n_0 ),
        .I2(\c_chars_out[5]_i_3_n_0 ),
        .I3(\c_chars_out[5]_i_4_n_0 ),
        .I4(\c_chars_out[5]_i_5_n_0 ),
        .I5(lut_projection[5]),
        .O(\c_chars_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[5]_i_10 
       (.I0(\c_table_reg[0]__0 [3]),
        .I1(c_chars_in[0]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[5]_i_11 
       (.I0(\c_table_reg[5]__0 [1]),
        .I1(\c_table_reg[5]__0 [2]),
        .I2(\c_table_reg[5]__0 [3]),
        .I3(p_0_in7_in),
        .I4(status),
        .O(\c_chars_out[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[5]_i_12 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[21]_i_13_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[21]_i_12_n_0 ),
        .O(\c_chars_out[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[5]_i_13 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[21]_i_16_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[21]_i_15_n_0 ),
        .O(\c_chars_out[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[5]_i_14 
       (.I0(\c_chars_out[21]_i_30_n_0 ),
        .I1(\c_chars_out[7]_i_25_n_0 ),
        .I2(\c_chars_out[21]_i_31_n_0 ),
        .I3(\c_chars_out[7]_i_26_n_0 ),
        .I4(\c_chars_out[7]_i_27_n_0 ),
        .I5(\c_chars_out[21]_i_32_n_0 ),
        .O(\c_chars_out[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[5]_i_15 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[21]_i_34_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[21]_i_33_n_0 ),
        .O(\c_chars_out[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[5]_i_16 
       (.I0(\c_chars_out[13]_i_28_n_0 ),
        .I1(\c_chars_out[21]_i_9_n_0 ),
        .I2(\c_chars_out[13]_i_29_n_0 ),
        .I3(\c_chars_out[21]_i_7_n_0 ),
        .I4(\c_chars_out[7]_i_28_n_0 ),
        .I5(\c_chars_out[21]_i_23_n_0 ),
        .O(\c_chars_out[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[5]_i_17 
       (.I0(\c_chars_out[21]_i_24_n_0 ),
        .I1(\c_chars_out[7]_i_29_n_0 ),
        .I2(\c_chars_out[21]_i_25_n_0 ),
        .I3(\c_chars_out[7]_i_30_n_0 ),
        .I4(\c_chars_out[7]_i_31_n_0 ),
        .I5(\c_chars_out[21]_i_29_n_0 ),
        .O(\c_chars_out[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[5]_i_1__0 
       (.I0(\c_chars_out[6]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[5]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[5]_i_1__1 
       (.I0(\c_chars_out[6]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[5]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[5]_i_1__2 
       (.I0(\c_chars_out[6]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[5]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[5]_i_2 
       (.I0(\c_chars_out[9]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_7_n_0 ),
        .I2(\c_chars_out[15]_i_5_n_0 ),
        .I3(\c_chars_out[5]_i_6_n_0 ),
        .I4(\c_chars_out[5]_i_7_n_0 ),
        .I5(\c_chars_out[15]_i_7_n_0 ),
        .O(\c_chars_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[5]_i_2__0 
       (.I0(\c_chars_out[11]_i_3__0_n_0 ),
        .I1(\c_chars_out[9]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[7]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_9__0_n_0 ),
        .O(\c_chars_out[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[5]_i_2__1 
       (.I0(\c_chars_out[11]_i_3__1_n_0 ),
        .I1(\c_chars_out[9]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[7]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_9__1_n_0 ),
        .O(\c_chars_out[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[5]_i_2__2 
       (.I0(\c_chars_out[11]_i_3__2_n_0 ),
        .I1(\c_chars_out[9]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[7]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_9__2_n_0 ),
        .O(\c_chars_out[5]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[5]_i_3 
       (.I0(\c_chars_out[5]_i_8_n_0 ),
        .I1(\c_chars_out[5]_i_9_n_0 ),
        .I2(\c_chars_out[7]_i_11_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[15]_i_10_n_0 ),
        .I5(\c_chars_out[5]_i_10_n_0 ),
        .O(\c_chars_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[5]_i_4 
       (.I0(\c_chars_out[5]_i_11_n_0 ),
        .I1(\c_chars_out[7]_i_13_n_0 ),
        .I2(\c_chars_out[5]_i_12_n_0 ),
        .I3(\c_chars_out[21]_i_11_n_0 ),
        .I4(\c_chars_out[7]_i_15_n_0 ),
        .I5(\c_chars_out[5]_i_13_n_0 ),
        .O(\c_chars_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[5]_i_5 
       (.I0(\c_chars_out[5]_i_14_n_0 ),
        .I1(\c_chars_out[5]_i_15_n_0 ),
        .I2(\c_chars_out[7]_i_19_n_0 ),
        .I3(\c_chars_out[21]_i_14_n_0 ),
        .I4(\c_chars_out[5]_i_16_n_0 ),
        .I5(\c_chars_out[5]_i_17_n_0 ),
        .O(\c_chars_out[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[5]_i_6 
       (.I0(\c_table_reg[3]__0 [3]),
        .I1(p_0_in3_in),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_chars_out[5]_i_7 
       (.I0(\c_table_reg[2]__0 [3]),
        .I1(p_0_in1_in),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[5]_i_8 
       (.I0(\c_chars_out[21]_i_26_n_0 ),
        .I1(\c_chars_out[7]_i_22_n_0 ),
        .I2(\c_chars_out[21]_i_27_n_0 ),
        .I3(\c_chars_out[7]_i_23_n_0 ),
        .I4(\c_chars_out[7]_i_24_n_0 ),
        .I5(\c_chars_out[21]_i_28_n_0 ),
        .O(\c_chars_out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \c_chars_out[5]_i_9 
       (.I0(\c_table_reg[1]__0 [1]),
        .I1(\c_table_reg[1]__0 [2]),
        .I2(\c_table_reg[1]__0 [3]),
        .I3(c_chars_in[1]),
        .I4(status),
        .O(\c_chars_out[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[6]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[6]_i_2_n_0 ),
        .I2(\c_chars_out[6]_i_3_n_0 ),
        .I3(\c_chars_out[6]_i_4_n_0 ),
        .I4(\c_chars_out[6]_i_5_n_0 ),
        .I5(lut_projection[6]),
        .O(\c_chars_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[6]_i_10 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[23]_i_16_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[23]_i_13_n_0 ),
        .O(\c_chars_out[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_11 
       (.I0(\c_table_reg[8]__0 [0]),
        .I1(\c_table_reg[8]__0 [4]),
        .O(\c_chars_out[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[6]_i_12 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[23]_i_22_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[23]_i_19_n_0 ),
        .O(\c_chars_out[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[6]_i_13 
       (.I0(\c_chars_out[23]_i_41_n_0 ),
        .I1(\c_chars_out[6]_i_21_n_0 ),
        .I2(\c_chars_out[23]_i_42_n_0 ),
        .I3(\c_chars_out[6]_i_22_n_0 ),
        .I4(\c_chars_out[6]_i_23_n_0 ),
        .I5(\c_chars_out[23]_i_43_n_0 ),
        .O(\c_chars_out[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[6]_i_14 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[23]_i_45_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[23]_i_44_n_0 ),
        .O(\c_chars_out[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_15 
       (.I0(\c_table_reg[11]__0 [0]),
        .I1(\c_table_reg[11]__0 [4]),
        .O(\c_chars_out[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[6]_i_16 
       (.I0(\c_chars_out[14]_i_33_n_0 ),
        .I1(\c_chars_out[21]_i_9_n_0 ),
        .I2(\c_chars_out[14]_i_34_n_0 ),
        .I3(\c_chars_out[21]_i_7_n_0 ),
        .I4(\c_chars_out[6]_i_24_n_0 ),
        .I5(\c_chars_out[23]_i_32_n_0 ),
        .O(\c_chars_out[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[6]_i_17 
       (.I0(\c_chars_out[23]_i_34_n_0 ),
        .I1(\c_chars_out[6]_i_25_n_0 ),
        .I2(\c_chars_out[23]_i_35_n_0 ),
        .I3(\c_chars_out[6]_i_26_n_0 ),
        .I4(\c_chars_out[6]_i_27_n_0 ),
        .I5(\c_chars_out[23]_i_40_n_0 ),
        .O(\c_chars_out[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_18 
       (.I0(\c_table_reg[25]__0 [0]),
        .I1(\c_table_reg[25]__0 [4]),
        .O(\c_chars_out[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_19 
       (.I0(\c_table_reg[24]__0 [0]),
        .I1(\c_table_reg[24]__0 [4]),
        .O(\c_chars_out[6]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[6]_i_1__0 
       (.I0(\c_chars_out[7]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[6]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[6]_i_1__1 
       (.I0(\c_chars_out[7]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[6]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[6]_i_1__2 
       (.I0(\c_chars_out[7]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[6]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[6]_i_2 
       (.I0(\c_chars_out[6]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_7_n_0 ),
        .I2(\c_chars_out[14]_i_5_n_0 ),
        .I3(\c_chars_out[7]_i_8_n_0 ),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[14]_i_6_n_0 ),
        .O(\c_chars_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_20 
       (.I0(\c_table_reg[23]__0 [0]),
        .I1(\c_table_reg[23]__0 [4]),
        .O(\c_chars_out[6]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_21 
       (.I0(\c_table_reg[16]__0 [0]),
        .I1(\c_table_reg[16]__0 [4]),
        .O(\c_chars_out[6]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_22 
       (.I0(\c_table_reg[15]__0 [0]),
        .I1(\c_table_reg[15]__0 [4]),
        .O(\c_chars_out[6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_23 
       (.I0(\c_table_reg[14]__0 [0]),
        .I1(\c_table_reg[14]__0 [4]),
        .O(\c_chars_out[6]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_24 
       (.I0(\c_table_reg[21]__0 [0]),
        .I1(\c_table_reg[21]__0 [4]),
        .O(\c_chars_out[6]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_25 
       (.I0(\c_table_reg[19]__0 [0]),
        .I1(\c_table_reg[19]__0 [4]),
        .O(\c_chars_out[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_26 
       (.I0(\c_table_reg[18]__0 [0]),
        .I1(\c_table_reg[18]__0 [4]),
        .O(\c_chars_out[6]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_27 
       (.I0(\c_table_reg[17]__0 [0]),
        .I1(\c_table_reg[17]__0 [4]),
        .O(\c_chars_out[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[6]_i_2__0 
       (.I0(\c_chars_out[12]_i_3__0_n_0 ),
        .I1(\c_chars_out[10]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[8]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[25]_i_5__0_n_0 ),
        .O(\c_chars_out[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[6]_i_2__1 
       (.I0(\c_chars_out[12]_i_3__1_n_0 ),
        .I1(\c_chars_out[10]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[8]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[25]_i_5__1_n_0 ),
        .O(\c_chars_out[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[6]_i_2__2 
       (.I0(\c_chars_out[12]_i_3__2_n_0 ),
        .I1(\c_chars_out[10]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[8]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[25]_i_5__2_n_0 ),
        .O(\c_chars_out[6]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[6]_i_3 
       (.I0(\c_chars_out[6]_i_7_n_0 ),
        .I1(\c_chars_out[23]_i_8_n_0 ),
        .I2(\c_chars_out[6]_i_8_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[14]_i_7_n_0 ),
        .I5(\c_chars_out[7]_i_12_n_0 ),
        .O(\c_chars_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[6]_i_4 
       (.I0(\c_chars_out[23]_i_6_n_0 ),
        .I1(\c_chars_out[6]_i_9_n_0 ),
        .I2(\c_chars_out[6]_i_10_n_0 ),
        .I3(\c_chars_out[23]_i_11_n_0 ),
        .I4(\c_chars_out[6]_i_11_n_0 ),
        .I5(\c_chars_out[6]_i_12_n_0 ),
        .O(\c_chars_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[6]_i_5 
       (.I0(\c_chars_out[6]_i_13_n_0 ),
        .I1(\c_chars_out[6]_i_14_n_0 ),
        .I2(\c_chars_out[6]_i_15_n_0 ),
        .I3(\c_chars_out[23]_i_17_n_0 ),
        .I4(\c_chars_out[6]_i_16_n_0 ),
        .I5(\c_chars_out[6]_i_17_n_0 ),
        .O(\c_chars_out[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \c_chars_out[6]_i_6 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [0]),
        .I2(\c_table_reg[4]__0 [1]),
        .O(\c_chars_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[6]_i_7 
       (.I0(\c_chars_out[23]_i_36_n_0 ),
        .I1(\c_chars_out[6]_i_18_n_0 ),
        .I2(\c_chars_out[23]_i_37_n_0 ),
        .I3(\c_chars_out[6]_i_19_n_0 ),
        .I4(\c_chars_out[6]_i_20_n_0 ),
        .I5(\c_chars_out[23]_i_39_n_0 ),
        .O(\c_chars_out[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_8 
       (.I0(\c_table_reg[1]__0 [0]),
        .I1(\c_table_reg[1]__0 [4]),
        .O(\c_chars_out[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[6]_i_9 
       (.I0(\c_table_reg[5]__0 [0]),
        .I1(\c_table_reg[5]__0 [4]),
        .O(\c_chars_out[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[7]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[7]_i_2_n_0 ),
        .I2(\c_chars_out[7]_i_3_n_0 ),
        .I3(\c_chars_out[7]_i_4_n_0 ),
        .I4(\c_chars_out[7]_i_5_n_0 ),
        .I5(lut_projection[7]),
        .O(\c_chars_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[7]_i_10 
       (.I0(\c_chars_out[23]_i_36_n_0 ),
        .I1(\c_chars_out[7]_i_22_n_0 ),
        .I2(\c_chars_out[23]_i_37_n_0 ),
        .I3(\c_chars_out[7]_i_23_n_0 ),
        .I4(\c_chars_out[7]_i_24_n_0 ),
        .I5(\c_chars_out[23]_i_39_n_0 ),
        .O(\c_chars_out[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_11 
       (.I0(\c_table_reg[1]__0 [0]),
        .I1(\c_table_reg[1]__0 [4]),
        .O(\c_chars_out[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[7]_i_12 
       (.I0(\c_table_reg[0]__0 [3]),
        .I1(c_chars_in[0]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_13 
       (.I0(\c_table_reg[5]__0 [0]),
        .I1(\c_table_reg[5]__0 [4]),
        .O(\c_chars_out[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[7]_i_14 
       (.I0(\c_table_reg[6]__0 [0]),
        .I1(\c_table_reg[6]__0 [4]),
        .I2(\c_chars_out[23]_i_16_n_0 ),
        .I3(\c_table_reg[7]__0 [0]),
        .I4(\c_table_reg[7]__0 [4]),
        .I5(\c_chars_out[23]_i_13_n_0 ),
        .O(\c_chars_out[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_15 
       (.I0(\c_table_reg[8]__0 [0]),
        .I1(\c_table_reg[8]__0 [4]),
        .O(\c_chars_out[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[7]_i_16 
       (.I0(\c_table_reg[9]__0 [0]),
        .I1(\c_table_reg[9]__0 [4]),
        .I2(\c_chars_out[23]_i_22_n_0 ),
        .I3(\c_table_reg[10]__0 [0]),
        .I4(\c_table_reg[10]__0 [4]),
        .I5(\c_chars_out[23]_i_19_n_0 ),
        .O(\c_chars_out[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[7]_i_17 
       (.I0(\c_chars_out[23]_i_41_n_0 ),
        .I1(\c_chars_out[7]_i_25_n_0 ),
        .I2(\c_chars_out[23]_i_42_n_0 ),
        .I3(\c_chars_out[7]_i_26_n_0 ),
        .I4(\c_chars_out[7]_i_27_n_0 ),
        .I5(\c_chars_out[23]_i_43_n_0 ),
        .O(\c_chars_out[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \c_chars_out[7]_i_18 
       (.I0(\c_table_reg[12]__0 [0]),
        .I1(\c_table_reg[12]__0 [4]),
        .I2(\c_chars_out[23]_i_45_n_0 ),
        .I3(\c_table_reg[13]__0 [0]),
        .I4(\c_table_reg[13]__0 [4]),
        .I5(\c_chars_out[23]_i_44_n_0 ),
        .O(\c_chars_out[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_19 
       (.I0(\c_table_reg[11]__0 [0]),
        .I1(\c_table_reg[11]__0 [4]),
        .O(\c_chars_out[7]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[7]_i_1__0 
       (.I0(\c_chars_out[8]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[7]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[7]_i_1__1 
       (.I0(\c_chars_out[8]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[7]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[7]_i_1__2 
       (.I0(\c_chars_out[8]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[7]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[7]_i_2 
       (.I0(\c_chars_out[7]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_7_n_0 ),
        .I2(\c_chars_out[15]_i_5_n_0 ),
        .I3(\c_chars_out[7]_i_8_n_0 ),
        .I4(\c_chars_out[7]_i_9_n_0 ),
        .I5(\c_chars_out[15]_i_7_n_0 ),
        .O(\c_chars_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[7]_i_20 
       (.I0(\c_chars_out[15]_i_36_n_0 ),
        .I1(\c_chars_out[21]_i_9_n_0 ),
        .I2(\c_chars_out[15]_i_38_n_0 ),
        .I3(\c_chars_out[21]_i_7_n_0 ),
        .I4(\c_chars_out[7]_i_28_n_0 ),
        .I5(\c_chars_out[23]_i_32_n_0 ),
        .O(\c_chars_out[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[7]_i_21 
       (.I0(\c_chars_out[23]_i_34_n_0 ),
        .I1(\c_chars_out[7]_i_29_n_0 ),
        .I2(\c_chars_out[23]_i_35_n_0 ),
        .I3(\c_chars_out[7]_i_30_n_0 ),
        .I4(\c_chars_out[7]_i_31_n_0 ),
        .I5(\c_chars_out[23]_i_40_n_0 ),
        .O(\c_chars_out[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_22 
       (.I0(\c_table_reg[25]__0 [0]),
        .I1(\c_table_reg[25]__0 [4]),
        .O(\c_chars_out[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_23 
       (.I0(\c_table_reg[24]__0 [0]),
        .I1(\c_table_reg[24]__0 [4]),
        .O(\c_chars_out[7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_24 
       (.I0(\c_table_reg[23]__0 [0]),
        .I1(\c_table_reg[23]__0 [4]),
        .O(\c_chars_out[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_25 
       (.I0(\c_table_reg[16]__0 [0]),
        .I1(\c_table_reg[16]__0 [4]),
        .O(\c_chars_out[7]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_26 
       (.I0(\c_table_reg[15]__0 [0]),
        .I1(\c_table_reg[15]__0 [4]),
        .O(\c_chars_out[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_27 
       (.I0(\c_table_reg[14]__0 [0]),
        .I1(\c_table_reg[14]__0 [4]),
        .O(\c_chars_out[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_28 
       (.I0(\c_table_reg[21]__0 [0]),
        .I1(\c_table_reg[21]__0 [4]),
        .O(\c_chars_out[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_29 
       (.I0(\c_table_reg[19]__0 [0]),
        .I1(\c_table_reg[19]__0 [4]),
        .O(\c_chars_out[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_2__0 
       (.I0(\c_chars_out[13]_i_3__0_n_0 ),
        .I1(\c_chars_out[11]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[9]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[7]_i_3__0_n_0 ),
        .O(\c_chars_out[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_2__1 
       (.I0(\c_chars_out[13]_i_3__1_n_0 ),
        .I1(\c_chars_out[11]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[9]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[7]_i_3__1_n_0 ),
        .O(\c_chars_out[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_2__2 
       (.I0(\c_chars_out[13]_i_3__2_n_0 ),
        .I1(\c_chars_out[11]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[9]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[7]_i_3__2_n_0 ),
        .O(\c_chars_out[7]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[7]_i_3 
       (.I0(\c_chars_out[7]_i_10_n_0 ),
        .I1(\c_chars_out[23]_i_8_n_0 ),
        .I2(\c_chars_out[7]_i_11_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[15]_i_10_n_0 ),
        .I5(\c_chars_out[7]_i_12_n_0 ),
        .O(\c_chars_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_30 
       (.I0(\c_table_reg[18]__0 [0]),
        .I1(\c_table_reg[18]__0 [4]),
        .O(\c_chars_out[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_chars_out[7]_i_31 
       (.I0(\c_table_reg[17]__0 [0]),
        .I1(\c_table_reg[17]__0 [4]),
        .O(\c_chars_out[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_3__0 
       (.I0(lut_projection[5]),
        .I1(lut_projection[15]),
        .I2(Q[3]),
        .I3(lut_projection[23]),
        .I4(Q[4]),
        .I5(lut_projection[7]),
        .O(\c_chars_out[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_3__1 
       (.I0(lut_projection[5]),
        .I1(lut_projection[15]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[23]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[7]),
        .O(\c_chars_out[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[7]_i_3__2 
       (.I0(lut_projection[5]),
        .I1(lut_projection[15]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[23]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[7]),
        .O(\c_chars_out[7]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[7]_i_4 
       (.I0(\c_chars_out[23]_i_6_n_0 ),
        .I1(\c_chars_out[7]_i_13_n_0 ),
        .I2(\c_chars_out[7]_i_14_n_0 ),
        .I3(\c_chars_out[23]_i_11_n_0 ),
        .I4(\c_chars_out[7]_i_15_n_0 ),
        .I5(\c_chars_out[7]_i_16_n_0 ),
        .O(\c_chars_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[7]_i_5 
       (.I0(\c_chars_out[7]_i_17_n_0 ),
        .I1(\c_chars_out[7]_i_18_n_0 ),
        .I2(\c_chars_out[7]_i_19_n_0 ),
        .I3(\c_chars_out[23]_i_17_n_0 ),
        .I4(\c_chars_out[7]_i_20_n_0 ),
        .I5(\c_chars_out[7]_i_21_n_0 ),
        .O(\c_chars_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \c_chars_out[7]_i_6 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [0]),
        .I2(\c_table_reg[4]__0 [1]),
        .O(\c_chars_out[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[7]_i_7 
       (.I0(\c_table_reg[4]__0 [3]),
        .I1(p_0_in5_in),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[7]_i_8 
       (.I0(\c_table_reg[3]__0 [3]),
        .I1(p_0_in3_in),
        .I2(status),
        .I3(\c_table_reg[3]__0 [1]),
        .O(\c_chars_out[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \c_chars_out[7]_i_9 
       (.I0(\c_table_reg[2]__0 [3]),
        .I1(p_0_in1_in),
        .I2(status),
        .I3(\c_table_reg[2]__0 [1]),
        .O(\c_chars_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[8]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[8]_i_2_n_0 ),
        .I2(\c_chars_out[8]_i_3_n_0 ),
        .I3(\c_chars_out[8]_i_4_n_0 ),
        .I4(\c_chars_out[8]_i_5_n_0 ),
        .I5(lut_projection[8]),
        .O(\c_chars_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[8]_i_10 
       (.I0(\c_chars_out[14]_i_25_n_0 ),
        .I1(\c_chars_out[25]_i_44_n_0 ),
        .I2(\c_chars_out[14]_i_26_n_0 ),
        .I3(\c_chars_out[25]_i_59_n_0 ),
        .I4(\c_chars_out[25]_i_56_n_0 ),
        .I5(\c_chars_out[12]_i_16_n_0 ),
        .O(\c_chars_out[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[8]_i_11 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(\c_table_reg[12]__0 [2]),
        .I2(\c_chars_out[14]_i_28_n_0 ),
        .I3(\c_table_reg[13]__0 [1]),
        .I4(\c_table_reg[13]__0 [2]),
        .I5(\c_chars_out[14]_i_29_n_0 ),
        .O(\c_chars_out[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[8]_i_12 
       (.I0(\c_chars_out[12]_i_21_n_0 ),
        .I1(\c_chars_out[25]_i_33_n_0 ),
        .I2(\c_chars_out[12]_i_22_n_0 ),
        .I3(\c_chars_out[25]_i_30_n_0 ),
        .I4(\c_chars_out[25]_i_32_n_0 ),
        .I5(\c_chars_out[14]_i_23_n_0 ),
        .O(\c_chars_out[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[8]_i_13 
       (.I0(\c_chars_out[14]_i_22_n_0 ),
        .I1(\c_chars_out[25]_i_41_n_0 ),
        .I2(\c_chars_out[14]_i_21_n_0 ),
        .I3(\c_chars_out[25]_i_38_n_0 ),
        .I4(\c_chars_out[25]_i_47_n_0 ),
        .I5(\c_chars_out[12]_i_18_n_0 ),
        .O(\c_chars_out[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[8]_i_1__0 
       (.I0(\c_chars_out[9]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[8]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[8]_i_1__1 
       (.I0(\c_chars_out[9]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[8]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[8]_i_1__2 
       (.I0(\c_chars_out[9]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[8]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[8]_i_2 
       (.I0(\c_chars_out[8]_i_6_n_0 ),
        .I1(\c_chars_out[9]_i_7_n_0 ),
        .I2(\c_chars_out[10]_i_5_n_0 ),
        .I3(\c_chars_out[25]_i_18_n_0 ),
        .I4(\c_chars_out[25]_i_17_n_0 ),
        .I5(\c_chars_out[10]_i_6_n_0 ),
        .O(\c_chars_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_2__0 
       (.I0(\c_chars_out[14]_i_3__0_n_0 ),
        .I1(\c_chars_out[12]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[10]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[8]_i_3__0_n_0 ),
        .O(\c_chars_out[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_2__1 
       (.I0(\c_chars_out[14]_i_3__1_n_0 ),
        .I1(\c_chars_out[12]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[10]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[8]_i_3__1_n_0 ),
        .O(\c_chars_out[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_2__2 
       (.I0(\c_chars_out[14]_i_3__2_n_0 ),
        .I1(\c_chars_out[12]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[10]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[8]_i_3__2_n_0 ),
        .O(\c_chars_out[8]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[8]_i_3 
       (.I0(\c_chars_out[8]_i_7_n_0 ),
        .I1(\c_chars_out[12]_i_7_n_0 ),
        .I2(\c_chars_out[25]_i_23_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[10]_i_7_n_0 ),
        .I5(\c_chars_out[25]_i_20_n_0 ),
        .O(\c_chars_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_3__0 
       (.I0(lut_projection[6]),
        .I1(lut_projection[16]),
        .I2(Q[3]),
        .I3(lut_projection[24]),
        .I4(Q[4]),
        .I5(lut_projection[8]),
        .O(\c_chars_out[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_3__1 
       (.I0(lut_projection[6]),
        .I1(lut_projection[16]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[24]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[8]),
        .O(\c_chars_out[8]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[8]_i_3__2 
       (.I0(lut_projection[6]),
        .I1(lut_projection[16]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[24]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[8]),
        .O(\c_chars_out[8]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[8]_i_4 
       (.I0(\c_chars_out[12]_i_10_n_0 ),
        .I1(\c_chars_out[9]_i_9_n_0 ),
        .I2(\c_chars_out[8]_i_8_n_0 ),
        .I3(\c_chars_out[12]_i_12_n_0 ),
        .I4(\c_chars_out[9]_i_11_n_0 ),
        .I5(\c_chars_out[8]_i_9_n_0 ),
        .O(\c_chars_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[8]_i_5 
       (.I0(\c_chars_out[8]_i_10_n_0 ),
        .I1(\c_chars_out[8]_i_11_n_0 ),
        .I2(\c_chars_out[9]_i_15_n_0 ),
        .I3(\c_chars_out[12]_i_14_n_0 ),
        .I4(\c_chars_out[8]_i_12_n_0 ),
        .I5(\c_chars_out[8]_i_13_n_0 ),
        .O(\c_chars_out[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c_chars_out[8]_i_6 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [0]),
        .I2(\c_table_reg[4]__0 [1]),
        .O(\c_chars_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[8]_i_7 
       (.I0(\c_chars_out[14]_i_20_n_0 ),
        .I1(\c_chars_out[25]_i_29_n_0 ),
        .I2(\c_chars_out[14]_i_19_n_0 ),
        .I3(\c_chars_out[25]_i_26_n_0 ),
        .I4(\c_chars_out[25]_i_35_n_0 ),
        .I5(\c_chars_out[14]_i_24_n_0 ),
        .O(\c_chars_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[8]_i_8 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(\c_table_reg[6]__0 [2]),
        .I2(\c_chars_out[14]_i_30_n_0 ),
        .I3(\c_table_reg[7]__0 [1]),
        .I4(\c_table_reg[7]__0 [2]),
        .I5(\c_chars_out[14]_i_31_n_0 ),
        .O(\c_chars_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[8]_i_9 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(\c_table_reg[9]__0 [2]),
        .I2(\c_chars_out[14]_i_32_n_0 ),
        .I3(\c_table_reg[10]__0 [1]),
        .I4(\c_table_reg[10]__0 [2]),
        .I5(\c_chars_out[14]_i_27_n_0 ),
        .O(\c_chars_out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \c_chars_out[9]_i_1 
       (.I0(\FSM_sequential_status_reg_n_0_[1] ),
        .I1(\c_chars_out[9]_i_2_n_0 ),
        .I2(\c_chars_out[9]_i_3_n_0 ),
        .I3(\c_chars_out[9]_i_4_n_0 ),
        .I4(\c_chars_out[9]_i_5_n_0 ),
        .I5(lut_projection[9]),
        .O(\c_chars_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[9]_i_10 
       (.I0(\c_table_reg[6]__0 [1]),
        .I1(\c_table_reg[6]__0 [2]),
        .I2(\c_chars_out[15]_i_33_n_0 ),
        .I3(\c_table_reg[7]__0 [1]),
        .I4(\c_table_reg[7]__0 [2]),
        .I5(\c_chars_out[15]_i_34_n_0 ),
        .O(\c_chars_out[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[9]_i_11 
       (.I0(\c_table_reg[8]__0 [1]),
        .I1(\c_table_reg[8]__0 [2]),
        .O(\c_chars_out[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[9]_i_12 
       (.I0(\c_table_reg[9]__0 [1]),
        .I1(\c_table_reg[9]__0 [2]),
        .I2(\c_chars_out[15]_i_35_n_0 ),
        .I3(\c_table_reg[10]__0 [1]),
        .I4(\c_table_reg[10]__0 [2]),
        .I5(\c_chars_out[15]_i_30_n_0 ),
        .O(\c_chars_out[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[9]_i_13 
       (.I0(\c_chars_out[15]_i_28_n_0 ),
        .I1(\c_chars_out[25]_i_44_n_0 ),
        .I2(\c_chars_out[15]_i_29_n_0 ),
        .I3(\c_chars_out[25]_i_59_n_0 ),
        .I4(\c_chars_out[25]_i_56_n_0 ),
        .I5(\c_chars_out[13]_i_19_n_0 ),
        .O(\c_chars_out[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \c_chars_out[9]_i_14 
       (.I0(\c_table_reg[12]__0 [1]),
        .I1(\c_table_reg[12]__0 [2]),
        .I2(\c_chars_out[15]_i_31_n_0 ),
        .I3(\c_table_reg[13]__0 [1]),
        .I4(\c_table_reg[13]__0 [2]),
        .I5(\c_chars_out[15]_i_32_n_0 ),
        .O(\c_chars_out[9]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[9]_i_15 
       (.I0(\c_table_reg[11]__0 [1]),
        .I1(\c_table_reg[11]__0 [2]),
        .O(\c_chars_out[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[9]_i_16 
       (.I0(\c_chars_out[13]_i_28_n_0 ),
        .I1(\c_chars_out[25]_i_33_n_0 ),
        .I2(\c_chars_out[13]_i_29_n_0 ),
        .I3(\c_chars_out[25]_i_30_n_0 ),
        .I4(\c_chars_out[25]_i_32_n_0 ),
        .I5(\c_chars_out[15]_i_26_n_0 ),
        .O(\c_chars_out[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[9]_i_17 
       (.I0(\c_chars_out[15]_i_25_n_0 ),
        .I1(\c_chars_out[25]_i_41_n_0 ),
        .I2(\c_chars_out[15]_i_24_n_0 ),
        .I3(\c_chars_out[25]_i_38_n_0 ),
        .I4(\c_chars_out[25]_i_47_n_0 ),
        .I5(\c_chars_out[13]_i_22_n_0 ),
        .O(\c_chars_out[9]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[9]_i_1__0 
       (.I0(\c_chars_out[10]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\c_chars_out[9]_i_2__0_n_0 ),
        .O(\c_drum_count_reg[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[9]_i_1__1 
       (.I0(\c_chars_out[10]_i_2__1_n_0 ),
        .I1(\c_chars_out[11]_i_2__1_0 [0]),
        .I2(\c_chars_out[9]_i_2__1_n_0 ),
        .O(\c_drum_count_reg[0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \c_chars_out[9]_i_1__2 
       (.I0(\c_chars_out[10]_i_2__2_n_0 ),
        .I1(\c_chars_out[11]_i_2__2_0 [0]),
        .I2(\c_chars_out[9]_i_2__2_n_0 ),
        .O(\c_drum_count_reg[0]_1 [9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[9]_i_2 
       (.I0(\c_chars_out[9]_i_6_n_0 ),
        .I1(\c_chars_out[9]_i_7_n_0 ),
        .I2(\c_chars_out[11]_i_5_n_0 ),
        .I3(\c_chars_out[25]_i_18_n_0 ),
        .I4(\c_chars_out[25]_i_17_n_0 ),
        .I5(\c_chars_out[11]_i_6_n_0 ),
        .O(\c_chars_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_2__0 
       (.I0(\c_chars_out[15]_i_3__0_n_0 ),
        .I1(\c_chars_out[13]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(\c_chars_out[11]_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(\c_chars_out[9]_i_3__0_n_0 ),
        .O(\c_chars_out[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_2__1 
       (.I0(\c_chars_out[15]_i_3__1_n_0 ),
        .I1(\c_chars_out[13]_i_3__1_n_0 ),
        .I2(\c_chars_out[11]_i_2__1_0 [2]),
        .I3(\c_chars_out[11]_i_3__1_n_0 ),
        .I4(\c_chars_out[11]_i_2__1_0 [1]),
        .I5(\c_chars_out[9]_i_3__1_n_0 ),
        .O(\c_chars_out[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_2__2 
       (.I0(\c_chars_out[15]_i_3__2_n_0 ),
        .I1(\c_chars_out[13]_i_3__2_n_0 ),
        .I2(\c_chars_out[11]_i_2__2_0 [2]),
        .I3(\c_chars_out[11]_i_3__2_n_0 ),
        .I4(\c_chars_out[11]_i_2__2_0 [1]),
        .I5(\c_chars_out[9]_i_3__2_n_0 ),
        .O(\c_chars_out[9]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \c_chars_out[9]_i_3 
       (.I0(\c_chars_out[9]_i_8_n_0 ),
        .I1(\c_chars_out[13]_i_7_n_0 ),
        .I2(\c_chars_out[25]_i_23_n_0 ),
        .I3(\FSM_sequential_status_reg[0]_0 ),
        .I4(\c_chars_out[11]_i_7_n_0 ),
        .I5(\c_chars_out[25]_i_20_n_0 ),
        .O(\c_chars_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_3__0 
       (.I0(lut_projection[7]),
        .I1(lut_projection[17]),
        .I2(Q[3]),
        .I3(lut_projection[25]),
        .I4(Q[4]),
        .I5(lut_projection[9]),
        .O(\c_chars_out[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_3__1 
       (.I0(lut_projection[7]),
        .I1(lut_projection[17]),
        .I2(\c_chars_out[11]_i_2__1_0 [3]),
        .I3(lut_projection[25]),
        .I4(\c_chars_out[11]_i_2__1_0 [4]),
        .I5(lut_projection[9]),
        .O(\c_chars_out[9]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \c_chars_out[9]_i_3__2 
       (.I0(lut_projection[7]),
        .I1(lut_projection[17]),
        .I2(\c_chars_out[11]_i_2__2_0 [3]),
        .I3(lut_projection[25]),
        .I4(\c_chars_out[11]_i_2__2_0 [4]),
        .I5(lut_projection[9]),
        .O(\c_chars_out[9]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \c_chars_out[9]_i_4 
       (.I0(\c_chars_out[13]_i_10_n_0 ),
        .I1(\c_chars_out[9]_i_9_n_0 ),
        .I2(\c_chars_out[9]_i_10_n_0 ),
        .I3(\c_chars_out[13]_i_13_n_0 ),
        .I4(\c_chars_out[9]_i_11_n_0 ),
        .I5(\c_chars_out[9]_i_12_n_0 ),
        .O(\c_chars_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \c_chars_out[9]_i_5 
       (.I0(\c_chars_out[9]_i_13_n_0 ),
        .I1(\c_chars_out[9]_i_14_n_0 ),
        .I2(\c_chars_out[9]_i_15_n_0 ),
        .I3(\c_chars_out[13]_i_16_n_0 ),
        .I4(\c_chars_out[9]_i_16_n_0 ),
        .I5(\c_chars_out[9]_i_17_n_0 ),
        .O(\c_chars_out[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c_chars_out[9]_i_6 
       (.I0(\c_table_reg[4]__0 [4]),
        .I1(\c_table_reg[4]__0 [0]),
        .I2(\c_table_reg[4]__0 [1]),
        .O(\c_chars_out[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \c_chars_out[9]_i_7 
       (.I0(p_0_in5_in),
        .I1(\c_table_reg[4]__0 [3]),
        .I2(status),
        .I3(\c_table_reg[0]__0 [1]),
        .O(\c_chars_out[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_chars_out[9]_i_8 
       (.I0(\c_chars_out[15]_i_23_n_0 ),
        .I1(\c_chars_out[25]_i_29_n_0 ),
        .I2(\c_chars_out[15]_i_22_n_0 ),
        .I3(\c_chars_out[25]_i_26_n_0 ),
        .I4(\c_chars_out[25]_i_35_n_0 ),
        .I5(\c_chars_out[15]_i_27_n_0 ),
        .O(\c_chars_out[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c_chars_out[9]_i_9 
       (.I0(\c_table_reg[5]__0 [1]),
        .I1(\c_table_reg[5]__0 [2]),
        .O(\c_chars_out[9]_i_9_n_0 ));
  FDRE \c_chars_out_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[0]_i_1_n_0 ),
        .Q(lut_projection[0]),
        .R(SR));
  FDRE \c_chars_out_reg[10] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[10]_i_1_n_0 ),
        .Q(lut_projection[10]),
        .R(SR));
  FDRE \c_chars_out_reg[11] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[11]_i_1_n_0 ),
        .Q(lut_projection[11]),
        .R(SR));
  FDRE \c_chars_out_reg[12] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[12]_i_1_n_0 ),
        .Q(lut_projection[12]),
        .R(SR));
  FDRE \c_chars_out_reg[13] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[13]_i_1_n_0 ),
        .Q(lut_projection[13]),
        .R(SR));
  FDRE \c_chars_out_reg[14] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[14]_i_1_n_0 ),
        .Q(lut_projection[14]),
        .R(SR));
  FDRE \c_chars_out_reg[15] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[15]_i_1_n_0 ),
        .Q(lut_projection[15]),
        .R(SR));
  FDRE \c_chars_out_reg[16] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[16]_i_1_n_0 ),
        .Q(lut_projection[16]),
        .R(SR));
  FDRE \c_chars_out_reg[17] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[17]_i_1_n_0 ),
        .Q(lut_projection[17]),
        .R(SR));
  FDRE \c_chars_out_reg[18] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[18]_i_1_n_0 ),
        .Q(lut_projection[18]),
        .R(SR));
  FDRE \c_chars_out_reg[19] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[19]_i_1_n_0 ),
        .Q(lut_projection[19]),
        .R(SR));
  FDRE \c_chars_out_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[1]_i_1_n_0 ),
        .Q(lut_projection[1]),
        .R(SR));
  FDRE \c_chars_out_reg[20] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[20]_i_1_n_0 ),
        .Q(lut_projection[20]),
        .R(SR));
  FDRE \c_chars_out_reg[21] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[21]_i_1_n_0 ),
        .Q(lut_projection[21]),
        .R(SR));
  FDRE \c_chars_out_reg[22] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[22]_i_1_n_0 ),
        .Q(lut_projection[22]),
        .R(SR));
  FDRE \c_chars_out_reg[23] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[23]_i_1_n_0 ),
        .Q(lut_projection[23]),
        .R(SR));
  FDRE \c_chars_out_reg[24] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[24]_i_1_n_0 ),
        .Q(lut_projection[24]),
        .R(SR));
  FDRE \c_chars_out_reg[25] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[25]_i_1_n_0 ),
        .Q(lut_projection[25]),
        .R(SR));
  FDRE \c_chars_out_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[2]_i_1_n_0 ),
        .Q(lut_projection[2]),
        .R(SR));
  FDRE \c_chars_out_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[3]_i_1_n_0 ),
        .Q(lut_projection[3]),
        .R(SR));
  FDRE \c_chars_out_reg[4] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[4]_i_1_n_0 ),
        .Q(lut_projection[4]),
        .R(SR));
  FDRE \c_chars_out_reg[5] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[5]_i_1_n_0 ),
        .Q(lut_projection[5]),
        .R(SR));
  FDRE \c_chars_out_reg[6] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[6]_i_1_n_0 ),
        .Q(lut_projection[6]),
        .R(SR));
  FDRE \c_chars_out_reg[7] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[7]_i_1_n_0 ),
        .Q(lut_projection[7]),
        .R(SR));
  FDRE \c_chars_out_reg[8] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[8]_i_1_n_0 ),
        .Q(lut_projection[8]),
        .R(SR));
  FDRE \c_chars_out_reg[9] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_chars_out[9]_i_1_n_0 ),
        .Q(lut_projection[9]),
        .R(SR));
  FDSE c_direction_reg
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(c_direction_reg_0),
        .Q(c_direction),
        .S(SR));
  LUT6 #(
    .INIT(64'hCC00CC00EE22FF32)) 
    \c_drum_inprocess[0]_i_1 
       (.I0(c_direction_reg_1),
        .I1(\FSM_sequential_status_reg[0]_0 ),
        .I2(lut_request_drum_ukw),
        .I3(c_drum_inprocess[0]),
        .I4(c_direction_reg_2),
        .I5(c_direction_reg_3),
        .O(n_drum_inprocess[0]));
  LUT6 #(
    .INIT(64'hAAAA0303AAAA0302)) 
    \c_drum_inprocess[1]_i_1 
       (.I0(c_drum_inprocess[1]),
        .I1(c_direction_reg_1),
        .I2(c_direction_reg_3),
        .I3(c_direction_reg_2),
        .I4(\FSM_sequential_status_reg[0]_0 ),
        .I5(lut_request_drum_ukw),
        .O(n_drum_inprocess[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \c_drum_inprocess[1]_i_2 
       (.I0(status),
        .I1(\FSM_sequential_status_reg_n_0_[1] ),
        .O(\FSM_sequential_status_reg[0]_0 ));
  FDRE \c_drum_inprocess_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_drum_inprocess[0]),
        .Q(c_drum_inprocess[0]),
        .R(SR));
  FDRE \c_drum_inprocess_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(n_drum_inprocess[1]),
        .Q(c_drum_inprocess[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \c_drum_typ[2]_i_1 
       (.I0(lut_request_drum_ukw),
        .I1(c_direction_reg_3),
        .I2(c_direction_reg_1),
        .I3(c_direction_reg_2),
        .I4(\FSM_sequential_status_reg_n_0_[1] ),
        .I5(status),
        .O(n_chars_in));
  FDRE \c_drum_typ_reg[0] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(D[0]),
        .Q(c_drum_typ[0]),
        .R(SR));
  FDRE \c_drum_typ_reg[1] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(D[1]),
        .Q(c_drum_typ[1]),
        .R(SR));
  FDRE \c_drum_typ_reg[2] 
       (.C(UB_CLK_IN),
        .CE(n_chars_in),
        .D(D[2]),
        .Q(c_drum_typ[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFFF01000)) 
    \c_ready[0]_i_1 
       (.I0(c_drum_inprocess[0]),
        .I1(c_drum_inprocess[1]),
        .I2(\FSM_sequential_status_reg_n_0_[1] ),
        .I3(status),
        .I4(\c_ready_reg[0]_0 ),
        .O(\c_ready[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF02000)) 
    \c_ready[1]_i_1 
       (.I0(c_drum_inprocess[0]),
        .I1(c_drum_inprocess[1]),
        .I2(\FSM_sequential_status_reg_n_0_[1] ),
        .I3(status),
        .I4(\c_ready_reg[1]_0 ),
        .O(\c_ready[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF02000)) 
    \c_ready[2]_i_1 
       (.I0(c_drum_inprocess[1]),
        .I1(c_drum_inprocess[0]),
        .I2(\FSM_sequential_status_reg_n_0_[1] ),
        .I3(status),
        .I4(\c_ready_reg[2]_0 ),
        .O(\c_ready[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF08000)) 
    \c_ready[3]_i_1 
       (.I0(c_drum_inprocess[0]),
        .I1(c_drum_inprocess[1]),
        .I2(\FSM_sequential_status_reg_n_0_[1] ),
        .I3(status),
        .I4(lut_ready_to_drum_ukw),
        .O(\c_ready[3]_i_1_n_0 ));
  FDRE \c_ready_reg[0] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_ready[0]_i_1_n_0 ),
        .Q(\c_ready_reg[0]_0 ),
        .R(SR));
  FDRE \c_ready_reg[1] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_ready[1]_i_1_n_0 ),
        .Q(\c_ready_reg[1]_0 ),
        .R(SR));
  FDRE \c_ready_reg[2] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_ready[2]_i_1_n_0 ),
        .Q(\c_ready_reg[2]_0 ),
        .R(SR));
  FDRE \c_ready_reg[3] 
       (.C(UB_CLK_IN),
        .CE(1'b1),
        .D(\c_ready[3]_i_1_n_0 ),
        .Q(lut_ready_to_drum_ukw),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h3400)) 
    \c_table[0][0]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\c_table[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h0422)) 
    \c_table[0][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\c_table[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hA09F)) 
    \c_table[0][2]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\c_table[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0A20)) 
    \c_table[0][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\c_table[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0838)) 
    \c_table[0][4]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\c_table[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hBDFF)) 
    \c_table[10][0]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[10]_9 [0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h6246)) 
    \c_table[10][1]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[10]_9 [1]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hF9ED)) 
    \c_table[10][2]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[10]_9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hB5A1)) 
    \c_table[10][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .I3(c_direction),
        .O(\n_table[10]_9 [3]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \c_table[10][4]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[2]),
        .I3(c_direction),
        .O(\n_table[10]_9 [4]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hFE73)) 
    \c_table[11][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[11]_10 [0]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h98DD)) 
    \c_table[11][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[11]_10 [1]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h4E7A)) 
    \c_table[11][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[11]_10 [2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \c_table[11][3]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[2]),
        .O(\c_table[11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hFA33)) 
    \c_table[11][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[11]_10 [4]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h2640)) 
    \c_table[12][0]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[12]_11 [0]));
  LUT3 #(
    .INIT(8'hB5)) 
    \c_table[12][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .O(\n_table[12]_11 [1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'hDBAB)) 
    \c_table[12][2]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[12]_11 [2]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hB8DB)) 
    \c_table[12][3]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[12]_11 [3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h6224)) 
    \c_table[12][4]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[12]_11 [4]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h6222)) 
    \c_table[13][0]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\c_table[13][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hF32F)) 
    \c_table[13][1]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\c_table[13][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hCCD1)) 
    \c_table[13][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\c_table[13][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    \c_table[13][3]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\c_table[13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hA75D)) 
    \c_table[13][4]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[2]),
        .O(\c_table[13][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h2402)) 
    \c_table[14][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[14]_12 [0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \c_table[14][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[14]_12 [1]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h2C38)) 
    \c_table[14][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[14]_12 [2]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \c_table[14][3]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .O(\c_table[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'hDE17)) 
    \c_table[14][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[14]_12 [4]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'hB0D7)) 
    \c_table[15][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[15]_13 [0]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'h9C5F)) 
    \c_table[15][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[15]_13 [1]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'hDE15)) 
    \c_table[15][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[15]_13 [2]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h22A8)) 
    \c_table[15][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[15]_13 [3]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h0214)) 
    \c_table[15][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[15]_13 [4]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hA0BF)) 
    \c_table[16][0]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\n_table[16]_14 [0]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hA02F)) 
    \c_table[16][1]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\n_table[16]_14 [1]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \c_table[16][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .O(\c_table[16][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \c_table[16][3]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[16]_14 [3]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'h9E55)) 
    \c_table[16][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[16]_14 [4]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h0AB0)) 
    \c_table[17][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[17]_15 [0]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h4366)) 
    \c_table[17][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[17]_15 [1]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'hD975)) 
    \c_table[17][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[17]_15 [2]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'h2622)) 
    \c_table[17][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[17]_15 [3]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hE0D5)) 
    \c_table[17][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[17]_15 [4]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h0C4A)) 
    \c_table[18][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[18]_16 [0]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hFF0B)) 
    \c_table[18][1]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[18]_16 [1]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h4A6E)) 
    \c_table[18][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[18]_16 [2]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h0042)) 
    \c_table[18][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[18]_16 [3]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h95F1)) 
    \c_table[18][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[18]_16 [4]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hBF5D)) 
    \c_table[19][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[19]_17 [0]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hA01F)) 
    \c_table[19][1]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\n_table[19]_17 [1]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h9A75)) 
    \c_table[19][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[19]_17 [2]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'hBFD5)) 
    \c_table[19][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[19]_17 [3]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h08A8)) 
    \c_table[19][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[19]_17 [4]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h4E2C)) 
    \c_table[1][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[1]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hE075)) 
    \c_table[1][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[1]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h0098)) 
    \c_table[1][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[1]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hB857)) 
    \c_table[1][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[1]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0A10)) 
    \c_table[1][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[1]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h0616)) 
    \c_table[20][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[20]_18 [0]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h3FB0)) 
    \c_table[20][1]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\n_table[20]_18 [1]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \c_table[20][3]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_direction),
        .O(\n_table[20]_18 [3]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h0034)) 
    \c_table[20][4]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[20]_18 [4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h2426)) 
    \c_table[21][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\c_table[21][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h53D0)) 
    \c_table[21][1]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_direction),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\c_table[21][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h208A)) 
    \c_table[21][2]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\c_table[21][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \c_table[21][3]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[2]),
        .I3(c_direction),
        .O(\c_table[21][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c_table[21][4]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[0]),
        .O(\c_table[21][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hBE55)) 
    \c_table[22][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[22]_19 [0]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \c_table[22][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .O(\c_table[22][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h0034)) 
    \c_table[22][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[22]_19 [3]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h38C0)) 
    \c_table[22][4]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[22]_19 [4]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'h98FB)) 
    \c_table[23][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[23]_20 [0]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h3408)) 
    \c_table[23][1]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[23]_20 [1]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \c_table[23][2]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[2]),
        .O(\c_table[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h4074)) 
    \c_table[23][3]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_direction),
        .O(\n_table[23]_20 [3]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'hB8B7)) 
    \c_table[23][4]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[23]_20 [4]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'h2226)) 
    \c_table[24][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[24]_21 [0]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h9CDF)) 
    \c_table[24][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\n_table[24]_21 [1]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'h2656)) 
    \c_table[24][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[24]_21 [2]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h0652)) 
    \c_table[24][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[24]_21 [3]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h4204)) 
    \c_table[24][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[24]_21 [4]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h9BBB)) 
    \c_table[25][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[25]_22 [0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h60AC)) 
    \c_table[25][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[25]_22 [1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h6640)) 
    \c_table[25][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[25]_22 [2]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hF307)) 
    \c_table[25][3]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[25]_22 [3]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h02AC)) 
    \c_table[25][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[25]_22 [4]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h6604)) 
    \c_table[2][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \c_table[2][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[2]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hFC9D)) 
    \c_table[2][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[2]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hA155)) 
    \c_table[2][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[2]_1 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    \c_table[2][4]_i_1 
       (.I0(status),
        .I1(\FSM_sequential_status_reg_n_0_[1] ),
        .O(\n_table[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0AB8)) 
    \c_table[2][4]_i_2 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[2]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \c_table[3][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[3]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h41EE)) 
    \c_table[3][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[3]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hEA7F)) 
    \c_table[3][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[3]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0600)) 
    \c_table[3][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[3]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \c_table[3][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[3]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hFC15)) 
    \c_table[4][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[4]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hBC73)) 
    \c_table[4][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[4]_4 [1]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hDC15)) 
    \c_table[4][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[4]_4 [3]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \c_table[4][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .O(\n_table[4]_4 [4]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h6032)) 
    \c_table[5][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[5]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hFBD5)) 
    \c_table[5][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[5]_5 [1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h9A15)) 
    \c_table[5][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[5]_5 [2]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h3008)) 
    \c_table[5][3]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_direction),
        .O(\n_table[5]_5 [3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h20AC)) 
    \c_table[5][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[5]_5 [4]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hCF73)) 
    \c_table[6][0]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[0]),
        .I3(c_drum_typ[1]),
        .O(\n_table[6]_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hDC9B)) 
    \c_table[6][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[6]_6 [1]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \c_table[6][2]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[2]),
        .O(\c_table[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \c_table[6][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .O(\n_table[6]_6 [3]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h0466)) 
    \c_table[6][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[6]_6 [4]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h485C)) 
    \c_table[7][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[7]_7 [0]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h6A5C)) 
    \c_table[7][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[7]_7 [1]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h4412)) 
    \c_table[7][2]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[7]_7 [2]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h6234)) 
    \c_table[7][3]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[7]_7 [3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h9A53)) 
    \c_table[7][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[7]_7 [4]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hF9FD)) 
    \c_table[8][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[8]_8 [0]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h02CA)) 
    \c_table[8][1]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_direction),
        .I3(c_drum_typ[0]),
        .O(\n_table[8]_8 [1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hCFF7)) 
    \c_table[8][2]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[2]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\n_table[8]_8 [2]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h2300)) 
    \c_table[8][3]_i_1 
       (.I0(c_drum_typ[1]),
        .I1(c_drum_typ[0]),
        .I2(c_direction),
        .I3(c_drum_typ[2]),
        .O(\n_table[8]_8 [3]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hF5D1)) 
    \c_table[8][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_drum_typ[1]),
        .I2(c_drum_typ[0]),
        .I3(c_direction),
        .O(\n_table[8]_8 [4]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hE7FD)) 
    \c_table[9][0]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\c_table[9][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h3480)) 
    \c_table[9][1]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[2]),
        .O(\c_table[9][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h460C)) 
    \c_table[9][2]_i_1 
       (.I0(c_drum_typ[0]),
        .I1(c_drum_typ[2]),
        .I2(c_direction),
        .I3(c_drum_typ[1]),
        .O(\c_table[9][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hC07F)) 
    \c_table[9][3]_i_1 
       (.I0(c_direction),
        .I1(c_drum_typ[0]),
        .I2(c_drum_typ[2]),
        .I3(c_drum_typ[1]),
        .O(\c_table[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hE5AD)) 
    \c_table[9][4]_i_1 
       (.I0(c_drum_typ[2]),
        .I1(c_direction),
        .I2(c_drum_typ[1]),
        .I3(c_drum_typ[0]),
        .O(\c_table[9][4]_i_1_n_0 ));
  FDRE \c_table_reg[0][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[0][0]_i_1_n_0 ),
        .Q(\c_table_reg[0]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[0][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[0][1]_i_1_n_0 ),
        .Q(\c_table_reg[0]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[0][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[0][2]_i_1_n_0 ),
        .Q(\c_table_reg[0]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[0][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[0][3]_i_1_n_0 ),
        .Q(\c_table_reg[0]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[0][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[0][4]_i_1_n_0 ),
        .Q(\c_table_reg[0]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[10][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[10]_9 [0]),
        .Q(\c_table_reg[10]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[10][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[10]_9 [1]),
        .Q(\c_table_reg[10]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[10][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[10]_9 [2]),
        .Q(\c_table_reg[10]__0 [2]),
        .S(SR));
  FDSE \c_table_reg[10][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[10]_9 [3]),
        .Q(\c_table_reg[10]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[10][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[10]_9 [4]),
        .Q(\c_table_reg[10]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[11][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[11]_10 [0]),
        .Q(\c_table_reg[11]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[11][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[11]_10 [1]),
        .Q(\c_table_reg[11]__0 [1]),
        .S(SR));
  FDRE \c_table_reg[11][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[11]_10 [2]),
        .Q(\c_table_reg[11]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[11][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[11][3]_i_1_n_0 ),
        .Q(\c_table_reg[11]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[11][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[11]_10 [4]),
        .Q(\c_table_reg[11]__0 [4]),
        .S(SR));
  FDRE \c_table_reg[12][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[12]_11 [0]),
        .Q(\c_table_reg[12]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[12][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[12]_11 [1]),
        .Q(\c_table_reg[12]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[12][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[12]_11 [2]),
        .Q(\c_table_reg[12]__0 [2]),
        .S(SR));
  FDSE \c_table_reg[12][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[12]_11 [3]),
        .Q(\c_table_reg[12]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[12][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[12]_11 [4]),
        .Q(\c_table_reg[12]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[13][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[13][0]_i_1_n_0 ),
        .Q(\c_table_reg[13]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[13][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[13][1]_i_1_n_0 ),
        .Q(\c_table_reg[13]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[13][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[13][2]_i_1_n_0 ),
        .Q(\c_table_reg[13]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[13][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[13][3]_i_1_n_0 ),
        .Q(\c_table_reg[13]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[13][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[13][4]_i_1_n_0 ),
        .Q(\c_table_reg[13]__0 [4]),
        .S(SR));
  FDRE \c_table_reg[14][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[14]_12 [0]),
        .Q(\c_table_reg[14]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[14][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[14]_12 [1]),
        .Q(\c_table_reg[14]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[14][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[14]_12 [2]),
        .Q(\c_table_reg[14]__0 [2]),
        .R(SR));
  FDSE \c_table_reg[14][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[14][3]_i_1_n_0 ),
        .Q(\c_table_reg[14]__0 [3]),
        .S(SR));
  FDSE \c_table_reg[14][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[14]_12 [4]),
        .Q(\c_table_reg[14]__0 [4]),
        .S(SR));
  FDSE \c_table_reg[15][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[15]_13 [0]),
        .Q(\c_table_reg[15]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[15][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[15]_13 [1]),
        .Q(\c_table_reg[15]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[15][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[15]_13 [2]),
        .Q(\c_table_reg[15]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[15][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[15]_13 [3]),
        .Q(\c_table_reg[15]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[15][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[15]_13 [4]),
        .Q(\c_table_reg[15]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[16][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[16]_14 [0]),
        .Q(\c_table_reg[16]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[16][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[16]_14 [1]),
        .Q(\c_table_reg[16]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[16][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[16][2]_i_1_n_0 ),
        .Q(\c_table_reg[16]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[16][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[16]_14 [3]),
        .Q(\c_table_reg[16]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[16][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[16]_14 [4]),
        .Q(\c_table_reg[16]__0 [4]),
        .S(SR));
  FDRE \c_table_reg[17][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[17]_15 [0]),
        .Q(\c_table_reg[17]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[17][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[17]_15 [1]),
        .Q(\c_table_reg[17]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[17][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[17]_15 [2]),
        .Q(\c_table_reg[17]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[17][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[17]_15 [3]),
        .Q(\c_table_reg[17]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[17][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[17]_15 [4]),
        .Q(\c_table_reg[17]__0 [4]),
        .S(SR));
  FDRE \c_table_reg[18][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[18]_16 [0]),
        .Q(\c_table_reg[18]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[18][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[18]_16 [1]),
        .Q(\c_table_reg[18]__0 [1]),
        .S(SR));
  FDRE \c_table_reg[18][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[18]_16 [2]),
        .Q(\c_table_reg[18]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[18][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[18]_16 [3]),
        .Q(\c_table_reg[18]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[18][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[18]_16 [4]),
        .Q(\c_table_reg[18]__0 [4]),
        .S(SR));
  FDSE \c_table_reg[19][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[19]_17 [0]),
        .Q(\c_table_reg[19]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[19][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[19]_17 [1]),
        .Q(\c_table_reg[19]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[19][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[19]_17 [2]),
        .Q(\c_table_reg[19]__0 [2]),
        .S(SR));
  FDSE \c_table_reg[19][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[19]_17 [3]),
        .Q(\c_table_reg[19]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[19][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[19]_17 [4]),
        .Q(\c_table_reg[19]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[1][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[1]_2 [0]),
        .Q(\c_table_reg[1]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[1][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[1]_2 [1]),
        .Q(\c_table_reg[1]__0 [1]),
        .S(SR));
  FDRE \c_table_reg[1][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[1]_2 [2]),
        .Q(\c_table_reg[1]__0 [2]),
        .R(SR));
  FDSE \c_table_reg[1][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[1]_2 [3]),
        .Q(\c_table_reg[1]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[1][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[1]_2 [4]),
        .Q(\c_table_reg[1]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[20][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[20]_18 [0]),
        .Q(\c_table_reg[20]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[20][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[20]_18 [1]),
        .Q(\c_table_reg[20]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[20][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[20]_18 [3]),
        .Q(\c_table_reg[20]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[20][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[20]_18 [4]),
        .Q(\c_table_reg[20]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[21][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[21][0]_i_1_n_0 ),
        .Q(\c_table_reg[21]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[21][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[21][1]_i_1_n_0 ),
        .Q(\c_table_reg[21]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[21][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[21][2]_i_1_n_0 ),
        .Q(\c_table_reg[21]__0 [2]),
        .R(SR));
  FDSE \c_table_reg[21][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[21][3]_i_1_n_0 ),
        .Q(\c_table_reg[21]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[21][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[21][4]_i_1_n_0 ),
        .Q(\c_table_reg[21]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[22][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[22]_19 [0]),
        .Q(\c_table_reg[22]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[22][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[22][1]_i_1_n_0 ),
        .Q(\c_table_reg[22]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[22][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[22]_19 [3]),
        .Q(\c_table_reg[22]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[22][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[22]_19 [4]),
        .Q(\c_table_reg[22]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[23][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[23]_20 [0]),
        .Q(\c_table_reg[23]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[23][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[23]_20 [1]),
        .Q(\c_table_reg[23]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[23][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[23][2]_i_1_n_0 ),
        .Q(\c_table_reg[23]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[23][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[23]_20 [3]),
        .Q(\c_table_reg[23]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[23][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[23]_20 [4]),
        .Q(\c_table_reg[23]__0 [4]),
        .S(SR));
  FDRE \c_table_reg[24][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[24]_21 [0]),
        .Q(\c_table_reg[24]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[24][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[24]_21 [1]),
        .Q(\c_table_reg[24]__0 [1]),
        .S(SR));
  FDRE \c_table_reg[24][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[24]_21 [2]),
        .Q(\c_table_reg[24]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[24][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[24]_21 [3]),
        .Q(\c_table_reg[24]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[24][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[24]_21 [4]),
        .Q(\c_table_reg[24]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[25][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[25]_22 [0]),
        .Q(\c_table_reg[25]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[25][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[25]_22 [1]),
        .Q(\c_table_reg[25]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[25][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[25]_22 [2]),
        .Q(\c_table_reg[25]__0 [2]),
        .R(SR));
  FDSE \c_table_reg[25][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[25]_22 [3]),
        .Q(\c_table_reg[25]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[25][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[25]_22 [4]),
        .Q(\c_table_reg[25]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[2][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[2]_1 [0]),
        .Q(\c_table_reg[2]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[2][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[2]_1 [1]),
        .Q(\c_table_reg[2]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[2][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[2]_1 [2]),
        .Q(\c_table_reg[2]__0 [2]),
        .S(SR));
  FDSE \c_table_reg[2][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[2]_1 [3]),
        .Q(\c_table_reg[2]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[2][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[2]_1 [4]),
        .Q(\c_table_reg[2]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[3][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[3]_3 [0]),
        .Q(\c_table_reg[3]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[3][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[3]_3 [1]),
        .Q(\c_table_reg[3]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[3][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[3]_3 [2]),
        .Q(\c_table_reg[3]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[3][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[3]_3 [3]),
        .Q(\c_table_reg[3]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[3][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[3]_3 [4]),
        .Q(\c_table_reg[3]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[4][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[4]_4 [0]),
        .Q(\c_table_reg[4]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[4][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[4]_4 [1]),
        .Q(\c_table_reg[4]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[4][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[4]_4 [3]),
        .Q(\c_table_reg[4]__0 [3]),
        .S(SR));
  FDRE \c_table_reg[4][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[4]_4 [4]),
        .Q(\c_table_reg[4]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[5][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[5]_5 [0]),
        .Q(\c_table_reg[5]__0 [0]),
        .R(SR));
  FDSE \c_table_reg[5][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[5]_5 [1]),
        .Q(\c_table_reg[5]__0 [1]),
        .S(SR));
  FDSE \c_table_reg[5][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[5]_5 [2]),
        .Q(\c_table_reg[5]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[5][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[5]_5 [3]),
        .Q(\c_table_reg[5]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[5][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[5]_5 [4]),
        .Q(\c_table_reg[5]__0 [4]),
        .R(SR));
  FDSE \c_table_reg[6][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[6]_6 [0]),
        .Q(\c_table_reg[6]__0 [0]),
        .S(SR));
  FDSE \c_table_reg[6][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[6]_6 [1]),
        .Q(\c_table_reg[6]__0 [1]),
        .S(SR));
  FDRE \c_table_reg[6][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[6][2]_i_1_n_0 ),
        .Q(\c_table_reg[6]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[6][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[6]_6 [3]),
        .Q(\c_table_reg[6]__0 [3]),
        .R(SR));
  FDRE \c_table_reg[6][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[6]_6 [4]),
        .Q(\c_table_reg[6]__0 [4]),
        .R(SR));
  FDRE \c_table_reg[7][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[7]_7 [0]),
        .Q(\c_table_reg[7]__0 [0]),
        .R(SR));
  FDRE \c_table_reg[7][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[7]_7 [1]),
        .Q(\c_table_reg[7]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[7][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[7]_7 [2]),
        .Q(\c_table_reg[7]__0 [2]),
        .R(SR));
  FDRE \c_table_reg[7][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[7]_7 [3]),
        .Q(\c_table_reg[7]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[7][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[7]_7 [4]),
        .Q(\c_table_reg[7]__0 [4]),
        .S(SR));
  FDSE \c_table_reg[8][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[8]_8 [0]),
        .Q(\c_table_reg[8]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[8][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[8]_8 [1]),
        .Q(\c_table_reg[8]__0 [1]),
        .R(SR));
  FDSE \c_table_reg[8][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[8]_8 [2]),
        .Q(\c_table_reg[8]__0 [2]),
        .S(SR));
  FDRE \c_table_reg[8][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[8]_8 [3]),
        .Q(\c_table_reg[8]__0 [3]),
        .R(SR));
  FDSE \c_table_reg[8][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\n_table[8]_8 [4]),
        .Q(\c_table_reg[8]__0 [4]),
        .S(SR));
  FDSE \c_table_reg[9][0] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[9][0]_i_1_n_0 ),
        .Q(\c_table_reg[9]__0 [0]),
        .S(SR));
  FDRE \c_table_reg[9][1] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[9][1]_i_1_n_0 ),
        .Q(\c_table_reg[9]__0 [1]),
        .R(SR));
  FDRE \c_table_reg[9][2] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[9][2]_i_1_n_0 ),
        .Q(\c_table_reg[9]__0 [2]),
        .R(SR));
  FDSE \c_table_reg[9][3] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[9][3]_i_1_n_0 ),
        .Q(\c_table_reg[9]__0 [3]),
        .S(SR));
  FDSE \c_table_reg[9][4] 
       (.C(UB_CLK_IN),
        .CE(\n_table[0]_0 ),
        .D(\c_table[9][4]_i_1_n_0 ),
        .Q(\c_table_reg[9]__0 [4]),
        .S(SR));
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
