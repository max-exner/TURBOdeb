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

-- IP VLNV: user.org:user:TURBO_enigma:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_test_TURBO_enigma_0_0 IS
  PORT (
    CHARACTERS_IN_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_IN_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CODED_CHARACTERS_OUT_DB0 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    CODED_CHARACTERS_OUT_DB1 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    CONFIG_DRUM_TYP_1_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    CONFIG_DRUM_TYP_2_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    CONFIG_DRUM_TYP_3_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    CONFIG_START_POS_DRUM_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    CONFIG_START_POS_DRUM_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    CONFIG_START_POS_DRUM_3_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    DRUM_IMPULS_IN : IN STD_LOGIC;
    READY_OUT : OUT STD_LOGIC;
    SOFT_RESET_N_IN : IN STD_LOGIC;
    START_IN : IN STD_LOGIC;
    UB_CLK_IN : IN STD_LOGIC
  );
END design_test_TURBO_enigma_0_0;

ARCHITECTURE design_test_TURBO_enigma_0_0_arch OF design_test_TURBO_enigma_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_test_TURBO_enigma_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT TURBO_enigma_bd IS
    PORT (
      CHARACTERS_IN_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_IN_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CODED_CHARACTERS_OUT_DB0 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      CODED_CHARACTERS_OUT_DB1 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      CONFIG_DRUM_TYP_1_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      CONFIG_DRUM_TYP_2_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      CONFIG_DRUM_TYP_3_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      CONFIG_START_POS_DRUM_1_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      CONFIG_START_POS_DRUM_2_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      CONFIG_START_POS_DRUM_3_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      DRUM_IMPULS_IN : IN STD_LOGIC;
      READY_OUT : OUT STD_LOGIC;
      SOFT_RESET_N_IN : IN STD_LOGIC;
      START_IN : IN STD_LOGIC;
      UB_CLK_IN : IN STD_LOGIC
    );
  END COMPONENT TURBO_enigma_bd;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_test_TURBO_enigma_0_0_arch: ARCHITECTURE IS "TURBO_enigma_bd,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_test_TURBO_enigma_0_0_arch : ARCHITECTURE IS "design_test_TURBO_enigma_0_0,TURBO_enigma_bd,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_test_TURBO_enigma_0_0_arch: ARCHITECTURE IS "IPI";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF UB_CLK_IN: SIGNAL IS "XIL_INTERFACENAME CLK.UB_CLK_IN, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_RESET SOFT_RESET_N_IN, CLK_DOMAIN design_test_UB_CLK_IN, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF UB_CLK_IN: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.UB_CLK_IN CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SOFT_RESET_N_IN: SIGNAL IS "XIL_INTERFACENAME RST.SOFT_RESET_N_IN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SOFT_RESET_N_IN: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.SOFT_RESET_N_IN RST";
BEGIN
  U0 : TURBO_enigma_bd
    PORT MAP (
      CHARACTERS_IN_DB0 => CHARACTERS_IN_DB0,
      CHARACTERS_IN_DB1 => CHARACTERS_IN_DB1,
      CODED_CHARACTERS_OUT_DB0 => CODED_CHARACTERS_OUT_DB0,
      CODED_CHARACTERS_OUT_DB1 => CODED_CHARACTERS_OUT_DB1,
      CONFIG_DRUM_TYP_1_IN => CONFIG_DRUM_TYP_1_IN,
      CONFIG_DRUM_TYP_2_IN => CONFIG_DRUM_TYP_2_IN,
      CONFIG_DRUM_TYP_3_IN => CONFIG_DRUM_TYP_3_IN,
      CONFIG_START_POS_DRUM_1_IN => CONFIG_START_POS_DRUM_1_IN,
      CONFIG_START_POS_DRUM_2_IN => CONFIG_START_POS_DRUM_2_IN,
      CONFIG_START_POS_DRUM_3_IN => CONFIG_START_POS_DRUM_3_IN,
      DRUM_IMPULS_IN => DRUM_IMPULS_IN,
      READY_OUT => READY_OUT,
      SOFT_RESET_N_IN => SOFT_RESET_N_IN,
      START_IN => START_IN,
      UB_CLK_IN => UB_CLK_IN
    );
END design_test_TURBO_enigma_0_0_arch;
