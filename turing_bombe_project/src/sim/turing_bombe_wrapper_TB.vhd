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
entity turing_bombe_wrapper_TB is
--  Port ( );
end turing_bombe_wrapper_TB;
--------------------
--  ARCHITECTURE  --
--------------------
architecture BEH of turing_bombe_wrapper_TB is
------------------------------
--  COMPONENT DECLARATIONS  --
------------------------------
component turing_bombe_without_zynq_wrapper is
  port (
    ADDRESS_BRAM_A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    DATA_IN_BRAM_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT_BRAM_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENABLE_BRAM_A : in STD_LOGIC;
    WRITE_ENABLE_BRAM_A : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end component turing_bombe_without_zynq_wrapper;
-----------------
--  CONSTANTS  --
-----------------
 
    --this address addresses the following data
        -- Bit[0] StartBit
        -- Bit[1] ResetBit
    constant start_reset_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000000";
       
    --this address addresses the following data
        -- Bit[0-4]   drum position of the first engima first drum
        -- Bit[5-9]   drum position of the first engima second drum
        -- Bit[10-14] drum position of the first engima third drum
                      
        -- Bit[15-19] drum position of the second engima first drum
        -- Bit[20-24] drum position of the second engima second drum
        -- Bit[24-29] drum position of the second engima third drum         
    constant enigmas_12_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000100";
    
    --this address addresses the following data
        -- Bit[0-4]   drum position of the third engima first drum
        -- Bit[5-9]   drum position of the third engima second drum
        -- Bit[10-14] drum position of the third engima third drum
        
        -- Bit[15-19] drum position of the fourth engima first drum
        -- Bit[20-24] drum position of the fourth engima second drum
        -- Bit[24-29] drum position of the fourth engima third drum         
    constant enigmas_34_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000001000";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the fifth engima first drum
        -- Bit[3-5]   drum position of the fifth engima second drum
        -- Bit[6-8]   drum position of the fifth engima third drum
        
        -- Bit[9-11]  drum position of the sixth engima first drum
        -- Bit[12-14] drum position of the sixth engima second drum
        -- Bit[15-17] drum position of the sixth engima third drum   
    constant enigmas_56_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000001100";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the seventh engima first drum
        -- Bit[3-5]   drum position of the seventh engima second drum
        -- Bit[6-8]   drum position of the seventh engima third drum
        
        -- Bit[9-11]  drum position of the eighth engima first drum
        -- Bit[12-14] drum position of the eighth engima second drum
        -- Bit[15-17] drum position of the eighth engima third drum      
    constant enigmas_78_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000010000";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the ninth engima first drum
        -- Bit[3-5]   drum position of the ninth engima second drum
        -- Bit[6-8]   drum position of the ninth engima third drum
        
        -- Bit[9-11]  drum position of the tenth engima first drum
        -- Bit[12-14] drum position of the tenth engima second drum
        -- Bit[15-17] drum position of the tenth engima third drum      
    constant enigmas_910_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000010100";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the eleventh engima first drum
        -- Bit[3-5]   drum position of the eleventh engima second drum
        -- Bit[6-8]   drum position of the eleventh engima third drum
        
        -- Bit[9-11]  drum position of the twelfth engima first drum
        -- Bit[12-14] drum position of the twelfth engima second drum
        -- Bit[15-17] drum position of the twelfth engima third drum      
    constant enigmas_1112_drumPos_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000011000";
       
    --this address addresses the following data
        -- Bit[0-2] first drum of all enigmas
        -- Bit[3-5] second drum of all enigmas
        -- Bit[6-8] third drum of all enigmas 
        
        --Bit[9-13] testregister
        --Bit[14-18] testvoltage      
    constant enigma_drums_vol_reg_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000011100";

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the first enigma
        -- Bit[5-9] second diagonalboard connection of the first enigma
        
        -- Bit[10-14] first diagonalboard connection of the second enigma    
        -- Bit[15-19] second diagonalboard connection of the second enigma  
        
        -- Bit[20-24] first diagonalboard connection of the third enigma     
        -- Bit[25-29] second diagonalboard connection of the third enigma        
    constant enigmas_123_db_con_addess : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000100000";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the fourth enigma
        -- Bit[5-9] second diagonalboard connection of the fourth enigma
        
        -- Bit[10-14] first diagonalboard connection of the fifth enigma    
        -- Bit[15-19] second diagonalboard connection of the fifth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the sixth enigma     
        -- Bit[25-29] second diagonalboard connection of the sixth enigma        
    constant enigmas_456_db_con_addess : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000100100";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the seventh enigma
        -- Bit[5-9] second diagonalboard connection of the seventh enigma
        
        -- Bit[10-14] first diagonalboard connection of the eighth enigma    
        -- Bit[15-19] second diagonalboard connection of the eighth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the ninth enigma     
        -- Bit[25-29] second diagonalboard connection of the ninth enigma        
    constant enigmas_789_db_con_addess : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000101000";        
 
    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the tenth enigma
        -- Bit[5-9] second diagonalboard connection of the tenth enigma
        
        -- Bit[10-14] first diagonalboard connection of the eleventh enigma    
        -- Bit[15-19] second diagonalboard connection of the eleventh enigma  
        
        -- Bit[20-24] first diagonalboard connection of the twelfth enigma     
        -- Bit[25-29] second diagonalboard connection of the twelfth enigma        
    constant enigmas_101112_db_con_addess : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000101100"; 
    
    --this address addresses the following data
        -- Bit[0-4] indicator drum one 
        -- Bit[5-9] indicator drum two     
        -- Bit[10-14] indicator drum two    
        -- Bit[15-19] result diagonalboard      
    constant indicator_drum_result_address : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000111000"; 
---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;  
  
  signal enigmas_out_characters_in_tb           : enigma_array;
  signal enigmas_out_ready_in_tb                : STD_LOGIC_VECTOR(11 downto 0);
  signal db_out_characters_out_tb               : diagonal_board_array;
  signal tb_controller_out_characters_tb        : enigma_array;
  signal tb_controller_out_drum_pos_tb          : enigmas_drumPos_array;
  signal tb_controller_out_drums_tb             : enigmas_drum_array;
  signal tb_controller_out_enigma_start_tb      : STD_LOGIC;
  
  signal enable_bram_a_in_tb            : STD_LOGIC;
  signal address_bram_a_in_tb           : STD_LOGIC_VECTOR(9 DOWNTO 0);
  signal data_in_bram_a_tb              : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal data_out_bram_a_tb              : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal write_enable_bram_in_tb        : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
  
begin
-------------------------------
--  COMPONENT INSTANTIAIONS  --
-------------------------------
turing_bombe_inst: turing_bombe_without_zynq_wrapper
  port map
  (
    CLK                         => clk,
    --ENIGMAS_START               => tb_controller_out_enigma_start_tb,
    
    ADDRESS_BRAM_A              => address_bram_a_in_tb,
    DATA_IN_BRAM_A              => data_in_bram_a_tb,
    DATA_OUT_BRAM_A             => data_out_bram_a_tb,
    ENABLE_BRAM_A               => enable_bram_a_in_tb,
    WRITE_ENABLE_BRAM_A         => write_enable_bram_in_tb 
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

   
    -- reset the system trought blockram
    enable_bram_a_in_tb <= '1';  
    write_enable_bram_in_tb <= "1111";
    address_bram_a_in_tb <= start_reset_address;
    data_in_bram_a_tb <= "00000000000000000000000000000000";
    wait for 100 ns;
    data_in_bram_a_tb <= "00000000000000000000000000000010";
    wait for 10 ns;
    --Config to get DKXD as resut
    --
    --DRUM;ZZB;ZZE;ZZF;ZZN;ZZM;ZZG;ZZP;ZZK;ZZJ;ZZI;ZZL;ZZO
    --DTYP;2;5;3
    --IODB;NE;EG;GR;RA;AS;SV;EV;EU;HZ;RZ;GR;GL
    --TESTREG: G
    --TESTVOL: A
    
    -- setup enigma drums position
    address_bram_a_in_tb <= enigmas_12_drumPos_address;
    --                      |    |    |    |    |    |      
    data_in_bram_a_tb <= "00110011100100100110011100100001";
    wait for 10 ns;  
    address_bram_a_in_tb <= enigmas_34_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00110011100101101110011100100101";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_56_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00110011100100110110011100101100";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_78_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00110011100101010110011100101111";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_910_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00110011100101000110011100101001";
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_1112_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00110011100101110110011100101011"; 
    wait for 10 ns;
    
    -- setup enigmas drums, input voltage and input register
    address_bram_a_in_tb <= enigma_drums_vol_reg_address;
    --                                 |    |    |  |  |  
    data_in_bram_a_tb <= "00000000000000000000110010101011"; 
    wait for 10 ns;      
    
    -- SUX
    
    --IODB;NE;EG;GR;
    
    -- setup enigmas connections to the diagonalboard
    address_bram_a_in_tb <= enigmas_123_db_con_addess;
    --                      |    |    |    |    |    |          
    data_in_bram_a_tb <= "00100010011000110001000010001101"; 
    wait for 10 ns;       

    --RA;AS;SV;
    address_bram_a_in_tb <= enigmas_456_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00101011001010010000000000010001"; 
    wait for 10 ns;      

    --EV;EU;HZ;
    address_bram_a_in_tb <= enigmas_789_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00110010011110100001001010100100"; 
    wait for 10 ns;      
    
    --RZ;GR;GL
    address_bram_a_in_tb <= enigmas_101112_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00010110011010001001101100110001"; 
    wait for 10 ns;  
        
        
    address_bram_a_in_tb <= start_reset_address;
    data_in_bram_a_tb <= "00000000000000000000000000000011";
    
    
    --we need ca. 35ns to enter the READ_CONFIG state and than we have to read 13 storages which taktes 130 ns additional 5ns to get a save result!
    wait for 300 ns; 
    write_enable_bram_in_tb <= "0000";
    
    
    address_bram_a_in_tb <= indicator_drum_result_address;
         
           
    wait for 20 ns;
    
    
    --while data_out_bram_a_tb /= "" loop
    
    --end loop;
    
    -- search for the indicator result DKX
    --                             |    |    |    |    |    |      
    while data_out_bram_a_tb /= "00000000000010000101110101000011" loop
        wait until rising_edge(clk);
    end loop;
    
                                   ---------------------------
                                   --      Finishline       --
  --------------------------------------------------------------------------------------------------- 
  -- if it runs till this section, everything works fine
  ---------------------------------------------------------------------------------------------------       
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
end BEH;
