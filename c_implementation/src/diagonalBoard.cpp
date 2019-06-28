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

#include "diagonalBoard.hpp"

#undef DEBUGENABLE

bool DiagonalBoard::b_setTestRegister(char c_testRegister)
{
    this->clearDBMatrix();
    this->c_testRegister = c_testRegister;
    return true;
}

char DiagonalBoard::c_getTestRegister()
{
    return this->c_testRegister;
}

bool DiagonalBoard::b_setTestVoltage(char c_testVoltage)
{
    this->clearDBMatrix();
    this->c_testVoltage = c_testVoltage;
    return true;
}
char DiagonalBoard::c_getTestVoltage()
{
    return this->c_testVoltage;
}

void DiagonalBoard::printDBMatrix()
{
    cout << "|  |A| |B| |C| |D| |E| |F| |G| |H| |I| |J| |K| |L| |M| |N| |O| |P| |Q| |R| |S| |T| |U| |V| |W| |X| |Y| |Z|" << endl;

    for( int i_yIdx = 0; i_yIdx < ABC_SIZE; i_yIdx = i_yIdx + 1 ) 
    {
        char c_abcLetter = static_cast<char>(i_yIdx+65);
        cout << "|" << c_abcLetter << "|";

        for( int i_xIdx = 0; i_xIdx < ABC_SIZE; i_xIdx = i_xIdx + 1 ) 
        {
            cout << "|" << this->cc_DBMatrix[i_yIdx][i_xIdx] << "|"<< " ";
        } 
        cout << endl;
        if(this->c_getTestRegister() == (c_abcLetter+1))
        {
            cout << endl;
        }
        else if (this->c_getTestRegister() == (c_abcLetter))
        {
            cout << endl;
        }
    }
}

void DiagonalBoard::clearDBMatrix()
{
    for( int i_yIdx = 0; i_yIdx < ABC_SIZE; i_yIdx = i_yIdx + 1 ) 
    {
        for( int i_xIdx = 0; i_xIdx < ABC_SIZE; i_xIdx = i_xIdx + 1 ) 
        {
            this->cc_DBMatrix[i_yIdx][i_xIdx] = ' ';
        } 
    }
    this->cc_DBMatrix[this->c_testRegister-65][this->c_testVoltage-65] = 'X';
}

bool DiagonalBoard::b_setEnigmaToDB(EnigmaTB ob_enigmaTB[DRUMARRAY_XSIZE])
{
    for (int i = 0; i<DRUMARRAY_XSIZE; i=i+1)
    {
        this->ob_EnigmasConToDB[i] = ob_enigmaTB[i];
    }
    return true;
}

