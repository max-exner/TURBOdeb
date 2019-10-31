--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : diagonal_board_TB.vhd
-- Author      : Tobias Niggemeyer
-- Description : TURBOdeb
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-- 1.0     | Tobias Niggemeyer        | 23.05.2019 | - initial release
--         |                          |            |
-----------+--------------------------+------------+----------------------------


-----------------
--  LIBRARIES  --
-----------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.turingBombArrays.all;
--------------
--  ENTITY  --
--------------
entity diagonal_board_controller_TB is
end diagonal_board_controller_TB;

  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
architecture Behavioral of diagonal_board_controller_TB is

component diagonal_board_controller is
    Port ( 
           ACTIVE_OUT_ENIGMAS_IN    : in enigma_array;--in STD_LOGIC_VECTOR (623 downto 0);
           ENIGMAS_DB_CON_IN        : in enigma_db_con_array;
           CLK_IN                   : in STD_LOGIC;
           START_IN                 : in STD_LOGIC_VECTOR (12 downto 0);
           RESET_IN                 : in STD_LOGIC;
           TEST_REGISTER_IN         : in STD_LOGIC_VECTOR (4 downto 0);
           INPUT_VOLTAGE_IN         : in STD_LOGIC_VECTOR (4 downto 0);
           ACTIVE_OUT_DB_OUT        : out diagonal_board_array;--out STD_LOGIC_VECTOR (675 downto 0);
           CONFIGURED_OUT           : out STD_LOGIC;
           READY_OUT                : out STD_LOGIC
           );
end component diagonal_board_controller;

  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;  
  
  signal active_out_enigmas_in_tb   : enigma_array;           
  signal reset_in_tb                : STD_LOGIC; 
  signal start_in_tb                : STD_LOGIC_VECTOR (12 downto 0);
  signal test_register_in_tb        : STD_LOGIC_VECTOR (4 downto 0);
  signal input_voltage_in_tb        : STD_LOGIC_VECTOR (4 downto 0);                                               
  signal active_out_db_out_tb       : diagonal_board_array;
  signal ready_out_tb               : STD_LOGIC;   
  signal scaledInputVoltage_tb      : diagonal_board_array;
  signal scaledActiveOutEnigmas_tb  : diagonal_board_array;
  signal enigmas_db_con_in_tb       : enigma_db_con_array;

  
begin

  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
diagonal_board_controller_inst : diagonal_board_controller  
  port map
  (
    ACTIVE_OUT_ENIGMAS_IN   => active_out_enigmas_in_tb,
    ENIGMAS_DB_CON_IN       => enigmas_db_con_in_tb,
    CLK_IN                  => clk,
    START_IN                => start_in_tb,
    RESET_IN                => reset_in_tb,
    TEST_REGISTER_IN        => test_register_in_tb,
    INPUT_VOLTAGE_IN        => input_voltage_in_tb,
    ACTIVE_OUT_DB_OUT       => active_out_db_out_tb,
    READY_OUT               => ready_out_tb      
  );
  
  --------------------------------
  --  INPUT/OUTPUT ASSIGNMENTS  --
  --------------------------------


  -----------------------------
  --  CONCURRENT STATEMENTS  --
  -----------------------------

  -----------------
  --  PROCESSES  --
  -----------------
  clk_gen_p : process
   begin
     clk <= '0';
     wait for CLK_PERIOD / 2;
     clk <= '1';
     wait for CLK_PERIOD / 2;
   end process clk_gen_p;
   
   
  testbench_p : process  
  begin
                                      ---------------------------
                                  --        RESET          --
                                  ---------------------------
  --------------------------------------------------------------------------------------------------- 
  -- reset all signals 
  --------------------------------------------------------------------------------------------------- 
  
    reset_in_tb <= '1';
    wait until rising_edge(clk);
    reset_in_tb <= '0';
    wait for 5 ns;
    test_register_in_tb <= "00000";
    input_voltage_in_tb <= "00000"; 
    enigmas_db_con_in_tb <= (others => (others => '0'));
    active_out_enigmas_in_tb <= (others => (others => '0'));
    start_in_tb <= (others => '0');
    wait for 50 ns;
      
    assert(ready_out_tb = '1') report "Error: As descriped above this should be 1" severity FAILURE;
    
    
  
  end process testbench_p;
end Behavioral;
