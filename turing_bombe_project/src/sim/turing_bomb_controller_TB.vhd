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

entity turing_bomb_controller_TB is
end turing_bomb_controller_TB;
--------------------
--  ARCHITECTURE  --
--------------------
architecture BEH of turing_bomb_controller_TB is
------------------------------
--  COMPONENT DECLARATIONS  --
------------------------------
component turing_bombe_controller is
    Port    ( 
             -- just for testbench
             ENABLE_BRAM_A_IN             : in STD_LOGIC                            := '0';
             ADDRESS_BRAM_A_IN            : in STD_LOGIC_VECTOR(5 DOWNTO 0)         := (others => '0');
             DATA_IN_BRAM_A               : in STD_LOGIC_VECTOR(31 DOWNTO 0)        := (others => '0');
             DATA_OUT_BRAM_A              : out STD_LOGIC_VECTOR(31 DOWNTO 0)        := (others => '0');
             WRITE_ENABLE_BRAM_IN         : in STD_LOGIC_VECTOR(0 DOWNTO 0)         := (others => '0');
   
   
             CLK_IN                       : in STD_LOGIC                            := '0';
             ENIGMAS_START_OUT            : out STD_LOGIC                           := '0';
             DB_READY_IN                  : in STD_LOGIC                            := '0';   
                 
             -- indicator drum
                       
             POS_1_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');
             POS_2_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');
             POS_3_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');  
                        
             -- config engiams
             ENIGMA_1_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_1_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_2_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_2_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_3_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_3_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_4_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_4_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_5_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_5_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_6_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_6_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_7_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_7_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_8_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_8_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_9_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_9_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_10_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_10_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_11_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_11_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_12_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             ENIGMA_12_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )    := (others => '0');
             
             --ENIGMA_1_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_1_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_2_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_2_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_3_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_3_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_4_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_4_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_5_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_5_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_6_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_6_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_7_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_7_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_8_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_8_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_9_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_9_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_10_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_10_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_11_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_11_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_12_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             --ENIGMA_12_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             
             ENIGMAS_DRUM_1_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )     := (others => '0');
             ENIGMAS_DRUM_2_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )     := (others => '0');
             ENIGMAS_DRUM_3_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )     := (others => '0');
             
             ENIGMA_1_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_1_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_1_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');           
             ENIGMA_2_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_2_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_2_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_3_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_3_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_3_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_4_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_4_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_4_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_5_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_5_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_5_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_6_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_6_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_6_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_7_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_7_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_7_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_8_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_8_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_8_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_9_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_9_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             ENIGMA_9_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');             
             ENIGMA_10_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_10_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_10_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');            
             ENIGMA_11_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_11_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_11_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');            
             ENIGMA_12_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_12_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
             ENIGMA_12_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )    := (others => '0');
            
             DRUM_IMPULS_OUT               : out STD_LOGIC                          := '0';
             
             
             --config diagonalboard
             
             DB_IN_ENIGMA_1_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_1_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             DB_IN_ENIGMA_2_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_2_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_3_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_3_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_4_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_4_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_5_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_5_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_6_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_6_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_7_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_7_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_8_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_8_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_9_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_9_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_10_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_10_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_11_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_11_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_12_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
             DB_IN_ENIGMA_12_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0'); 
 
             DB_IN_INPUT_VOLTAGE_OUT      : OUT STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             DB_IN_INPUT_REGISTER_OUT     : OUT STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
 
             
             -- result diagonalboard
             DB_OUT_ENIGMA_1_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_1_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_2_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_2_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_3_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_3_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_4_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_4_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_5_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_5_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_6_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_6_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_7_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_7_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_8_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_8_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_9_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_9_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_10_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_10_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_11_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_11_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_12_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_12_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             
             DB_OUT_NO_CHANGES_IN         : STD_LOGIC                               := '0';
             
             DB_RESULT_RESIGER_IN         : in STD_LOGIC_VECTOR ( 25 downto 0 )         := (others => '0')
            );
