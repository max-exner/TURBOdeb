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

-- IP VLNV: xilinx.com:module_ref:turing_bombe_controller:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY turing_bombe_without_zynq_turing_bombe_control_0_0 IS
  PORT (
    ENABLE_BRAM_A_IN : IN STD_LOGIC;
    ADDRESS_BRAM_A_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    DATA_IN_BRAM_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    DATA_OUT_BRAM_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    WRITE_ENABLE_BRAM_IN : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    CLK_BRAM_A_IN : IN STD_LOGIC;
    RST_BRAM_A_IN : IN STD_LOGIC;
    DB_IN_INPUT_VOLTAGE_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_INPUT_REGISTER_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMAS_START_OUT : OUT STD_LOGIC;
    DRUM_IMPULS_OUT : OUT STD_LOGIC;
    ENIGMAS_DRUM_1_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ENIGMAS_DRUM_2_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ENIGMAS_DRUM_3_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    POS_1_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    POS_2_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    POS_3_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    CLK_IN : IN STD_LOGIC;
    DB_READY_IN : IN STD_LOGIC;
    DB_OUT_NO_CHANGES_IN : IN STD_LOGIC;
    RESET_OUT : OUT STD_LOGIC;
    ENIGMA_1_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_1_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_1_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_1_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_1_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_2_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_2_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_2_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_2_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_2_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_3_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_3_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_3_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_3_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_3_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_4_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_4_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_4_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_4_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_4_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_5_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_5_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_5_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_5_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_5_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_6_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_6_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_6_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_6_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_6_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_7_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_7_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_7_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_7_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_7_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_8_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_8_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_8_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_8_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_8_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_9_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_9_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_9_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_9_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_9_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_10_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_10_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_10_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_10_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_10_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_11_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_11_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_11_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_11_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_11_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_12_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_12_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    ENIGMA_12_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_12_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ENIGMA_12_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_1_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_1_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_2_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_2_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_3_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_3_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_4_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_4_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_5_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_5_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_6_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_6_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_7_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_7_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_8_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_8_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_9_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_9_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_10_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_10_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_11_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_11_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_12_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_IN_ENIGMA_12_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    DB_OUT_ENIGMA_1_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_1_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_2_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_2_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_3_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_3_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_4_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_4_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_5_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_5_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_6_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_6_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_7_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_7_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_8_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_8_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_9_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_9_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_10_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_10_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_11_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_11_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_12_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_OUT_ENIGMA_12_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    DB_RESULT_RESIGER_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    LED_FIRST_STOP_OUT : OUT STD_LOGIC;
    LED_SECOND_STOP_OUT : OUT STD_LOGIC;
    LED_THIRD_STOP_OUT : OUT STD_LOGIC;
    LED_FOURTH_STOP_OUT : OUT STD_LOGIC
  );
END turing_bombe_without_zynq_turing_bombe_control_0_0;

