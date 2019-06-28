/**
 * @file menuPreparison.hpp
 * @author Maximilian Exner
 * @brief This class is a collection of usefull functions for the TURBO menu preparation
 * @version 0.1
 * @date 2019-04-17
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#pragma once
#include "global.hpp"

using namespace std;

class menuPreparison
{
private:
    char * c_cry_msg, * c_clear_crib;
    uint ui_cry_msg_length, ui_clear_crib_length, ui_num_posible_rotors;
    vector<vector<char>> c_position_stock;
    vector<int> vi_position_storage;
    vector<vector<int>> i_variation_list;
    char c_crib[MAX_CRIB_SIZE];
    int factrorial(int n);    
public:
    /**
     * @brief Construct a new menu Preparison object and calculate the list of variations without repetition
     * 
     * @param s_cry_msg 
     * @param s_clear_crib 
     * @param ui_num_used_rotors 
     * @param ui_num_posible_rotors 
     */
    menuPreparison(string s_cry_msg, string s_clear_crib, uint ui_num_used_rotors, uint ui_num_posible_rotors);
    ~menuPreparison();
    /**
     * @brief This function callculates the positions of the crib inside the crypted msg
     * 
     * @return int The count of the positions
     */
    int store_posible_crib_position();
    /**
     * @brief This function returns the count of posible rotor variations (without repetition)
     * 
     * @return int 
     */
    int get_count_rotor_variations();
    /**
     * @brief Get the rotor combination object
     * 
     * @param i The number of the combination you want to get
     * @return int* 
     */
    vector<int> get_rotor_variation(int i);
    /**
     * @brief Returns a posible crib from position stock
     * 
     * @param i 
     * @return vector<char> 
     */
    vector<char> get_posible_crib_position(int i);
    /**
     * @brief This function returns the size of the crib
     * 
     * @return int 
     */
    int get_crib_size();
    /**
     * @brief This function returns the size of the message
     * 
     */
    int get_msg_size();
    /**
     * @brief This function returns the x-th (starts at zero) letter where the crib starts in the message
     * 
     * @return int 
     */
    int get_crib_pos(int i); 
    /**
     * @brief This function return the crypted msg as an char array pointer
     * 
     * @param c_msg_array 
     */
    char* get_msg_as_array();  
    /**
     * @brief This function return the clear crib as an char array pointer
     * 
     * @param c_msg_array 
     */
    char* get_clear_crib_as_array(); 
    /**
     * @brief This function return the i-th element from the posible crypted cribs as an char array pointer
     * 
     * @param c_msg_array 
     */
    char* get_posible_crib_position_as_array(int i);
};