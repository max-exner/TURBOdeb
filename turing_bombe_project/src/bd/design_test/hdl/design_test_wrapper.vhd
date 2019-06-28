--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Tue Jun 18 11:27:21 2019
--Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target design_test_wrapper.bd
--Design      : design_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_test_wrapper is
  port (
    CHARACTERS_IN_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARACTERS_OUT_DB0 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARACTERS_OUT_DB1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CONFIG_DRUM_TYP_1_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_2_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_3_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS_DRUM_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_3_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUM_IMPULS_IN : in STD_LOGIC;
    READY_OUT : out STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    START_IN : in STD_LOGIC;
    UB_CLK_IN : in STD_LOGIC
  );
end design_test_wrapper;

architecture STRUCTURE of design_test_wrapper is
  component design_test is
  port (
    CODED_CHARACTERS_OUT_DB0 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARACTERS_OUT_DB1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT : out STD_LOGIC;
    CHARACTERS_IN_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CONFIG_DRUM_TYP_1_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_2_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_3_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS_DRUM_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_3_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUM_IMPULS_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    START_IN : in STD_LOGIC;
    UB_CLK_IN : in STD_LOGIC
  );
  end component design_test;
begin
design_test_i: component design_test
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => CHARACTERS_IN_DB0(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => CHARACTERS_IN_DB1(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => CONFIG_DRUM_TYP_1_IN(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => CONFIG_DRUM_TYP_2_IN(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => CONFIG_DRUM_TYP_3_IN(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => CONFIG_START_POS_DRUM_1_IN(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => CONFIG_START_POS_DRUM_2_IN(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => CONFIG_START_POS_DRUM_3_IN(4 downto 0),
      DRUM_IMPULS_IN => DRUM_IMPULS_IN,
      READY_OUT => READY_OUT,
      SOFT_RESET_N_IN => SOFT_RESET_N_IN,
      START_IN => START_IN,
      UB_CLK_IN => UB_CLK_IN
    );
end STRUCTURE;
