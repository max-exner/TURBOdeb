library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package turingBombArrays is
        type enigma_array is array (0 to 23) of STD_LOGIC_VECTOR(25 downto 0);
        type diagonal_board_array is array (0 to 25) of STD_LOGIC_VECTOR(25 downto 0);
        type enigma_db_con_array is array (0 to 23) of STD_LOGIC_VECTOR(4 downto 0);
        type indicator_drum_array is array (0 to 2) of STD_LOGIC_VECTOR(4 downto 0);
        type enigma_drumPos_array is array (0 to 2) of STD_LOGIC_VECTOR(4 downto 0); 
        type enigmas_drumPos_array is array (0 to 35) of STD_LOGIC_VECTOR(4 downto 0); 
        type enigmas_drum_array is array (0 to 2) of STD_LOGIC_VECTOR(2 downto 0);
        type possible_testregister_solutions_array is array (0 to 51) of STD_LOGIC_VECTOR(25 downto 0);
        type result_registers_array is array (0 to 51) of STD_LOGIC_VECTOR(7 downto 0);
end package;