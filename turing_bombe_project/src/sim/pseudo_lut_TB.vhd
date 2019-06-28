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
-- 1.01    | Maximilian Exner         | 2019-06-05 | -change i/o's to std_logic_vector
--         |                          |            |  (simulation can not simulate unsigned 
--         |                          |            |  ports when you use a block design)
-----------+--------------------------+------------+---------------------------- 
-- 1.01    | Maximilian Exner         | 2019-06-10 | - changes in dependency to the corrected rotor tables
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

architecture RTL of pseudo_lut_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  component pseudo_lut is
        port (
            UB_CLK_IN                           : in    std_logic;
            SOFT_RESET_N_IN                     : in    std_logic;
            -- DIRECTION
            DIRECTION_1                         : in   std_logic;
            DIRECTION_2                         : in   std_logic;
            DIRECTION_3                         : in   std_logic;              
            -- inputs that include the charecters that should be code
            CHARACTERS_FROM_DRUM_IN_1	                            : in    std_logic_vector(25 downto 0);
            CHARACTERS_FROM_DRUM_IN_2	                            : in    std_logic_vector(25 downto 0);
            CHARACTERS_FROM_DRUM_IN_3	                            : in    std_logic_vector(25 downto 0);
            CHARACTERS_FROM_DRUM_IN_UKW	                        : in    std_logic_vector(25 downto 0);
            REQUEST_1						    : in 	std_logic;
            REQUEST_2						    : in	std_logic;
            REQUEST_3						    : in 	std_logic;
            REQUEST_UKW						    : in	std_logic;
            -- outputs that include the codes characters
            PROJECTION                          : out   std_logic_vector(25 downto 0);	
            -- gives feedback to the drums when the characters are processed 
            BUSY_OUT                            : out   std_logic;           
            -- this inputs configure the drum type
            DRUM_TYP_IN_1                       : in    std_logic_vector(2 downto 0);    -- this inputs configure the drum type
            DRUM_TYP_IN_2                       : in    std_logic_vector(2 downto 0);    -- this inputs configure the drum type
            DRUM_TYP_IN_3                       : in    std_logic_vector(2 downto 0);    -- this inputs configure the drum type
            DRUM_TYP_IN_UKW                     : in    std_logic_vector(2 downto 0);    -- this inputs configure the drum type
            READY_OUT_1	                        : out   std_logic;
            READY_OUT_2	                        : out   std_logic;
            READY_OUT_3	                        : out   std_logic;
            READY_OUT_UKW                       : out   std_logic
        );
  end component pseudo_lut;       
  
  
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
    constant CLK_PERIOD : time := 10 ns;
    signal clk          : std_logic;
    
    --local signals
    --signal ext_clk     : std_logic;
    signal soft_reset_in    : std_logic;
    signal direction_in_1   : std_logic;
    signal direction_in_2   : std_logic;
    signal direction_in_3   : std_logic;    
    signal input_1          : unsigned(25 downto 0);
    signal input_2          : unsigned(25 downto 0);
    signal input_3          : unsigned(25 downto 0);
    signal input_ukw        : unsigned(25 downto 0);
    signal request_1_in     : std_logic;
    signal request_2_in     : std_logic;
    signal request_3_in     : std_logic;
    signal request_ukw_in   : std_logic;
    signal projection_out   : unsigned(25 downto 0);
    signal busy_out         : std_logic;  
    signal ready_out_1      : std_logic;
	signal ready_out_2      : std_logic;
	signal ready_out_3      : std_logic;
	signal ready_out_ukw    : std_logic; 
    signal drum_type_in_1   : unsigned(2 downto 0);
    signal drum_type_in_2   : unsigned(2 downto 0);
    signal drum_type_in_3   : unsigned(2 downto 0);
    signal drum_type_in_ukw : unsigned(2 downto 0);
    
    
    

