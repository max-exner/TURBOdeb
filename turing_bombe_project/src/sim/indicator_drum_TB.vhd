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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;
use work.turingBombArrays.all;

--------------
--  ENTITY  --
--------------
entity indicator_drum_TB is
end indicator_drum_TB;
--------------------
--  ARCHITECTURE  --
--------------------
architecture BEH of indicator_drum_TB is
------------------------------
--  COMPONENT DECLARATIONS  --
------------------------------
component indicator_drum is
    Port    ( 
                ROTATE_IMPULS_IN            : in STD_LOGIC;
                RESET_IN                    : in STD_LOGIC;
                POS_INDICATOR_DRUM_1_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                POS_INDICATOR_DRUM_2_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                POS_INDICATOR_DRUM_3_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                CLK_IN                      : in STD_LOGIC
            );
end component indicator_drum;
---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;  
  
  signal rotate_impuls_in_tb        : STD_LOGIC;
  signal reset_in_tb                : STD_LOGIC; 
  signal position_out_tb            : indicator_drum_array;
  signal compare_position_tb        : indicator_drum_array;
begin

-------------------------------
--  COMPONENT INSTANTIAIONS  --
-------------------------------
indicator_drum_inst: indicator_drum
  port map
  ( 
      ROTATE_IMPULS_IN           => rotate_impuls_in_tb,
      RESET_IN                   => reset_in_tb,  
      POS_INDICATOR_DRUM_1_OUT   => position_out_tb(0),
      POS_INDICATOR_DRUM_2_OUT   => position_out_tb(1),
      POS_INDICATOR_DRUM_3_OUT   => position_out_tb(2),
      CLK_IN                     => clk            
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
 
    wait for 10 ns;
    reset_in_tb <= '0';
    wait until rising_edge(clk);
    reset_in_tb <= '1';
    rotate_impuls_in_tb <= '0';
    for i in 0 to 2 loop
        compare_position_tb(i) <= "11001";
    end loop;
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
 
    
    for i in 0 to 17575 loop
        rotate_impuls_in_tb <= '1';
        if(compare_position_tb(0) = "00000") then
            compare_position_tb(0) <= "11001";
            if(compare_position_tb(1) = "00000")then
                compare_position_tb(1) <= "11001";
                if(compare_position_tb(2) = "00000")then
                    compare_position_tb(2) <= "11001";     
                else
                    compare_position_tb(2) <= std_logic_vector(to_unsigned(to_integer(unsigned(compare_position_tb(2))-1),5));
                end if;
            else
                compare_position_tb(1) <= std_logic_vector(to_unsigned(to_integer(unsigned(compare_position_tb(1))-1),5));
            end if;
        else
            compare_position_tb(0) <= std_logic_vector(to_unsigned(to_integer(unsigned(compare_position_tb(0))-1),5));
        end if;
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        rotate_impuls_in_tb <= '0';
        wait for 20 ns;
        
        assert(position_out_tb = compare_position_tb) report "The vlaues calculated in the testbench and in the code should be equal"  severity FAILURE;
        
        
   end loop;
   
   assert(position_out_tb(0) = "11001") report "After 17575 turns the position should be the starting position"  severity FAILURE;
   assert(position_out_tb(1) = "11001") report "After 17575 turns the position should be the starting position"  severity FAILURE;
   assert(position_out_tb(2) = "11001") report "After 17575 turns the position should be the starting position"  severity FAILURE;

  
  
  
                                   ---------------------------
                                   --      Finishline       --
  --------------------------------------------------------------------------------------------------- 
  -- if it runs till this section, everything works fine
  ---------------------------------------------------------------------------------------------------       
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
end BEH;