void DiagonalBoard::traceVoltage(char c_testRegister[ABC_SIZE])
{
    char c_abcLetterRow = ' ';
    char c_abcLetterColumn = ' ';
    char c_encryptedLetter = ' ';
    int i_hitRate = 0;
    bool b_startFlag = true;

    while(i_hitRate != 0 || b_startFlag == true)
    {
        b_startFlag = false;
        i_hitRate = 0;
        for( int i_yIdx = 0; i_yIdx < ABC_SIZE; i_yIdx = i_yIdx + 1 ) 
        {
            c_abcLetterRow = static_cast<char>(i_yIdx+65);
            for( int i_xIdx = 0; i_xIdx < ABC_SIZE; i_xIdx = i_xIdx + 1 ) 
            {
                c_abcLetterColumn = static_cast<char>(i_xIdx+65);
                if(this->cc_DBMatrix[i_yIdx][i_xIdx] == 'X')
                {
                    #ifdef DEBUGENABLE
                        cout << "Find X at Row : " << c_abcLetterRow << " Column : " << c_abcLetterColumn << endl;
                    #endif
                    //make the connections corresponding to the DB-Connections
                    if  (this->cc_DBMatrix[i_xIdx][i_yIdx] == ' ')
                    {
                        this->cc_DBMatrix[i_xIdx][i_yIdx] = 'X';
                        i_hitRate = i_hitRate + 1;
                    }

                    //check if an enigmaTB is connected to this port
                    for(int i_enigmatbIdx = 0; i_enigmatbIdx < DRUMARRAY_XSIZE; i_enigmatbIdx = i_enigmatbIdx +1)
                    {
                        //find the specific enigmaTB
                        if  (this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0] == c_abcLetterRow)
                        {
                            c_encryptedLetter = this->ob_EnigmasConToDB[i_enigmatbIdx].c_encryptLetter(c_abcLetterColumn);
                            
                            if(this->cc_DBMatrix[c_encryptedLetter-65][(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1]-65)] == ' ')
                            {
                                this->cc_DBMatrix[c_encryptedLetter-65][(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1]-65)] = 'X';
                                i_hitRate = i_hitRate + 1;
                            }
                            if(this->cc_DBMatrix[(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1]-65)][c_encryptedLetter-65] == ' ')
                            {
                                this->cc_DBMatrix[(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1]-65)][c_encryptedLetter-65] = 'X';
                                i_hitRate = i_hitRate + 1;
                            } 
                            #ifdef DEBUGENABLE
                                cout << endl;
                                cout << "Enigma Nr: " << i_enigmatbIdx << " is connected to : " << this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1];
                                cout << " and encrypted :" << c_abcLetterColumn << " to " << c_encryptedLetter << endl;
                                cout << "DRUMS 012 :" << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[1] << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[2] << endl;
                                cout << "DRUMPOS 012 :" << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[1]  << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[2] << endl;
                                cout << "Write something to Line : " << (this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1]-65) << c_encryptedLetter-65 << endl;
                            #endif

                            
                        }
                        else if (this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1] == c_abcLetterRow)
                        {
                            c_encryptedLetter = this->ob_EnigmasConToDB[i_enigmatbIdx].c_encryptLetter(c_abcLetterColumn);
                            if(this->cc_DBMatrix[c_encryptedLetter-65][(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0]-65)] == ' ')
                            {
                                this->cc_DBMatrix[c_encryptedLetter-65][(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0]-65)] = 'X';
                                i_hitRate = i_hitRate + 1;
                            } 
                            if(this->cc_DBMatrix[(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0]-65)][c_encryptedLetter-65] == ' ')
                            {
                                this->cc_DBMatrix[(this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0]-65)][c_encryptedLetter-65] = 'X';
                                i_hitRate = i_hitRate + 1;
                            } 
                            #ifdef DEBUGENABLE
                                cout << endl;
                                cout << "Enigma Nr: " << i_enigmatbIdx << " is connected to : " << this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[1];
                                cout << " and encrypted :" << c_abcLetterColumn << " to " << c_encryptedLetter << endl;
                                cout << "DRUMS 012 :" << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[1] << this->ob_EnigmasConToDB[i_enigmatbIdx].i_drums[2] << endl;
                                cout << "DRUMPOS 012 :" << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[0] << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[1]  << this->ob_EnigmasConToDB[i_enigmatbIdx].c_drumPos[2] << endl;

                                cout << "Write something to Line : " << (this->ob_EnigmasConToDB[i_enigmatbIdx].c_DBConnections[0]-65)<< c_encryptedLetter-65 << endl;
                            #endif                           
                        }                       
                    }
                    //break;
                }
                //break;
            } 
        }
        //this->printDBMatrix();
        //cout << "Hitrate :  " << i_hitRate << endl;
        //getchar();
    }
    // just to create "return" value
    for( int i_xIdx = 0; i_xIdx < ABC_SIZE; i_xIdx = i_xIdx + 1 ) 
    {
        c_testRegister[i_xIdx] = this->cc_DBMatrix[this->c_testRegister-65][i_xIdx];
    }
    //getchar(); 
}

