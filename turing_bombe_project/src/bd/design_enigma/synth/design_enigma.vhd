--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Fri Jun 14 16:04:37 2019
--Host        : marchena running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target design_enigma.bd
--Design      : design_enigma
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_enigma is
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
    SOFT_RESET_IN : in STD_LOGIC;
    START_IN : in STD_LOGIC;
    UB_CLK_IN : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_enigma : entity is "design_enigma,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_enigma,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_enigma : entity is "design_enigma.hwdef";
end design_enigma;

architecture STRUCTURE of design_enigma is
  component design_enigma_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_enigma_xlconstant_0_1;
  component design_enigma_pseudo_lut_0_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    DIRECTION_1 : in STD_LOGIC;
    DIRECTION_2 : in STD_LOGIC;
    DIRECTION_3 : in STD_LOGIC;
    CHARACTERS_FROM_DRUM_IN_1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_FROM_DRUM_IN_2 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_FROM_DRUM_IN_3 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_FROM_DRUM_IN_UKW : in STD_LOGIC_VECTOR ( 25 downto 0 );
    REQUEST_1 : in STD_LOGIC;
    REQUEST_2 : in STD_LOGIC;
    REQUEST_3 : in STD_LOGIC;
    REQUEST_UKW : in STD_LOGIC;
    DRUM_TYP_IN_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DRUM_TYP_IN_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DRUM_TYP_IN_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DRUM_TYP_IN_UKW : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PROJECTION : out STD_LOGIC_VECTOR ( 25 downto 0 );
    BUSY_OUT : out STD_LOGIC;
    READY_OUT_1 : out STD_LOGIC;
    READY_OUT_2 : out STD_LOGIC;
    READY_OUT_3 : out STD_LOGIC;
    READY_OUT_UKW : out STD_LOGIC
  );
  end component design_enigma_pseudo_lut_0_0;
  component design_enigma_drum_0_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    CONFIG_DRUM_TYP_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_DRUM_OVERFLOW : in STD_LOGIC;
    CHARACTERS_IN_FWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_BWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    REQUEST_IN_FWD : in STD_LOGIC;
    REQUEST_IN_BWD : in STD_LOGIC;
    DRUM_IMPULS_IN : in STD_LOGIC;
    LUT_READY_IN : in STD_LOGIC;
    LUT_BUSY_IN : in STD_LOGIC;
    CHARACTERS_FROM_LUT : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_TO_LUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    DRUM_TYP_TO_LUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DIRECTION_TO_LUT : out STD_LOGIC;
    REQUEST_TO_LUT : out STD_LOGIC;
    CHARACTERS_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT_FWD : out STD_LOGIC;
    READY_OUT_BWD : out STD_LOGIC;
    DRUM_IMPULS_OUT : out STD_LOGIC
  );
  end component design_enigma_drum_0_0;
  component design_enigma_drum_1_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    CONFIG_DRUM_TYP_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_DRUM_OVERFLOW : in STD_LOGIC;
    CHARACTERS_IN_FWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_BWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    REQUEST_IN_FWD : in STD_LOGIC;
    REQUEST_IN_BWD : in STD_LOGIC;
    DRUM_IMPULS_IN : in STD_LOGIC;
    LUT_READY_IN : in STD_LOGIC;
    LUT_BUSY_IN : in STD_LOGIC;
    CHARACTERS_FROM_LUT : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_TO_LUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    DRUM_TYP_TO_LUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DIRECTION_TO_LUT : out STD_LOGIC;
    REQUEST_TO_LUT : out STD_LOGIC;
    CHARACTERS_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT_FWD : out STD_LOGIC;
    READY_OUT_BWD : out STD_LOGIC;
    DRUM_IMPULS_OUT : out STD_LOGIC
  );
  end component design_enigma_drum_1_0;
  component design_enigma_drum_2_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    CONFIG_DRUM_TYP_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_DRUM_OVERFLOW : in STD_LOGIC;
    CHARACTERS_IN_FWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_BWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    REQUEST_IN_FWD : in STD_LOGIC;
    REQUEST_IN_BWD : in STD_LOGIC;
    DRUM_IMPULS_IN : in STD_LOGIC;
    LUT_READY_IN : in STD_LOGIC;
    LUT_BUSY_IN : in STD_LOGIC;
    CHARACTERS_FROM_LUT : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_TO_LUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    DRUM_TYP_TO_LUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DIRECTION_TO_LUT : out STD_LOGIC;
    REQUEST_TO_LUT : out STD_LOGIC;
    CHARACTERS_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT_FWD : out STD_LOGIC;
    READY_OUT_BWD : out STD_LOGIC;
    DRUM_IMPULS_OUT : out STD_LOGIC
  );
  end component design_enigma_drum_2_0;
  component design_enigma_drum_ukw_0_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    CHARACTERS_IN_FWD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    REQUEST_IN_FWD : in STD_LOGIC;
    LUT_READY_IN : in STD_LOGIC;
    LUT_BUSY_IN : in STD_LOGIC;
    CHARACTERS_FROM_LUT : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_TO_LUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    DRUM_TYP_TO_LUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    REQUEST_TO_LUT : out STD_LOGIC;
    CHARACTERS_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT_BWD : out STD_LOGIC
  );
  end component design_enigma_drum_ukw_0_0;
  component design_enigma_enigma_control_0_0 is
  port (
    UB_CLK_IN : in STD_LOGIC;
    SOFT_RESET_N_IN : in STD_LOGIC;
    CONFIG_START_POS_DRUM_1_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_3_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_DRUM_TYP_1_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_2_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_3_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CHARACTERS_IN_DB0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_DB1 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DRUM_IMPULS_IN : in STD_LOGIC;
    START_IN : in STD_LOGIC;
    CHARACTERS_FROM_DRUM_IN : in STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_FROM_DRUM_IN : in STD_LOGIC;
    CHARACTERS_TO_FIRST_DRUM_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 );
    START_TO_FIRST_DRUM_OUT : out STD_LOGIC;
    DRUM_IMPULS_OUT : out STD_LOGIC;
    CODED_CHARECTERS_OUT_DB0 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARECTERS_OUT_DB1 : out STD_LOGIC_VECTOR ( 25 downto 0 );
    READY_OUT : out STD_LOGIC;
    CONFIG_START_POS_DRUM_1_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_3_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_DRUM_TYP_1_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_2_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_3_OUT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_OVERFLOW_2_OUT : out STD_LOGIC;
    CONFIG_DRUM_OVERFLOW_3_OUT : out STD_LOGIC
  );
  end component design_enigma_enigma_control_0_0;
  signal CHARACTERS_IN_DB0_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal CHARACTERS_IN_DB1_1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal CONFIG_DRUM_TYP_1_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_DRUM_TYP_2_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_DRUM_TYP_3_IN_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CONFIG_START_POS_DRUM_1_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CONFIG_START_POS_DRUM_2_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CONFIG_START_POS_DRUM_3_IN_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal DRUM_IMPULS_IN_1 : STD_LOGIC;
  signal SOFT_RESET_IN_1 : STD_LOGIC;
  signal START_IN_1 : STD_LOGIC;
  signal UB_CLK_IN_1 : STD_LOGIC;
  signal drum_0_CHARACTERS_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_0_CHARACTERS_TO_LUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_0_DIRECTION_TO_LUT : STD_LOGIC;
  signal drum_0_DRUM_TYP_TO_LUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal drum_0_READY_OUT_BWD : STD_LOGIC;
  signal drum_0_READY_OUT_FWD : STD_LOGIC;
  signal drum_0_REQUEST_TO_LUT : STD_LOGIC;
  signal drum_1_CHARACTERS_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_1_CHARACTERS_TO_LUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_1_DIRECTION_TO_LUT : STD_LOGIC;
  signal drum_1_DRUM_IMPULS_OUT : STD_LOGIC;
  signal drum_1_DRUM_TYP_TO_LUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal drum_1_READY_OUT_BWD : STD_LOGIC;
  signal drum_1_READY_OUT_FWD : STD_LOGIC;
  signal drum_1_REQUEST_TO_LUT : STD_LOGIC;
  signal drum_2_CHARACTERS_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_2_CHARACTERS_TO_LUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_2_DIRECTION_TO_LUT : STD_LOGIC;
  signal drum_2_DRUM_IMPULS_OUT : STD_LOGIC;
  signal drum_2_DRUM_TYP_TO_LUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal drum_2_READY_OUT_BWD : STD_LOGIC;
  signal drum_2_READY_OUT_FWD : STD_LOGIC;
  signal drum_2_REQUEST_TO_LUT : STD_LOGIC;
  signal drum_ukw_0_CHARACTERS_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_ukw_0_CHARACTERS_TO_LUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal drum_ukw_0_DRUM_TYP_TO_LUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal drum_ukw_0_READY_OUT_BWD : STD_LOGIC;
  signal drum_ukw_0_REQUEST_TO_LUT : STD_LOGIC;
  signal enigma_control_0_CHARACTERS_TO_FIRST_DRUM_OUT : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal enigma_control_0_CONFIG_DRUM_OVERFLOW_2_OUT : STD_LOGIC;
  signal enigma_control_0_CONFIG_DRUM_OVERFLOW_3_OUT : STD_LOGIC;
  signal enigma_control_0_CONFIG_DRUM_TYP_1_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal enigma_control_0_CONFIG_DRUM_TYP_2_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal enigma_control_0_CONFIG_DRUM_TYP_3_OUT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal enigma_control_0_CONFIG_START_POS_DRUM_1_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal enigma_control_0_CONFIG_START_POS_DRUM_2_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal enigma_control_0_CONFIG_START_POS_DRUM_3_OUT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal enigma_control_0_DRUM_IMPULS_OUT : STD_LOGIC;
  signal enigma_control_0_START_TO_FIRST_DRUM_OUT : STD_LOGIC;
  signal enigma_control_CODED_CHARECTERS_OUT_DB0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal enigma_control_CODED_CHARECTERS_OUT_DB1 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal enigma_control_READY_OUT : STD_LOGIC;
  signal pseudo_lut_0_BUSY_OUT : STD_LOGIC;
  signal pseudo_lut_0_PROJECTION : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal pseudo_lut_0_READY_OUT_1 : STD_LOGIC;
  signal pseudo_lut_0_READY_OUT_2 : STD_LOGIC;
  signal pseudo_lut_0_READY_OUT_3 : STD_LOGIC;
  signal pseudo_lut_0_READY_OUT_UKW : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_drum_1_DRUM_IMPULS_OUT_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DRUM_IMPULS_IN : signal is "xilinx.com:signal:data:1.0 DATA.DRUM_IMPULS_IN DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of DRUM_IMPULS_IN : signal is "XIL_INTERFACENAME DATA.DRUM_IMPULS_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of READY_OUT : signal is "xilinx.com:signal:data:1.0 DATA.READY_OUT DATA";
  attribute X_INTERFACE_PARAMETER of READY_OUT : signal is "XIL_INTERFACENAME DATA.READY_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SOFT_RESET_IN : signal is "xilinx.com:signal:reset:1.0 RST.SOFT_RESET_IN RST";
  attribute X_INTERFACE_PARAMETER of SOFT_RESET_IN : signal is "XIL_INTERFACENAME RST.SOFT_RESET_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of START_IN : signal is "xilinx.com:signal:data:1.0 DATA.START_IN DATA";
  attribute X_INTERFACE_PARAMETER of START_IN : signal is "XIL_INTERFACENAME DATA.START_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of UB_CLK_IN : signal is "xilinx.com:signal:clock:1.0 CLK.UB_CLK_IN CLK";
  attribute X_INTERFACE_PARAMETER of UB_CLK_IN : signal is "XIL_INTERFACENAME CLK.UB_CLK_IN, ASSOCIATED_RESET SOFT_RESET_IN, CLK_DOMAIN design_enigma_UB_CLK_IN, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of CHARACTERS_IN_DB0 : signal is "xilinx.com:signal:data:1.0 DATA.CHARACTERS_IN_DB0 DATA";
  attribute X_INTERFACE_PARAMETER of CHARACTERS_IN_DB0 : signal is "XIL_INTERFACENAME DATA.CHARACTERS_IN_DB0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CHARACTERS_IN_DB1 : signal is "xilinx.com:signal:data:1.0 DATA.CHARACTERS_IN_DB1 DATA";
  attribute X_INTERFACE_PARAMETER of CHARACTERS_IN_DB1 : signal is "XIL_INTERFACENAME DATA.CHARACTERS_IN_DB1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CODED_CHARACTERS_OUT_DB0 : signal is "xilinx.com:signal:data:1.0 DATA.CODED_CHARACTERS_OUT_DB0 DATA";
  attribute X_INTERFACE_PARAMETER of CODED_CHARACTERS_OUT_DB0 : signal is "XIL_INTERFACENAME DATA.CODED_CHARACTERS_OUT_DB0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CODED_CHARACTERS_OUT_DB1 : signal is "xilinx.com:signal:data:1.0 DATA.CODED_CHARACTERS_OUT_DB1 DATA";
  attribute X_INTERFACE_PARAMETER of CODED_CHARACTERS_OUT_DB1 : signal is "XIL_INTERFACENAME DATA.CODED_CHARACTERS_OUT_DB1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_DRUM_TYP_1_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_DRUM_TYP_1_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_DRUM_TYP_1_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_DRUM_TYP_1_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_DRUM_TYP_2_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_DRUM_TYP_2_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_DRUM_TYP_2_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_DRUM_TYP_2_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_DRUM_TYP_3_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_DRUM_TYP_3_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_DRUM_TYP_3_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_DRUM_TYP_3_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_START_POS_DRUM_1_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_START_POS_DRUM_1_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_START_POS_DRUM_1_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_START_POS_DRUM_1_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_START_POS_DRUM_2_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_START_POS_DRUM_2_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_START_POS_DRUM_2_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_START_POS_DRUM_2_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of CONFIG_START_POS_DRUM_3_IN : signal is "xilinx.com:signal:data:1.0 DATA.CONFIG_START_POS_DRUM_3_IN DATA";
  attribute X_INTERFACE_PARAMETER of CONFIG_START_POS_DRUM_3_IN : signal is "XIL_INTERFACENAME DATA.CONFIG_START_POS_DRUM_3_IN, LAYERED_METADATA undef";
