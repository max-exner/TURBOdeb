--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Tue Jun 18 11:27:21 2019
--Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target design_test.bd
--Design      : design_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_test is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_test : entity is "design_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_test : entity is "design_test.hwdef";
end design_test;

architecture STRUCTURE of design_test is
  component design_test_TURBO_enigma_0_0 is
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
  end component design_test_TURBO_enigma_0_0;
  signal CHARACTERS_IN_DB0_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal CHARACTERS_IN_DB1_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal CONFIG_DRUM_TYP_1_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_DRUM_TYP_2_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_DRUM_TYP_3_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_START_POS_DRUM_1_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CONFIG_START_POS_DRUM_2_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CONFIG_START_POS_DRUM_3_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal DRUM_IMPULS_IN_1 : STD_LOGIC;
  signal SOFT_RESET_N_IN_1 : STD_LOGIC;
  signal START_IN_1 : STD_LOGIC;
  signal TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal TURBO_enigma_0_READY_OUT : STD_LOGIC;
  signal UB_CLK_IN_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SOFT_RESET_N_IN : signal is "xilinx.com:signal:reset:1.0 RST.SOFT_RESET_N_IN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SOFT_RESET_N_IN : signal is "XIL_INTERFACENAME RST.SOFT_RESET_N_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of UB_CLK_IN : signal is "xilinx.com:signal:clock:1.0 CLK.UB_CLK_IN CLK";
  attribute X_INTERFACE_PARAMETER of UB_CLK_IN : signal is "XIL_INTERFACENAME CLK.UB_CLK_IN, ASSOCIATED_RESET SOFT_RESET_N_IN, CLK_DOMAIN design_test_UB_CLK_IN, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  CHARACTERS_IN_DB0_1(25 downto 0) <= CHARACTERS_IN_DB0(25 downto 0);
  CHARACTERS_IN_DB1_1(25 downto 0) <= CHARACTERS_IN_DB1(25 downto 0);
  CODED_CHARACTERS_OUT_DB0(25 downto 0) <= TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0(25 downto 0);
  CODED_CHARACTERS_OUT_DB1(25 downto 0) <= TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1(25 downto 0);
  CONFIG_DRUM_TYP_1_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_1_IN(2 downto 0);
  CONFIG_DRUM_TYP_2_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_2_IN(2 downto 0);
  CONFIG_DRUM_TYP_3_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_3_IN(2 downto 0);
  CONFIG_START_POS_DRUM_1_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_1_IN(4 downto 0);
  CONFIG_START_POS_DRUM_2_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_2_IN(4 downto 0);
  CONFIG_START_POS_DRUM_3_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_3_IN(4 downto 0);
  DRUM_IMPULS_IN_1 <= DRUM_IMPULS_IN;
  READY_OUT <= TURBO_enigma_0_READY_OUT;
  SOFT_RESET_N_IN_1 <= SOFT_RESET_N_IN;
  START_IN_1 <= START_IN;
  UB_CLK_IN_1 <= UB_CLK_IN;
TURBO_enigma_0: component design_test_TURBO_enigma_0_0
     port map (
      CHARACTERS_IN_DB0(25 downto 0) => CHARACTERS_IN_DB0_1(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => CHARACTERS_IN_DB1_1(25 downto 0),
      CODED_CHARACTERS_OUT_DB0(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0(25 downto 0),
      CODED_CHARACTERS_OUT_DB1(25 downto 0) => TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => CONFIG_DRUM_TYP_1_IN_1(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => CONFIG_DRUM_TYP_2_IN_1(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => CONFIG_DRUM_TYP_3_IN_1(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => CONFIG_START_POS_DRUM_1_IN_1(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => CONFIG_START_POS_DRUM_2_IN_1(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => CONFIG_START_POS_DRUM_3_IN_1(4 downto 0),
      DRUM_IMPULS_IN => DRUM_IMPULS_IN_1,
      READY_OUT => TURBO_enigma_0_READY_OUT,
      SOFT_RESET_N_IN => SOFT_RESET_N_IN_1,
      START_IN => START_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
end STRUCTURE;