ARCHITECTURE turing_bombe_without_zynq_turing_bombe_control_0_0_arch OF turing_bombe_without_zynq_turing_bombe_control_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF turing_bombe_without_zynq_turing_bombe_control_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT turing_bombe_controller IS
    PORT (
      ENABLE_BRAM_A_IN : IN STD_LOGIC;
      ADDRESS_BRAM_A_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      DATA_IN_BRAM_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      DATA_OUT_BRAM_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      WRITE_ENABLE_BRAM_IN : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      CLK_BRAM_A_IN : IN STD_LOGIC;
      RST_BRAM_A_IN : IN STD_LOGIC;
      DB_IN_INPUT_VOLTAGE_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_INPUT_REGISTER_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMAS_START_OUT : OUT STD_LOGIC;
      DRUM_IMPULS_OUT : OUT STD_LOGIC;
      ENIGMAS_DRUM_1_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ENIGMAS_DRUM_2_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ENIGMAS_DRUM_3_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      POS_1_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      POS_2_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      POS_3_INDICATOR_DRUM_IN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      CLK_IN : IN STD_LOGIC;
      DB_READY_IN : IN STD_LOGIC;
      DB_OUT_NO_CHANGES_IN : IN STD_LOGIC;
      RESET_OUT : OUT STD_LOGIC;
      ENIGMA_1_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_1_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_1_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_1_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_1_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_2_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_2_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_2_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_2_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_2_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_3_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_3_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_3_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_3_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_3_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_4_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_4_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_4_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_4_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_4_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_5_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_5_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_5_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_5_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_5_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_6_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_6_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_6_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_6_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_6_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_7_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_7_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_7_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_7_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_7_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_8_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_8_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_8_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_8_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_8_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_9_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_9_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_9_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_9_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_9_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_10_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_10_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_10_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_10_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_10_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_11_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_11_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_11_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_11_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_11_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_12_CHARACTERS_DB0_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_12_CHARACTERS_DB1_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      ENIGMA_12_DRUMPOS_1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_12_DRUMPOS_2_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ENIGMA_12_DRUMPOS_3_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_1_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_1_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_2_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_2_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_3_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_3_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_4_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_4_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_5_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_5_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_6_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_6_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_7_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_7_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_8_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_8_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_9_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_9_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_10_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_10_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_11_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_11_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_12_DBCON0_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_IN_ENIGMA_12_DBCON1_OUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      DB_OUT_ENIGMA_1_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_1_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_2_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_2_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_3_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_3_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_4_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_4_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_5_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_5_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_6_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_6_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_7_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_7_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_8_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_8_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_9_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_9_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_10_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_10_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_11_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_11_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_12_DB0 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_OUT_ENIGMA_12_DB1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      DB_RESULT_RESIGER_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      LED_FIRST_STOP_OUT : OUT STD_LOGIC;
      LED_SECOND_STOP_OUT : OUT STD_LOGIC;
      LED_THIRD_STOP_OUT : OUT STD_LOGIC;
      LED_FOURTH_STOP_OUT : OUT STD_LOGIC
    );
  END COMPONENT turing_bombe_controller;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF turing_bombe_without_zynq_turing_bombe_control_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_OUT: SIGNAL IS "XIL_INTERFACENAME RESET_OUT, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_OUT: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_OUT RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK_IN: SIGNAL IS "XIL_INTERFACENAME CLK1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN turing_bombe_without_zynq_CLK, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK_IN: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK1 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF RST_BRAM_A_IN: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A RST";
  ATTRIBUTE X_INTERFACE_INFO OF CLK_BRAM_A_IN: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  ATTRIBUTE X_INTERFACE_INFO OF WRITE_ENABLE_BRAM_IN: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A WE";
  ATTRIBUTE X_INTERFACE_INFO OF DATA_OUT_BRAM_A: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF DATA_IN_BRAM_A: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF ADDRESS_BRAM_A_IN: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ENABLE_BRAM_A_IN: SIGNAL IS "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 8192, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF ENABLE_BRAM_A_IN: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_A EN";
