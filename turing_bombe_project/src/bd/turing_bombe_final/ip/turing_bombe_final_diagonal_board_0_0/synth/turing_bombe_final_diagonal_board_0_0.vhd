-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:diagonal_board:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY turing_bombe_final_diagonal_board_0_0 IS
  PORT (
    CLK_IN : IN STD_LOGIC;
    RESET_IN : IN STD_LOGIC;
    INPUT_VOLTAGE_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    TEST_REGISTER_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    READY_ENIGMA_1 : IN STD_LOGIC;
    READY_ENIGMA_2 : IN STD_LOGIC;
    READY_ENIGMA_3 : IN STD_LOGIC;
    READY_ENIGMA_4 : IN STD_LOGIC;
    READY_ENIGMA_5 : IN STD_LOGIC;
    READY_ENIGMA_6 : IN STD_LOGIC;
    READY_ENIGMA_7 : IN STD_LOGIC;
    READY_ENIGMA_8 : IN STD_LOGIC;
    READY_ENIGMA_9 : IN STD_LOGIC;
    READY_ENIGMA_10 : IN STD_LOGIC;
    READY_ENIGMA_11 : IN STD_LOGIC;
    READY_ENIGMA_12 : IN STD_LOGIC;
    READY_OUT : OUT STD_LOGIC;
    NO_OUTPUT_CHANGE_OUT : OUT STD_LOGIC;
    ACTIVE_OUT_1_ENIGMA_1_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_1_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_2_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_2_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_3_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_3_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_4_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_4_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_5_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_5_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_6_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_6_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_7_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_7_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_8_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_8_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_9_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_9_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_10_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_10_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_11_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_11_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_1_ENIGMA_12_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ACTIVE_OUT_2_ENIGMA_12_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_1_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_1_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_2_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_2_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_3_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_3_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_4_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_4_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_5_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_5_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_6_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_6_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_7_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_7_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_8_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_8_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_9_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_9_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_10_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_10_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_11_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_11_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_12_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_12_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_1_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_1_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_2_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_2_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_3_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_3_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_4_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_4_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_5_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_5_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_6_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_6_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_7_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_7_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_8_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_8_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_9_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_9_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_10_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_10_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_11_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_11_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_12_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_12_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    RESULT_REGISTER_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
  );
END turing_bombe_final_diagonal_board_0_0;

ARCHITECTURE turing_bombe_final_diagonal_board_0_0_arch OF turing_bombe_final_diagonal_board_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF turing_bombe_final_diagonal_board_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT diagonal_board IS
    PORT (
      CLK_IN : IN STD_LOGIC;
      RESET_IN : IN STD_LOGIC;
      INPUT_VOLTAGE_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      TEST_REGISTER_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      READY_ENIGMA_1 : IN STD_LOGIC;
      READY_ENIGMA_2 : IN STD_LOGIC;
      READY_ENIGMA_3 : IN STD_LOGIC;
      READY_ENIGMA_4 : IN STD_LOGIC;
      READY_ENIGMA_5 : IN STD_LOGIC;
      READY_ENIGMA_6 : IN STD_LOGIC;
      READY_ENIGMA_7 : IN STD_LOGIC;
      READY_ENIGMA_8 : IN STD_LOGIC;
      READY_ENIGMA_9 : IN STD_LOGIC;
      READY_ENIGMA_10 : IN STD_LOGIC;
      READY_ENIGMA_11 : IN STD_LOGIC;
      READY_ENIGMA_12 : IN STD_LOGIC;
      READY_OUT : OUT STD_LOGIC;
      NO_OUTPUT_CHANGE_OUT : OUT STD_LOGIC;
      ACTIVE_OUT_1_ENIGMA_1_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_1_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_2_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_2_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_3_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_3_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_4_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_4_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_5_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_5_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_6_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_6_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_7_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_7_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_8_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_8_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_9_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_9_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_10_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_10_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_11_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_11_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_1_ENIGMA_12_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ACTIVE_OUT_2_ENIGMA_12_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_1_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_1_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_2_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_2_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_3_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_3_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_4_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_4_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_5_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_5_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_6_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_6_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_7_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_7_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_8_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_8_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_9_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_9_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_10_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_10_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_11_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_11_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_12_DB_CON_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_12_DB_CON_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_1_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_1_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_2_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_2_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_3_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_3_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_4_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_4_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_5_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_5_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_6_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_6_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_7_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_7_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_8_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_8_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_9_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_9_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_10_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_10_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_11_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_11_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_12_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_12_DB2_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      RESULT_REGISTER_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
    );
  END COMPONENT diagonal_board;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF turing_bombe_final_diagonal_board_0_0_arch: ARCHITECTURE IS "diagonal_board,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF turing_bombe_final_diagonal_board_0_0_arch : ARCHITECTURE IS "turing_bombe_final_diagonal_board_0_0,diagonal_board,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF turing_bombe_final_diagonal_board_0_0_arch: ARCHITECTURE IS "turing_bombe_final_diagonal_board_0_0,diagonal_board,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=diagonal_board,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF turing_bombe_final_diagonal_board_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_IN: SIGNAL IS "XIL_INTERFACENAME RESET_IN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_IN: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_IN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK_IN: SIGNAL IS "XIL_INTERFACENAME CLK1, ASSOCIATED_RESET RESET_IN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN turing_bombe_final_CLK, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK_IN: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK1 CLK";