begin
  CHARACTERS_IN_DB0_1(25 downto 0) <= CHARACTERS_IN_DB0(25 downto 0);
  CHARACTERS_IN_DB1_1(25 downto 0) <= CHARACTERS_IN_DB1(25 downto 0);
  CODED_CHARACTERS_OUT_DB0(25 downto 0) <= enigma_control_CODED_CHARECTERS_OUT_DB0(25 downto 0);
  CODED_CHARACTERS_OUT_DB1(25 downto 0) <= enigma_control_CODED_CHARECTERS_OUT_DB1(25 downto 0);
  CONFIG_DRUM_TYP_1_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_1_IN(2 downto 0);
  CONFIG_DRUM_TYP_2_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_2_IN(2 downto 0);
  CONFIG_DRUM_TYP_3_IN_1(2 downto 0) <= CONFIG_DRUM_TYP_3_IN(2 downto 0);
  CONFIG_START_POS_DRUM_1_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_1_IN(4 downto 0);
  CONFIG_START_POS_DRUM_2_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_2_IN(4 downto 0);
  CONFIG_START_POS_DRUM_3_IN_1(4 downto 0) <= CONFIG_START_POS_DRUM_3_IN(4 downto 0);
  DRUM_IMPULS_IN_1 <= DRUM_IMPULS_IN;
  READY_OUT <= enigma_control_READY_OUT;
  SOFT_RESET_IN_1 <= SOFT_RESET_IN;
  START_IN_1 <= START_IN;
  UB_CLK_IN_1 <= UB_CLK_IN;
