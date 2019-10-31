/**
 * @file enigma.cpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-19
 * 
 * @copyright Copyright (c) 2019
 * 
 */

#include "checkingMachine.hpp"
#include "enigma.hpp"
using namespace std;

// Set


bool Enigma::b_rotateToNextPos()
{
    char c_nextDrumPos[DRUMARRAY_YSIZE];
    char c_currentDrumPos[DRUMARRAY_YSIZE];  
    this->getdrumPos(c_currentDrumPos);
    c_nextDrumPos[2] = this->c_abcOffset(c_currentDrumPos[2],1); //253 FAK
    
    if(c_currentDrumPos[2] == this->c_abcOffset(this->c_changePointDrums[2],-1))
    {
        c_nextDrumPos[1] = this->c_abcOffset(c_currentDrumPos[1],1);
        c_nextDrumPos[0] = c_currentDrumPos[0];
    }
    else if (c_currentDrumPos[1] == this->c_abcOffset(this->c_changePointDrums[1],-1))
    {
        c_nextDrumPos[1] = this->c_abcOffset(c_currentDrumPos[1],1);
        c_nextDrumPos[0] = this->c_abcOffset(c_currentDrumPos[0],1);
    }
    else
    {
        c_nextDrumPos[1] = c_currentDrumPos[1];
        c_nextDrumPos[0] = c_currentDrumPos[0];
    }
    
    //cout << "Pos : " << c_nextDrumPos[0] << c_nextDrumPos[1] << c_nextDrumPos[2] << endl;
    this->b_setDrumsToPos(c_nextDrumPos);
    return true;
}

bool Enigma::b_setPlugBoard(char cc_plugBoard[ABC_SIZE])
{
    for(int i_row=0 ; i_row < ABC_SIZE; i_row++)
    {
        this->cc_plugBoard[i_row] = cc_plugBoard[i_row];
    }
    return true;
}
bool Enigma::b_setChangePos(int i_withRotors[ROTORSARRAY_SIZE])
{
    this->c_changePointDrums[0] = this->c_defaultChangePos[i_withRotors[0]-1];
    this->c_changePointDrums[1] = this->c_defaultChangePos[i_withRotors[1]-1];
    this->c_changePointDrums[2] = this->c_defaultChangePos[i_withRotors[2]-1];
}

void Enigma::getPlugBoard(char cc_plugBoard[ABC_SIZE])
{
    for(int i_row=0 ; i_row < ABC_SIZE; i_row++)
    {
        cc_plugBoard[i_row] = this->cc_plugBoard[i_row];
    }
}

