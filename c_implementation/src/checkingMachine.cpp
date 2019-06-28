#include "checkingMachine.hpp"

bool CheckingMachine::calcPlugBoardConnections  (
                                                st_Menu st_messageRelatedMenu, 
                                                char c_TBStopResult[4], 
                                                char cc_plugBoardSettings[ABC_SIZE]
                                                )
{
    char c_enigmasDBConnections[2];
    char c_enigmasDrumPos[DRUMARRAY_YSIZE];
    char c_PBConnection;
    char c_TBPBConnection = c_TBStopResult[3];
    char cc_plugBoardConnection[2][ROUTENARRAY_XSIZE];

    //just create the turing bomb because of laziness =D it holds all the menu connections (no additional calculation needed)
    TuringBomb ob_TBWhichFoundTheStop(st_messageRelatedMenu);
    char c_CMDrumPos[3];
    c_CMDrumPos[0] = c_TBStopResult[0];
    c_CMDrumPos[1] = c_TBStopResult[1];
    c_CMDrumPos[2] = c_TBStopResult[2];
    //first get the letter of the menu into the cc_plugBoardConnection matrix
    for(int i_letter = 0; i_letter<ROUTENARRAY_XSIZE;i_letter=i_letter+1)
    {
        if(st_messageRelatedMenu.c_routen[i_letter][0] != '\0')
        {
            cc_plugBoardConnection[0][i_letter] = st_messageRelatedMenu.c_routen[i_letter][0];
        }    
        else
        {
            cc_plugBoardConnection[0][i_letter] = '\0';
        }
        //connect the test register and the located letter into account
        if(st_messageRelatedMenu.c_routen[i_letter][0] == st_messageRelatedMenu.c_test_register)
        {
            cc_plugBoardConnection[1][i_letter] = c_TBPBConnection;
        }
        else
        {
            cc_plugBoardConnection[1][i_letter] = '\0';
        }
        
        //cout << cc_plugBoardConnection[0][i_letter] << " - "<<cc_plugBoardConnection[1][i_letter] << endl;
    }

    //search for the connections made to the already found menu letters
    while(!this->b_checkPlugBoardIntegity(cc_plugBoardConnection))
    {
        for(int i_conCount = 0; i_conCount<ROUTENARRAY_XSIZE;i_conCount = i_conCount+1)
        {
            if(cc_plugBoardConnection[1][i_conCount] != '\0')
            {
                for(int i_enigmas = 0; i_enigmas<DRUMARRAY_XSIZE;i_enigmas=i_enigmas+1)
                {
                    ob_TBWhichFoundTheStop.ob_TBEnigmas[i_enigmas].getDBConnections(c_enigmasDBConnections);
                    ob_TBWhichFoundTheStop.ob_TBEnigmas[i_enigmas].getdrumPos(c_enigmasDrumPos);

                    if(cc_plugBoardConnection[0][i_conCount] == c_enigmasDBConnections[0])
                    {
                        this->b_setDrums(st_messageRelatedMenu.i_rotors);
                        this->b_setDrumsToPos(c_enigmasDrumPos);
                        this->b_setRingSetting(c_CMDrumPos);
                        c_PBConnection = this->c_encryptLetter(cc_plugBoardConnection[1][i_conCount]);
                        //cout << c_enigmasDBConnections[1] << " is connected to " << c_PBConnection << endl;

                        for(int i_setPB = 0; i_setPB < ROUTENARRAY_XSIZE; i_setPB = i_setPB+1)
                        {
                            if(cc_plugBoardConnection[0][i_setPB] == c_enigmasDBConnections[1])
                            {
                                cc_plugBoardConnection[1][i_setPB] = c_PBConnection;
                            }
                        }
                    }
                    if(cc_plugBoardConnection[0][i_conCount] == c_enigmasDBConnections[1])
                    {
                        this->b_setDrums(st_messageRelatedMenu.i_rotors);
                        this->b_setDrumsToPos(c_enigmasDrumPos);
                        this->b_setRingSetting(c_CMDrumPos);
                        c_PBConnection = this->c_encryptLetter(cc_plugBoardConnection[1][i_conCount]);
                        //cout << c_enigmasDBConnections[0] << " is connected to " << c_PBConnection << endl;
                        for(int i_setPB = 0; i_setPB < ROUTENARRAY_XSIZE; i_setPB = i_setPB+1)
                        {
                            if(cc_plugBoardConnection[0][i_setPB] == c_enigmasDBConnections[0])
                            {
                                cc_plugBoardConnection[1][i_setPB] = c_PBConnection;
                            }
                        }
                    }

                }
            }    
        }
    }
    
    this->b_fillUpPlugBoardConnections(cc_plugBoardConnection,cc_plugBoardSettings);
    // for(int i = 0; i<ROUTENARRAY_XSIZE;i++)
    // {
    //     cout << cc_plugBoardConnection[0][i] << " - " << cc_plugBoardConnection[1][i] << endl;
    // }
    //return true if there are no dual connections
    
    return !this->b_searchDualConnections(cc_plugBoardSettings);
}
bool CheckingMachine::b_checkPlugBoardIntegity(char cc_plugBoard[2][ROUTENARRAY_XSIZE])
{
    int i_connectionCounter = 0;
    bool b_returnVal;
    int i_availableLetterCount = 0;

    for(int i = 0; i<ROUTENARRAY_XSIZE;i++)
    {
        if(cc_plugBoard[0][i] != '\0')
        {
            i_availableLetterCount = i_availableLetterCount+1;        
        }
    }
    for(int i = 0; i<ROUTENARRAY_XSIZE;i++)
    {
        if(cc_plugBoard[1][i] != '\0')
        {
            i_connectionCounter = i_connectionCounter+1;
            
        }
    }

    if(i_connectionCounter == i_availableLetterCount)
    {
        b_returnVal = true;
    }
    else
    {
        b_returnVal = false;
    }
    return b_returnVal;
}
bool CheckingMachine::b_fillUpPlugBoardConnections(char cc_plugBoard[2][ROUTENARRAY_XSIZE], char c_fullPlugBoard[ABC_SIZE])
{
    for(int i_abcCount = 0; i_abcCount < ABC_SIZE; i_abcCount++)
    {
        c_fullPlugBoard[i_abcCount] = i_abcCount+65;
    }
    
    for(int i_pBCount = 0; i_pBCount < ROUTENARRAY_XSIZE; i_pBCount++)
    {
        c_fullPlugBoard[cc_plugBoard[0][i_pBCount]-65] = cc_plugBoard[1][i_pBCount];
        c_fullPlugBoard[cc_plugBoard[1][i_pBCount]-65] = cc_plugBoard[0][i_pBCount];
    }
}