BEGIN
  U0 : turing_bombe_controller
    PORT MAP (
      ENABLE_BRAM_A_IN => ENABLE_BRAM_A_IN,
      ADDRESS_BRAM_A_IN => ADDRESS_BRAM_A_IN,
      DATA_IN_BRAM_A => DATA_IN_BRAM_A,
      DATA_OUT_BRAM_A => DATA_OUT_BRAM_A,
      WRITE_ENABLE_BRAM_IN => WRITE_ENABLE_BRAM_IN,
      CLK_BRAM_A_IN => CLK_BRAM_A_IN,
      RST_BRAM_A_IN => RST_BRAM_A_IN,
      DB_IN_INPUT_VOLTAGE_OUT => DB_IN_INPUT_VOLTAGE_OUT,
      DB_IN_INPUT_REGISTER_OUT => DB_IN_INPUT_REGISTER_OUT,
      ENIGMAS_START_OUT => ENIGMAS_START_OUT,
      DRUM_IMPULS_OUT => DRUM_IMPULS_OUT,
      ENIGMAS_DRUM_1_OUT => ENIGMAS_DRUM_1_OUT,
      ENIGMAS_DRUM_2_OUT => ENIGMAS_DRUM_2_OUT,
      ENIGMAS_DRUM_3_OUT => ENIGMAS_DRUM_3_OUT,
      POS_1_INDICATOR_DRUM_IN => POS_1_INDICATOR_DRUM_IN,
      POS_2_INDICATOR_DRUM_IN => POS_2_INDICATOR_DRUM_IN,
      POS_3_INDICATOR_DRUM_IN => POS_3_INDICATOR_DRUM_IN,
      CLK_IN => CLK_IN,
      DB_READY_IN => DB_READY_IN,
      DB_OUT_NO_CHANGES_IN => DB_OUT_NO_CHANGES_IN,
      RESET_OUT => RESET_OUT,
      ENIGMA_1_CHARACTERS_DB0_OUT => ENIGMA_1_CHARACTERS_DB0_OUT,
      ENIGMA_1_CHARACTERS_DB1_OUT => ENIGMA_1_CHARACTERS_DB1_OUT,
      ENIGMA_1_DRUMPOS_1_OUT => ENIGMA_1_DRUMPOS_1_OUT,
      ENIGMA_1_DRUMPOS_2_OUT => ENIGMA_1_DRUMPOS_2_OUT,
      ENIGMA_1_DRUMPOS_3_OUT => ENIGMA_1_DRUMPOS_3_OUT,
      ENIGMA_2_CHARACTERS_DB0_OUT => ENIGMA_2_CHARACTERS_DB0_OUT,
      ENIGMA_2_CHARACTERS_DB1_OUT => ENIGMA_2_CHARACTERS_DB1_OUT,
      ENIGMA_2_DRUMPOS_1_OUT => ENIGMA_2_DRUMPOS_1_OUT,
      ENIGMA_2_DRUMPOS_2_OUT => ENIGMA_2_DRUMPOS_2_OUT,
      ENIGMA_2_DRUMPOS_3_OUT => ENIGMA_2_DRUMPOS_3_OUT,
      ENIGMA_3_CHARACTERS_DB0_OUT => ENIGMA_3_CHARACTERS_DB0_OUT,
      ENIGMA_3_CHARACTERS_DB1_OUT => ENIGMA_3_CHARACTERS_DB1_OUT,
      ENIGMA_3_DRUMPOS_1_OUT => ENIGMA_3_DRUMPOS_1_OUT,
      ENIGMA_3_DRUMPOS_2_OUT => ENIGMA_3_DRUMPOS_2_OUT,
      ENIGMA_3_DRUMPOS_3_OUT => ENIGMA_3_DRUMPOS_3_OUT,
      ENIGMA_4_CHARACTERS_DB0_OUT => ENIGMA_4_CHARACTERS_DB0_OUT,
      ENIGMA_4_CHARACTERS_DB1_OUT => ENIGMA_4_CHARACTERS_DB1_OUT,
      ENIGMA_4_DRUMPOS_1_OUT => ENIGMA_4_DRUMPOS_1_OUT,
      ENIGMA_4_DRUMPOS_2_OUT => ENIGMA_4_DRUMPOS_2_OUT,
      ENIGMA_4_DRUMPOS_3_OUT => ENIGMA_4_DRUMPOS_3_OUT,
      ENIGMA_5_CHARACTERS_DB0_OUT => ENIGMA_5_CHARACTERS_DB0_OUT,
      ENIGMA_5_CHARACTERS_DB1_OUT => ENIGMA_5_CHARACTERS_DB1_OUT,
      ENIGMA_5_DRUMPOS_1_OUT => ENIGMA_5_DRUMPOS_1_OUT,
      ENIGMA_5_DRUMPOS_2_OUT => ENIGMA_5_DRUMPOS_2_OUT,
      ENIGMA_5_DRUMPOS_3_OUT => ENIGMA_5_DRUMPOS_3_OUT,
      ENIGMA_6_CHARACTERS_DB0_OUT => ENIGMA_6_CHARACTERS_DB0_OUT,
      ENIGMA_6_CHARACTERS_DB1_OUT => ENIGMA_6_CHARACTERS_DB1_OUT,
      ENIGMA_6_DRUMPOS_1_OUT => ENIGMA_6_DRUMPOS_1_OUT,
      ENIGMA_6_DRUMPOS_2_OUT => ENIGMA_6_DRUMPOS_2_OUT,
      ENIGMA_6_DRUMPOS_3_OUT => ENIGMA_6_DRUMPOS_3_OUT,
      ENIGMA_7_CHARACTERS_DB0_OUT => ENIGMA_7_CHARACTERS_DB0_OUT,
      ENIGMA_7_CHARACTERS_DB1_OUT => ENIGMA_7_CHARACTERS_DB1_OUT,
      ENIGMA_7_DRUMPOS_1_OUT => ENIGMA_7_DRUMPOS_1_OUT,
      ENIGMA_7_DRUMPOS_2_OUT => ENIGMA_7_DRUMPOS_2_OUT,
      ENIGMA_7_DRUMPOS_3_OUT => ENIGMA_7_DRUMPOS_3_OUT,
      ENIGMA_8_CHARACTERS_DB0_OUT => ENIGMA_8_CHARACTERS_DB0_OUT,
      ENIGMA_8_CHARACTERS_DB1_OUT => ENIGMA_8_CHARACTERS_DB1_OUT,
      ENIGMA_8_DRUMPOS_1_OUT => ENIGMA_8_DRUMPOS_1_OUT,
      ENIGMA_8_DRUMPOS_2_OUT => ENIGMA_8_DRUMPOS_2_OUT,
      ENIGMA_8_DRUMPOS_3_OUT => ENIGMA_8_DRUMPOS_3_OUT,
      ENIGMA_9_CHARACTERS_DB0_OUT => ENIGMA_9_CHARACTERS_DB0_OUT,
      ENIGMA_9_CHARACTERS_DB1_OUT => ENIGMA_9_CHARACTERS_DB1_OUT,
      ENIGMA_9_DRUMPOS_1_OUT => ENIGMA_9_DRUMPOS_1_OUT,
      ENIGMA_9_DRUMPOS_2_OUT => ENIGMA_9_DRUMPOS_2_OUT,
      ENIGMA_9_DRUMPOS_3_OUT => ENIGMA_9_DRUMPOS_3_OUT,
      ENIGMA_10_CHARACTERS_DB0_OUT => ENIGMA_10_CHARACTERS_DB0_OUT,
      ENIGMA_10_CHARACTERS_DB1_OUT => ENIGMA_10_CHARACTERS_DB1_OUT,
      ENIGMA_10_DRUMPOS_1_OUT => ENIGMA_10_DRUMPOS_1_OUT,
      ENIGMA_10_DRUMPOS_2_OUT => ENIGMA_10_DRUMPOS_2_OUT,
      ENIGMA_10_DRUMPOS_3_OUT => ENIGMA_10_DRUMPOS_3_OUT,
      ENIGMA_11_CHARACTERS_DB0_OUT => ENIGMA_11_CHARACTERS_DB0_OUT,
      ENIGMA_11_CHARACTERS_DB1_OUT => ENIGMA_11_CHARACTERS_DB1_OUT,
      ENIGMA_11_DRUMPOS_1_OUT => ENIGMA_11_DRUMPOS_1_OUT,
      ENIGMA_11_DRUMPOS_2_OUT => ENIGMA_11_DRUMPOS_2_OUT,
      ENIGMA_11_DRUMPOS_3_OUT => ENIGMA_11_DRUMPOS_3_OUT,
      ENIGMA_12_CHARACTERS_DB0_OUT => ENIGMA_12_CHARACTERS_DB0_OUT,
      ENIGMA_12_CHARACTERS_DB1_OUT => ENIGMA_12_CHARACTERS_DB1_OUT,
      ENIGMA_12_DRUMPOS_1_OUT => ENIGMA_12_DRUMPOS_1_OUT,
      ENIGMA_12_DRUMPOS_2_OUT => ENIGMA_12_DRUMPOS_2_OUT,
      ENIGMA_12_DRUMPOS_3_OUT => ENIGMA_12_DRUMPOS_3_OUT,
      DB_IN_ENIGMA_1_DBCON0_OUT => DB_IN_ENIGMA_1_DBCON0_OUT,
      DB_IN_ENIGMA_1_DBCON1_OUT => DB_IN_ENIGMA_1_DBCON1_OUT,
      DB_IN_ENIGMA_2_DBCON0_OUT => DB_IN_ENIGMA_2_DBCON0_OUT,
      DB_IN_ENIGMA_2_DBCON1_OUT => DB_IN_ENIGMA_2_DBCON1_OUT,
      DB_IN_ENIGMA_3_DBCON0_OUT => DB_IN_ENIGMA_3_DBCON0_OUT,
      DB_IN_ENIGMA_3_DBCON1_OUT => DB_IN_ENIGMA_3_DBCON1_OUT,
      DB_IN_ENIGMA_4_DBCON0_OUT => DB_IN_ENIGMA_4_DBCON0_OUT,
      DB_IN_ENIGMA_4_DBCON1_OUT => DB_IN_ENIGMA_4_DBCON1_OUT,
      DB_IN_ENIGMA_5_DBCON0_OUT => DB_IN_ENIGMA_5_DBCON0_OUT,
      DB_IN_ENIGMA_5_DBCON1_OUT => DB_IN_ENIGMA_5_DBCON1_OUT,
      DB_IN_ENIGMA_6_DBCON0_OUT => DB_IN_ENIGMA_6_DBCON0_OUT,
      DB_IN_ENIGMA_6_DBCON1_OUT => DB_IN_ENIGMA_6_DBCON1_OUT,
      DB_IN_ENIGMA_7_DBCON0_OUT => DB_IN_ENIGMA_7_DBCON0_OUT,
      DB_IN_ENIGMA_7_DBCON1_OUT => DB_IN_ENIGMA_7_DBCON1_OUT,
      DB_IN_ENIGMA_8_DBCON0_OUT => DB_IN_ENIGMA_8_DBCON0_OUT,
      DB_IN_ENIGMA_8_DBCON1_OUT => DB_IN_ENIGMA_8_DBCON1_OUT,
      DB_IN_ENIGMA_9_DBCON0_OUT => DB_IN_ENIGMA_9_DBCON0_OUT,
      DB_IN_ENIGMA_9_DBCON1_OUT => DB_IN_ENIGMA_9_DBCON1_OUT,
      DB_IN_ENIGMA_10_DBCON0_OUT => DB_IN_ENIGMA_10_DBCON0_OUT,
      DB_IN_ENIGMA_10_DBCON1_OUT => DB_IN_ENIGMA_10_DBCON1_OUT,
      DB_IN_ENIGMA_11_DBCON0_OUT => DB_IN_ENIGMA_11_DBCON0_OUT,
      DB_IN_ENIGMA_11_DBCON1_OUT => DB_IN_ENIGMA_11_DBCON1_OUT,
      DB_IN_ENIGMA_12_DBCON0_OUT => DB_IN_ENIGMA_12_DBCON0_OUT,
      DB_IN_ENIGMA_12_DBCON1_OUT => DB_IN_ENIGMA_12_DBCON1_OUT,
      DB_OUT_ENIGMA_1_DB0 => DB_OUT_ENIGMA_1_DB0,
      DB_OUT_ENIGMA_1_DB1 => DB_OUT_ENIGMA_1_DB1,
      DB_OUT_ENIGMA_2_DB0 => DB_OUT_ENIGMA_2_DB0,
      DB_OUT_ENIGMA_2_DB1 => DB_OUT_ENIGMA_2_DB1,
      DB_OUT_ENIGMA_3_DB0 => DB_OUT_ENIGMA_3_DB0,
      DB_OUT_ENIGMA_3_DB1 => DB_OUT_ENIGMA_3_DB1,
      DB_OUT_ENIGMA_4_DB0 => DB_OUT_ENIGMA_4_DB0,
      DB_OUT_ENIGMA_4_DB1 => DB_OUT_ENIGMA_4_DB1,
      DB_OUT_ENIGMA_5_DB0 => DB_OUT_ENIGMA_5_DB0,
      DB_OUT_ENIGMA_5_DB1 => DB_OUT_ENIGMA_5_DB1,
      DB_OUT_ENIGMA_6_DB0 => DB_OUT_ENIGMA_6_DB0,
      DB_OUT_ENIGMA_6_DB1 => DB_OUT_ENIGMA_6_DB1,
      DB_OUT_ENIGMA_7_DB0 => DB_OUT_ENIGMA_7_DB0,
      DB_OUT_ENIGMA_7_DB1 => DB_OUT_ENIGMA_7_DB1,
      DB_OUT_ENIGMA_8_DB0 => DB_OUT_ENIGMA_8_DB0,
      DB_OUT_ENIGMA_8_DB1 => DB_OUT_ENIGMA_8_DB1,
      DB_OUT_ENIGMA_9_DB0 => DB_OUT_ENIGMA_9_DB0,
      DB_OUT_ENIGMA_9_DB1 => DB_OUT_ENIGMA_9_DB1,
      DB_OUT_ENIGMA_10_DB0 => DB_OUT_ENIGMA_10_DB0,
      DB_OUT_ENIGMA_10_DB1 => DB_OUT_ENIGMA_10_DB1,
      DB_OUT_ENIGMA_11_DB0 => DB_OUT_ENIGMA_11_DB0,
      DB_OUT_ENIGMA_11_DB1 => DB_OUT_ENIGMA_11_DB1,
      DB_OUT_ENIGMA_12_DB0 => DB_OUT_ENIGMA_12_DB0,
      DB_OUT_ENIGMA_12_DB1 => DB_OUT_ENIGMA_12_DB1,
      DB_RESULT_RESIGER_IN => DB_RESULT_RESIGER_IN,
      LED_FIRST_STOP_OUT => LED_FIRST_STOP_OUT,
      LED_SECOND_STOP_OUT => LED_SECOND_STOP_OUT,
      LED_THIRD_STOP_OUT => LED_THIRD_STOP_OUT,
      LED_FOURTH_STOP_OUT => LED_FOURTH_STOP_OUT
    );
END turing_bombe_without_zynq_turing_bombe_control_0_0_arch;