char Enigma::c_encryptLetter(char c_letterToEncrypt)
{
    char c_encryptedLetter;
    //cout << "Stage 1: " << c_letterToEncrypt << endl;
    c_encryptedLetter = this->cc_plugBoard[c_letterToEncrypt-65];
    //cout << "Stage 2: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_forwardThroughDrum(3,c_encryptedLetter);
    //cout << "Stage 3: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_forwardThroughDrum(2,c_encryptedLetter);
    //cout << "Stage 4: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_forwardThroughDrum(1,c_encryptedLetter);
    //cout << "Stage 5: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_throughReflector(this->c_reflector, c_encryptedLetter);
    //cout << "Stage 6: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_backwardThroughDrum(1,c_encryptedLetter);
    //cout << "Stage 7: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_backwardThroughDrum(2,c_encryptedLetter);
    //cout << "Stage 8: " << c_encryptedLetter << endl;
    c_encryptedLetter = this->c_backwardThroughDrum(3,c_encryptedLetter);
    //cout << "Stage 9: " << c_encryptedLetter << endl;
    for(int i_letterCount = 0; i_letterCount < ABC_SIZE; i_letterCount++)
    {
        if(this->cc_plugBoard[i_letterCount] == c_encryptedLetter)
        {
            c_encryptedLetter = this->c_defaultPlugBoard[i_letterCount];
            break;
        }
    }
    //cout << "Stage 1: " << c_encryptedLetter << endl;
    return c_encryptedLetter;
}
void Enigma::decryptCrip(char c_crib[MAX_CRIB_SIZE],char c_decryptedCrib[MAX_CRIB_SIZE],int i_cribSize)
{
    char c_startPos[3] = {'Y','W','Y'};
    this->b_setDrumsToPos(c_startPos);
    for(int i = 0; i<i_cribSize; i++)
    {
        this->b_rotateToNextPos();
        c_decryptedCrib[i] = this->c_encryptLetter(c_crib[i]);
    }

}
bool Enigma::b_adjustPBConnections(
                                    char c_crib[MAX_CRIB_SIZE],
                                    char c_clearCrib[MAX_CRIB_SIZE],
                                    int i_cribSize, 
                                    char c_plugBoardSetting[ABC_SIZE],
                                    st_Menu st_MessageRelatedMenu,
                                    char c_ringSetting[DRUMARRAY_YSIZE]
                                )
{
    char c_decryptedCrib[MAX_CRIB_SIZE];
    int i_errorIndicator[MAX_CRIB_SIZE];
    bool b_trySecondStrategy = false;
    int debug;
    int i_adjustCounter = 0;
    CheckingMachine ob_adjustCheckingMachine;
    //first decrypt the crib with the parameters calculated by the turing bomb
    this->decryptCrip(c_crib,c_decryptedCrib,i_cribSize);

    //now try to optimize the plug board settings till the decrypted crib is equal to the crib
    while(this->f_checkCoverage(c_decryptedCrib,c_clearCrib, i_cribSize,i_errorIndicator) != 100 && i_adjustCounter < 5)
    {
        //First Strategy: if for example letter K -> C instead of the right letter P we connect C to P on the plugboard (if it is not alread connected)
        for(int i_indicatorCount = 0; i_indicatorCount < MAX_CRIB_SIZE; i_indicatorCount++)
        {
            
            //find the error in the crib
            if(i_errorIndicator[i_indicatorCount] == 1)
            {
                //check if the wrong decrypted letter is alread connected 
                if(c_plugBoardSetting[c_decryptedCrib[i_indicatorCount]-65] == c_decryptedCrib[i_indicatorCount])
                {
                    //check if the desired letter is aleread connected
                    if(c_plugBoardSetting[c_clearCrib[i_indicatorCount]-65] == c_clearCrib[i_indicatorCount])
                    {
                        //modify the plug board
                        //connect the letters in both direction T->X and X->T and update the plugboard 
                        //TODO this solution is not good .... why does this chars get \0 ?
                        if(c_decryptedCrib[i_indicatorCount] != '\0' && c_clearCrib[i_indicatorCount] != '\0')
                        {
                            c_plugBoardSetting[c_clearCrib[i_indicatorCount]-65] = c_decryptedCrib[i_indicatorCount];
                            c_plugBoardSetting[c_decryptedCrib[i_indicatorCount]-65] = c_clearCrib[i_indicatorCount];
                            this->b_setPlugBoard(c_plugBoardSetting);
                        }

                        i_errorIndicator[i_indicatorCount] = 0;
                    }
                }
            }
        }

        //Second Strategy: Use the checking machine to find the letter in the current which is connected to the desired letter
        // 1. setup checking machine with start pos for the wrong decrypted letter WETCER ...... C should be T ..... Pos 4 -> ZZD
        // 2. check if the desired letter is alread connected to the plug board 
        // 2.1. if not search for the letter which encrypts to T
        // 2.2. else search for the letter which encrypts the letter which is connected to T on the plugboard

        //1
        //ob_adjustCheckingMachine.b_setDrumsToPos(c_startPos);
        ob_adjustCheckingMachine.b_setDrums(st_MessageRelatedMenu.i_rotors);
        ob_adjustCheckingMachine.b_setReflector(st_MessageRelatedMenu.c_reflector);
        ob_adjustCheckingMachine.b_setRingSetting(c_ringSetting);

        for(int i_indicatorCount = 0; i_indicatorCount < MAX_CRIB_SIZE; i_indicatorCount++)
        {
            //find the error in the crib
            if(i_errorIndicator[i_indicatorCount] == 1)
            {
                //2.1
                //check if the wrong decrypted letter is alread connected 
                if(c_plugBoardSetting[c_decryptedCrib[i_indicatorCount]-65] == c_decryptedCrib[i_indicatorCount])
                {
                    //check if the desired letter is aleread connected
                    if(c_plugBoardSetting[c_clearCrib[i_indicatorCount]-65] == c_clearCrib[i_indicatorCount])
                    {
                        //setup checking machine for this specific case
                        ob_adjustCheckingMachine.b_rotateXPosFromZZZ(i_indicatorCount+1);
                        b_trySecondStrategy = false;
                    }
                    else
                    {
                        b_trySecondStrategy = true;
                    }
                    
                } 
                //2.2
                else
                {
                    b_trySecondStrategy = true;
                }

                if(b_trySecondStrategy)
                {
                    char c_debugPos[3];
                    char c_lettersPBConnection;
                    //setup checking machine for this specific case
                    ob_adjustCheckingMachine.b_rotateXPosFromZZZ(i_indicatorCount+1);
                    ob_adjustCheckingMachine.getdrumPos(c_debugPos);
                    //search for the plug board connection of the desired Letter
                    for(int i_PBcount = 0; i_PBcount < ABC_SIZE; i_PBcount++)
                    {
                        if(c_plugBoardSetting[i_PBcount] == c_clearCrib[i_indicatorCount])
                        {
                            c_lettersPBConnection = static_cast<char>(i_PBcount+65);
                        }
                    }


                    //search for the letter which ends up in the correct decryption
                    for(int i_ABCCount = 0; i_ABCCount < ABC_SIZE; i_ABCCount++)
                    {
                        char c_abcLetter = static_cast<char>(i_ABCCount+65);
                        char c_encryptedLetter = ob_adjustCheckingMachine.c_encryptLetter(c_abcLetter);
                        
                        if(c_encryptedLetter == c_lettersPBConnection)
                        {
                            //TODO this solution is not good .... why does this chars get \0 ?
                            if(c_abcLetter != '\0' && c_crib[i_indicatorCount] != '\0')
                            {
                                c_plugBoardSetting[c_crib[i_indicatorCount]-65] = c_abcLetter;
                                c_plugBoardSetting[c_abcLetter-65] = c_crib[i_indicatorCount];
                                this->b_setPlugBoard(c_plugBoardSetting);
                            }                           
                            i_errorIndicator[i_indicatorCount] = 0;
                        }  
                    }
                }
                        

            }
        }
        i_adjustCounter ++;
        this->decryptCrip(c_crib,c_decryptedCrib,i_cribSize);
        
        
    }
    if(this->f_checkCoverage(c_decryptedCrib,c_clearCrib, i_cribSize,i_errorIndicator) > 90)
    {
        return true;
    }
    else
    {
        return false;
    }
    
}

