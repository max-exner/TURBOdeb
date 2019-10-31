/**
 * @file turingBomb.cpp
 * @author Niggemeyer Tobias (tobiasniggemeyer@googlemail.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-17
 * 
 * @copyright Copyright (c) 2019
 * 
 */

#include "turingBomb.hpp"
using namespace std;

int debug = 0;

bool TuringBomb::b_setFinishedSearching(bool b_finished)
{
    this->b_finishedSearching = b_finished;
    return true;
}
bool TuringBomb::b_getFinishedSearching()
{
    return this->b_finishedSearching;
}

bool TuringBomb::b_setUpEnigmas(st_Menu st_messageRelatedMenu)
{
    char c_enigmaDBConnections[2];
    char c_test[2];
    int i_DBconnectionCount;
    int i_foundNumber = 0;
    //set up the drums and reflectors
    for(int i_enigma = 0; i_enigma < DRUMARRAY_XSIZE; i_enigma = i_enigma+1)
    {
        this->ob_TBEnigmas[i_enigma].b_setDrums(st_messageRelatedMenu.i_rotors);
        this->ob_TBEnigmas[i_enigma].b_setDrumsToPos(st_messageRelatedMenu.c_drums[i_enigma]);
        this->ob_TBEnigmas[i_enigma].b_setReflector(st_messageRelatedMenu.c_reflector);

        //set up the diagonal board connections
        i_DBconnectionCount = 0;
        for(int i_route = 0; i_route < ROUTENARRAY_XSIZE; i_route = i_route +1)
        {
            for(int i_searchCon = 0; i_searchCon < ROUTENARRAY_YSIZE; i_searchCon++)
            {
                //find first number in route
                if(isdigit(st_messageRelatedMenu.c_routen[i_route][i_searchCon]))
                {
                    //cout << "Is digit : " << st_messageRelatedMenu.c_routen[i_route][i_searchCon]-48 << endl;
                    //prevent for overflow
                    if(i_route < ROUTENARRAY_XSIZE-1)
                    {
                        //check if the number has two digits
                        if(isdigit(st_messageRelatedMenu.c_routen[i_route][i_searchCon+1]))
                        {
                            i_foundNumber = ((st_messageRelatedMenu.c_routen[i_route][i_searchCon]-48)*10) +
                                            ((st_messageRelatedMenu.c_routen[i_route][i_searchCon+1])-48);
                            //cout << "Found Number 1 : " << i_foundNumber << endl;                            
                        }
                        //number consists of one digit
                        else
                        {
                            //cout << "Int Number : " << (st_messageRelatedMenu.c_routen[i_route][i_searchCon]) << endl;
                            i_foundNumber = ((st_messageRelatedMenu.c_routen[i_route][i_searchCon])-48);
                            //cout << "Found Number 2 : " << i_foundNumber << endl; 
                        }  

                        if(i_foundNumber == i_enigma+1)
                        {
                            //cout << "routen : " << i_route << endl;
                            //cout << "i_DBconnectionCount : " << i_DBconnectionCount << endl;
                            //cout << "Test : "<< c_enigmaDBConnections[i_DBconnectionCount] << endl;
                            //ACHTUNG!! TODO i_DBconnectionCount > 2 in last iteration
                            if(i_DBconnectionCount < 2)
                            {
                                c_enigmaDBConnections[i_DBconnectionCount] = st_messageRelatedMenu.c_routen[i_route][0];
                            }
                            i_DBconnectionCount = i_DBconnectionCount+1;   
                        }  
                    }


                }
            }
        }

        //cout << "Enigma " << i_enigma << " connected to :  " << c_enigmaDBConnections[0] << c_enigmaDBConnections[1] << endl;
        this->ob_TBEnigmas[i_enigma].b_setDBConnections(c_enigmaDBConnections);
       
    }
    this->ob_TBDiagonalBoard.b_setEnigmaToDB(this->ob_TBEnigmas);
    return true;
}

bool TuringBomb::b_setIndicatorDrums(char c_indicatorDrums[DRUMARRAY_YSIZE])
{
    this->c_indicatorDrums[0] = c_indicatorDrums[0];
    this->c_indicatorDrums[1] = c_indicatorDrums[1];
    this->c_indicatorDrums[2] = c_indicatorDrums[2];
    return true;
}
void TuringBomb::getIndicatorDrums(char c_indicatorDrums[DRUMARRAY_YSIZE])
{
    c_indicatorDrums[0] = this->c_indicatorDrums[0];
    c_indicatorDrums[1] = this->c_indicatorDrums[1];
    c_indicatorDrums[2] = this->c_indicatorDrums[2];
}

