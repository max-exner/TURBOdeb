/**
 * @file menu.hpp
 * @author Maximilian Exner
 * @brief This class generates a menu for the TURBO
 * @version 0.1
 * @date 2019-04-18
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#pragma once
#include "global.hpp"
#include <limits>
#include <algorithm>


using namespace std;
const uint NOT_FOUND = numeric_limits<uint>::max();
const uint SEPERATOR = numeric_limits<uint>::max()-1;

class menu
{
private:
    vector<int> vi_rotor_variation;
    vector<char> vc_cipher;
    vector<char> vc_clear_crib;
    /**
     * @brief The row of vc_clear_crib and vc_chipher
     * 
     */
    vector<char> vc_row; 
    vector<vector<char>> vvc_rotor_set;   
    vector<vector<char>> vvc_rotor_table;  
    uint ui_chipher_size;
    vector<vector<char>> vvc_char_table;
    char c_input_letter;
    char c_test_letter;
    /**
     * @brief Vector that stores the graph posibilities
     * 
     */
    vector<vector<uint>> vvui_graph_posibilities;
    /**
     * @brief Vector that stores the graph
     * 
     */
    vector<vector<vector<uint>>> vvvui_graph;    
    /**
     * @brief Returns the char of a row of vc_clear_crib and vc_cipher 
     * 
     * @param the chars position in the row
     * @return char 
     */
    char get_vc_element(uint position);

    /**
     * @brief Returns the Rotor Position of a given position of the row of vc_clear_crib and vc_cipher
     * 
     * @param position 
     * @return vector<char> 
     */
    vector<char> get_rotor_position(uint position);

    /**
     * @brief   This function check the given vui vector. Does the both chars causes a series in the vui vector
     *          (forwards or backwards!!!) the function will return true. 
     *          Otherwise it will return flase.
     * 
     * @param vui 
     * @param c_last_element 
     * @param c_new_element 
     * @return true The chars cause a series in the given vector
     * @return false The chars do not cause series in the given vector
     */
    bool series_exist(vector<uint> vui, char c_last_element, char c_new_element);
    /**
     * @brief   This function return the connectet element of a given element of the row of vc_clear_crib and vc_chipher.
     *          E.g. you will find out, to wich element the first element is connected. The function will return the ui_chipher_size.
     * 
     * @param ui_found_element 
     * @return uint 
     */
    uint get_conected_value(uint ui_found_element);
    /**
     * @brief   This function find all conection to the last element of the given vector and iterate this elements.
     *          Wheather there is no iteration, the iteration element is the befor last element of the vui_graph
     *          or the iteration element causes a series in the vui_graph the given Vector is written to the 
     *          vvui-graph_posibilities. Otherwith the function will recall itself (recursion!!!).
     * 
     * @param   vui_graph 
     */
    void iterate_conection_last_element(vector<uint> vui_graph);
    /**
     * @brief This function print the elements of the given vui. 
     * The ui Value will be transfered to its char value of the row.
     * 
     * @param vui 
     */
    void debug_print_vui_char(vector<uint> vui);
    void debug_print_vvui_char(vector<vector<uint>> vvui);
    /**
     * @brief This function returns the routes from the vvui_graph_posibilities with a given length
     * 
     * @param length 
     * @return vector<char> 
     */
    vector<vector<uint>> get_routes_with_length(uint length);
    /**
     * @brief This function combines the routes from the vvvui_graph, this is done by a self recall (recursion), to get all posible routes
     * 
     * @param ui_level 
     * @return vector<vector<uint>> 
     */
    vector<vector<uint>> combine_graph_routes(uint ui_level);
    /**
     * @brief This function writes an graph to the posible_graph vector. It also ceck if the series (for and backwarts) exists in the graph.
     * 
     * @param vui_local_graph 
     */
    void write_to_posibility_graph(vector<uint> vui_local_graph);
    /**
     * @brief This function search the first element of the vvc_elements for the given element. 
     * It returns the index if they are equal, otherwise it returns the size of vcc_elements
     * 
     * @param vvc_collection 
     * @param element 
     * @return uint 
     */
    uint get_index_of_element(vector<vector<char>> vvc_collection, char element);
    /**
     * @brief This class returns a vector of all connected elements (number of the rotor in the rotor table) of a table element
     * 
     * @param vc_table_element 
     * @return vector<uint> 
     */
    vector<uint> get_all_connected_elements_of_tabel_element(vector<char> vc_table_element);
    
public:
    menu(vector<char> vc_cipher, vector<char> vc_clear_crib);
    ~menu();
    /**
     * @brief This function generates the graph. 
     * This is done by computate all route posibilities through the graph
     * 
     */
    void generate_graph();
    bool generate_tabel();
    void set_rotor_variation(vector<int> vi_current_rotor_variation);    
    st_Menu get_Menu();
};

