/**
 * @file diagonalBoard.cpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-27
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "global.hpp"
#include "enigmaTB.hpp"

using namespace std;

class DiagonalBoard
{
    public:
        DiagonalBoard()
        {
            this->i_connectedEnigmasTB = 0;
            this->b_setTestRegister('A');
            this->b_setTestVoltage('A');           
        }

        DiagonalBoard(char c_testRegister, char c_testVoltage)
        {
            this->i_connectedEnigmasTB = 0;
            this->b_setTestRegister(c_testRegister);
            this->b_setTestVoltage(c_testVoltage);  
        }

        bool b_setTestRegister(char c_testRegister);
        char c_getTestRegister();

        bool b_setTestVoltage(char c_testVoltage);
        char c_getTestVoltage();

        char cc_DBMatrix[ABC_SIZE][ABC_SIZE];
        void clearDBMatrix();
        void printDBMatrix();

        bool b_setEnigmaToDB(EnigmaTB ob_enigmaTB[DRUMARRAY_XSIZE]);
        void traceVoltage(char c_testRegister[ABC_SIZE]);
        


    private:
        char c_testRegister;
        char c_testVoltage;
        int i_connectedEnigmasTB;
        EnigmaTB ob_EnigmasConToDB[DRUMARRAY_XSIZE];
};