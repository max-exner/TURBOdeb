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

-- IP VLNV: xilinx.com:module_ref:drum:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_enigma_drum_0_0 IS
  PORT (
    UB_CLK_IN : IN STD_LOGIC;
    SOFT_RESET_N_IN : IN STD_LOGIC;
    CONFIG_DRUM_TYP_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    CONFIG_START_POS : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    CONFIG_DRUM_OVERFLOW : IN STD_LOGIC;
    CHARACTERS_IN_FWD : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_IN_BWD : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    REQUEST_IN_FWD : IN STD_LOGIC;
    REQUEST_IN_BWD : IN STD_LOGIC;
    DRUM_IMPULS_IN : IN STD_LOGIC;
    LUT_READY_IN : IN STD_LOGIC;
    LUT_BUSY_IN : IN STD_LOGIC;
    CHARACTERS_FROM_LUT : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_TO_LUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    DRUM_TYP_TO_LUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    DIRECTION_TO_LUT : OUT STD_LOGIC;
    REQUEST_TO_LUT : OUT STD_LOGIC;
    CHARACTERS_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    READY_OUT_FWD : OUT STD_LOGIC;
    READY_OUT_BWD : OUT STD_LOGIC;
    DRUM_IMPULS_OUT : OUT STD_LOGIC
  );
END design_enigma_drum_0_0;

ARCHITECTURE design_enigma_drum_0_0_arch OF design_enigma_drum_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_enigma_drum_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT drum IS
    PORT (
      UB_CLK_IN : IN STD_LOGIC;
      SOFT_RESET_N_IN : IN STD_LOGIC;
      CONFIG_DRUM_TYP_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      CONFIG_START_POS : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      CONFIG_DRUM_OVERFLOW : IN STD_LOGIC;
      CHARACTERS_IN_FWD : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_IN_BWD : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      REQUEST_IN_FWD : IN STD_LOGIC;
      REQUEST_IN_BWD : IN STD_LOGIC;
      DRUM_IMPULS_IN : IN STD_LOGIC;
      LUT_READY_IN : IN STD_LOGIC;
      LUT_BUSY_IN : IN STD_LOGIC;
      CHARACTERS_FROM_LUT : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_TO_LUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      DRUM_TYP_TO_LUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      DIRECTION_TO_LUT : OUT STD_LOGIC;
      REQUEST_TO_LUT : OUT STD_LOGIC;
      CHARACTERS_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      READY_OUT_FWD : OUT STD_LOGIC;
      READY_OUT_BWD : OUT STD_LOGIC;
      DRUM_IMPULS_OUT : OUT STD_LOGIC
    );
  END COMPONENT drum;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_enigma_drum_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : drum
    PORT MAP (
      UB_CLK_IN => UB_CLK_IN,
      SOFT_RESET_N_IN => SOFT_RESET_N_IN,
      CONFIG_DRUM_TYP_IN => CONFIG_DRUM_TYP_IN,
      CONFIG_START_POS => CONFIG_START_POS,
      CONFIG_DRUM_OVERFLOW => CONFIG_DRUM_OVERFLOW,
      CHARACTERS_IN_FWD => CHARACTERS_IN_FWD,
      CHARACTERS_IN_BWD => CHARACTERS_IN_BWD,
      REQUEST_IN_FWD => REQUEST_IN_FWD,
      REQUEST_IN_BWD => REQUEST_IN_BWD,
      DRUM_IMPULS_IN => DRUM_IMPULS_IN,
      LUT_READY_IN => LUT_READY_IN,
      LUT_BUSY_IN => LUT_BUSY_IN,
      CHARACTERS_FROM_LUT => CHARACTERS_FROM_LUT,
      CHARACTERS_TO_LUT => CHARACTERS_TO_LUT,
      DRUM_TYP_TO_LUT => DRUM_TYP_TO_LUT,
      DIRECTION_TO_LUT => DIRECTION_TO_LUT,
      REQUEST_TO_LUT => REQUEST_TO_LUT,
      CHARACTERS_OUT => CHARACTERS_OUT,
      READY_OUT_FWD => READY_OUT_FWD,
      READY_OUT_BWD => READY_OUT_BWD,
      DRUM_IMPULS_OUT => DRUM_IMPULS_OUT
    );
END design_enigma_drum_0_0_arch;