drum_1: component design_enigma_drum_0_0
     port map (
      CHARACTERS_FROM_LUT(25 downto 0) => pseudo_lut_0_PROJECTION(25 downto 0),
      CHARACTERS_IN_BWD(25 downto 0) => drum_1_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_IN_FWD(25 downto 0) => enigma_control_0_CHARACTERS_TO_FIRST_DRUM_OUT(25 downto 0),
      CHARACTERS_OUT(25 downto 0) => drum_0_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_TO_LUT(25 downto 0) => drum_0_CHARACTERS_TO_LUT(25 downto 0),
      CONFIG_DRUM_OVERFLOW => xlconstant_0_dout(0),
      CONFIG_DRUM_TYP_IN(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_1_OUT(2 downto 0),
      CONFIG_START_POS(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_1_OUT(4 downto 0),
      DIRECTION_TO_LUT => drum_0_DIRECTION_TO_LUT,
      DRUM_IMPULS_IN => drum_1_DRUM_IMPULS_OUT,
      DRUM_IMPULS_OUT => NLW_drum_1_DRUM_IMPULS_OUT_UNCONNECTED,
      DRUM_TYP_TO_LUT(2 downto 0) => drum_0_DRUM_TYP_TO_LUT(2 downto 0),
      LUT_BUSY_IN => pseudo_lut_0_BUSY_OUT,
      LUT_READY_IN => pseudo_lut_0_READY_OUT_1,
      READY_OUT_BWD => drum_0_READY_OUT_BWD,
      READY_OUT_FWD => drum_0_READY_OUT_FWD,
      REQUEST_IN_BWD => drum_1_READY_OUT_BWD,
      REQUEST_IN_FWD => enigma_control_0_START_TO_FIRST_DRUM_OUT,
      REQUEST_TO_LUT => drum_0_REQUEST_TO_LUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
drum_2: component design_enigma_drum_1_0
     port map (
      CHARACTERS_FROM_LUT(25 downto 0) => pseudo_lut_0_PROJECTION(25 downto 0),
      CHARACTERS_IN_BWD(25 downto 0) => drum_2_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_IN_FWD(25 downto 0) => drum_0_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_OUT(25 downto 0) => drum_1_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_TO_LUT(25 downto 0) => drum_1_CHARACTERS_TO_LUT(25 downto 0),
      CONFIG_DRUM_OVERFLOW => enigma_control_0_CONFIG_DRUM_OVERFLOW_2_OUT,
      CONFIG_DRUM_TYP_IN(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_2_OUT(2 downto 0),
      CONFIG_START_POS(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_2_OUT(4 downto 0),
      DIRECTION_TO_LUT => drum_1_DIRECTION_TO_LUT,
      DRUM_IMPULS_IN => drum_2_DRUM_IMPULS_OUT,
      DRUM_IMPULS_OUT => drum_1_DRUM_IMPULS_OUT,
      DRUM_TYP_TO_LUT(2 downto 0) => drum_1_DRUM_TYP_TO_LUT(2 downto 0),
      LUT_BUSY_IN => pseudo_lut_0_BUSY_OUT,
      LUT_READY_IN => pseudo_lut_0_READY_OUT_2,
      READY_OUT_BWD => drum_1_READY_OUT_BWD,
      READY_OUT_FWD => drum_1_READY_OUT_FWD,
      REQUEST_IN_BWD => drum_2_READY_OUT_BWD,
      REQUEST_IN_FWD => drum_0_READY_OUT_FWD,
      REQUEST_TO_LUT => drum_1_REQUEST_TO_LUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
drum_3: component design_enigma_drum_2_0
     port map (
      CHARACTERS_FROM_LUT(25 downto 0) => pseudo_lut_0_PROJECTION(25 downto 0),
      CHARACTERS_IN_BWD(25 downto 0) => drum_ukw_0_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_IN_FWD(25 downto 0) => drum_1_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_OUT(25 downto 0) => drum_2_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_TO_LUT(25 downto 0) => drum_2_CHARACTERS_TO_LUT(25 downto 0),
      CONFIG_DRUM_OVERFLOW => enigma_control_0_CONFIG_DRUM_OVERFLOW_3_OUT,
      CONFIG_DRUM_TYP_IN(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_3_OUT(2 downto 0),
      CONFIG_START_POS(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_3_OUT(4 downto 0),
      DIRECTION_TO_LUT => drum_2_DIRECTION_TO_LUT,
      DRUM_IMPULS_IN => enigma_control_0_DRUM_IMPULS_OUT,
      DRUM_IMPULS_OUT => drum_2_DRUM_IMPULS_OUT,
      DRUM_TYP_TO_LUT(2 downto 0) => drum_2_DRUM_TYP_TO_LUT(2 downto 0),
      LUT_BUSY_IN => pseudo_lut_0_BUSY_OUT,
      LUT_READY_IN => pseudo_lut_0_READY_OUT_3,
      READY_OUT_BWD => drum_2_READY_OUT_BWD,
      READY_OUT_FWD => drum_2_READY_OUT_FWD,
      REQUEST_IN_BWD => drum_ukw_0_READY_OUT_BWD,
      REQUEST_IN_FWD => drum_1_READY_OUT_FWD,
      REQUEST_TO_LUT => drum_2_REQUEST_TO_LUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
drum_ukw_0: component design_enigma_drum_ukw_0_0
     port map (
      CHARACTERS_FROM_LUT(25 downto 0) => pseudo_lut_0_PROJECTION(25 downto 0),
      CHARACTERS_IN_FWD(25 downto 0) => drum_2_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_OUT(25 downto 0) => drum_ukw_0_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_TO_LUT(25 downto 0) => drum_ukw_0_CHARACTERS_TO_LUT(25 downto 0),
      DRUM_TYP_TO_LUT(2 downto 0) => drum_ukw_0_DRUM_TYP_TO_LUT(2 downto 0),
      LUT_BUSY_IN => pseudo_lut_0_BUSY_OUT,
      LUT_READY_IN => pseudo_lut_0_READY_OUT_UKW,
      READY_OUT_BWD => drum_ukw_0_READY_OUT_BWD,
      REQUEST_IN_FWD => drum_2_READY_OUT_FWD,
      REQUEST_TO_LUT => drum_ukw_0_REQUEST_TO_LUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
enigma_control: component design_enigma_enigma_control_0_0
     port map (
      CHARACTERS_FROM_DRUM_IN(25 downto 0) => drum_0_CHARACTERS_OUT(25 downto 0),
      CHARACTERS_IN_DB0(25 downto 0) => CHARACTERS_IN_DB0_1(25 downto 0),
      CHARACTERS_IN_DB1(25 downto 0) => CHARACTERS_IN_DB1_1(25 downto 0),
      CHARACTERS_TO_FIRST_DRUM_OUT(25 downto 0) => enigma_control_0_CHARACTERS_TO_FIRST_DRUM_OUT(25 downto 0),
      CODED_CHARECTERS_OUT_DB0(25 downto 0) => enigma_control_CODED_CHARECTERS_OUT_DB0(25 downto 0),
      CODED_CHARECTERS_OUT_DB1(25 downto 0) => enigma_control_CODED_CHARECTERS_OUT_DB1(25 downto 0),
      CONFIG_DRUM_OVERFLOW_2_OUT => enigma_control_0_CONFIG_DRUM_OVERFLOW_2_OUT,
      CONFIG_DRUM_OVERFLOW_3_OUT => enigma_control_0_CONFIG_DRUM_OVERFLOW_3_OUT,
      CONFIG_DRUM_TYP_1_IN(2 downto 0) => CONFIG_DRUM_TYP_1_IN_1(2 downto 0),
      CONFIG_DRUM_TYP_1_OUT(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_1_OUT(2 downto 0),
      CONFIG_DRUM_TYP_2_IN(2 downto 0) => CONFIG_DRUM_TYP_2_IN_1(2 downto 0),
      CONFIG_DRUM_TYP_2_OUT(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_2_OUT(2 downto 0),
      CONFIG_DRUM_TYP_3_IN(2 downto 0) => CONFIG_DRUM_TYP_3_IN_1(2 downto 0),
      CONFIG_DRUM_TYP_3_OUT(2 downto 0) => enigma_control_0_CONFIG_DRUM_TYP_3_OUT(2 downto 0),
      CONFIG_START_POS_DRUM_1_IN(4 downto 0) => CONFIG_START_POS_DRUM_1_IN_1(4 downto 0),
      CONFIG_START_POS_DRUM_1_OUT(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_1_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_2_IN(4 downto 0) => CONFIG_START_POS_DRUM_2_IN_1(4 downto 0),
      CONFIG_START_POS_DRUM_2_OUT(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_2_OUT(4 downto 0),
      CONFIG_START_POS_DRUM_3_IN(4 downto 0) => CONFIG_START_POS_DRUM_3_IN_1(4 downto 0),
      CONFIG_START_POS_DRUM_3_OUT(4 downto 0) => enigma_control_0_CONFIG_START_POS_DRUM_3_OUT(4 downto 0),
      DRUM_IMPULS_IN => DRUM_IMPULS_IN_1,
      DRUM_IMPULS_OUT => enigma_control_0_DRUM_IMPULS_OUT,
      READY_FROM_DRUM_IN => drum_0_READY_OUT_BWD,
      READY_OUT => enigma_control_READY_OUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      START_IN => START_IN_1,
      START_TO_FIRST_DRUM_OUT => enigma_control_0_START_TO_FIRST_DRUM_OUT,
      UB_CLK_IN => UB_CLK_IN_1
    );
pseudo_lut: component design_enigma_pseudo_lut_0_0
     port map (
      BUSY_OUT => pseudo_lut_0_BUSY_OUT,
      CHARACTERS_FROM_DRUM_IN_1(25 downto 0) => drum_0_CHARACTERS_TO_LUT(25 downto 0),
      CHARACTERS_FROM_DRUM_IN_2(25 downto 0) => drum_1_CHARACTERS_TO_LUT(25 downto 0),
      CHARACTERS_FROM_DRUM_IN_3(25 downto 0) => drum_2_CHARACTERS_TO_LUT(25 downto 0),
      CHARACTERS_FROM_DRUM_IN_UKW(25 downto 0) => drum_ukw_0_CHARACTERS_TO_LUT(25 downto 0),
      DIRECTION_1 => drum_0_DIRECTION_TO_LUT,
      DIRECTION_2 => drum_1_DIRECTION_TO_LUT,
      DIRECTION_3 => drum_2_DIRECTION_TO_LUT,
      DRUM_TYP_IN_1(2 downto 0) => drum_0_DRUM_TYP_TO_LUT(2 downto 0),
      DRUM_TYP_IN_2(2 downto 0) => drum_1_DRUM_TYP_TO_LUT(2 downto 0),
      DRUM_TYP_IN_3(2 downto 0) => drum_2_DRUM_TYP_TO_LUT(2 downto 0),
      DRUM_TYP_IN_UKW(2 downto 0) => drum_ukw_0_DRUM_TYP_TO_LUT(2 downto 0),
      PROJECTION(25 downto 0) => pseudo_lut_0_PROJECTION(25 downto 0),
      READY_OUT_1 => pseudo_lut_0_READY_OUT_1,
      READY_OUT_2 => pseudo_lut_0_READY_OUT_2,
      READY_OUT_3 => pseudo_lut_0_READY_OUT_3,
      READY_OUT_UKW => pseudo_lut_0_READY_OUT_UKW,
      REQUEST_1 => drum_0_REQUEST_TO_LUT,
      REQUEST_2 => drum_1_REQUEST_TO_LUT,
      REQUEST_3 => drum_2_REQUEST_TO_LUT,
      REQUEST_UKW => drum_ukw_0_REQUEST_TO_LUT,
      SOFT_RESET_N_IN => SOFT_RESET_IN_1,
      UB_CLK_IN => UB_CLK_IN_1
    );
xlconstant_0: component design_enigma_xlconstant_0_1
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