end component turing_bombe_controller;

-----------------
--  CONSTANTS  --
-----------------
 
    --this address addresses the following data
        -- Bit[0] StartBit
        -- Bit[1] ResetBit
    constant start_reset_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
       
    --this address addresses the following data
        -- Bit[0-4]   drum position of the first engima first drum
        -- Bit[5-9]   drum position of the first engima second drum
        -- Bit[10-14] drum position of the first engima third drum
                      
        -- Bit[15-19] drum position of the second engima first drum
        -- Bit[20-24] drum position of the second engima second drum
        -- Bit[24-29] drum position of the second engima third drum         
    constant enigmas_12_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000001";
    
    --this address addresses the following data
        -- Bit[0-4]   drum position of the third engima first drum
        -- Bit[5-9]   drum position of the third engima second drum
        -- Bit[10-14] drum position of the third engima third drum
        
        -- Bit[15-19] drum position of the fourth engima first drum
        -- Bit[20-24] drum position of the fourth engima second drum
        -- Bit[24-29] drum position of the fourth engima third drum         
    constant enigmas_34_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the fifth engima first drum
        -- Bit[3-5]   drum position of the fifth engima second drum
        -- Bit[6-8]   drum position of the fifth engima third drum
        
        -- Bit[9-11]  drum position of the sixth engima first drum
        -- Bit[12-14] drum position of the sixth engima second drum
        -- Bit[15-17] drum position of the sixth engima third drum   
    constant enigmas_56_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000011";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the seventh engima first drum
        -- Bit[3-5]   drum position of the seventh engima second drum
        -- Bit[6-8]   drum position of the seventh engima third drum
        
        -- Bit[9-11]  drum position of the eighth engima first drum
        -- Bit[12-14] drum position of the eighth engima second drum
        -- Bit[15-17] drum position of the eighth engima third drum      
    constant enigmas_78_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the ninth engima first drum
        -- Bit[3-5]   drum position of the ninth engima second drum
        -- Bit[6-8]   drum position of the ninth engima third drum
        
        -- Bit[9-11]  drum position of the tenth engima first drum
        -- Bit[12-14] drum position of the tenth engima second drum
        -- Bit[15-17] drum position of the tenth engima third drum      
    constant enigmas_910_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000101";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the eleventh engima first drum
        -- Bit[3-5]   drum position of the eleventh engima second drum
        -- Bit[6-8]   drum position of the eleventh engima third drum
        
        -- Bit[9-11]  drum position of the twelfth engima first drum
        -- Bit[12-14] drum position of the twelfth engima second drum
        -- Bit[15-17] drum position of the twelfth engima third drum      
    constant enigmas_1112_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000110";
       
    --this address addresses the following data
        -- Bit[0-2] first drum of all enigmas
        -- Bit[3-5] second drum of all enigmas
        -- Bit[6-8] third drum of all enigmas 
        
        --Bit[9-13] testregister
        --Bit[14-18] testvoltage      
    constant enigma_drums_vol_reg_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000111";

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the first enigma
        -- Bit[5-9] second diagonalboard connection of the first enigma
        
        -- Bit[10-14] first diagonalboard connection of the second enigma    
        -- Bit[15-19] second diagonalboard connection of the second enigma  
        
        -- Bit[20-24] first diagonalboard connection of the third enigma     
        -- Bit[25-29] second diagonalboard connection of the third enigma        
    constant enigmas_123_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the fourth enigma
        -- Bit[5-9] second diagonalboard connection of the fourth enigma
        
        -- Bit[10-14] first diagonalboard connection of the fifth enigma    
        -- Bit[15-19] second diagonalboard connection of the fifth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the sixth enigma     
        -- Bit[25-29] second diagonalboard connection of the sixth enigma        
    constant enigmas_456_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001001";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the seventh enigma
        -- Bit[5-9] second diagonalboard connection of the seventh enigma
        
        -- Bit[10-14] first diagonalboard connection of the eighth enigma    
        -- Bit[15-19] second diagonalboard connection of the eighth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the ninth enigma     
        -- Bit[25-29] second diagonalboard connection of the ninth enigma        
    constant enigmas_789_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001010";        
 
    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the tenth enigma
        -- Bit[5-9] second diagonalboard connection of the tenth enigma
        
        -- Bit[10-14] first diagonalboard connection of the eleventh enigma    
        -- Bit[15-19] second diagonalboard connection of the eleventh enigma  
        
        -- Bit[20-24] first diagonalboard connection of the twelfth enigma     
        -- Bit[25-29] second diagonalboard connection of the twelfth enigma        
    constant enigmas_101112_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001011"; 
    
    --this address addresses the following data
        -- Bit[0-4] indicator drum one 
        -- Bit[5-9] indicator drum two     
        -- Bit[10-14] indicator drum two    
        -- Bit[15-19] result diagonalboard      
    constant indicator_drum_result_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";                          
