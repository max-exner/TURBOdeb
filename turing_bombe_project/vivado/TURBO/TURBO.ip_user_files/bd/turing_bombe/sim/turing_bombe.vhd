--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Wed Jun 12 13:11:14 2019
--Host        : Tobias running 64-bit Ubuntu 18.04.1 LTS
--Command     : generate_target turing_bombe.bd
--Design      : turing_bombe
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turing_bombe is
  port (
    ACTIVE_OUT_1_ENIGMA_1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_10 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_11 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_12 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_2 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_3 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_4 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_5 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_6 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_7 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_8 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_1_ENIGMA_9 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_10 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_11 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_12 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_2 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_3 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_4 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_5 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_6 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_7 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_8 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_2_ENIGMA_9 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB10 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB11 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB12 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB13 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB14 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB15 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB16 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB17 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB18 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB19 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB2 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB20 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB21 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB22 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB23 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB24 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB25 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB26 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB3 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB4 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB5 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB6 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB7 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB8 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB9 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ADDRESS_BRAM_A : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CHARACTERS_DB0_ENIGMA_1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_10 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_11 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_12 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_2 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_3 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_4 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_5 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_6 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_7 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_8 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB0_ENIGMA_9 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_10 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_11 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_12 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_2 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_3 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_4 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_5 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_6 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_7 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_8 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_DB1_ENIGMA_9 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CLK : in STD_LOGIC;
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRUMPOS_1_ENIGMA_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_10 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_11 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_12 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_4 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_5 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_6 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_7 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_8 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_1_ENIGMA_9 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_10 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_11 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_12 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_4 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_5 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_6 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_7 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_8 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_2_ENIGMA_9 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_10 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_11 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_12 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_4 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_5 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_6 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_7 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_8 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUMPOS_3_ENIGMA_9 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ENABLE_BRAM_A : in STD_LOGIC;
    ENIGMAS_DRUM_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ENIGMAS_DRUM_2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ENIGMAS_DRUM_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ENIGMAS_START : out STD_LOGIC;
    READY_ENIGMA_1 : in STD_LOGIC;
    READY_ENIGMA_10 : in STD_LOGIC;
    READY_ENIGMA_11 : in STD_LOGIC;
    READY_ENIGMA_12 : in STD_LOGIC;
    READY_ENIGMA_2 : in STD_LOGIC;
    READY_ENIGMA_3 : in STD_LOGIC;
    READY_ENIGMA_4 : in STD_LOGIC;
    READY_ENIGMA_5 : in STD_LOGIC;
    READY_ENIGMA_6 : in STD_LOGIC;
    READY_ENIGMA_7 : in STD_LOGIC;
    READY_ENIGMA_8 : in STD_LOGIC;
    READY_ENIGMA_9 : in STD_LOGIC;
    WRITE_ENABLE_BRAM_A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of turing_bombe : entity is "turing_bombe,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=turing_bombe,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of turing_bombe : entity is "turing_bombe.hwdef";
end turing_bombe;

architecture STRUCTURE of turing_bombe is
  component turing_bombe_indicator_drum_0_0 is
  port (
    ROTATE_IMPULS_IN : in STD_LOGIC;
    RESET_IN : in STD_LOGIC;
    POS_INDICATOR_DRUM_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_INDICATOR_DRUM_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    POS_INDICATOR_DRUM_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_IN : in STD_LOGIC
  );
  end component turing_bombe_indicator_drum_0_0;
  component turing_bombe_diagonal_board_0_0 is
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
    RESULT_REGISTER_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB2_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB3_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB4_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB5_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB6_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB7_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB8_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB9_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB10_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB11_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB12_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB13_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB14_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB15_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB16_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB17_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB18_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB19_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB20_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB21_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB22_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB23_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB24_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB25_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    ACTIVE_OUT_DB26_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component turing_bombe_diagonal_board_0_0;
  component turing_bombe_turing_bombe_control_0_0 is
  port (
    ENABLE_BRAM_A_IN : in STD_LOGIC;
    ADDRESS_BRAM_A_IN : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WRITE_ENABLE_BRAM_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    DB_RESULT_RESIGER_IN : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component turing_bombe_turing_bombe_control_0_0;
  signal ACTIVE_OUT_1_ENIGMA_10_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_11_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_12_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_1_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_2_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_3_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_4_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_5_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_6_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_7_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_8_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_1_ENIGMA_9_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_10_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_11_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_12_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_1_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_2_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_3_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_4_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_5_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_6_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_7_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_8_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ACTIVE_OUT_2_ENIGMA_9_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ADDRESS_BRAM_A_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DATA_IN_BRAM_A_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ENABLE_BRAM_A_1 : STD_LOGIC;
  signal READY_ENIGMA_10_1 : STD_LOGIC;
  signal READY_ENIGMA_11_1 : STD_LOGIC;
  signal READY_ENIGMA_12_1 : STD_LOGIC;
  signal READY_ENIGMA_1_TB_1 : STD_LOGIC;
  signal READY_ENIGMA_2_TB_1 : STD_LOGIC;
  signal READY_ENIGMA_3_TB_1 : STD_LOGIC;
  signal READY_ENIGMA_4_TB_1 : STD_LOGIC;
  signal READY_ENIGMA_5_1 : STD_LOGIC;
  signal READY_ENIGMA_6_1 : STD_LOGIC;
  signal READY_ENIGMA_7_1 : STD_LOGIC;
  signal READY_ENIGMA_8_1 : STD_LOGIC;
  signal READY_ENIGMA_9_1 : STD_LOGIC;
  signal RST_1 : STD_LOGIC;
  signal WRITE_ENABLE_BRAM_A_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB10_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB11_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB12_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB13_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB14_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB15_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB16_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB17_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB18_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB19_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB1_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB20_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB21_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB22_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB23_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB24_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB25_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB26_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB2_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB3_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB4_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB5_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB6_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB7_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB8_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal diagonal_board_0_ACTIVE_OUT_DB9_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
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
begin
  ACTIVE_OUT_1_ENIGMA_10_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_10(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_11_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_11(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_12_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_12(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_1_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_1(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_2_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_2(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_3_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_3(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_4_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_4(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_5_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_5(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_6_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_6(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_7_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_7(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_8_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_8(25 downto 0);
  ACTIVE_OUT_1_ENIGMA_9_1(25 downto 0) <= ACTIVE_OUT_1_ENIGMA_9(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_10_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_10(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_11_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_11(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_12_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_12(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_1_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_1(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_2_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_2(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_3_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_3(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_4_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_4(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_5_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_5(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_6_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_6(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_7_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_7(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_8_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_8(25 downto 0);
  ACTIVE_OUT_2_ENIGMA_9_1(25 downto 0) <= ACTIVE_OUT_2_ENIGMA_9(25 downto 0);
  ACTIVE_OUT_DB1(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB1_OUT(25 downto 0);
  ACTIVE_OUT_DB10(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB10_OUT(25 downto 0);
  ACTIVE_OUT_DB11(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB11_OUT(25 downto 0);
  ACTIVE_OUT_DB12(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB12_OUT(25 downto 0);
  ACTIVE_OUT_DB13(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB13_OUT(25 downto 0);
  ACTIVE_OUT_DB14(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB14_OUT(25 downto 0);
  ACTIVE_OUT_DB15(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB15_OUT(25 downto 0);
  ACTIVE_OUT_DB16(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB16_OUT(25 downto 0);
  ACTIVE_OUT_DB17(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB17_OUT(25 downto 0);
  ACTIVE_OUT_DB18(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB18_OUT(25 downto 0);
  ACTIVE_OUT_DB19(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB19_OUT(25 downto 0);
  ACTIVE_OUT_DB2(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB2_OUT(25 downto 0);
  ACTIVE_OUT_DB20(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB20_OUT(25 downto 0);
  ACTIVE_OUT_DB21(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB21_OUT(25 downto 0);
  ACTIVE_OUT_DB22(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB22_OUT(25 downto 0);
  ACTIVE_OUT_DB23(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB23_OUT(25 downto 0);
  ACTIVE_OUT_DB24(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB24_OUT(25 downto 0);
  ACTIVE_OUT_DB25(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB25_OUT(25 downto 0);
  ACTIVE_OUT_DB26(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB26_OUT(25 downto 0);
  ACTIVE_OUT_DB3(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB3_OUT(25 downto 0);
  ACTIVE_OUT_DB4(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB4_OUT(25 downto 0);
  ACTIVE_OUT_DB5(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB5_OUT(25 downto 0);
  ACTIVE_OUT_DB6(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB6_OUT(25 downto 0);
  ACTIVE_OUT_DB7(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB7_OUT(25 downto 0);
  ACTIVE_OUT_DB8(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB8_OUT(25 downto 0);
  ACTIVE_OUT_DB9(25 downto 0) <= diagonal_board_0_ACTIVE_OUT_DB9_OUT(25 downto 0);
  ADDRESS_BRAM_A_1(5 downto 0) <= ADDRESS_BRAM_A(5 downto 0);
  CHARACTERS_DB0_ENIGMA_1(25 downto 0) <= turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_10(25 downto 0) <= turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_11(25 downto 0) <= turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_12(25 downto 0) <= turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_2(25 downto 0) <= turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_3(25 downto 0) <= turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_4(25 downto 0) <= turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_5(25 downto 0) <= turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_6(25 downto 0) <= turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_7(25 downto 0) <= turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_8(25 downto 0) <= turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB0_ENIGMA_9(25 downto 0) <= turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB0_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_1(25 downto 0) <= turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_10(25 downto 0) <= turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_11(25 downto 0) <= turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_12(25 downto 0) <= turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_2(25 downto 0) <= turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_3(25 downto 0) <= turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_4(25 downto 0) <= turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_5(25 downto 0) <= turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_6(25 downto 0) <= turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_7(25 downto 0) <= turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_8(25 downto 0) <= turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB1_OUT(25 downto 0);
  CHARACTERS_DB1_ENIGMA_9(25 downto 0) <= turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB1_OUT(25 downto 0);
  DATA_IN_BRAM_A_1(31 downto 0) <= DATA_IN_BRAM_A(31 downto 0);
  DATA_OUT_BRAM(31 downto 0) <= turing_bombe_control_0_DATA_OUT_BRAM_A(31 downto 0);
  DRUMPOS_1_ENIGMA_1(4 downto 0) <= turing_bombe_control_0_ENIGMA_1_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_10(4 downto 0) <= turing_bombe_control_0_ENIGMA_10_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_11(4 downto 0) <= turing_bombe_control_0_ENIGMA_11_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_12(4 downto 0) <= turing_bombe_control_0_ENIGMA_12_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_2(4 downto 0) <= turing_bombe_control_0_ENIGMA_2_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_3(4 downto 0) <= turing_bombe_control_0_ENIGMA_3_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_4(4 downto 0) <= turing_bombe_control_0_ENIGMA_4_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_5(4 downto 0) <= turing_bombe_control_0_ENIGMA_5_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_6(4 downto 0) <= turing_bombe_control_0_ENIGMA_6_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_7(4 downto 0) <= turing_bombe_control_0_ENIGMA_7_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_8(4 downto 0) <= turing_bombe_control_0_ENIGMA_8_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_1_ENIGMA_9(4 downto 0) <= turing_bombe_control_0_ENIGMA_9_DRUMPOS_1_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_1(4 downto 0) <= turing_bombe_control_0_ENIGMA_1_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_10(4 downto 0) <= turing_bombe_control_0_ENIGMA_10_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_11(4 downto 0) <= turing_bombe_control_0_ENIGMA_11_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_12(4 downto 0) <= turing_bombe_control_0_ENIGMA_12_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_2(4 downto 0) <= turing_bombe_control_0_ENIGMA_2_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_3(4 downto 0) <= turing_bombe_control_0_ENIGMA_3_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_4(4 downto 0) <= turing_bombe_control_0_ENIGMA_4_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_5(4 downto 0) <= turing_bombe_control_0_ENIGMA_5_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_6(4 downto 0) <= turing_bombe_control_0_ENIGMA_6_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_7(4 downto 0) <= turing_bombe_control_0_ENIGMA_7_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_8(4 downto 0) <= turing_bombe_control_0_ENIGMA_8_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_2_ENIGMA_9(4 downto 0) <= turing_bombe_control_0_ENIGMA_9_DRUMPOS_2_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_1(4 downto 0) <= turing_bombe_control_0_ENIGMA_1_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_10(4 downto 0) <= turing_bombe_control_0_ENIGMA_10_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_11(4 downto 0) <= turing_bombe_control_0_ENIGMA_11_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_12(4 downto 0) <= turing_bombe_control_0_ENIGMA_12_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_2(4 downto 0) <= turing_bombe_control_0_ENIGMA_2_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_3(4 downto 0) <= turing_bombe_control_0_ENIGMA_3_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_4(4 downto 0) <= turing_bombe_control_0_ENIGMA_4_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_5(4 downto 0) <= turing_bombe_control_0_ENIGMA_5_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_6(4 downto 0) <= turing_bombe_control_0_ENIGMA_6_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_7(4 downto 0) <= turing_bombe_control_0_ENIGMA_7_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_8(4 downto 0) <= turing_bombe_control_0_ENIGMA_8_DRUMPOS_3_OUT(4 downto 0);
  DRUMPOS_3_ENIGMA_9(4 downto 0) <= turing_bombe_control_0_ENIGMA_9_DRUMPOS_3_OUT(4 downto 0);
  ENABLE_BRAM_A_1 <= ENABLE_BRAM_A;
  ENIGMAS_DRUM_1(2 downto 0) <= turing_bombe_control_0_ENIGMAS_DRUM_1_OUT(2 downto 0);
  ENIGMAS_DRUM_2(2 downto 0) <= turing_bombe_control_0_ENIGMAS_DRUM_2_OUT(2 downto 0);
  ENIGMAS_DRUM_3(2 downto 0) <= turing_bombe_control_0_ENIGMAS_DRUM_3_OUT(2 downto 0);
  ENIGMAS_START <= turing_bombe_control_0_ENIGMAS_START_OUT;
  READY_ENIGMA_10_1 <= READY_ENIGMA_10;
  READY_ENIGMA_11_1 <= READY_ENIGMA_11;
  READY_ENIGMA_12_1 <= READY_ENIGMA_12;
  READY_ENIGMA_1_TB_1 <= READY_ENIGMA_1;
  READY_ENIGMA_2_TB_1 <= READY_ENIGMA_2;
  READY_ENIGMA_3_TB_1 <= READY_ENIGMA_3;
  READY_ENIGMA_4_TB_1 <= READY_ENIGMA_4;
  READY_ENIGMA_5_1 <= READY_ENIGMA_5;
  READY_ENIGMA_6_1 <= READY_ENIGMA_6;
  READY_ENIGMA_7_1 <= READY_ENIGMA_7;
  READY_ENIGMA_8_1 <= READY_ENIGMA_8;
  READY_ENIGMA_9_1 <= READY_ENIGMA_9;
  WRITE_ENABLE_BRAM_A_1(0) <= WRITE_ENABLE_BRAM_A(0);
  sim_clk_gen_0_clk <= CLK;
diagonal_board_0: component turing_bombe_diagonal_board_0_0
     port map (
      ACTIVE_OUT_1_ENIGMA_10_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_10_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_11_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_11_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_12_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_12_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_1_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_1_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_2_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_2_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_3_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_3_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_4_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_4_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_5_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_5_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_6_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_6_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_7_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_7_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_8_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_8_1(25 downto 0),
      ACTIVE_OUT_1_ENIGMA_9_IN(25 downto 0) => ACTIVE_OUT_1_ENIGMA_9_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_10_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_10_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_11_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_11_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_12_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_12_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_1_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_1_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_2_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_2_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_3_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_3_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_4_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_4_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_5_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_5_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_6_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_6_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_7_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_7_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_8_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_8_1(25 downto 0),
      ACTIVE_OUT_2_ENIGMA_9_IN(25 downto 0) => ACTIVE_OUT_2_ENIGMA_9_1(25 downto 0),
      ACTIVE_OUT_DB10_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB10_OUT(25 downto 0),
      ACTIVE_OUT_DB11_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB11_OUT(25 downto 0),
      ACTIVE_OUT_DB12_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB12_OUT(25 downto 0),
      ACTIVE_OUT_DB13_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB13_OUT(25 downto 0),
      ACTIVE_OUT_DB14_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB14_OUT(25 downto 0),
      ACTIVE_OUT_DB15_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB15_OUT(25 downto 0),
      ACTIVE_OUT_DB16_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB16_OUT(25 downto 0),
      ACTIVE_OUT_DB17_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB17_OUT(25 downto 0),
      ACTIVE_OUT_DB18_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB18_OUT(25 downto 0),
      ACTIVE_OUT_DB19_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB19_OUT(25 downto 0),
      ACTIVE_OUT_DB1_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB1_OUT(25 downto 0),
      ACTIVE_OUT_DB20_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB20_OUT(25 downto 0),
      ACTIVE_OUT_DB21_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB21_OUT(25 downto 0),
      ACTIVE_OUT_DB22_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB22_OUT(25 downto 0),
      ACTIVE_OUT_DB23_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB23_OUT(25 downto 0),
      ACTIVE_OUT_DB24_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB24_OUT(25 downto 0),
      ACTIVE_OUT_DB25_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB25_OUT(25 downto 0),
      ACTIVE_OUT_DB26_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB26_OUT(25 downto 0),
      ACTIVE_OUT_DB2_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB2_OUT(25 downto 0),
      ACTIVE_OUT_DB3_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB3_OUT(25 downto 0),
      ACTIVE_OUT_DB4_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB4_OUT(25 downto 0),
      ACTIVE_OUT_DB5_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB5_OUT(25 downto 0),
      ACTIVE_OUT_DB6_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB6_OUT(25 downto 0),
      ACTIVE_OUT_DB7_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB7_OUT(25 downto 0),
      ACTIVE_OUT_DB8_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB8_OUT(25 downto 0),
      ACTIVE_OUT_DB9_OUT(25 downto 0) => diagonal_board_0_ACTIVE_OUT_DB9_OUT(25 downto 0),
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
      READY_ENIGMA_1 => READY_ENIGMA_1_TB_1,
      READY_ENIGMA_10 => READY_ENIGMA_10_1,
      READY_ENIGMA_11 => READY_ENIGMA_11_1,
      READY_ENIGMA_12 => READY_ENIGMA_12_1,
      READY_ENIGMA_2 => READY_ENIGMA_2_TB_1,
      READY_ENIGMA_3 => READY_ENIGMA_3_TB_1,
      READY_ENIGMA_4 => READY_ENIGMA_4_TB_1,
      READY_ENIGMA_5 => READY_ENIGMA_5_1,
      READY_ENIGMA_6 => READY_ENIGMA_6_1,
      READY_ENIGMA_7 => READY_ENIGMA_7_1,
      READY_ENIGMA_8 => READY_ENIGMA_8_1,
      READY_ENIGMA_9 => READY_ENIGMA_9_1,
      READY_OUT => diagonal_board_0_READY_OUT,
      RESET_IN => RST_1,
      RESULT_REGISTER_OUT(25 downto 0) => diagonal_board_0_RESULT_REGISTER_OUT(25 downto 0),
      TEST_REGISTER_IN(4 downto 0) => turing_bombe_control_0_DB_IN_INPUT_REGISTER_OUT(4 downto 0)
    );
indicator_drum_0: component turing_bombe_indicator_drum_0_0
     port map (
      CLK_IN => sim_clk_gen_0_clk,
      POS_INDICATOR_DRUM_1_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_1_OUT(4 downto 0),
      POS_INDICATOR_DRUM_2_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_2_OUT(4 downto 0),
      POS_INDICATOR_DRUM_3_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_3_OUT(4 downto 0),
      RESET_IN => RST_1,
      ROTATE_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT
    );
turing_bombe_control_0: component turing_bombe_turing_bombe_control_0_0
     port map (
      ADDRESS_BRAM_A_IN(5 downto 0) => ADDRESS_BRAM_A_1(5 downto 0),
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
      DB_READY_IN => diagonal_board_0_READY_OUT,
      DB_RESULT_RESIGER_IN(25 downto 0) => diagonal_board_0_RESULT_REGISTER_OUT(25 downto 0),
      DRUM_IMPULS_OUT => turing_bombe_control_0_DRUM_IMPULS_OUT,
      ENABLE_BRAM_A_IN => ENABLE_BRAM_A_1,
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
      POS_1_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_1_OUT(4 downto 0),
      POS_2_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_2_OUT(4 downto 0),
      POS_3_INDICATOR_DRUM_IN(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_3_OUT(4 downto 0),
      RESET_OUT => RST_1,
      WRITE_ENABLE_BRAM_IN(0) => WRITE_ENABLE_BRAM_A_1(0)
    );
end STRUCTURE;
