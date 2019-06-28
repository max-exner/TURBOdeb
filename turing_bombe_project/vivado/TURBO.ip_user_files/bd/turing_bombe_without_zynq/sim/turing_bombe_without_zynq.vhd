--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Fri Jun 28 15:47:59 2019
--Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target turing_bombe_without_zynq.bd
--Design      : turing_bombe_without_zynq
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turing_bombe_without_zynq is
  port (
    ADDRESS_BRAM_A : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK : in STD_LOGIC;
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENABLE_BRAM_A : in STD_LOGIC;
    LED_FIRST_STOP_OUT : out STD_LOGIC;
    LED_FOURTH_STOP_OUT : out STD_LOGIC;
    LED_SECOND_STOP_OUT : out STD_LOGIC;
    LED_THIRD_STOP_OUT : out STD_LOGIC;
    WRITE_ENABLE_BRAM_A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of turing_bombe_without_zynq : entity is "turing_bombe_without_zynq,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=turing_bombe_without_zynq,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=12,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=12,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of turing_bombe_without_zynq : entity is "turing_bombe_without_zynq.hwdef";
end turing_bombe_without_zynq;

architecture STRUCTURE of turing_bombe_without_zynq is
  component turing_bombe_without_zynq_TURBO_enigma_0_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_0_0;
  component turing_bombe_without_zynq_TURBO_enigma_1_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_1_0;
  component turing_bombe_without_zynq_TURBO_enigma_10_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_10_0;
  component turing_bombe_without_zynq_TURBO_enigma_11_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_11_0;
  component turing_bombe_without_zynq_TURBO_enigma_12_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_12_0;
  component turing_bombe_without_zynq_TURBO_enigma_2_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_2_0;
  component turing_bombe_without_zynq_TURBO_enigma_4_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_4_0;
  component turing_bombe_without_zynq_TURBO_enigma_5_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_5_0;
  component turing_bombe_without_zynq_TURBO_enigma_6_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_6_0;
  component turing_bombe_without_zynq_TURBO_enigma_7_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_7_0;
  component turing_bombe_without_zynq_TURBO_enigma_8_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_8_0;
  component turing_bombe_without_zynq_TURBO_enigma_9_0 is
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
  end component turing_bombe_without_zynq_TURBO_enigma_9_0;
  component turing_bombe_without_zynq_diagonal_board_0_0 is
  port (
    CLK_IN : in STD_LOGIC;
    RESET_IN : in STD_LOGIC;
    INPUT_VOLTAGE_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TEST_REGISTER_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    READY_ENIGMA_1 : in STD_LOGIC;
    READY_ENIGMA_2 : in STD_LOGIC;
    READY_ENIGMA_3 : in STD_LOGIC;
    READY_ENIGMA_4 : in STD_LOGIC;
    READY_ENIGMA_5 : in STD_LOGIC;
    READY_ENIGMA_6 : in STD_LOGIC;
    READY_ENIGMA_7 : in STD_LOGIC;
    READY_ENIGMA_8 : in STD_LOGIC;
    READY_ENIGMA_9 : in STD_LOGIC;
    READY_ENIGMA_10 : in STD_LOGIC;
    READY_ENIGMA_11 : in STD_LOGIC;
    READY_ENIGMA_12 : in STD_LOGIC;
    READY_OUT : out STD_LOGIC;
    NO_OUTPUT_CHANGE_OUT : out STD_LOGIC;
    ACTIVE_OUT_1_ENIGMA_1_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_1_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_2_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_2_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_3_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_3_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_4_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_4_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_5_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_5_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_6_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_6_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_7_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_7_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_8_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_8_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_9_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_9_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_10_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_10_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_11_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_11_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_12_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_12_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_1_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_1_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_2_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_2_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_3_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_3_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_4_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_4_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_5_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_5_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_6_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_6_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_7_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_7_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_8_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_8_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_9_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_9_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_10_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_10_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_11_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_11_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_12_DB_CON_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_12_DB_CON_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_1_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_1_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_2_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_2_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_3_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_3_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_4_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_4_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_5_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_5_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_6_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_6_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_7_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_7_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_8_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_8_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_9_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_9_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_10_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_10_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_11_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_11_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_12_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_12_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    RESULT_REGISTER_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component turing_bombe_without_zynq_diagonal_board_0_0;
  component turing_bombe_without_zynq_indicator_drum_0_0 is
  port (
    ROTATE_IMPULS_IN : in STD_LOGIC;
    RESET_IN : in STD_LOGIC;
    POS_INDICATOR_DRUM_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_INDICATOR_DRUM_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_INDICATOR_DRUM_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_IN : in STD_LOGIC
  );
  end component turing_bombe_without_zynq_indicator_drum_0_0;
  component turing_bombe_without_zynq_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component turing_bombe_without_zynq_proc_sys_reset_0_0;
  component turing_bombe_without_zynq_turing_bombe_control_0_0 is
  port (
    ENABLE_BRAM_A_IN : in STD_LOGIC;
    ADDRESS_BRAM_A_IN : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WRITE_ENABLE_BRAM_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_BRAM_A_IN : in STD_LOGIC;
    RST_BRAM_A_IN : in STD_LOGIC;
    DB_IN_INPUT_VOLTAGE_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_INPUT_REGISTER_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMAS_START_OUT : out STD_LOGIC;
    DRUM_IMPULS_OUT : out STD_LOGIC;
    ENIGMAS_DRUM_1_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ENIGMAS_DRUM_2_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ENIGMAS_DRUM_3_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    POS_1_INDICATOR_DRUM_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_2_INDICATOR_DRUM_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_3_INDICATOR_DRUM_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_IN : in STD_LOGIC;
    DB_READY_IN : in STD_LOGIC;
    DB_OUT_NO_CHANGES_IN : in STD_LOGIC;
    RESET_OUT : out STD_LOGIC;
    ENIGMA_1_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_1_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_1_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_1_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_1_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_2_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_2_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_2_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_2_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_2_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_3_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_3_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_3_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_3_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_3_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_4_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_4_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_4_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_4_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_4_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_5_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_5_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_5_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_5_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_5_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_6_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_6_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_6_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_6_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_6_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_7_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_7_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_7_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_7_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_7_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_8_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_8_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_8_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_8_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_8_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_9_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_9_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_9_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_9_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_9_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_10_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_10_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_10_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_10_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_10_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_11_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_11_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_11_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_11_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_11_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_12_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_12_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ENIGMA_12_DRUMPOS_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_12_DRUMPOS_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENIGMA_12_DRUMPOS_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_1_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_1_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_2_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_2_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_3_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_3_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_4_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_4_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_5_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_5_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_6_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_6_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_7_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_7_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_8_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_8_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_9_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_9_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_10_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_10_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_11_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_11_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_12_DBCON0_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_IN_ENIGMA_12_DBCON1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DB_OUT_ENIGMA_1_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_1_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_2_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_2_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_3_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_3_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_4_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_4_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_5_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_5_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_6_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_6_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_7_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_7_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_8_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_8_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_9_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_9_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_10_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_10_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_11_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_11_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_12_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_OUT_ENIGMA_12_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DB_RESULT_RESIGER_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    LED_FIRST_STOP_OUT : out STD_LOGIC;
    LED_SECOND_STOP_OUT : out STD_LOGIC;
    LED_THIRD_STOP_OUT : out STD_LOGIC;
    LED_FOURTH_STOP_OUT : out STD_LOGIC
  );
  end component turing_bombe_without_zynq_turing_bombe_control_0_0;
  component turing_bombe_without_zynq_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component turing_bombe_without_zynq_xlconstant_0_0;
  signal ADDRESS_BRAM_A_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DATA_IN_BRAM_A_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ENABLE_BRAM_A_IN_1 : STD_LOGIC;
  signal TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_0_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_10_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_10_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_10_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_11_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_11_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_11_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_12_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_12_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_12_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_1_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_1_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_1_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_2_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_2_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_2_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_4_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_4_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_4_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_5_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_5_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_5_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_6_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_6_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_6_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_7_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_7_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_7_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_8_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_8_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_8_READY_OUT : STD_LOGIC;
  signal TURBO_enigma_9_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_9_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_9_READY_OUT : STD_LOGIC;
  signal WRITE_ENABLE_BRAM_A_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal diagonal_board_0_ENIGMA_10_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_10_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_11_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_11_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_12_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_12_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_1_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_1_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_2_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_2_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_3_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_3_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_4_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_4_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_5_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_5_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_6_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_6_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_7_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_7_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_8_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_8_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_9_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ENIGMA_9_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_NO_OUTPUT_CHANGE_OUT : STD_LOGIC;
  signal diagonal_board_0_READY_OUT : STD_LOGIC;
  signal diagonal_board_0_RESULT_REGISTER_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal indicator_drum_0_POS_INDICATOR_DRUM_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal indicator_drum_0_POS_INDICATOR_DRUM_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal indicator_drum_0_POS_INDICATOR_DRUM_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal turing_bombe_control_0_DATA_OUT_BRAM_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON0_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_INPUT_REGISTER_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DB_IN_INPUT_VOLTAGE_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_DRUM_IMPULS_OUT : STD_LOGIC;
  signal turing_bombe_control_0_ENIGMAS_DRUM_1_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal turing_bombe_control_0_ENIGMAS_DRUM_2_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal turing_bombe_control_0_ENIGMAS_DRUM_3_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal turing_bombe_control_0_ENIGMAS_START_OUT : STD_LOGIC;
  signal turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_10_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_10_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_10_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_11_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_11_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_11_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_12_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_12_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_12_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_1_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_1_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_1_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_2_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_2_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_2_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_3_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_3_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_3_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_4_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_4_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_4_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_5_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_5_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_5_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_6_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_6_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_6_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_7_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_7_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_7_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_8_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_8_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_8_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB0_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal turing_bombe_control_0_ENIGMA_9_DRUMPOS_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_9_DRUMPOS_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_ENIGMA_9_DRUMPOS_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal turing_bombe_control_0_LED_FIRST_STOP_OUT : STD_LOGIC;
  signal turing_bombe_control_0_LED_FOURTH_STOP_OUT : STD_LOGIC;
  signal turing_bombe_control_0_LED_SECOND_STOP_OUT : STD_LOGIC;
  signal turing_bombe_control_0_LED_THIRD_STOP_OUT : STD_LOGIC;
  signal turing_bombe_control_0_RESET_ENIGMAS_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal turing_bombe_control_0_RESET_OUT : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN turing_bombe_without_zynq_CLK, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000";
begin
  ADDRESS_BRAM_A_1(5 downto 0) <= ADDRESS_BRAM_A(5 downto 0);
  DATA_IN_BRAM_A_1(31 downto 0) <= DATA_IN_BRAM_A(31 downto 0);
  DATA_OUT_BRAM_A(31 downto 0) <= turing_bombe_control_0_DATA_OUT_BRAM_A(31 downto 0);
  ENABLE_BRAM_A_IN_1 <= ENABLE_BRAM_A;
  LED_FIRST_STOP_OUT <= turing_bombe_control_0_LED_FIRST_STOP_OUT;
  LED_FOURTH_STOP_OUT <= turing_bombe_control_0_LED_FOURTH_STOP_OUT;
  LED_SECOND_STOP_OUT <= turing_bombe_control_0_LED_SECOND_STOP_OUT;
  LED_THIRD_STOP_OUT <= turing_bombe_control_0_LED_THIRD_STOP_OUT;
  WRITE_ENABLE_BRAM_A_1(0) <= WRITE_ENABLE_BRAM_A(0);
  sim_clk_gen_0_clk <= CLK;
TURBO_enigma_0: component turing_bombe_without_zynq_TURBO_enigma_0_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_0_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_1: component turing_bombe_without_zynq_TURBO_enigma_1_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_1_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_1_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_1_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_10: component turing_bombe_without_zynq_TURBO_enigma_10_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_10_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_10_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_10_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_11: component turing_bombe_without_zynq_TURBO_enigma_11_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_11_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_11_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_11_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_12: component turing_bombe_without_zynq_TURBO_enigma_12_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_12_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_12_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_12_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_2: component turing_bombe_without_zynq_TURBO_enigma_2_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_2_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_2_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_2_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_4: component turing_bombe_without_zynq_TURBO_enigma_4_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_4_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_4_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_4_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_5: component turing_bombe_without_zynq_TURBO_enigma_5_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_5_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_5_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_5_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_6: component turing_bombe_without_zynq_TURBO_enigma_6_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_6_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_6_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_6_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_7: component turing_bombe_without_zynq_TURBO_enigma_7_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_7_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_7_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_7_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_8: component turing_bombe_without_zynq_TURBO_enigma_8_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_8_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_8_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_8_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
TURBO_enigma_9: component turing_bombe_without_zynq_TURBO_enigma_9_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB0_OUT(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB1_OUT(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_9_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_9_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT,
      READY_OUT => TURBO_enigma_9_READY_OUT,
      SOFT_RESET_N_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      START_IN => turing_bombe_control_0_ENIGMAS_START_OUT,
      UB_CLK_IN => sim_clk_gen_0_clk
    );
diagonal_board_0: component turing_bombe_without_zynq_diagonal_board_0_0
     port map (
      ACTIVE_OUT_1_ENIGMA_10_IN(25 downto 0) => TURBO_enigma_10_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_11_IN(25 downto 0) => TURBO_enigma_11_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_12_IN(25 downto 0) => TURBO_enigma_12_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_1_IN(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_2_IN(25 downto 0) => TURBO_enigma_1_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_3_IN(25 downto 0) => TURBO_enigma_2_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_4_IN(25 downto 0) => TURBO_enigma_9_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_5_IN(25 downto 0) => TURBO_enigma_4_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_6_IN(25 downto 0) => TURBO_enigma_5_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_7_IN(25 downto 0) => TURBO_enigma_6_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_8_IN(25 downto 0) => TURBO_enigma_7_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_9_IN(25 downto 0) => TURBO_enigma_8_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_10_IN(25 downto 0) => TURBO_enigma_10_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_11_IN(25 downto 0) => TURBO_enigma_11_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_12_IN(25 downto 0) => TURBO_enigma_12_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_1_IN(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_2_IN(25 downto 0) => TURBO_enigma_1_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_3_IN(25 downto 0) => TURBO_enigma_2_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_4_IN(25 downto 0) => TURBO_enigma_9_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_5_IN(25 downto 0) => TURBO_enigma_4_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_6_IN(25 downto 0) => TURBO_enigma_5_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_7_IN(25 downto 0) => TURBO_enigma_6_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_8_IN(25 downto 0) => TURBO_enigma_7_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_9_IN(25 downto 0) => TURBO_enigma_8_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CLK_IN => sim_clk_gen_0_clk,
      ENIGMA_10_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_10_DB1_OUT(25 downto 0),
      ENIGMA_10_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_10_DB2_OUT(25 downto 0),
      ENIGMA_10_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON0_OUT(4 downto 0),
      ENIGMA_10_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON1_OUT(4 downto 0),
      ENIGMA_11_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_11_DB1_OUT(25 downto 0),
      ENIGMA_11_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_11_DB2_OUT(25 downto 0),
      ENIGMA_11_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON0_OUT(4 downto 0),
      ENIGMA_11_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON1_OUT(4 downto 0),
      ENIGMA_12_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_12_DB1_OUT(25 downto 0),
      ENIGMA_12_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_12_DB2_OUT(25 downto 0),
      ENIGMA_12_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON0_OUT(4 downto 0),
      ENIGMA_12_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON1_OUT(4 downto 0),
      ENIGMA_1_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_1_DB1_OUT(25 downto 0),
      ENIGMA_1_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_1_DB2_OUT(25 downto 0),
      ENIGMA_1_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON0_OUT(4 downto 0),
      ENIGMA_1_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON1_OUT(4 downto 0),
      ENIGMA_2_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_2_DB1_OUT(25 downto 0),
      ENIGMA_2_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_2_DB2_OUT(25 downto 0),
      ENIGMA_2_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON0_OUT(4 downto 0),
      ENIGMA_2_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON1_OUT(4 downto 0),
      ENIGMA_3_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_3_DB1_OUT(25 downto 0),
      ENIGMA_3_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_3_DB2_OUT(25 downto 0),
      ENIGMA_3_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON0_OUT(4 downto 0),
      ENIGMA_3_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON1_OUT(4 downto 0),
      ENIGMA_4_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_4_DB1_OUT(25 downto 0),
      ENIGMA_4_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_4_DB2_OUT(25 downto 0),
      ENIGMA_4_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON0_OUT(4 downto 0),
      ENIGMA_4_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON1_OUT(4 downto 0),
      ENIGMA_5_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_5_DB1_OUT(25 downto 0),
      ENIGMA_5_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_5_DB2_OUT(25 downto 0),
      ENIGMA_5_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON0_OUT(4 downto 0),
      ENIGMA_5_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON1_OUT(4 downto 0),
      ENIGMA_6_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_6_DB1_OUT(25 downto 0),
      ENIGMA_6_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_6_DB2_OUT(25 downto 0),
      ENIGMA_6_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON0_OUT(4 downto 0),
      ENIGMA_6_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON1_OUT(4 downto 0),
      ENIGMA_7_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_7_DB1_OUT(25 downto 0),
      ENIGMA_7_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_7_DB2_OUT(25 downto 0),
      ENIGMA_7_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON0_OUT(4 downto 0),
      ENIGMA_7_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON1_OUT(4 downto 0),
      ENIGMA_8_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_8_DB1_OUT(25 downto 0),
      ENIGMA_8_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_8_DB2_OUT(25 downto 0),
      ENIGMA_8_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON0_OUT(4 downto 0),
      ENIGMA_8_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON1_OUT(4 downto 0),
      ENIGMA_9_DB1_OUT(25 downto 0) => diagonal_board_0_ENIGMA_9_DB1_OUT(25 downto 0),
      ENIGMA_9_DB2_OUT(25 downto 0) => diagonal_board_0_ENIGMA_9_DB2_OUT(25 downto 0),
      ENIGMA_9_DB_CON_1_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON0_OUT(4 downto 0),
      ENIGMA_9_DB_CON_2_IN(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON1_OUT(4 downto 0),
      INPUT_VOLTAGE_IN(4 downto 0) => turing_bombe_control_0_DB_IN_INPUT_VOLTAGE_OUT(4 downto 0),
      NO_OUTPUT_CHANGE_OUT => diagonal_board_0_NO_OUTPUT_CHANGE_OUT,
      READY_ENIGMA_1 => TURBO_enigma_0_READY_OUT,
      READY_ENIGMA_10 => TURBO_enigma_10_READY_OUT,
      READY_ENIGMA_11 => TURBO_enigma_11_READY_OUT,
      READY_ENIGMA_12 => TURBO_enigma_12_READY_OUT,
      READY_ENIGMA_2 => TURBO_enigma_1_READY_OUT,
      READY_ENIGMA_3 => TURBO_enigma_2_READY_OUT,
      READY_ENIGMA_4 => TURBO_enigma_9_READY_OUT,
      READY_ENIGMA_5 => TURBO_enigma_4_READY_OUT,
      READY_ENIGMA_6 => TURBO_enigma_5_READY_OUT,
      READY_ENIGMA_7 => TURBO_enigma_6_READY_OUT,
      READY_ENIGMA_8 => TURBO_enigma_7_READY_OUT,
      READY_ENIGMA_9 => TURBO_enigma_8_READY_OUT,
      READY_OUT => diagonal_board_0_READY_OUT,
      RESET_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      RESULT_REGISTER_OUT(25 downto 0) => diagonal_board_0_RESULT_REGISTER_OUT(25 downto 0),
      TEST_REGISTER_IN(4 downto 0) => turing_bombe_control_0_DB_IN_INPUT_REGISTER_OUT(4 downto 0)
    );
indicator_drum_0: component turing_bombe_without_zynq_indicator_drum_0_0
     port map (
      CLK_IN => sim_clk_gen_0_clk,
      POS_INDICATOR_DRUM_1_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_1_OUT(4 downto 0),
      POS_INDICATOR_DRUM_2_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_2_OUT(4 downto 0),
      POS_INDICATOR_DRUM_3_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_3_OUT(4 downto 0),
      RESET_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      ROTATE_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT
    );
proc_sys_reset_0: component turing_bombe_without_zynq_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => turing_bombe_control_0_RESET_OUT,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => sim_clk_gen_0_clk
    );
turing_bombe_control_0: component turing_bombe_without_zynq_turing_bombe_control_0_0
     port map (
      ADDRESS_BRAM_A_IN(5 downto 0) => ADDRESS_BRAM_A_1(5 downto 0),
      CLK_BRAM_A_IN => sim_clk_gen_0_clk,
      CLK_IN => sim_clk_gen_0_clk,
      DATA_IN_BRAM_A(31 downto 0) => DATA_IN_BRAM_A_1(31 downto 0),
      DATA_OUT_BRAM_A(31 downto 0) => turing_bombe_control_0_DATA_OUT_BRAM_A(31 downto 0),
      DB_IN_ENIGMA_10_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_10_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_11_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_11_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_12_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_12_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_1_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_1_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_2_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_2_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_3_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_3_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_4_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_4_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_5_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_5_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_6_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_6_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_7_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_7_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_8_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_8_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON1_OUT(4 downto 0),
      DB_IN_ENIGMA_9_DBCON0_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON0_OUT(4 downto 0),
      DB_IN_ENIGMA_9_DBCON1_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON1_OUT(4 downto 0),
      DB_IN_INPUT_REGISTER_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_INPUT_REGISTER_OUT(4 downto 0),
      DB_IN_INPUT_VOLTAGE_OUT(4 downto 0) => turing_bombe_control_0_DB_IN_INPUT_VOLTAGE_OUT(4 downto 0),
      DB_OUT_ENIGMA_10_DB0(25 downto 0) => diagonal_board_0_ENIGMA_10_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_10_DB1(25 downto 0) => diagonal_board_0_ENIGMA_10_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_11_DB0(25 downto 0) => diagonal_board_0_ENIGMA_11_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_11_DB1(25 downto 0) => diagonal_board_0_ENIGMA_11_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_12_DB0(25 downto 0) => diagonal_board_0_ENIGMA_12_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_12_DB1(25 downto 0) => diagonal_board_0_ENIGMA_12_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_1_DB0(25 downto 0) => diagonal_board_0_ENIGMA_1_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_1_DB1(25 downto 0) => diagonal_board_0_ENIGMA_1_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_2_DB0(25 downto 0) => diagonal_board_0_ENIGMA_2_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_2_DB1(25 downto 0) => diagonal_board_0_ENIGMA_2_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_3_DB0(25 downto 0) => diagonal_board_0_ENIGMA_3_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_3_DB1(25 downto 0) => diagonal_board_0_ENIGMA_3_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_4_DB0(25 downto 0) => diagonal_board_0_ENIGMA_4_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_4_DB1(25 downto 0) => diagonal_board_0_ENIGMA_4_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_5_DB0(25 downto 0) => diagonal_board_0_ENIGMA_5_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_5_DB1(25 downto 0) => diagonal_board_0_ENIGMA_5_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_6_DB0(25 downto 0) => diagonal_board_0_ENIGMA_6_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_6_DB1(25 downto 0) => diagonal_board_0_ENIGMA_6_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_7_DB0(25 downto 0) => diagonal_board_0_ENIGMA_7_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_7_DB1(25 downto 0) => diagonal_board_0_ENIGMA_7_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_8_DB0(25 downto 0) => diagonal_board_0_ENIGMA_8_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_8_DB1(25 downto 0) => diagonal_board_0_ENIGMA_8_DB2_OUT(25 downto 0),
      DB_OUT_ENIGMA_9_DB0(25 downto 0) => diagonal_board_0_ENIGMA_9_DB1_OUT(25 downto 0),
      DB_OUT_ENIGMA_9_DB1(25 downto 0) => diagonal_board_0_ENIGMA_9_DB2_OUT(25 downto 0),
      DB_OUT_NO_CHANGES_IN => diagonal_board_0_NO_OUTPUT_CHANGE_OUT,
      DB_READY_IN => diagonal_board_0_READY_OUT,
      DB_RESULT_RESIGER_IN(25 downto 0) => diagonal_board_0_RESULT_REGISTER_OUT(25 downto 0),
      DRUM_IMPULS_OUT => turing_bombe_control_0_DRUM_IMPULS_OUT,
      ENABLE_BRAM_A_IN => ENABLE_BRAM_A_IN_1,
      ENIGMAS_DRUM_1_OUT(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0),
      ENIGMAS_DRUM_2_OUT(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0),
      ENIGMAS_DRUM_3_OUT(2 downto 0) => turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0),
      ENIGMAS_START_OUT => turing_bombe_control_0_ENIGMAS_START_OUT,
      ENIGMA_10_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_10_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_10_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_10_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_10_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_10_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_11_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_11_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_11_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_11_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_11_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_11_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_12_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_12_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_12_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_12_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_12_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_12_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_1_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_1_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_1_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_1_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_1_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_1_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_2_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_2_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_2_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_2_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_2_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_2_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_3_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_3_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_3_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_3_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_3_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_3_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_4_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_4_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_4_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_4_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_4_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_4_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_5_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_5_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_5_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_5_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_5_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_5_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_6_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_6_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_6_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_6_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_6_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_6_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_7_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_7_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_7_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_7_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_7_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_7_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_8_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_8_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_8_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_8_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_8_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_8_DRUMPOS_3_OUT(4 downto 0),
      ENIGMA_9_CHARACTERS_DB0_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB0_OUT(25 downto 0),
      ENIGMA_9_CHARACTERS_DB1_OUT(25 downto 0) => turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB1_OUT(25 downto 0),
      ENIGMA_9_DRUMPOS_1_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_1_OUT(4 downto 0),
      ENIGMA_9_DRUMPOS_2_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_2_OUT(4 downto 0),
      ENIGMA_9_DRUMPOS_3_OUT(4 downto 0) => turing_bombe_control_0_ENIGMA_9_DRUMPOS_3_OUT(4 downto 0),
      LED_FIRST_STOP_OUT => turing_bombe_control_0_LED_FIRST_STOP_OUT,
      LED_FOURTH_STOP_OUT => turing_bombe_control_0_LED_FOURTH_STOP_OUT,
      LED_SECOND_STOP_OUT => turing_bombe_control_0_LED_SECOND_STOP_OUT,
      LED_THIRD_STOP_OUT => turing_bombe_control_0_LED_THIRD_STOP_OUT,
      POS_1_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_1_OUT(4 downto 0),
      POS_2_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_2_OUT(4 downto 0),
      POS_3_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_3_OUT(4 downto 0),
      RESET_OUT => turing_bombe_control_0_RESET_OUT,
      RST_BRAM_A_IN => xlconstant_0_dout(0),
      WRITE_ENABLE_BRAM_IN(0) => WRITE_ENABLE_BRAM_A_1(0)
    );
xlconstant_0: component turing_bombe_without_zynq_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