---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;  
  
  
  signal enable_bram_a_in_tb            : STD_LOGIC;
  signal address_bram_a_in_tb           : STD_LOGIC_VECTOR(5 DOWNTO 0);
  signal address_bram_b_in_tb           : STD_LOGIC_VECTOR(5 DOWNTO 0);
  signal data_in_bram_a_tb              : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal data_out_bram_a_tb              : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal data_out_bram_b_tb             : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal write_enable_bram_in_tb        : STD_LOGIC_VECTOR(0 DOWNTO 0);
  
  signal enigmas_start_out_tb           : STD_LOGIC;
  signal db_ready_in_tb                 : STD_LOGIC;
  signal db_no_output_changes_in_tb     : STD_LOGIC;
  
  signal enigmas_characters_db_out_tb   : enigma_array;
  signal enigmas_db_con_out_tb          : enigma_db_con_array;
  signal enigmas_drums_out_tb           : enigmas_drum_array;
  signal enigmas_drumpos_out_tb         : enigmas_drumPos_array;
  signal drum_impuls_out_tb             : STD_LOGIC;
  signal db_in_enigmas_db_con_tb        : enigma_db_con_array;
  signal db_out_enigmas_in_tb           : enigma_array;
  signal db_result_register_in_tb       : STD_LOGIC_VECTOR(25 downto 0);
  
  signal db_in_input_voltage_out_tb     : STD_LOGIC_VECTOR(4 downto 0);
  signal db_in_input_register_out_tb    : STD_LOGIC_VECTOR(4 downto 0);
  
  signal pos_indicator_drum_in_tb       : indicator_drum_array;
