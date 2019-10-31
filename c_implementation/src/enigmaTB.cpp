/**
 * @file enigmaTB.cpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-27
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "enigmaTB.hpp"

bool EnigmaTB::b_setDrums(int i_withDrums[ROTORSARRAY_SIZE])
{
    this->i_drums[0] = i_withDrums[0];
    this->i_drums[1] = i_withDrums[1];
    this->i_drums[2] = i_withDrums[2];
    return true;
}
bool EnigmaTB::b_setDrumsToPos(char c_withDrumStartPos[ROTORSARRAY_SIZE])
{
    this->c_drumPos[0] = c_withDrumStartPos[0];
    this->c_drumPos[1] = c_withDrumStartPos[1];
    this->c_drumPos[2] = c_withDrumStartPos[2];
    return true;
}
bool EnigmaTB::b_setReflector(char c_withReflectorTyp)
{
    this->c_reflector = c_withReflectorTyp;
    return true;
}
bool EnigmaTB::b_setDBConnections(char cc_DBConnections[2])
{
    this->c_DBConnections[0] = cc_DBConnections[0];
    this->c_DBConnections[1] = cc_DBConnections[1];
    return true;
}
bool EnigmaTB::b_setIteration(int i_toIteration)
{
    this->i_iteration = i_toIteration;
    return true;
}
bool EnigmaTB::b_setRingSetting(char c_ringSetting[DRUMARRAY_YSIZE])
{
    this->i_ringSetting[0] = c_ringSetting[0]-65;
    this->i_ringSetting[1] = c_ringSetting[1]-65;
    this->i_ringSetting[2] = c_ringSetting[2]-65;
    return true;
}
bool EnigmaTB::b_setCoreOffset(int i_coreOffsetDrums[AMOUNTOFDRUMS])
{
    for(int i_coreCount = 0; i_coreCount<AMOUNTOFDRUMS; i_coreCount++)
    {
        this->i_coreOffsetDrums[i_coreCount] = i_coreOffsetDrums[i_coreCount];
    }  
}


void EnigmaTB::getDrums(int i_drums[ROTORSARRAY_SIZE])
{
    i_drums[0] = this->i_drums[0];
    i_drums[1] = this->i_drums[1];
    i_drums[2] = this->i_drums[2];
}
void EnigmaTB::getdrumPos(char c_drumPos[ROTORSARRAY_SIZE])
{
    c_drumPos[0] = this->c_drumPos[0];
    c_drumPos[1] = this->c_drumPos[1];
    c_drumPos[2] = this->c_drumPos[2];
}
char EnigmaTB::c_getRefelector(char c_refelector)
{
    return this->c_reflector;
}
void EnigmaTB::getDBConnections(char c_DBConnections[2])
{
    c_DBConnections[0] = this->c_DBConnections[0];
    c_DBConnections[1] = this->c_DBConnections[1];
}
int EnigmaTB::i_getInteration()
{
    return this->i_iteration;
}
void EnigmaTB::getRingSetting(char c_ringSettings[DRUMARRAY_YSIZE])
{
    c_ringSettings[0] = this->i_ringSetting[0]+65;
    c_ringSettings[1] = this->i_ringSetting[1]+65;
    c_ringSettings[2] = this->i_ringSetting[2]+65;
}
void EnigmaTB::getCoreOffset(int i_coreOffsetDrums[AMOUNTOFDRUMS])
{
    for(int i_coreCount = 0; i_coreCount<AMOUNTOFDRUMS; i_coreCount++)
    {
        i_coreOffsetDrums[i_coreCount] = this->i_coreOffsetDrums[i_coreCount];
    }  
}


bool EnigmaTB::b_rotateToNextPos(int i_currentIteration)
{
    char c_currentDrumPos[DRUMARRAY_YSIZE];
    char c_newDrumPos[DRUMARRAY_YSIZE];
    this->getdrumPos(c_currentDrumPos);

    c_newDrumPos[0] = this->c_abcOffset(c_currentDrumPos[0],1);
    
    if(i_currentIteration%39 == 0)
    {
       c_newDrumPos[1] = this->c_abcOffset(c_currentDrumPos[1],1); 
    }
    else
    {
        c_newDrumPos[1] = c_currentDrumPos[1];
    }
    

    if(i_currentIteration%(39 * 26) == 0)
    {
        c_newDrumPos[2] = this->c_abcOffset(c_currentDrumPos[2],1); 
    }
    else
    {
        c_newDrumPos[2] = c_currentDrumPos[2];
    }
    
    this->b_setDrumsToPos(c_newDrumPos);
    return true;
}
char EnigmaTB::c_forwardThroughDrum(int i_drum, char c_inputLetter)
{
    //fist calculate whitch contact of the first drum is connected to the input letter 
    //Example: drum: Z -> the conntact of input A is connected to Z
    //sadly this is not that easy because we have to take care of the i_coreOffsetDrums and the i_ringSetting

    char c_inputOfDrum;
    char c_outputOfDrum;
    char c_outputOfDrumNorm;
    char c_drumOffset;
    int i_offsetIn;
    int i_offsetOut;
    int i_inputLetterNormalized;
    int i_drumOffsetNormalized;
    int i_outputOfDrumNormalized;

    //fist normalize the _inputLetter (no ascii anymore)
    i_inputLetterNormalized = c_inputLetter - 64; //A -> 1

    //now get the offset of the drum 
    c_drumOffset = this->c_drumPos[i_drum-1];

    //normalize the c_drumOffset
    i_drumOffsetNormalized = c_drumOffset-65; //A -> 0

    //i_offsetIn represents the offset from A to the input of the Drum (could be negativ)
    i_offsetIn = i_inputLetterNormalized + i_drumOffsetNormalized - this->i_coreOffsetDrums[this->i_drums[i_drum-1]-1] - this->i_ringSetting[i_drum-1];

    //c_inputDrum represents the char of the drum, which is applied with voltage if the c_inputLetter of the "Enigma" is pressed
    //cout << "i_offsetIn : " << i_offsetIn << endl; 
    c_inputOfDrum = c_normalizeToABC(i_offsetIn);
    //cout << "c_inputOfDrum : " << c_inputOfDrum << endl; 
    //now look into the wiring of that drum to geht the other side of the drum
    c_outputOfDrum = this->cc_drumConnectionsForwardBackward[(this->i_drums[i_drum-1]*2)-2][c_inputOfDrum-65];

    i_outputOfDrumNormalized = c_outputOfDrum-64; // A = 1

    //now we need to normalize the c_outputOfDrum value 
    //Example: if the output of the drum is A but the drum is not standing in the A-position this output is connected to another input
    // of the next drum.
    i_offsetOut = i_outputOfDrumNormalized - i_drumOffsetNormalized + this->i_coreOffsetDrums[this->i_drums[i_drum-1]-1] + this->i_ringSetting[i_drum-1];

    c_outputOfDrumNorm = c_normalizeToABC(i_offsetOut);
    
    return c_outputOfDrumNorm;

}
char EnigmaTB::c_throughReflector(char c_reflector, char c_inputLetter)
{
    char c_outputLetter;
    switch(c_reflector)
    {
        case 'B':
            c_outputLetter = this->c_reflectors[0][c_inputLetter-65];
        break;
        case 'C':
            c_outputLetter = this->c_reflectors[1][c_inputLetter-65];
        break;
    }

    return c_outputLetter;
}
char EnigmaTB::c_backwardThroughDrum(int i_drum, char c_inputLetter)
{
    //fist calculate whitch contact of the first drum is connected to the input letter 
    //Example: drum: Z -> the conntact of input A is connected to Z
    //sadly this is not that easy because we have to take care of the i_coreOffsetDrums and the i_ringSetting

    char c_inputOfDrum;
    char c_outputOfDrum;
    char c_outputOfDrumNorm;
    char c_drumOffset;
    int i_offsetIn;
    int i_offsetOut;
    int i_inputLetterNormalized;
    int i_drumOffsetNormalized;
    int i_outputOfDrumNormalized;

    //fist normalize the _inputLetter (no ascii anymore)
    i_inputLetterNormalized = c_inputLetter - 64; //A -> 1

    //now get the offset of the drum 
    c_drumOffset = this->c_drumPos[i_drum-1];

    //normalize the c_drumOffset
    i_drumOffsetNormalized = c_drumOffset-65; //A -> 0

    //i_offsetIn represents the offset from A to the input of the Drum (could be negativ)
    i_offsetIn = i_inputLetterNormalized + i_drumOffsetNormalized - this->i_coreOffsetDrums[this->i_drums[i_drum-1]-1]- this->i_ringSetting[i_drum-1];

    //c_inputDrum represents the char of the drum, which is applied with voltage if the c_inputLetter of the "Enigma" is pressed
    c_inputOfDrum = c_normalizeToABC(i_offsetIn);

    //now look into the wiring of that drum to geht the other side of the drum
    c_outputOfDrum = this->cc_drumConnectionsForwardBackward[(this->i_drums[i_drum-1]*2)-1][c_inputOfDrum-65];

    i_outputOfDrumNormalized = c_outputOfDrum-64; // A = 1

    //now we need to normalize the c_outputOfDrum value 
    //Example: if the output of the drum is A but the drum is not standing in the A-position this output is connected to another input
    // of the next drum.
    i_offsetOut = i_outputOfDrumNormalized - i_drumOffsetNormalized + this->i_coreOffsetDrums[this->i_drums[i_drum-1]-1]+ this->i_ringSetting[i_drum-1];

    c_outputOfDrumNorm = c_normalizeToABC(i_offsetOut);
    
    return c_outputOfDrumNorm;
}

char EnigmaTB::c_encryptLetter(char c_letterToEncrypt)
{  
    char c_encryptedLetter;

    c_encryptedLetter = this->c_forwardThroughDrum(3,c_letterToEncrypt);

    c_encryptedLetter = this->c_forwardThroughDrum(2,c_encryptedLetter);

    c_encryptedLetter = this->c_forwardThroughDrum(1,c_encryptedLetter);

    c_encryptedLetter = this->c_throughReflector(this->c_reflector, c_encryptedLetter);

    c_encryptedLetter = this->c_backwardThroughDrum(1,c_encryptedLetter);

    c_encryptedLetter = this->c_backwardThroughDrum(2,c_encryptedLetter);

    c_encryptedLetter = this->c_backwardThroughDrum(3,c_encryptedLetter);

    return c_encryptedLetter;
}

//help functions
char EnigmaTB::c_abcOffset(char c_startValue, int i_offset)
{
    char c_abcOffsetValue = ' ';
    if (c_startValue+i_offset > 90)
    {
        c_abcOffsetValue = 64+(abs((c_startValue+i_offset)-90));
    }
    else if (c_startValue+i_offset < 65)
    {
        c_abcOffsetValue = 91-(abs(65-c_startValue-i_offset));
    }
    else
    {
        c_abcOffsetValue = c_startValue+i_offset;
    }
    return c_abcOffsetValue;
}

char EnigmaTB::c_normalizeToABC(int i_offset)
{
    char c_returnValue;
    if(i_offset < 1)
    {
        i_offset = i_offset+26;
    }
    else if (i_offset > 26)
    {
        i_offset = i_offset-26;
    }

    c_returnValue = i_offset+64;

    return c_returnValue;
    
}