bool TuringBomb::b_rotateEnigmasToNextPos()
{
    int i_currentIteration;
    //char c_debugDrumPos[3];
    i_currentIteration = this->i_getIteration()+1;
    this->b_setIteration(i_currentIteration);

    for(int i_enigma = 0; i_enigma < DRUMARRAY_XSIZE; i_enigma = i_enigma+1)
    {
        this->ob_TBEnigmas[i_enigma].b_rotateToNextPos(i_currentIteration);
    }
    this->ob_TBDiagonalBoard.b_setEnigmaToDB(this->ob_TBEnigmas);
    this->b_decrementIndicatorDrum();

    //this->ob_TBEnigmas[0].getdrumPos(c_debugDrumPos);
    //cout << c_debugDrumPos[0] << c_debugDrumPos[1] << c_debugDrumPos[2] << "  " <<i_currentIteration <<endl;
    return true;

}

bool TuringBomb::b_findNextStop(char c_stopResult[4])
{
    int i_counter = 0;

    char c_indicatorDrums[DRUMARRAY_YSIZE];

    char c_DBTestRegister[ABC_SIZE];

    char c_foundStopAtLetter = ' ';

    //just avoid return value without a Stop
    c_stopResult[0] = '\0';
    c_stopResult[1] = '\0';
    c_stopResult[2] = '\0';
    c_stopResult[3] = '\0';
    
    while(!this->b_getFinishedSearching())
    {
        this->ob_TBDiagonalBoard.clearDBMatrix();
        this->ob_TBDiagonalBoard.traceVoltage(c_DBTestRegister);
        //this->ob_TBDiagonalBoard.printDBMatrix();

        
        c_foundStopAtLetter = this->b_checkDBTestReg(c_DBTestRegister);

        if(c_foundStopAtLetter != ' ')
        {
            this->getIndicatorDrums(c_indicatorDrums);

            c_stopResult[0] = c_indicatorDrums[0];
            c_stopResult[1] = c_indicatorDrums[1];
            c_stopResult[2] = c_indicatorDrums[2];
            c_stopResult[3] = c_foundStopAtLetter;
        }
        i_counter = i_counter+1;

        this->b_rotateEnigmasToNextPos();

        //we have to check this again, because we habe to rotateEnigmasToNextPos before ending this loop
        if(c_foundStopAtLetter != ' ')
        {
            return true;
            break;
        }
    }

    //Always return false if we finished searching
    if(this->b_getFinishedSearching() == true)
    {
        return false;
    }
}

char TuringBomb::b_checkDBTestReg(char c_testReg[ABC_SIZE])
{
    int i_xCounter = 0;
    char c_foundStopAtLetter = ' ';

    for(int i_regIdx=0; i_regIdx < ABC_SIZE; i_regIdx = i_regIdx+1)
    {
        if(c_testReg[i_regIdx] == 'X')
        {
            i_xCounter = i_xCounter+1;
        }
    }

    if(i_xCounter == 25 )
    {
        for(int i_regIdx=0; i_regIdx < ABC_SIZE; i_regIdx = i_regIdx+1)
        {
            if(c_testReg[i_regIdx] == ' ')
            {
                c_foundStopAtLetter = static_cast<char>(i_regIdx+65);
            }
        }
    }
    else if (i_xCounter == 1)
    {
        for(int i_regIdx=0; i_regIdx < ABC_SIZE; i_regIdx = i_regIdx+1)
        {
            if(c_testReg[i_regIdx] == 'X')
            {
                c_foundStopAtLetter = static_cast<char>(i_regIdx+65);
            }
        }
    }
    else
    {
        c_foundStopAtLetter = ' ';
    }
    return c_foundStopAtLetter;
}

void TuringBomb::printDB()
{
    this->ob_TBDiagonalBoard.printDBMatrix();
}

bool TuringBomb::b_decrementIndicatorDrum()
{
    char c_currentDrumPos[DRUMARRAY_YSIZE];
    char c_newDrumPos[DRUMARRAY_YSIZE];
    int i_currentIteration = this->i_getIteration();
    this->getIndicatorDrums(c_currentDrumPos);

    c_newDrumPos[0] = this->ob_TBEnigmas[0].c_abcOffset(c_currentDrumPos[0],-1);


    if(i_currentIteration%39 == 0)
    {
       c_newDrumPos[1] = this->ob_TBEnigmas[0].c_abcOffset(c_currentDrumPos[1],-1); 
       if(c_newDrumPos[1] == 'Z')
       {
           c_newDrumPos[2] = this->ob_TBEnigmas[0].c_abcOffset(c_currentDrumPos[2],-1);

           if(c_newDrumPos[2] == 'Z')
           {
               this->b_setFinishedSearching(true);
           }
       }
       else
       {
           c_newDrumPos[2] = c_currentDrumPos[2];
       }
       
    }
    else
    {
        c_newDrumPos[1] = c_currentDrumPos[1];
        c_newDrumPos[2] = c_currentDrumPos[2];
    }
    
    this->b_setIndicatorDrums(c_newDrumPos);
    return true;
}

bool TuringBomb::b_setIteration(int i_iteration)
{
    this->i_iteration = i_iteration;
    return true;
}

int TuringBomb::i_getIteration()
{
    return this->i_iteration;
}