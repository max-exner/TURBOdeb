#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <vector>
#include <sstream>

#define PI                          3.14159265358979323846  /* pi */
#define USED_ROTORS                 3
#define MAX_LENGTH_MENU             12

//descripe the sizes of the arrays corresponding to the bombs menu (needed to define parameter of functions in turingBomb.cpp/.hpp)
#define DRUMARRAY_XSIZE     12
#define DRUMARRAY_YSIZE     3
#define ROTORSARRAY_SIZE    3
#define ROUTENARRAY_XSIZE   24
#define ROUTENARRAY_YSIZE   99
#define AMOUNTOFREFLECTORS  2
#define AMOUNTOFDRUMS       5
#define ABC_SIZE            26
#define MAX_MESSAGE_SIZE    160
#define MAX_CRIB_SIZE       50

//Global Typdefs
struct st_Menu
{
    int     i_rotors[ROTORSARRAY_SIZE];
    char    c_reflector;
    char    c_test_register;
    char    c_input_voltage;

    char    c_drums[DRUMARRAY_XSIZE][DRUMARRAY_YSIZE];
    char    c_routen[ROUTENARRAY_XSIZE][ROUTENARRAY_YSIZE]; //max [24] [99]
};


