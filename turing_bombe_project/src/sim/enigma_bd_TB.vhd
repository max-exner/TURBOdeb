--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : pseudo_lut_TB.vhd
-- Author      : Maximilian Exner
-- Description : Test Bench for the block design that implements the Turing Bombe Enigma (Project TURBOdeb)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-06-05 | - first stable version
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

entity enigma_bd_TB is
--  Port ( );
end enigma_bd_TB;

--------------------
--  ARCHITECTURE  --
--------------------

architecture RTL of  enigma_bd_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  component TURBO_enigma_bd_wrapper is
  port (
    CHARACTERS_IN_DB0           :   in STD_LOGIC_VECTOR ( 25 downto 0 );
    CHARACTERS_IN_DB1           :   in STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARACTERS_OUT_DB0    :   out STD_LOGIC_VECTOR ( 25 downto 0 );
    CODED_CHARACTERS_OUT_DB1    :   out STD_LOGIC_VECTOR ( 25 downto 0 );
    CONFIG_DRUM_TYP_1_IN        :   in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_2_IN        :   in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_DRUM_TYP_3_IN        :   in STD_LOGIC_VECTOR ( 2 downto 0 );
    CONFIG_START_POS_DRUM_1_IN  :   in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_2_IN  :   in STD_LOGIC_VECTOR ( 4 downto 0 );
    CONFIG_START_POS_DRUM_3_IN  :   in STD_LOGIC_VECTOR ( 4 downto 0 );
    DRUM_IMPULS_IN              :   in STD_LOGIC;
    READY_OUT                   :   out STD_LOGIC;
    SOFT_RESET_N_IN               :   in STD_LOGIC;
    START_IN                    :   in STD_LOGIC;
    UB_CLK_IN                   :   in STD_LOGIC
  );
  end component TURBO_enigma_bd_wrapper;
  
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
    constant CLK_PERIOD : time := 10 ns;
    signal clk          : std_logic;
    
    --inputs
        --config inputs
    signal config_drum_typ_1_in         :   unsigned(2 downto 0);
    signal config_drum_typ_2_in         :   unsigned(2 downto 0);
    signal config_drum_typ_3_in         :   unsigned(2 downto 0);
    signal config_start_pos_drum_1_in   :   unsigned(4 downto 0);
    signal config_start_pos_drum_2_in   :   unsigned(4 downto 0);
    signal config_start_pos_drum_3_in   :   unsigned(4 downto 0);
        -- control inputs
    signal drum_impuls_in               :   STD_LOGIC;
    signal soft_reset_in                :   STD_LOGIC;
    signal start_in                     :   STD_LOGIC;
        -- character inputs
    signal characters_in_db0            :   unsigned(25 downto 0);
    signal characters_in_db1            :   unsigned(25 downto 0);
    
    --outputs
    signal coded_characters_out_db0     :   unsigned(25 downto 0);
    signal coded_characters_out_db1     :   unsigned(25 downto 0);
    --signal coded_characters_out_db0     :   STD_LOGIC_VECTOR(25 downto 0);
   -- signal coded_characters_out_db1     :   STD_LOGIC_VECTOR(25 downto 0);
    signal ready_out                    :   STD_LOGIC;
   
   
