// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jun 20 14:48:00 2019
// Host        : Surface-Maxi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/maxim/Documents/repar_turing_bombe/turing_bombe_project/src/bd/turing_bombe/ip/turing_bombe_indicator_drum_1_0/turing_bombe_indicator_drum_1_0_sim_netlist.v
// Design      : turing_bombe_indicator_drum_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "turing_bombe_indicator_drum_1_0,indicator_drum,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "indicator_drum,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module turing_bombe_indicator_drum_1_0
   (ROTATE_IMPULS_IN,
    RESET_IN,
    POS_INDICATOR_DRUM_1_OUT,
    POS_INDICATOR_DRUM_2_OUT,
    POS_INDICATOR_DRUM_3_OUT,
    CLK_IN);
  input ROTATE_IMPULS_IN;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET_IN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET_IN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET_IN;
  output [4:0]POS_INDICATOR_DRUM_1_OUT;
  output [4:0]POS_INDICATOR_DRUM_2_OUT;
  output [4:0]POS_INDICATOR_DRUM_3_OUT;
  input CLK_IN;

  wire CLK_IN;
  wire [4:0]POS_INDICATOR_DRUM_1_OUT;
  wire [4:0]POS_INDICATOR_DRUM_2_OUT;
  wire [4:0]POS_INDICATOR_DRUM_3_OUT;
  wire RESET_IN;
  wire ROTATE_IMPULS_IN;

  turing_bombe_indicator_drum_1_0_indicator_drum U0
       (.CLK_IN(CLK_IN),
        .Q(POS_INDICATOR_DRUM_3_OUT),
        .RESET_IN(RESET_IN),
        .ROTATE_IMPULS_IN(ROTATE_IMPULS_IN),
        .\c_position_out_reg[0][4]_0 (POS_INDICATOR_DRUM_1_OUT),
        .\c_position_out_reg[1][4]_0 (POS_INDICATOR_DRUM_2_OUT));
endmodule