bool CheckingMachine::b_searchDualConnections(char c_plugBoard[ABC_SIZE])
{
    for(int i_firstABCCount = 0; i_firstABCCount < ABC_SIZE; i_firstABCCount++)
    {
        for(int i_secondABCCount = 0; i_secondABCCount < ABC_SIZE; i_secondABCCount++)
        {
            if(i_firstABCCount != i_secondABCCount)
            {
                if(c_plugBoard[i_firstABCCount] == c_plugBoard[i_secondABCCount])
                {
                    return true;
                }
            }
        }
    }
    return false;
}

bool CheckingMachine::b_rotateXPosFromZZZ(int i_X)
{
    char c_startPos[DRUMARRAY_YSIZE] = {'Y','Y','Z'};
    this->b_setDrumsToPos(c_startPos);
    for(int i_rotateCount = 0; i_rotateCount < i_X; i_rotateCount++)
    {
            char c_currentDrumPos[DRUMARRAY_YSIZE];
            char c_newDrumPos[DRUMARRAY_YSIZE];
            this->getdrumPos(c_currentDrumPos);

            c_newDrumPos[2] = this->c_abcOffset(c_currentDrumPos[2],1);
            
            if(i_rotateCount % 26 == 0)
            {
                c_newDrumPos[1] = this->c_abcOffset(c_currentDrumPos[1],1); 
            }
            else
            {
                c_newDrumPos[1] = c_currentDrumPos[1];
            }
            

            if(i_rotateCount % (26*26) == 0)
            {
                c_newDrumPos[0] = this->c_abcOffset(c_currentDrumPos[0],1); 
            }
            else
            {
                c_newDrumPos[0] = c_currentDrumPos[0];
            }
            
            this->b_setDrumsToPos(c_newDrumPos);
    }
    return true;
}