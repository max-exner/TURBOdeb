/**
 * @file enigma.hpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-19
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "global.hpp"
#include "enigmaTB.hpp"
#include <map>
using namespace std;

class Enigma : public EnigmaTB
{
public:
    int i_defaultRotors[ROTORSARRAY_SIZE] = {1,1,1};
    char c_defaultRotorPos[ROTORSARRAY_SIZE] = {'A','A','A'};
    char c_defaultPlugBoard[ABC_SIZE] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
    char c_defaultReflector = 'B';
    char c_defaultDBConnection[2] = {' ', ' '};
    char c_defaultChangePos[AMOUNTOFDRUMS] = {'R','F','W','K','A'};
    Enigma():EnigmaTB()
    {
        this->b_setPlugBoard(c_defaultPlugBoard);
    }
    Enigma(int i_withRotors[ROTORSARRAY_SIZE], char c_withRotorStartPos[ROTORSARRAY_SIZE], char c_refelectorTyp, char c_ringSetting[DRUMARRAY_YSIZE])
    : EnigmaTB(i_withRotors, c_withRotorStartPos, c_refelectorTyp, c_defaultDBConnection, c_ringSetting)
    {
        this->b_setPlugBoard(c_defaultPlugBoard);
        this->b_setChangePos(i_withRotors);
    }

    
    

    //function prototypes
    bool b_rotateToNextPos();
    bool b_setPlugBoard(char cc_plugBoard[ABC_SIZE]);
    bool b_setChangePos(int i_withRotors[ROTORSARRAY_SIZE]);

    void getPlugBoard(char cc_plugBoard[ABC_SIZE]);
    void getChangePos(int i_withRotors[ROTORSARRAY_SIZE]);

    char c_encryptLetter(char c_letterToEncrypt);
    bool b_adjustPBConnections(
                                char c_decryptedCrib[MAX_CRIB_SIZE],
                                char c_clearCrib[MAX_CRIB_SIZE],
                                int i_cribSize,
                                char c_plugBoardSetting[ABC_SIZE],
                                st_Menu st_MessageRelatedMenu,
                                char c_ringSetting[DRUMARRAY_YSIZE]
                            );
    void decryptCrip(char c_crib[MAX_CRIB_SIZE],char c_decryptedCrib[MAX_CRIB_SIZE],int i_cribSize);
    float f_checkCoverage(char c_crib[MAX_CRIB_SIZE], char c_clearCrib[MAX_CRIB_SIZE],int i_cribSize, int i_errorIndicator[MAX_CRIB_SIZE]);
    bool b_decryptMessage(  
                        char c_message[MAX_MESSAGE_SIZE], 
                        int i_messageSize,  
                        char c_crib[MAX_CRIB_SIZE],
                        char c_clearCrib[MAX_CRIB_SIZE], 
                        int i_cribSize,
                        int i_cribPos,
                        char c_plugBoardSetting[ABC_SIZE],
                        st_Menu st_MessageRelatedMenu,
                        char c_ringSetting[DRUMARRAY_YSIZE]
                        );

    

private:
    char cc_plugBoard[ABC_SIZE];
    char c_changePointDrums[ROTORSARRAY_SIZE];

    

    
};