BEGIN
  U0 : diagonal_board
    PORT MAP (
      CLK_IN => CLK_IN,
      RESET_IN => RESET_IN,
      INPUT_VOLTAGE_IN => INPUT_VOLTAGE_IN,
      TEST_REGISTER_IN => TEST_REGISTER_IN,
      READY_ENIGMA_1 => READY_ENIGMA_1,
      READY_ENIGMA_2 => READY_ENIGMA_2,
      READY_ENIGMA_3 => READY_ENIGMA_3,
      READY_ENIGMA_4 => READY_ENIGMA_4,
      READY_ENIGMA_5 => READY_ENIGMA_5,
      READY_ENIGMA_6 => READY_ENIGMA_6,
      READY_ENIGMA_7 => READY_ENIGMA_7,
      READY_ENIGMA_8 => READY_ENIGMA_8,
      READY_ENIGMA_9 => READY_ENIGMA_9,
      READY_ENIGMA_10 => READY_ENIGMA_10,
      READY_ENIGMA_11 => READY_ENIGMA_11,
      READY_ENIGMA_12 => READY_ENIGMA_12,
      READY_OUT => READY_OUT,
      NO_OUTPUT_CHANGE_OUT => NO_OUTPUT_CHANGE_OUT,
      ACTIVE_OUT_1_ENIGMA_1_IN => ACTIVE_OUT_1_ENIGMA_1_IN,
      ACTIVE_OUT_2_ENIGMA_1_IN => ACTIVE_OUT_2_ENIGMA_1_IN,
      ACTIVE_OUT_1_ENIGMA_2_IN => ACTIVE_OUT_1_ENIGMA_2_IN,
      ACTIVE_OUT_2_ENIGMA_2_IN => ACTIVE_OUT_2_ENIGMA_2_IN,
      ACTIVE_OUT_1_ENIGMA_3_IN => ACTIVE_OUT_1_ENIGMA_3_IN,
      ACTIVE_OUT_2_ENIGMA_3_IN => ACTIVE_OUT_2_ENIGMA_3_IN,
      ACTIVE_OUT_1_ENIGMA_4_IN => ACTIVE_OUT_1_ENIGMA_4_IN,
      ACTIVE_OUT_2_ENIGMA_4_IN => ACTIVE_OUT_2_ENIGMA_4_IN,
      ACTIVE_OUT_1_ENIGMA_5_IN => ACTIVE_OUT_1_ENIGMA_5_IN,
      ACTIVE_OUT_2_ENIGMA_5_IN => ACTIVE_OUT_2_ENIGMA_5_IN,
      ACTIVE_OUT_1_ENIGMA_6_IN => ACTIVE_OUT_1_ENIGMA_6_IN,
      ACTIVE_OUT_2_ENIGMA_6_IN => ACTIVE_OUT_2_ENIGMA_6_IN,
      ACTIVE_OUT_1_ENIGMA_7_IN => ACTIVE_OUT_1_ENIGMA_7_IN,
      ACTIVE_OUT_2_ENIGMA_7_IN => ACTIVE_OUT_2_ENIGMA_7_IN,
      ACTIVE_OUT_1_ENIGMA_8_IN => ACTIVE_OUT_1_ENIGMA_8_IN,
      ACTIVE_OUT_2_ENIGMA_8_IN => ACTIVE_OUT_2_ENIGMA_8_IN,
      ACTIVE_OUT_1_ENIGMA_9_IN => ACTIVE_OUT_1_ENIGMA_9_IN,
      ACTIVE_OUT_2_ENIGMA_9_IN => ACTIVE_OUT_2_ENIGMA_9_IN,
      ACTIVE_OUT_1_ENIGMA_10_IN => ACTIVE_OUT_1_ENIGMA_10_IN,
      ACTIVE_OUT_2_ENIGMA_10_IN => ACTIVE_OUT_2_ENIGMA_10_IN,
      ACTIVE_OUT_1_ENIGMA_11_IN => ACTIVE_OUT_1_ENIGMA_11_IN,
      ACTIVE_OUT_2_ENIGMA_11_IN => ACTIVE_OUT_2_ENIGMA_11_IN,
      ACTIVE_OUT_1_ENIGMA_12_IN => ACTIVE_OUT_1_ENIGMA_12_IN,
      ACTIVE_OUT_2_ENIGMA_12_IN => ACTIVE_OUT_2_ENIGMA_12_IN,
      ENIGMA_1_DB_CON_1_IN => ENIGMA_1_DB_CON_1_IN,
      ENIGMA_1_DB_CON_2_IN => ENIGMA_1_DB_CON_2_IN,
      ENIGMA_2_DB_CON_1_IN => ENIGMA_2_DB_CON_1_IN,
      ENIGMA_2_DB_CON_2_IN => ENIGMA_2_DB_CON_2_IN,
      ENIGMA_3_DB_CON_1_IN => ENIGMA_3_DB_CON_1_IN,
      ENIGMA_3_DB_CON_2_IN => ENIGMA_3_DB_CON_2_IN,
      ENIGMA_4_DB_CON_1_IN => ENIGMA_4_DB_CON_1_IN,
      ENIGMA_4_DB_CON_2_IN => ENIGMA_4_DB_CON_2_IN,
      ENIGMA_5_DB_CON_1_IN => ENIGMA_5_DB_CON_1_IN,
      ENIGMA_5_DB_CON_2_IN => ENIGMA_5_DB_CON_2_IN,
      ENIGMA_6_DB_CON_1_IN => ENIGMA_6_DB_CON_1_IN,
      ENIGMA_6_DB_CON_2_IN => ENIGMA_6_DB_CON_2_IN,
      ENIGMA_7_DB_CON_1_IN => ENIGMA_7_DB_CON_1_IN,
      ENIGMA_7_DB_CON_2_IN => ENIGMA_7_DB_CON_2_IN,
      ENIGMA_8_DB_CON_1_IN => ENIGMA_8_DB_CON_1_IN,
      ENIGMA_8_DB_CON_2_IN => ENIGMA_8_DB_CON_2_IN,
      ENIGMA_9_DB_CON_1_IN => ENIGMA_9_DB_CON_1_IN,
      ENIGMA_9_DB_CON_2_IN => ENIGMA_9_DB_CON_2_IN,
      ENIGMA_10_DB_CON_1_IN => ENIGMA_10_DB_CON_1_IN,
      ENIGMA_10_DB_CON_2_IN => ENIGMA_10_DB_CON_2_IN,
      ENIGMA_11_DB_CON_1_IN => ENIGMA_11_DB_CON_1_IN,
      ENIGMA_11_DB_CON_2_IN => ENIGMA_11_DB_CON_2_IN,
      ENIGMA_12_DB_CON_1_IN => ENIGMA_12_DB_CON_1_IN,
      ENIGMA_12_DB_CON_2_IN => ENIGMA_12_DB_CON_2_IN,
      ENIGMA_1_DB1_OUT => ENIGMA_1_DB1_OUT,
      ENIGMA_1_DB2_OUT => ENIGMA_1_DB2_OUT,
      ENIGMA_2_DB1_OUT => ENIGMA_2_DB1_OUT,
      ENIGMA_2_DB2_OUT => ENIGMA_2_DB2_OUT,
      ENIGMA_3_DB1_OUT => ENIGMA_3_DB1_OUT,
      ENIGMA_3_DB2_OUT => ENIGMA_3_DB2_OUT,
      ENIGMA_4_DB1_OUT => ENIGMA_4_DB1_OUT,
      ENIGMA_4_DB2_OUT => ENIGMA_4_DB2_OUT,
      ENIGMA_5_DB1_OUT => ENIGMA_5_DB1_OUT,
      ENIGMA_5_DB2_OUT => ENIGMA_5_DB2_OUT,
      ENIGMA_6_DB1_OUT => ENIGMA_6_DB1_OUT,
      ENIGMA_6_DB2_OUT => ENIGMA_6_DB2_OUT,
      ENIGMA_7_DB1_OUT => ENIGMA_7_DB1_OUT,
      ENIGMA_7_DB2_OUT => ENIGMA_7_DB2_OUT,
      ENIGMA_8_DB1_OUT => ENIGMA_8_DB1_OUT,
      ENIGMA_8_DB2_OUT => ENIGMA_8_DB2_OUT,
      ENIGMA_9_DB1_OUT => ENIGMA_9_DB1_OUT,
      ENIGMA_9_DB2_OUT => ENIGMA_9_DB2_OUT,
      ENIGMA_10_DB1_OUT => ENIGMA_10_DB1_OUT,
      ENIGMA_10_DB2_OUT => ENIGMA_10_DB2_OUT,
      ENIGMA_11_DB1_OUT => ENIGMA_11_DB1_OUT,
      ENIGMA_11_DB2_OUT => ENIGMA_11_DB2_OUT,
      ENIGMA_12_DB1_OUT => ENIGMA_12_DB1_OUT,
      ENIGMA_12_DB2_OUT => ENIGMA_12_DB2_OUT,
      RESULT_REGISTER_OUT => RESULT_REGISTER_OUT
    );
END turing_bombe_final_diagonal_board_0_0_arch;
