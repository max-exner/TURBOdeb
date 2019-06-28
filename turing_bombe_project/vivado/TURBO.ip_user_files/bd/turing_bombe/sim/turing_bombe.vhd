--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Thu Jun 27 10:13:12 2019
--Host        : duplo running 64-bit Ubuntu 16.04.6 LTS
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
    CLK : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED_FIRST_STOP_OUT : out STD_LOGIC;
    LED_FOURTH_STOP_OUT : out STD_LOGIC;
    LED_SECOND_STOP_OUT : out STD_LOGIC;
    LED_THIRD_STOP_OUT : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of turing_bombe : entity is "turing_bombe,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=turing_bombe,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=19,numReposBlks=19,numNonXlnxBlks=12,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=12,bdsource=USER,da_axi4_cnt=1,da_clkrst_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of turing_bombe : entity is "turing_bombe.hwdef";
end turing_bombe;

architecture STRUCTURE of turing_bombe is
  component turing_bombe_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component turing_bombe_axi_bram_ctrl_0_0;
  component turing_bombe_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component turing_bombe_smartconnect_0_0;
  component turing_bombe_processing_system7_0_0 is
  port (
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component turing_bombe_processing_system7_0_0;
  component turing_bombe_proc_sys_reset_0_0 is
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
  end component turing_bombe_proc_sys_reset_0_0;
  component turing_bombe_TURBO_enigma_0_0 is
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
  end component turing_bombe_TURBO_enigma_0_0;
  component turing_bombe_TURBO_enigma_0_1 is
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
  end component turing_bombe_TURBO_enigma_0_1;
  component turing_bombe_TURBO_enigma_1_0 is
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
  end component turing_bombe_TURBO_enigma_1_0;
  component turing_bombe_TURBO_enigma_1_2 is
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
  end component turing_bombe_TURBO_enigma_1_2;
  component turing_bombe_TURBO_enigma_1_3 is
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
  end component turing_bombe_TURBO_enigma_1_3;
  component turing_bombe_TURBO_enigma_1_4 is
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
  end component turing_bombe_TURBO_enigma_1_4;
  component turing_bombe_TURBO_enigma_2_0 is
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
  end component turing_bombe_TURBO_enigma_2_0;
  component turing_bombe_TURBO_enigma_4_0 is
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
  end component turing_bombe_TURBO_enigma_4_0;
  component turing_bombe_TURBO_enigma_4_1 is
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
  end component turing_bombe_TURBO_enigma_4_1;
  component turing_bombe_TURBO_enigma_5_0 is
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
  end component turing_bombe_TURBO_enigma_5_0;
  component turing_bombe_TURBO_enigma_5_1 is
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
  end component turing_bombe_TURBO_enigma_5_1;
  component turing_bombe_TURBO_enigma_6_0 is
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
  end component turing_bombe_TURBO_enigma_6_0;
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
  end component turing_bombe_diagonal_board_0_0;
  component turing_bombe_turing_bombe_control_0_0 is
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
  end component turing_bombe_turing_bombe_control_0_0;
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
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
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
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M00_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN turing_bombe_CLK, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  LED_FIRST_STOP_OUT <= turing_bombe_control_0_LED_FIRST_STOP_OUT;
  LED_FOURTH_STOP_OUT <= turing_bombe_control_0_LED_FOURTH_STOP_OUT;
  LED_SECOND_STOP_OUT <= turing_bombe_control_0_LED_SECOND_STOP_OUT;
  LED_THIRD_STOP_OUT <= turing_bombe_control_0_LED_THIRD_STOP_OUT;
  sim_clk_gen_0_clk <= CLK;
TURBO_enigma_0: component turing_bombe_TURBO_enigma_0_0
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
TURBO_enigma_1: component turing_bombe_TURBO_enigma_0_1
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
TURBO_enigma_10: component turing_bombe_TURBO_enigma_4_0
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
TURBO_enigma_11: component turing_bombe_TURBO_enigma_5_1
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
TURBO_enigma_12: component turing_bombe_TURBO_enigma_6_0
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
TURBO_enigma_2: component turing_bombe_TURBO_enigma_1_0
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
TURBO_enigma_4: component turing_bombe_TURBO_enigma_1_2
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
TURBO_enigma_5: component turing_bombe_TURBO_enigma_1_3
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
TURBO_enigma_6: component turing_bombe_TURBO_enigma_5_0
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
TURBO_enigma_7: component turing_bombe_TURBO_enigma_1_4
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
TURBO_enigma_8: component turing_bombe_TURBO_enigma_2_0
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
TURBO_enigma_9: component turing_bombe_TURBO_enigma_4_1
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
axi_bram_ctrl_0: component turing_bombe_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => sim_clk_gen_0_clk,
      s_axi_araddr(12 downto 0) => smartconnect_0_M00_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => smartconnect_0_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => smartconnect_0_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => smartconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => smartconnect_0_M00_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => smartconnect_0_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => smartconnect_0_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => smartconnect_0_M00_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rlast => smartconnect_0_M00_AXI_RLAST,
      s_axi_rready => smartconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => smartconnect_0_M00_AXI_WLAST,
      s_axi_wready => smartconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M00_AXI_WVALID
    );
diagonal_board_0: component turing_bombe_diagonal_board_0_0
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
indicator_drum_0: component turing_bombe_indicator_drum_0_0
     port map (
      CLK_IN => sim_clk_gen_0_clk,
      POS_INDICATOR_DRUM_1_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_1_OUT(4 downto 0),
      POS_INDICATOR_DRUM_2_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_2_OUT(4 downto 0),
      POS_INDICATOR_DRUM_3_OUT(4 downto 0) => indicator_drum_0_POS_INDICATOR_DRUM_3_OUT(4 downto 0),
      RESET_IN => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      ROTATE_IMPULS_IN => turing_bombe_control_0_DRUM_IMPULS_OUT
    );
proc_sys_reset_0: component turing_bombe_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => turing_bombe_control_0_RESET_OUT,
      interconnect_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => turing_bombe_control_0_RESET_ENIGMAS_OUT(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => sim_clk_gen_0_clk
    );
processing_system7_0: component turing_bombe_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_RESET0_N => NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => sim_clk_gen_0_clk,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb
    );
smartconnect_0: component turing_bombe_smartconnect_0_0
     port map (
      M00_AXI_araddr(12 downto 0) => smartconnect_0_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => smartconnect_0_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M00_AXI_arqos_UNCONNECTED(3 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => smartconnect_0_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => smartconnect_0_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M00_AXI_awqos_UNCONNECTED(3 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => smartconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      aclk => sim_clk_gen_0_clk,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
turing_bombe_control_0: component turing_bombe_turing_bombe_control_0_0
     port map (
      ADDRESS_BRAM_A_IN(5 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(5 downto 0),
      CLK_BRAM_A_IN => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      CLK_IN => sim_clk_gen_0_clk,
      DATA_IN_BRAM_A(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      DATA_OUT_BRAM_A(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
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
      ENABLE_BRAM_A_IN => axi_bram_ctrl_0_BRAM_PORTA_EN,
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
      RST_BRAM_A_IN => axi_bram_ctrl_0_BRAM_PORTA_RST,
      WRITE_ENABLE_BRAM_IN(0) => axi_bram_ctrl_0_BRAM_PORTA_WE(0)
    );
end STRUCTURE;
