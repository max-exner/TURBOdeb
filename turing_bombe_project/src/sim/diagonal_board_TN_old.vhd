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

--------------
--  ENTITY  --
--------------
entity diagonal_board is
end diagonal_board;


--------------------
--  ARCHITECTURE  --
--------------------
architecture BEH of diagonal_board is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  component diagonal_board is
    Port ( 
           ACTIVE_OUT_ENIGMAS_IN    : in  STD_LOGIC_VECTOR (623 downto 0);
           CLK_IN                   : in  STD_LOGIC;
           START_IN                 : in  STD_LOGIC_VECTOR (12 downto 0);
           RESET_IN                 : in  STD_LOGIC;
           TEST_REGISTER_IN         : in  STD_LOGIC_VECTOR (4 downto 0);
           INPUT_VOLTAGE_IN         : in  STD_LOGIC_VECTOR (5 downto 0);
           ACTIVE_OUT_DB_OUT        : out STD_LOGIC_VECTOR (675 downto 0);
           READY_OUT                : out STD_LOGIC
         );
    end component diagonal_board;
    
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;    
 
  signal active_out_enigmas_in_tb   : STD_LOGIC_VECTOR (623 downto 0);   
  signal start_in_tb                : STD_LOGIC_VECTOR (12 downto 0);         
  signal reset_in_tb                : STD_LOGIC;                              
  signal test_register_in_tb        : STD_LOGIC_VECTOR (4 downto 0);          
  signal input_voltage_in_tb        : STD_LOGIC_VECTOR (5 downto 0);          
  signal active_out_db_out_tb       : STD_LOGIC_VECTOR (675 downto 0);        
  signal ready_out_tb               : STD_LOGIC;                             
                                                      
begin

  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
mini_alu_inst : diagonal_board  
  port map
  (
    ACTIVE_OUT_ENIGMAS_IN => active_out_enigmas_in_tb, 
    CLK_IN                => clk,
    START_IN              => start_in_tb,              
    RESET_IN              => reset_in_tb,             
    TEST_REGISTER_IN      => test_register_in_tb,      
    INPUT_VOLTAGE_IN      => input_voltage_in_tb,      
    ACTIVE_OUT_DB_OUT     => active_out_db_out_tb,     
    READY_OUT             => ready_out_tb            
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
    start_in_tb <= "000000000001";
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);   
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end BEH;