(* ORIG_REF_NAME = "indicator_drum" *) 
module turing_bombe_indicator_drum_1_0_indicator_drum
   (Q,
    \c_position_out_reg[0][4]_0 ,
    \c_position_out_reg[1][4]_0 ,
    ROTATE_IMPULS_IN,
    RESET_IN,
    CLK_IN);
  output [4:0]Q;
  output [4:0]\c_position_out_reg[0][4]_0 ;
  output [4:0]\c_position_out_reg[1][4]_0 ;
  input ROTATE_IMPULS_IN;
  input RESET_IN;
  input CLK_IN;

  wire CLK_IN;
  wire [4:0]Q;
  wire RESET_IN;
  wire ROTATE_IMPULS_IN;
  wire c_fsm_state;
  wire c_fsm_state_i_1_n_0;
  wire \c_position_out[0][0]_i_1_n_0 ;
  wire \c_position_out[0][1]_i_1_n_0 ;
  wire \c_position_out[0][2]_i_1_n_0 ;
  wire \c_position_out[0][3]_i_1_n_0 ;
  wire \c_position_out[0][4]_i_1_n_0 ;
  wire \c_position_out[0][4]_i_2_n_0 ;
  wire \c_position_out[1][0]_i_1_n_0 ;
  wire \c_position_out[1][1]_i_1_n_0 ;
  wire \c_position_out[1][2]_i_1_n_0 ;
  wire \c_position_out[1][3]_i_1_n_0 ;
  wire \c_position_out[1][4]_i_1_n_0 ;
  wire \c_position_out[1][4]_i_2_n_0 ;
  wire \c_position_out[2][0]_i_1_n_0 ;
  wire \c_position_out[2][1]_i_1_n_0 ;
  wire \c_position_out[2][2]_i_1_n_0 ;
  wire \c_position_out[2][3]_i_1_n_0 ;
  wire \c_position_out[2][4]_i_1_n_0 ;
  wire \c_position_out[2][4]_i_2_n_0 ;
  wire \c_position_out[2][4]_i_3_n_0 ;
  wire [4:0]\c_position_out_reg[0][4]_0 ;
  wire [4:0]\c_position_out_reg[1][4]_0 ;
  wire n_fsm_state;

  LUT2 #(
    .INIT(4'h2)) 
    c_fsm_state_i_1
       (.I0(n_fsm_state),
        .I1(RESET_IN),
        .O(c_fsm_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    c_fsm_state_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .D(c_fsm_state_i_1_n_0),
        .Q(c_fsm_state),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \c_position_out[0][0]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [0]),
        .O(\c_position_out[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \c_position_out[0][1]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [4]),
        .I1(\c_position_out_reg[0][4]_0 [3]),
        .I2(\c_position_out_reg[0][4]_0 [2]),
        .I3(\c_position_out_reg[0][4]_0 [0]),
        .I4(\c_position_out_reg[0][4]_0 [1]),
        .O(\c_position_out[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFF0000E)) 
    \c_position_out[0][2]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [4]),
        .I1(\c_position_out_reg[0][4]_0 [3]),
        .I2(\c_position_out_reg[0][4]_0 [0]),
        .I3(\c_position_out_reg[0][4]_0 [1]),
        .I4(\c_position_out_reg[0][4]_0 [2]),
        .O(\c_position_out[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \c_position_out[0][3]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [3]),
        .I1(\c_position_out_reg[0][4]_0 [1]),
        .I2(\c_position_out_reg[0][4]_0 [0]),
        .I3(\c_position_out_reg[0][4]_0 [2]),
        .O(\c_position_out[0][3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_position_out[0][4]_i_1 
       (.I0(c_fsm_state),
        .O(\c_position_out[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \c_position_out[0][4]_i_2 
       (.I0(\c_position_out_reg[0][4]_0 [4]),
        .I1(\c_position_out_reg[0][4]_0 [2]),
        .I2(\c_position_out_reg[0][4]_0 [0]),
        .I3(\c_position_out_reg[0][4]_0 [1]),
        .I4(\c_position_out_reg[0][4]_0 [3]),
        .O(\c_position_out[0][4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_position_out[1][0]_i_1 
       (.I0(\c_position_out_reg[1][4]_0 [0]),
        .O(\c_position_out[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \c_position_out[1][1]_i_1 
       (.I0(\c_position_out_reg[1][4]_0 [4]),
        .I1(\c_position_out_reg[1][4]_0 [3]),
        .I2(\c_position_out_reg[1][4]_0 [2]),
        .I3(\c_position_out_reg[1][4]_0 [1]),
        .I4(\c_position_out_reg[1][4]_0 [0]),
        .O(\c_position_out[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF0000E)) 
    \c_position_out[1][2]_i_1 
       (.I0(\c_position_out_reg[1][4]_0 [4]),
        .I1(\c_position_out_reg[1][4]_0 [3]),
        .I2(\c_position_out_reg[1][4]_0 [1]),
        .I3(\c_position_out_reg[1][4]_0 [0]),
        .I4(\c_position_out_reg[1][4]_0 [2]),
        .O(\c_position_out[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \c_position_out[1][3]_i_1 
       (.I0(\c_position_out_reg[1][4]_0 [3]),
        .I1(\c_position_out_reg[1][4]_0 [0]),
        .I2(\c_position_out_reg[1][4]_0 [1]),
        .I3(\c_position_out_reg[1][4]_0 [2]),
        .O(\c_position_out[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \c_position_out[1][4]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [4]),
        .I1(\c_position_out_reg[0][4]_0 [2]),
        .I2(\c_position_out_reg[0][4]_0 [0]),
        .I3(\c_position_out_reg[0][4]_0 [1]),
        .I4(\c_position_out_reg[0][4]_0 [3]),
        .I5(c_fsm_state),
        .O(\c_position_out[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \c_position_out[1][4]_i_2 
       (.I0(\c_position_out_reg[1][4]_0 [4]),
        .I1(\c_position_out_reg[1][4]_0 [2]),
        .I2(\c_position_out_reg[1][4]_0 [1]),
        .I3(\c_position_out_reg[1][4]_0 [0]),
        .I4(\c_position_out_reg[1][4]_0 [3]),
        .O(\c_position_out[1][4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_position_out[2][0]_i_1 
       (.I0(Q[0]),
        .O(\c_position_out[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF00FF00E)) 
    \c_position_out[2][1]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\c_position_out[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA5AAA4)) 
    \c_position_out[2][2]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\c_position_out[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \c_position_out[2][3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\c_position_out[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \c_position_out[2][4]_i_1 
       (.I0(\c_position_out_reg[0][4]_0 [4]),
        .I1(\c_position_out_reg[0][4]_0 [2]),
        .I2(\c_position_out[2][4]_i_3_n_0 ),
        .I3(\c_position_out_reg[0][4]_0 [1]),
        .I4(\c_position_out_reg[0][4]_0 [3]),
        .I5(c_fsm_state),
        .O(\c_position_out[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \c_position_out[2][4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\c_position_out[2][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \c_position_out[2][4]_i_3 
       (.I0(\c_position_out_reg[1][4]_0 [4]),
        .I1(\c_position_out_reg[1][4]_0 [2]),
        .I2(\c_position_out_reg[1][4]_0 [1]),
        .I3(\c_position_out_reg[1][4]_0 [0]),
        .I4(\c_position_out_reg[1][4]_0 [3]),
        .I5(\c_position_out_reg[0][4]_0 [0]),
        .O(\c_position_out[2][4]_i_3_n_0 ));
  FDSE \c_position_out_reg[0][0] 
       (.C(CLK_IN),
        .CE(\c_position_out[0][4]_i_1_n_0 ),
        .D(\c_position_out[0][0]_i_1_n_0 ),
        .Q(\c_position_out_reg[0][4]_0 [0]),
        .S(RESET_IN));
  FDRE \c_position_out_reg[0][1] 
       (.C(CLK_IN),
        .CE(\c_position_out[0][4]_i_1_n_0 ),
        .D(\c_position_out[0][1]_i_1_n_0 ),
        .Q(\c_position_out_reg[0][4]_0 [1]),
        .R(RESET_IN));
  FDRE \c_position_out_reg[0][2] 
       (.C(CLK_IN),
        .CE(\c_position_out[0][4]_i_1_n_0 ),
        .D(\c_position_out[0][2]_i_1_n_0 ),
        .Q(\c_position_out_reg[0][4]_0 [2]),
        .R(RESET_IN));
  FDSE \c_position_out_reg[0][3] 
       (.C(CLK_IN),
        .CE(\c_position_out[0][4]_i_1_n_0 ),
        .D(\c_position_out[0][3]_i_1_n_0 ),
        .Q(\c_position_out_reg[0][4]_0 [3]),
        .S(RESET_IN));
  FDSE \c_position_out_reg[0][4] 
       (.C(CLK_IN),
        .CE(\c_position_out[0][4]_i_1_n_0 ),
        .D(\c_position_out[0][4]_i_2_n_0 ),
        .Q(\c_position_out_reg[0][4]_0 [4]),
        .S(RESET_IN));
  FDSE \c_position_out_reg[1][0] 
       (.C(CLK_IN),
        .CE(\c_position_out[1][4]_i_1_n_0 ),
        .D(\c_position_out[1][0]_i_1_n_0 ),
        .Q(\c_position_out_reg[1][4]_0 [0]),
        .S(RESET_IN));
  FDRE \c_position_out_reg[1][1] 
       (.C(CLK_IN),
        .CE(\c_position_out[1][4]_i_1_n_0 ),
        .D(\c_position_out[1][1]_i_1_n_0 ),
        .Q(\c_position_out_reg[1][4]_0 [1]),
        .R(RESET_IN));
  FDRE \c_position_out_reg[1][2] 
       (.C(CLK_IN),
        .CE(\c_position_out[1][4]_i_1_n_0 ),
        .D(\c_position_out[1][2]_i_1_n_0 ),
        .Q(\c_position_out_reg[1][4]_0 [2]),
        .R(RESET_IN));
  FDSE \c_position_out_reg[1][3] 
       (.C(CLK_IN),
        .CE(\c_position_out[1][4]_i_1_n_0 ),
        .D(\c_position_out[1][3]_i_1_n_0 ),
        .Q(\c_position_out_reg[1][4]_0 [3]),
        .S(RESET_IN));
  FDSE \c_position_out_reg[1][4] 
       (.C(CLK_IN),
        .CE(\c_position_out[1][4]_i_1_n_0 ),
        .D(\c_position_out[1][4]_i_2_n_0 ),
        .Q(\c_position_out_reg[1][4]_0 [4]),
        .S(RESET_IN));
  FDSE \c_position_out_reg[2][0] 
       (.C(CLK_IN),
        .CE(\c_position_out[2][4]_i_1_n_0 ),
        .D(\c_position_out[2][0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(RESET_IN));
  FDRE \c_position_out_reg[2][1] 
       (.C(CLK_IN),
        .CE(\c_position_out[2][4]_i_1_n_0 ),
        .D(\c_position_out[2][1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(RESET_IN));
  FDRE \c_position_out_reg[2][2] 
       (.C(CLK_IN),
        .CE(\c_position_out[2][4]_i_1_n_0 ),
        .D(\c_position_out[2][2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(RESET_IN));
  FDSE \c_position_out_reg[2][3] 
       (.C(CLK_IN),
        .CE(\c_position_out[2][4]_i_1_n_0 ),
        .D(\c_position_out[2][3]_i_1_n_0 ),
        .Q(Q[3]),
        .S(RESET_IN));
  FDSE \c_position_out_reg[2][4] 
       (.C(CLK_IN),
        .CE(\c_position_out[2][4]_i_1_n_0 ),
        .D(\c_position_out[2][4]_i_2_n_0 ),
        .Q(Q[4]),
        .S(RESET_IN));
  FDCE n_fsm_state_reg
       (.C(ROTATE_IMPULS_IN),
        .CE(1'b1),
        .CLR(c_fsm_state),
        .D(1'b1),
        .Q(n_fsm_state));
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