------------
begin
------------
  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
  
  pseudo_lut_init : pseudo_lut
    port map(
        UB_CLK_IN               => clk,
        SOFT_RESET_N_IN         => soft_reset_in,        
        DIRECTION_1             => direction_in_1,     
        DIRECTION_2             => direction_in_2,
        DIRECTION_3             => direction_in_3,        
        CHARACTERS_FROM_DRUM_IN_1	                => std_logic_vector(input_1),
        CHARACTERS_FROM_DRUM_IN_2	                => std_logic_vector(input_2),
        CHARACTERS_FROM_DRUM_IN_3	                => std_logic_vector(input_3),
        CHARACTERS_FROM_DRUM_IN_UKW	            => std_logic_vector(input_ukw),
        REQUEST_1			    => request_1_in,
        REQUEST_2			    => request_2_in,
        REQUEST_3			    => request_3_in,
        REQUEST_UKW			    => request_ukw_in,
        unsigned(PROJECTION)    => projection_out,
        BUSY_OUT                => busy_out,        	
        DRUM_TYP_IN_1           => std_logic_vector(drum_type_in_1),
        DRUM_TYP_IN_2           => std_logic_vector(drum_type_in_2),
        DRUM_TYP_IN_3           => std_logic_vector(drum_type_in_3),
        DRUM_TYP_IN_UKW         => std_logic_vector(drum_type_in_ukw),
        READY_OUT_1             => ready_out_1,
        READY_OUT_2             => ready_out_2,
        READY_OUT_3             => ready_out_3,
        READY_OUT_UKW           => ready_out_ukw
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
    -- Test Drum 1 on Position 1
    wait for 1 ns;
    soft_reset_in <= '1';
    drum_type_in_1 <= "001";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '1';
    
    input_1 <= "10101010101010101010101010";
    request_1_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10010110111000011111100000" and ready_out_1 = '1') report "Wrong Coding with Drum typ 1 forward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
    drum_type_in_1 <= "001";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '0';
    input_1 <= "10010110111000011111100000";
    request_1_in <= '1';      
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10101010101010101010101010" and ready_out_1 = '1') report "Wrong Coding with Drum typ 1 backward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    
    -- Test 1 invers
    drum_type_in_1 <= "001";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '1';  
    
    input_1 <= "01010101010101010101010101";
    request_1_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01101001000111100000011111" and ready_out_1 = '1') report "Wrong Coding with Drum typ 1 invers forward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
    
    drum_type_in_1 <= "001";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '0';
    input_1 <= "01101001000111100000011111";
    request_1_in <= '1';      
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01010101010101010101010101" and ready_out_1 = '1') report "Wrong Coding with Drum typ 1 invers backward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    
    -- Test Drum 2 on position 2
    soft_reset_in <= '1';
    drum_type_in_2 <= "010";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '1';
    
    input_2 <= "10101010101010101010101010";
    request_2_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01001110000010011111010110" and ready_out_2 = '1' ) report "Wrong Coding with Drum typ 2 forward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    drum_type_in_2 <= "010";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '0';
    input_2 <= "01001110000010011111010110";
    request_2_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10101010101010101010101010" and ready_out_2 = '1') report "Wrong Coding with Drum typ 2 backward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    -- Test 2 invers
    
    drum_type_in_2 <= "010";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '1';
    
    input_2 <= "01010101010101010101010101";
    request_2_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10110001111101100000101001" and ready_out_2 = '1' ) report "Wrong Coding with Drum typ 2 invers forward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    drum_type_in_2 <= "010";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '0';
    input_2 <= "10110001111101100000101001";
    request_2_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01010101010101010101010101" and ready_out_2 = '1') report "Wrong Coding with Drum typ 2 invers backward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    
    
    -- Test Drum 3 on Position 3
    soft_reset_in <= '1';
    drum_type_in_3 <= "011";
    -- forward decoding means 1, backwarts means 0
    direction_in_3 <= '1';
    
    input_3 <= "10101010101010101010101010";
    request_3_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "00011011001111100010011001" and ready_out_3 = '1' ) report "Wrong Coding with Drum typ 3 forward"  severity FAILURE;
    request_3_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    
    drum_type_in_3 <= "011";
    -- forward decoding means 1, backwarts means 0
    direction_in_3 <= '0';
    input_3 <= "00011011001111100010011001";
    request_3_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10101010101010101010101010" and ready_out_3 = '1') report "Wrong Coding with Drum typ 3 backward"  severity FAILURE;
    request_3_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    -- Test 3 invers 
    drum_type_in_3 <= "011";
    -- forward decoding means 1, backwarts means 0
    direction_in_3 <= '1';
    
    input_3 <= "01010101010101010101010101";
    request_3_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "11100100110000011101100110" and ready_out_3 = '1' ) report "Wrong Coding with Drum typ 3 invers forward"  severity FAILURE;
    request_3_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
       
    drum_type_in_3 <= "011";
    -- forward decoding means 1, backwarts means 0
    direction_in_3 <= '0';
    input_3 <= "11100100110000011101100110";
    request_3_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01010101010101010101010101" and ready_out_3 = '1') report "Wrong Coding with Drum typ 3 invers backward"  severity FAILURE;
    request_3_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    -- Test Drum 4 on position 2
    soft_reset_in <= '1';
    drum_type_in_2 <= "100";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '1';
    
    input_2 <= "10101010101010101010101010";
    request_2_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "11101101011100110000101000" and ready_out_2 = '1' ) report "Wrong Coding with Drum typ 4 forward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    drum_type_in_2 <= "100";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '0';
    input_2 <= "11101101011100110000101000";
    request_2_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10101010101010101010101010" and ready_out_2 = '1') report "Wrong Coding with Drum typ 4 backward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    -- Test 4 invers
    drum_type_in_2 <= "100";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '1';
    
    input_2 <= "01010101010101010101010101";
    request_2_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "00010010100011001111010111" and ready_out_2 = '1' ) report "Wrong Coding with Drum typ 4 invers forward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    drum_type_in_2 <= "100";
    -- forward decoding means 1, backwarts means 0
    direction_in_2 <= '0';
    input_2 <= "00010010100011001111010111";
    request_2_in <= '1';         
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01010101010101010101010101" and ready_out_2 = '1') report "Wrong Coding with Drum typ 4 invers backward"  severity FAILURE;
    request_2_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    -- Test Drum 5 on Position 1
    wait for 1 ns;
    soft_reset_in <= '1';
    drum_type_in_1 <= "101";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '1';
    
    input_1 <= "10101010101010101010101010";
    request_1_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "11000010110001111001100011" and ready_out_1 = '1') report "Wrong Coding with Drum typ 5 forward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
    drum_type_in_1 <= "101";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '0';
    input_1 <= "11000010110001111001100011";    
    request_1_in <= '1';      
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10101010101010101010101010" and ready_out_1 = '1') report "Wrong Coding with Drum typ 5 backward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    --Test 5 invers
    drum_type_in_1 <= "101";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '1';
    
    input_1 <= "01010101010101010101010101";
    request_1_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "00111101001110000110011100" and ready_out_1 = '1') report "Wrong Coding with Drum typ 5 invers forward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
    drum_type_in_1 <= "101";
    -- forward decoding means 1, backwarts means 0
    direction_in_1 <= '0';
    input_1 <= "00111101001110000110011100";    
    request_1_in <= '1';      
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01010101010101010101010101" and ready_out_1 = '1') report "Wrong Coding with Drum typ 5 invers backward"  severity FAILURE;
    request_1_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    
    
    
    -- Test Drum UKW on Position UKW (4)
    wait for 1 ns;
    soft_reset_in <= '1';
    drum_type_in_ukw <= "110";
    -- forward decoding means 1, backwarts means 0    
    
    input_ukw <= "10101010101010101010101010";
    request_ukw_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "10110011100000011111001010" and ready_out_ukw = '1') report "Wrong Coding with Drum typ UKW"  severity FAILURE;
    request_ukw_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
    -- the UKW has only one direction!
    
    --Test UKW invers
    drum_type_in_ukw <= "110";
    -- forward decoding means 1, backwarts means 0    
    
    input_ukw <= "01010101010101010101010101";
    request_ukw_in <= '1';    
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(projection_out = "01001100011111100000110101" and ready_out_ukw = '1') report "Wrong Coding with Drum typ UKW"  severity FAILURE;
    request_ukw_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    
  
    
    
    wait for 100 ns;
    wait for 100 ns;
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
    
    
  end process testbench_p;
  
end RTL;
