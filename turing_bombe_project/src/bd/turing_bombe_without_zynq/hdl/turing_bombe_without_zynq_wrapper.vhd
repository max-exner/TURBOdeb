--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Oct 28 17:03:38 2019
--Host        : rabida running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target turing_bombe_without_zynq_wrapper.bd
--Design      : turing_bombe_without_zynq_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turing_bombe_without_zynq_wrapper is
  port (
    ADDRESS_BRAM_A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENABLE_BRAM_A : in STD_LOGIC;
    LED_FIRST_STOP_OUT : out STD_LOGIC;
    LED_FOURTH_STOP_OUT : out STD_LOGIC;
    LED_SECOND_STOP_OUT : out STD_LOGIC;
    LED_THIRD_STOP_OUT : out STD_LOGIC;
    WRITE_ENABLE_BRAM_A : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end turing_bombe_without_zynq_wrapper;

architecture STRUCTURE of turing_bombe_without_zynq_wrapper is
  component turing_bombe_without_zynq is
  port (
    CLK : in STD_LOGIC;
    LED_FIRST_STOP_OUT : out STD_LOGIC;
    LED_FOURTH_STOP_OUT : out STD_LOGIC;
    LED_SECOND_STOP_OUT : out STD_LOGIC;
    LED_THIRD_STOP_OUT : out STD_LOGIC;
    ENABLE_BRAM_A : in STD_LOGIC;
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WRITE_ENABLE_BRAM_A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRESS_BRAM_A : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component turing_bombe_without_zynq;
begin
turing_bombe_without_zynq_i: component turing_bombe_without_zynq
     port map (
      ADDRESS_BRAM_A(9 downto 0) => ADDRESS_BRAM_A(9 downto 0),
      CLK => CLK,
      DATA_IN_BRAM_A(31 downto 0) => DATA_IN_BRAM_A(31 downto 0),
      DATA_OUT_BRAM_A(31 downto 0) => DATA_OUT_BRAM_A(31 downto 0),
      ENABLE_BRAM_A => ENABLE_BRAM_A,
      LED_FIRST_STOP_OUT => LED_FIRST_STOP_OUT,
      LED_FOURTH_STOP_OUT => LED_FOURTH_STOP_OUT,
      LED_SECOND_STOP_OUT => LED_SECOND_STOP_OUT,
      LED_THIRD_STOP_OUT => LED_THIRD_STOP_OUT,
      WRITE_ENABLE_BRAM_A(3 downto 0) => WRITE_ENABLE_BRAM_A(3 downto 0)
    );
end STRUCTURE;
