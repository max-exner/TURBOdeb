/**
 * @file jsonHandling.hpp
 * @author Maximilian Exner
 * @brief This is a class that handls json files. Beware it is WIP!
 * @version 0.1
 * @date 2019-04-17
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#pragma once

#include <iostream>
#include <fstream>
#include <string>
#include "json/json.h"

using namespace std;
/**
 * @brief This class does the Handling with JSON Files
 * 
 */
class jsonHandling
{
private:
    /* data */
    ofstream json_file;
    string s_file_path;
    Json::Value json_value;
    Json::Reader reader;
    /**
     * @brief This function opens the the file
     * 
     */
    void open_file();
public:
    /**
     * @brief Get the json value object
     * 
     * @param s_key The key that shoud be read
     * @return string the read value
     */
    string get_json_value(string s_key);
    /**
     * @brief This function read and parse the given file
     * 
     */
    void parse_file();

    /**
     * @brief Construct a new json Handling object and opens the given File
     * 
     * @param s_file_path The path of the json file
     */
    jsonHandling();
    jsonHandling(string s_file_path);    
    ~jsonHandling();
};

