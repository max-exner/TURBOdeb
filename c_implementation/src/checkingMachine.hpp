#pragma once

#include "global.hpp"
#include "enigmaTB.hpp"
#include "string.h"
#include "turingBomb.hpp"
using namespace std;

class CheckingMachine : public EnigmaTB
{
    public:
        CheckingMachine()
        : EnigmaTB()
        {
        }

        void getPlugBoardConnections(char cc_plugBoardConnections[ROUTENARRAY_XSIZE][ROUTENARRAY_XSIZE]);
        bool b_setPlugBoardConnection(char cc_plugBoardConnections[ROUTENARRAY_XSIZE][ROUTENARRAY_XSIZE]);

        bool calcPlugBoardConnections   (
                                        st_Menu st_messageRelatedMenu, 
                                        char c_TBStopResult[4], 
                                        char cc_plugBoardConnection[ABC_SIZE]
                                        );

        //help functions
        bool b_checkPlugBoardIntegity(char cc_plugBoard[2][ROUTENARRAY_XSIZE]);
        bool b_fillUpPlugBoardConnections(char cc_plugBoard[2][ROUTENARRAY_XSIZE], char c_fullPlugBoard[ABC_SIZE]);
        bool b_searchDualConnections(char cc_plugBoard[ABC_SIZE]);
        bool b_rotateXPosFromZZZ(int i_X);
    private:
        //the checking machine has no connections to the diagonal Board
        char cc_plugBoardConnections[ROUTENARRAY_XSIZE][ROUTENARRAY_XSIZE];



};