float Enigma::f_checkCoverage(char c_decryptedCrib[MAX_CRIB_SIZE], char c_clearCrib[MAX_CRIB_SIZE],int i_cribSize, int i_errorIndicator[MAX_CRIB_SIZE])
{
    int i_coverageCounter = 0;
    float f_coverage = 0.00;
    for(int i_cribCount = 0; i_cribCount < i_cribSize; i_cribCount++)
    {
        if(c_decryptedCrib[i_cribCount] == c_clearCrib[i_cribCount])
        {
            i_coverageCounter++;
            i_errorIndicator[i_cribCount] = 0;
        }
        else
        {
            i_errorIndicator[i_cribCount] = 1;
        }
        
    }

    f_coverage = ((float(i_coverageCounter)/float(i_cribSize))*100);
    return f_coverage;

}


bool Enigma::b_decryptMessage (    
                                char c_message[MAX_MESSAGE_SIZE], 
                                int i_messageSize,  
                                char c_crib[MAX_CRIB_SIZE],
                                char c_clearCrib[MAX_CRIB_SIZE], 
                                int i_cribSize,
                                int i_cribPos,
                                char c_plugBoardSetting[ABC_SIZE],
                                st_Menu st_MessageRelatedMenu,
                                char c_ringSetting[DRUMARRAY_YSIZE]
                            )
{
    if(this->b_adjustPBConnections(c_crib,c_clearCrib,i_cribSize,c_plugBoardSetting, st_MessageRelatedMenu,c_ringSetting))
    {
        char c_startPosE[3] = {'Y','W','Y'};
        this->b_setDrumsToPos(c_startPosE);
        for(int i_decryptCount = i_cribPos; i_decryptCount < i_messageSize; i_decryptCount++)
        {
            this->b_rotateToNextPos();
            cout << this->c_encryptLetter(c_message[i_decryptCount]);
        }
        cout << endl;
        return true;
    }
    else
    {
        return false;
    }
    

}