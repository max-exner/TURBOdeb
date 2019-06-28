--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : pseudo_lut_TB.vhd
-- Author      : Maximilian Exner
-- Description : Test Bench for the pseudo LUT (Project TURBOdeb)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-16 | - first stable version
-----------+--------------------------+------------+----------------------------

-----------------
--  LIBRARIES  --
-----------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--------------
--  ENTITY  --
--------------

entity pseudo_lut_TB is
--  Port ( );
end pseudo_lut_TB;

--------------------
--  ARCHITECTURE  --
--------------------

architecture Behavioral of pseudo_lut_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  
  
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
    constant CLK_PERIOD : time := 10 ns;
    signal clk          : std_logic;

------------
begin
------------
  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
  
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
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end Behavioral;