begin
-------------------------------
--  COMPONENT INSTANTIAIONS  --
-------------------------------
turing_bombe_controller_inst: turing_bombe_controller
  port map
  ( 
    ENABLE_BRAM_A_IN                => enable_bram_a_in_tb, 
    ADDRESS_BRAM_A_IN               => address_bram_a_in_tb,
    DATA_IN_BRAM_A                  => data_in_bram_a_tb, 
    DATA_OUT_BRAM_A                 => data_out_bram_a_tb,
    WRITE_ENABLE_BRAM_IN            => write_enable_bram_in_tb,
    
    CLK_IN                          => clk,
    
    ENIGMAS_START_OUT               => enigmas_start_out_tb,
    DB_READY_IN                     => db_ready_in_tb,
    
    POS_1_INDICATOR_DRUM_IN         => pos_indicator_drum_in_tb(0),
    POS_2_INDICATOR_DRUM_IN         => pos_indicator_drum_in_tb(1),
    POS_3_INDICATOR_DRUM_IN         => pos_indicator_drum_in_tb(2),
    
    ENIGMA_1_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(0),
    ENIGMA_1_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(1),
    ENIGMA_2_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(2),
    ENIGMA_2_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(3),
    ENIGMA_3_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(4),
    ENIGMA_3_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(5),
    ENIGMA_4_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(6),
    ENIGMA_4_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(7),
    ENIGMA_5_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(8),
    ENIGMA_5_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(9),
    ENIGMA_6_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(10),
    ENIGMA_6_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(11),
    ENIGMA_7_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(12),
    ENIGMA_7_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(13),
    ENIGMA_8_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(14),
    ENIGMA_8_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(15),
    ENIGMA_9_CHARACTERS_DB0_OUT     => enigmas_characters_db_out_tb(16),
    ENIGMA_9_CHARACTERS_DB1_OUT     => enigmas_characters_db_out_tb(17),
    ENIGMA_10_CHARACTERS_DB0_OUT    => enigmas_characters_db_out_tb(18),
    ENIGMA_10_CHARACTERS_DB1_OUT    => enigmas_characters_db_out_tb(19),
    ENIGMA_11_CHARACTERS_DB0_OUT    => enigmas_characters_db_out_tb(20),
    ENIGMA_11_CHARACTERS_DB1_OUT    => enigmas_characters_db_out_tb(21),
    ENIGMA_12_CHARACTERS_DB0_OUT    => enigmas_characters_db_out_tb(22),
    ENIGMA_12_CHARACTERS_DB1_OUT    => enigmas_characters_db_out_tb(23),
    
    --ENIGMA_1_DB_CON_1_OUT           => enigmas_db_con_out_tb(0),
    --ENIGMA_1_DB_CON_2_OUT           => enigmas_db_con_out_tb(1),
    --ENIGMA_2_DB_CON_1_OUT           => enigmas_db_con_out_tb(2),
    --ENIGMA_2_DB_CON_2_OUT           => enigmas_db_con_out_tb(3),
    --ENIGMA_3_DB_CON_1_OUT           => enigmas_db_con_out_tb(4),
    --ENIGMA_3_DB_CON_2_OUT           => enigmas_db_con_out_tb(5),
    --ENIGMA_4_DB_CON_1_OUT           => enigmas_db_con_out_tb(6),
    --ENIGMA_4_DB_CON_2_OUT           => enigmas_db_con_out_tb(7),
    --ENIGMA_5_DB_CON_1_OUT           => enigmas_db_con_out_tb(8),
    --ENIGMA_5_DB_CON_2_OUT           => enigmas_db_con_out_tb(9),
    --ENIGMA_6_DB_CON_1_OUT           => enigmas_db_con_out_tb(10),
    --ENIGMA_6_DB_CON_2_OUT           => enigmas_db_con_out_tb(11),
    --ENIGMA_7_DB_CON_1_OUT           => enigmas_db_con_out_tb(12),
    --ENIGMA_7_DB_CON_2_OUT           => enigmas_db_con_out_tb(13),
    --ENIGMA_8_DB_CON_1_OUT           => enigmas_db_con_out_tb(14),
    --ENIGMA_8_DB_CON_2_OUT           => enigmas_db_con_out_tb(15),
    --ENIGMA_9_DB_CON_1_OUT           => enigmas_db_con_out_tb(16),
    --ENIGMA_9_DB_CON_2_OUT           => enigmas_db_con_out_tb(17),
    --ENIGMA_10_DB_CON_1_OUT          => enigmas_db_con_out_tb(18),
    --ENIGMA_10_DB_CON_2_OUT          => enigmas_db_con_out_tb(19),
    --ENIGMA_11_DB_CON_1_OUT          => enigmas_db_con_out_tb(20),
    --ENIGMA_11_DB_CON_2_OUT          => enigmas_db_con_out_tb(21),
    --ENIGMA_12_DB_CON_1_OUT          => enigmas_db_con_out_tb(22),
    --ENIGMA_12_DB_CON_2_OUT          => enigmas_db_con_out_tb(23),
    
    ENIGMAS_DRUM_1_OUT              => enigmas_drums_out_tb(0),          
    ENIGMAS_DRUM_2_OUT              => enigmas_drums_out_tb(1),
    ENIGMAS_DRUM_3_OUT              => enigmas_drums_out_tb(2),
    
    ENIGMA_1_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(0),         
    ENIGMA_1_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(1), 
    ENIGMA_1_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(2), 
    ENIGMA_2_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(3), 
    ENIGMA_2_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(4), 
    ENIGMA_2_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(5), 
    ENIGMA_3_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(6), 
    ENIGMA_3_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(7), 
    ENIGMA_3_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(8), 
    ENIGMA_4_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(9), 
    ENIGMA_4_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(10),
    ENIGMA_4_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(11),
    ENIGMA_5_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(12),
    ENIGMA_5_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(13),
    ENIGMA_5_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(14),
    ENIGMA_6_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(15),
    ENIGMA_6_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(16),
    ENIGMA_6_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(17),
    ENIGMA_7_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(18),
    ENIGMA_7_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(19),
    ENIGMA_7_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(20),
    ENIGMA_8_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(21),
    ENIGMA_8_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(22),
    ENIGMA_8_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(23),
    ENIGMA_9_DRUMPOS_1_OUT          => enigmas_drumpos_out_tb(24),
    ENIGMA_9_DRUMPOS_2_OUT          => enigmas_drumpos_out_tb(25),
    ENIGMA_9_DRUMPOS_3_OUT          => enigmas_drumpos_out_tb(26),
    ENIGMA_10_DRUMPOS_1_OUT         => enigmas_drumpos_out_tb(27),
    ENIGMA_10_DRUMPOS_2_OUT         => enigmas_drumpos_out_tb(28),
    ENIGMA_10_DRUMPOS_3_OUT         => enigmas_drumpos_out_tb(29),
    ENIGMA_11_DRUMPOS_1_OUT         => enigmas_drumpos_out_tb(30),
    ENIGMA_11_DRUMPOS_2_OUT         => enigmas_drumpos_out_tb(31),
    ENIGMA_11_DRUMPOS_3_OUT         => enigmas_drumpos_out_tb(32),
    ENIGMA_12_DRUMPOS_1_OUT         => enigmas_drumpos_out_tb(33),
    ENIGMA_12_DRUMPOS_2_OUT         => enigmas_drumpos_out_tb(34),
    ENIGMA_12_DRUMPOS_3_OUT         => enigmas_drumpos_out_tb(35),
    
    DRUM_IMPULS_OUT                 => drum_impuls_out_tb,
    
    DB_IN_ENIGMA_1_DBCON0_OUT       => db_in_enigmas_db_con_tb(0), 
    DB_IN_ENIGMA_1_DBCON1_OUT       => db_in_enigmas_db_con_tb(1), 
    DB_IN_ENIGMA_2_DBCON0_OUT       => db_in_enigmas_db_con_tb(2), 
    DB_IN_ENIGMA_2_DBCON1_OUT       => db_in_enigmas_db_con_tb(3), 
    DB_IN_ENIGMA_3_DBCON0_OUT       => db_in_enigmas_db_con_tb(4), 
    DB_IN_ENIGMA_3_DBCON1_OUT       => db_in_enigmas_db_con_tb(5), 
    DB_IN_ENIGMA_4_DBCON0_OUT       => db_in_enigmas_db_con_tb(6), 
    DB_IN_ENIGMA_4_DBCON1_OUT       => db_in_enigmas_db_con_tb(7), 
    DB_IN_ENIGMA_5_DBCON0_OUT       => db_in_enigmas_db_con_tb(8), 
    DB_IN_ENIGMA_5_DBCON1_OUT       => db_in_enigmas_db_con_tb(9), 
    DB_IN_ENIGMA_6_DBCON0_OUT       => db_in_enigmas_db_con_tb(10),
    DB_IN_ENIGMA_6_DBCON1_OUT       => db_in_enigmas_db_con_tb(11),
    DB_IN_ENIGMA_7_DBCON0_OUT       => db_in_enigmas_db_con_tb(12),
    DB_IN_ENIGMA_7_DBCON1_OUT       => db_in_enigmas_db_con_tb(13),
    DB_IN_ENIGMA_8_DBCON0_OUT       => db_in_enigmas_db_con_tb(14),
    DB_IN_ENIGMA_8_DBCON1_OUT       => db_in_enigmas_db_con_tb(15),
    DB_IN_ENIGMA_9_DBCON0_OUT       => db_in_enigmas_db_con_tb(16),
    DB_IN_ENIGMA_9_DBCON1_OUT       => db_in_enigmas_db_con_tb(17),
    DB_IN_ENIGMA_10_DBCON0_OUT      => db_in_enigmas_db_con_tb(18),
    DB_IN_ENIGMA_10_DBCON1_OUT      => db_in_enigmas_db_con_tb(19),
    DB_IN_ENIGMA_11_DBCON0_OUT      => db_in_enigmas_db_con_tb(20),
    DB_IN_ENIGMA_11_DBCON1_OUT      => db_in_enigmas_db_con_tb(21),
    DB_IN_ENIGMA_12_DBCON0_OUT      => db_in_enigmas_db_con_tb(22),
    DB_IN_ENIGMA_12_DBCON1_OUT      => db_in_enigmas_db_con_tb(23),
    
    DB_IN_INPUT_VOLTAGE_OUT         => db_in_input_voltage_out_tb,
    DB_IN_INPUT_REGISTER_OUT        => db_in_input_register_out_tb,
    
    DB_OUT_ENIGMA_1_DB0             => db_out_enigmas_in_tb(0), 
    DB_OUT_ENIGMA_1_DB1             => db_out_enigmas_in_tb(1), 
    DB_OUT_ENIGMA_2_DB0             => db_out_enigmas_in_tb(2), 
    DB_OUT_ENIGMA_2_DB1             => db_out_enigmas_in_tb(3), 
    DB_OUT_ENIGMA_3_DB0             => db_out_enigmas_in_tb(4), 
    DB_OUT_ENIGMA_3_DB1             => db_out_enigmas_in_tb(5), 
    DB_OUT_ENIGMA_4_DB0             => db_out_enigmas_in_tb(6), 
    DB_OUT_ENIGMA_4_DB1             => db_out_enigmas_in_tb(7), 
    DB_OUT_ENIGMA_5_DB0             => db_out_enigmas_in_tb(8), 
    DB_OUT_ENIGMA_5_DB1             => db_out_enigmas_in_tb(9), 
    DB_OUT_ENIGMA_6_DB0             => db_out_enigmas_in_tb(10),
    DB_OUT_ENIGMA_6_DB1             => db_out_enigmas_in_tb(11),
    DB_OUT_ENIGMA_7_DB0             => db_out_enigmas_in_tb(12),
    DB_OUT_ENIGMA_7_DB1             => db_out_enigmas_in_tb(13),
    DB_OUT_ENIGMA_8_DB0             => db_out_enigmas_in_tb(14),
    DB_OUT_ENIGMA_8_DB1             => db_out_enigmas_in_tb(15),
    DB_OUT_ENIGMA_9_DB0             => db_out_enigmas_in_tb(16),
    DB_OUT_ENIGMA_9_DB1             => db_out_enigmas_in_tb(17),
    DB_OUT_ENIGMA_10_DB0            => db_out_enigmas_in_tb(18),
    DB_OUT_ENIGMA_10_DB1            => db_out_enigmas_in_tb(19),
    DB_OUT_ENIGMA_11_DB0            => db_out_enigmas_in_tb(20),
    DB_OUT_ENIGMA_11_DB1            => db_out_enigmas_in_tb(21),
    DB_OUT_ENIGMA_12_DB0            => db_out_enigmas_in_tb(22),
    DB_OUT_ENIGMA_12_DB1            => db_out_enigmas_in_tb(23),
    
    DB_OUT_NO_CHANGES_IN            => db_no_output_changes_in_tb,
    
    DB_RESULT_RESIGER_IN            => db_result_register_in_tb  
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
    
    
    
    
    
    -- diagonalboard is ready in IDLE state (ready to operate)
    db_ready_in_tb <= '1';
    pos_indicator_drum_in_tb <= (others => (others => '0'));
    
    db_result_register_in_tb <= "00000000000000000000000000";
    
    
    -- reset the system trought blockram
    enable_bram_a_in_tb <= '1';   
    write_enable_bram_in_tb <= "1";
    address_bram_a_in_tb <= start_reset_address;
    data_in_bram_a_tb <= "00000000000000000000000000000000";
    wait for 20 ns;
    data_in_bram_a_tb <= "00000000000000000000000000000010";
    wait for 10 ns;
    
    -- setup enigma drums position
    address_bram_a_in_tb <= enigmas_12_drumPos_address;
    --                      |    |    |    |    |    |      
    data_in_bram_a_tb <= "00000000000000011000000000000011";
    wait for 10 ns;  
    address_bram_a_in_tb <= enigmas_34_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000000000001100000000000001100";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_56_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000000000110000000000000110000";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_78_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000000011000000000000011000000";   
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_910_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000001100000000000001100000000";
    wait for 10 ns;
    address_bram_a_in_tb <= enigmas_1112_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000110000000000000110000000000"; 
    wait for 10 ns;
     address_bram_a_in_tb <= enigmas_1112_drumPos_address;
    --                      |    |    |    |    |    |    
    data_in_bram_a_tb <= "00000110000000000000110000000000"; 
    wait for 10 ns;   
    
    -- setup enigmas drums, input voltage and input register
    address_bram_a_in_tb <= enigma_drums_vol_reg_address;
    --                                 |    |    |  |  |  
    data_in_bram_a_tb <= "00000000000000001000001011010001"; 
    wait for 10 ns;      
    
    -- setup enigmas connections to the diagonalboard
    address_bram_a_in_tb <= enigmas_123_db_con_addess;
    --                      |    |    |    |    |    |          
    data_in_bram_a_tb <= "00000110001100010000100000100001"; 
    wait for 10 ns;       

    address_bram_a_in_tb <= enigmas_456_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00001100011000101001010010000100"; 
    wait for 10 ns;      

    address_bram_a_in_tb <= enigmas_789_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00010010100101000010000011100111"; 
    wait for 10 ns;      
    
    address_bram_a_in_tb <= enigmas_101112_db_con_addess;
    --                      |    |    |    |    |    |     
    data_in_bram_a_tb <= "00011000110001011010110101001010"; 
    wait for 10 ns;  
        
        
    address_bram_a_in_tb <= start_reset_address;
    data_in_bram_a_tb <= "00000000000000000000000000000011";
    
    
    --we need ca. 35ns to enter the READ_CONFIG state and than we have to read 13 storages which taktes 130 ns additional 5ns to get a save result!
    wait for 200 ns; 
    write_enable_bram_in_tb <= "0";
    
    --check the configured drum positions
    assert(enigmas_drumpos_out_tb(0) = "00011") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(1) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(2) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                 
    assert(enigmas_drumpos_out_tb(3) = "00011") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(4) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(5) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                    
    assert(enigmas_drumpos_out_tb(6) = "01100") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(7) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(8) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                    
    assert(enigmas_drumpos_out_tb(9) = "01100") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(10) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(11) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                     
    assert(enigmas_drumpos_out_tb(12) = "10000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(13) = "00001") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(14) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                    
    assert(enigmas_drumpos_out_tb(15) = "10000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(16) = "00001") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(17) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                      
    assert(enigmas_drumpos_out_tb(18) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(19) = "00110") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(20) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                
    assert(enigmas_drumpos_out_tb(21) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(22) = "00110") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(23) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                   
    assert(enigmas_drumpos_out_tb(24) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(25) = "11000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(26) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                     
    assert(enigmas_drumpos_out_tb(27) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(28) = "11000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(29) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                      
    assert(enigmas_drumpos_out_tb(30) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(31) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(32) = "00011") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
                                                                                                        
    assert(enigmas_drumpos_out_tb(33) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(34) = "00000") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drumpos_out_tb(35) = "00011") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    
    -- check the input voltage, input register and selected drums
    assert(db_in_input_voltage_out_tb = "00010") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(db_in_input_register_out_tb = "00001") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drums_out_tb(0) = "001") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drums_out_tb(1) = "010") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;
    assert(enigmas_drums_out_tb(2) = "011") report "The output of the turing bombe controller should be the same values as written into blockram!" severity FAILURE;  
    
    
    -- check the db connections of the enigmas
    assert(db_in_enigmas_db_con_tb(0)  = "00001") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(1)  = "00001") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(2)  = "00010") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(3)  = "00010") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(4)  = "00011") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(5)  = "00011") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(6)  = "00100") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(7)  = "00100") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(8)  = "00101") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(9)  = "00101") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(10) = "00110") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(11) = "00110") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(12) = "00111") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(13) = "00111") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(14) = "01000") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(15) = "01000") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(16) = "01001") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(17) = "01001") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(18) = "01010") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(19) = "01010") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(20) = "01011") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(21) = "01011") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(22) = "01100") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    assert(db_in_enigmas_db_con_tb(23) = "01100") report "The output of the turing vomv controller should bethe same values as written into blockram!" severity FAILURE;
    
    
    
    
    
    -- now the diagonalboard gets work form the enigmas
    db_ready_in_tb <= '0';
    
    -- time simulates the operating time of the diagonalboard
    wait for 50 ns;
    -- the diagonalboard responses a invaild testregister solution
    db_result_register_in_tb <= "00000000000000100100010000";
    
    -- now the diagonalboard is ready
    db_ready_in_tb <= '1';
    
    wait for 10 ns;
    -- now the diagonalboard gets work form the enigmas
    db_ready_in_tb <= '0';
    
    -- time simulates the operating time of the diagonalboard
    wait for 50 ns;
    -- the diagonalboard responses a invaild testregister solution
    db_result_register_in_tb <= "00001001001010100100010000";
    -- now the diagonalboard is ready
    db_ready_in_tb <= '1'; 
    db_no_output_changes_in_tb <= '1';   
    
    wait for 50 ns;
    
        -- now the diagonalboard gets work form the enigmas
    db_ready_in_tb <= '0';
    db_no_output_changes_in_tb <= '1'; 
    -- time simulates the operating time of the diagonalboard
    wait for 50 ns;
     -- the diagonalboard responses a invaild testregister solution
    db_result_register_in_tb <= "01011001001010100100010000";   
    -- now the diagonalboard is ready
    db_ready_in_tb <= '1';
    db_no_output_changes_in_tb <= '0'; 
    
    wait for 10 ns;
    -- now the diagonalboard gets work form the enigmas
    db_ready_in_tb <= '0';
    
    -- time simulates the operating time of the diagonalboard
    wait for 50 ns;
    -- the diagonalboard responses a vaild testregister solution
    db_result_register_in_tb <= "10000000000000000000000000";
    pos_indicator_drum_in_tb(0) <= "00001";
    pos_indicator_drum_in_tb(1) <= "00010";
    pos_indicator_drum_in_tb(2) <= "00011";
    
    -- now the diagonalboard is ready
    db_ready_in_tb <= '1';   
    
    
    --wait for 150 ns;
    
    --read result from blockram
    
    address_bram_a_in_tb <= indicator_drum_result_address;
    wait for 60 ns;
    
    
    address_bram_a_in_tb <= start_reset_address;
    wait for 50 ns;  

     
                                   ---------------------------
                                   --      Finishline       --
  --------------------------------------------------------------------------------------------------- 
  -- if it runs till this section, everything works fine
  ---------------------------------------------------------------------------------------------------       
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
end BEH;
