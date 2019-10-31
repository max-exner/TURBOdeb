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

-- IP VLNV: xilinx.com:module_ref:pseudo_lut:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_enigma_pseudo_lut_0_0 IS
  PORT (
    UB_CLK_IN : IN STD_LOGIC;
    SOFT_RESET_N_IN : IN STD_LOGIC;
    DIRECTION_1 : IN STD_LOGIC;
    DIRECTION_2 : IN STD_LOGIC;
    DIRECTION_3 : IN STD_LOGIC;
    CHARACTERS_FROM_DRUM_IN_1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_FROM_DRUM_IN_2 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_FROM_DRUM_IN_3 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    CHARACTERS_FROM_DRUM_IN_UKW : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
    REQUEST_1 : IN STD_LOGIC;
    REQUEST_2 : IN STD_LOGIC;
    REQUEST_3 : IN STD_LOGIC;
    REQUEST_UKW : IN STD_LOGIC;
    DRUM_TYP_IN_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    DRUM_TYP_IN_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    DRUM_TYP_IN_3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    DRUM_TYP_IN_UKW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    PROJECTION : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
    BUSY_OUT : OUT STD_LOGIC;
    READY_OUT_1 : OUT STD_LOGIC;
    READY_OUT_2 : OUT STD_LOGIC;
    READY_OUT_3 : OUT STD_LOGIC;
    READY_OUT_UKW : OUT STD_LOGIC
  );
END design_enigma_pseudo_lut_0_0;

ARCHITECTURE design_enigma_pseudo_lut_0_0_arch OF design_enigma_pseudo_lut_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_enigma_pseudo_lut_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pseudo_lut IS
    PORT (
      UB_CLK_IN : IN STD_LOGIC;
      SOFT_RESET_N_IN : IN STD_LOGIC;
      DIRECTION_1 : IN STD_LOGIC;
      DIRECTION_2 : IN STD_LOGIC;
      DIRECTION_3 : IN STD_LOGIC;
      CHARACTERS_FROM_DRUM_IN_1 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_FROM_DRUM_IN_2 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_FROM_DRUM_IN_3 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      CHARACTERS_FROM_DRUM_IN_UKW : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      REQUEST_1 : IN STD_LOGIC;
      REQUEST_2 : IN STD_LOGIC;
      REQUEST_3 : IN STD_LOGIC;
      REQUEST_UKW : IN STD_LOGIC;
      DRUM_TYP_IN_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      DRUM_TYP_IN_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      DRUM_TYP_IN_3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      DRUM_TYP_IN_UKW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      PROJECTION : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
      BUSY_OUT : OUT STD_LOGIC;
      READY_OUT_1 : OUT STD_LOGIC;
      READY_OUT_2 : OUT STD_LOGIC;
      READY_OUT_3 : OUT STD_LOGIC;
      READY_OUT_UKW : OUT STD_LOGIC
    );
  END COMPONENT pseudo_lut;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_enigma_pseudo_lut_0_0_arch: ARCHITECTURE IS "pseudo_lut,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_enigma_pseudo_lut_0_0_arch : ARCHITECTURE IS "design_enigma_pseudo_lut_0_0,pseudo_lut,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_enigma_pseudo_lut_0_0_arch: ARCHITECTURE IS "design_enigma_pseudo_lut_0_0,pseudo_lut,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pseudo_lut,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_enigma_pseudo_lut_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : pseudo_lut
    PORT MAP (
      UB_CLK_IN => UB_CLK_IN,
      SOFT_RESET_N_IN => SOFT_RESET_N_IN,
      DIRECTION_1 => DIRECTION_1,
      DIRECTION_2 => DIRECTION_2,
      DIRECTION_3 => DIRECTION_3,
      CHARACTERS_FROM_DRUM_IN_1 => CHARACTERS_FROM_DRUM_IN_1,
      CHARACTERS_FROM_DRUM_IN_2 => CHARACTERS_FROM_DRUM_IN_2,
      CHARACTERS_FROM_DRUM_IN_3 => CHARACTERS_FROM_DRUM_IN_3,
      CHARACTERS_FROM_DRUM_IN_UKW => CHARACTERS_FROM_DRUM_IN_UKW,
      REQUEST_1 => REQUEST_1,
      REQUEST_2 => REQUEST_2,
      REQUEST_3 => REQUEST_3,
      REQUEST_UKW => REQUEST_UKW,
      DRUM_TYP_IN_1 => DRUM_TYP_IN_1,
      DRUM_TYP_IN_2 => DRUM_TYP_IN_2,
      DRUM_TYP_IN_3 => DRUM_TYP_IN_3,
      DRUM_TYP_IN_UKW => DRUM_TYP_IN_UKW,
      PROJECTION => PROJECTION,
      BUSY_OUT => BUSY_OUT,
      READY_OUT_1 => READY_OUT_1,
      READY_OUT_2 => READY_OUT_2,
      READY_OUT_3 => READY_OUT_3,
      READY_OUT_UKW => READY_OUT_UKW
    );
END design_enigma_pseudo_lut_0_0_arch;