------------
begin
------------
  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
  enigma_bd_init : TURBO_enigma_bd_wrapper
  port map(
    CHARACTERS_IN_DB0               =>  std_logic_vector(characters_in_db0),   
    CHARACTERS_IN_DB1               =>  std_logic_vector(characters_in_db1),
    unsigned(CODED_CHARACTERS_OUT_DB0)        =>  coded_characters_out_db0 ,
    unsigned(CODED_CHARACTERS_OUT_DB1)        =>  coded_characters_out_db1 ,
    --CODED_CHARACTERS_OUT_DB0        =>  coded_characters_out_db0 ,
    --CODED_CHARACTERS_OUT_DB1        =>  coded_characters_out_db1 ,
    CONFIG_DRUM_TYP_1_IN            =>  std_logic_vector(config_drum_typ_1_in)      ,
    CONFIG_DRUM_TYP_2_IN            =>  std_logic_vector(config_drum_typ_2_in)      ,
    CONFIG_DRUM_TYP_3_IN            =>  std_logic_vector(config_drum_typ_3_in )     ,
    CONFIG_START_POS_DRUM_1_IN      =>  std_logic_vector(config_start_pos_drum_1_in),
    CONFIG_START_POS_DRUM_2_IN      =>  std_logic_vector(config_start_pos_drum_2_in),
    CONFIG_START_POS_DRUM_3_IN      =>  std_logic_vector(config_start_pos_drum_3_in),
    DRUM_IMPULS_IN                  =>  drum_impuls_in,
    READY_OUT                       =>  ready_out,
    SOFT_RESET_N_IN                 =>  soft_reset_in,
    START_IN                        =>  start_in,
    UB_CLK_IN                       =>  clk
      
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
    -- Test 0 Init:
    soft_reset_in <= '0';  
    start_in <= '0';
    drum_impuls_in <= '0';
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    assert(coded_characters_out_db0 = "00000000000000000000000000" ) report "Test 0: Init Error"  severity FAILURE;   
    assert(coded_characters_out_db1 = "00000000000000000000000000" ) report "Test 0: Init Error"  severity FAILURE; 
    assert(ready_out = '0' ) report "Test 0: Init Error"  severity FAILURE;     
    soft_reset_in <= '1';
    
    -- Test 1: Drum 3,5,2 and Start Pos ZZZ
    config_drum_typ_1_in <= "011"; --Drum 3
    config_drum_typ_2_in <= "101"; --Drum 5
    config_drum_typ_3_in <= "010"; --Drum 2
    config_start_pos_drum_1_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_2_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_3_in <= "11001"; --Pos 25 (Z)
    
    characters_in_db0 <= "10101010101010101010101010";
    characters_in_db1 <= "01010101010101010101010101";    
    
    -- The reset is nessesary, only at a reset the configs are registered at the drum's
    soft_reset_in <= '0';    
    wait until rising_edge(clk);
    wait until rising_edge(clk);  
    assert(coded_characters_out_db0 = "00000000000000000000000000" ) report "Test 1: Init Error"  severity FAILURE;   
    assert(coded_characters_out_db1 = "00000000000000000000000000" ) report "Test 1: Init Error"  severity FAILURE; 
    assert(ready_out = '0' ) report "Test 1: Init Error"  severity FAILURE;     
    soft_reset_in <= '1';
    start_in <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    start_in <= '0';
    
    --wait until the enigma has a solution
    while ready_out = '0' loop        
        wait until rising_edge(clk);
    end loop;
    assert(coded_characters_out_db0 = "11111010100001010001001011" ) report "Test 1: Wrong Coding of db1 characters to db0"  severity FAILURE;   
    assert(coded_characters_out_db1 = "00000101011110101110110100" ) report "Test 1: Wrong Coding of db0 characters to db1"  severity FAILURE; 
    
    -- Test 2: Drum 4,3,1 and Start Pos ZZZ
    config_drum_typ_1_in <= "100"; --Drum 4
    config_drum_typ_2_in <= "011"; --Drum 3
    config_drum_typ_3_in <= "001"; --Drum 1
    config_start_pos_drum_1_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_2_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_3_in <= "11001"; --Pos 25 (Z)
    
    characters_in_db0 <= "10101010101010101010101010";
    characters_in_db1 <= "01010101010101010101010101";    
    
    -- The reset is nessesary, only at a reset the configs are registered at the drum's
    soft_reset_in <= '0';    
    wait until rising_edge(clk);
    wait until rising_edge(clk);  
    assert(coded_characters_out_db0 = "00000000000000000000000000" ) report "Test 1: Init Error"  severity FAILURE;   
    assert(coded_characters_out_db1 = "00000000000000000000000000" ) report "Test 1: Init Error"  severity FAILURE; 
    assert(ready_out = '0' ) report "Test 1: Init Error"  severity FAILURE;     
    soft_reset_in <= '1';
    start_in <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    start_in <= '0';
    
    --wait until the enigma has a solution
    while ready_out = '0' loop        
        wait until rising_edge(clk);
    end loop;
    assert(coded_characters_out_db0 = "10101100001010110000111011" ) report "Test 2: Wrong Coding of db0 characters to db1"  severity FAILURE;
    assert(coded_characters_out_db1 = "01010011110101001111000100" ) report "Test 2: Wrong Coding of db1 characters to db0"  severity FAILURE;   
    
    -- Test 3: Drum 4,3,1 and Start Pos ZZY impuls than ZZZ
    config_drum_typ_1_in <= "100"; --Drum 4
    config_drum_typ_2_in <= "011"; --Drum 3
    config_drum_typ_3_in <= "001"; --Drum 1
    config_start_pos_drum_1_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_2_in <= "11001"; --Pos 25 (Z)
    config_start_pos_drum_3_in <= "11000"; --Pos 25 (Z)
    
    characters_in_db0 <= "10101010101010101010101010";
    characters_in_db1 <= "01010101010101010101010101";    
    
    -- The reset is nessesary, only at a reset the configs are registered at the drum's
    soft_reset_in <= '0';    
    wait until rising_edge(clk);
    wait until rising_edge(clk);  
    assert(coded_characters_out_db0 = "00000000000000000000000000" ) report "Test 3: Init Error"  severity FAILURE;   
    assert(coded_characters_out_db1 = "00000000000000000000000000" ) report "Test 3: Init Error"  severity FAILURE; 
    assert(ready_out = '0' ) report "Test 1: Init Error"  severity FAILURE;     
    soft_reset_in <= '1';
    start_in <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    start_in <= '0';
    
    --wait until the enigma has a solution
    while ready_out = '0' loop        
        wait until rising_edge(clk);
    end loop;
    assert(coded_characters_out_db0 = "01101000001111000101110101" ) report "Test 3: Wrong Coding of db1 characters to db0 before impuls"  severity FAILURE;   
    assert(coded_characters_out_db1 = "10010111110000111010001010" ) report "Test 3: Wrong Coding of db0 characters to db1 before impuls"  severity FAILURE; 
    
    drum_impuls_in <= '1';
    wait until rising_edge(clk);
    drum_impuls_in <= '0';
    start_in <= '1';
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    start_in <= '0';
    
    --wait until the enigma has a solution
    while ready_out = '0' loop        
        wait until rising_edge(clk);
    end loop;
    
    assert(coded_characters_out_db0 = "10101100001010110000111011" ) report "Test 2: Wrong Coding of db0 characters to db1 after impuls"  severity FAILURE;
    assert(coded_characters_out_db1 = "01010011110101001111000100" ) report "Test 2: Wrong Coding of db1 characters to db0 after impuls"  severity FAILURE;
    
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end RTL;
