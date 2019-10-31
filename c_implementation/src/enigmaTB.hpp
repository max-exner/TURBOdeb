/**
 * @file enigmaTB.hpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-27
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#pragma once

#include"global.hpp"


using namespace std;

//this offsets were "faults" on the wiring of the drums (see http://www.lysator.liu.se/~koma/turingbombe/TuringBombeTutorial.pdf)
#define ROTOROFFSET1 1
#define ROTOROFFSET2 1
#define ROTOROFFSET3 1
#define ROTOROFFSET4 2
#define ROTOROFFSET5 3

class EnigmaTB
{
    public:
        char c_DBConnections[2];
        char c_defaultReflector = 'B';
        char c_defaultDBConnections[2] = {' ',' '};
        char c_defaultDrumPos[ROTORSARRAY_SIZE] = {'Z','Z','Z'};
        int i_defaultDrums[ROTORSARRAY_SIZE] = {1,1,1};
        char c_defaultRingSetting[DRUMARRAY_XSIZE] = {'Z','Z','Z'};
        int i_defaultCoreOffsetDrums[AMOUNTOFDRUMS] = {1,1,1,2,3};
        char cc_drumConnectionsForwardBackward[AMOUNTOFDRUMS*2][ABC_SIZE]  = {
//                                        Drum 1
//                                          {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                            {'E','K','M','F','L','G','D','Q','V','Z','N','T','O','W','Y','H','X','U','S','P','A','I','B','R','C','J'},
                                            {'U','W','Y','G','A','D','F','P','V','Z','B','E','C','K','M','T','H','X','S','L','R','I','N','Q','O','J'},
//                                        Drum 2 AJDKSIRUXBLHWTMCQGZNPYFVOE
//                                          {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                            {'A','J','D','K','S','I','R','U','X','B','L','H','W','T','M','C','Q','G','Z','N','P','Y','F','V','O','E'},
                                            {'A','J','P','C','Z','W','R','L','F','B','D','K','O','T','Y','U','Q','G','E','N','H','X','M','I','V','S'},
//                                        Drum 3 BDFHJLCPRTXVZNYEIWGAKMUSQO
//                                          {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                            {'B','D','F','H','J','L','C','P','R','T','X','V','Z','N','Y','E','I','W','G','A','K','M','U','S','Q','O'},
                                            {'T','A','G','B','P','C','S','D','Q','E','U','F','V','N','Z','H','Y','I','X','J','W','L','R','K','O','M'},
//                                        Drum 4
//                                          {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                            {'E','S','O','V','P','Z','J','A','Y','Q','U','I','R','H','X','L','N','F','T','G','K','D','C','M','W','B'},
                                            {'H','Z','W','V','A','R','T','N','L','G','U','P','X','Q','C','E','J','M','B','S','K','D','Y','O','I','F'},
//                                        Drum 5 VZBRGITYUPSDNHLXAWMJQOFECK
//                                          {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}; 
                                            {'V','Z','B','R','G','I','T','Y','U','P','S','D','N','H','L','X','A','W','M','J','Q','O','F','E','C','K'},
                                            {'Q','C','Y','L','X','W','E','N','F','T','Z','O','S','M','V','J','U','D','K','G','I','A','R','P','H','B'}
                                        };
    // this array discribes the connections of the different reflector types
    char c_reflectors[AMOUNTOFREFLECTORS][ABC_SIZE] = {
    //                                                  Reflector B YRUHQSLDPXNGOKMIEBFZCWVJAT
    //                                                  {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                                        {'Y','R','U','H','Q','S','L','D','P','X','N','G','O','K','M','I','E','B','F','Z','C','W','V','J','A','T'},  
    //                                                  Reflector C
    //                                                  {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
                                                        {'F','V','P','J','I','A','O','Y','E','D','R','Z','X','W','G','C','T','K','U','Q','S','B','N','M','H','L'}
                                                    };
        EnigmaTB()
        {
            this->b_setDBConnections(c_defaultDBConnections);
            this->b_setDrums(i_defaultDrums);
            this->b_setDrumsToPos(c_defaultDrumPos);
            this->b_setReflector(c_defaultReflector);
            this->b_setIteration(0);
            //this->b_setRingSetting(c_defaultRingSetting);
        }

        EnigmaTB(int i_withRotors[ROTORSARRAY_SIZE], char c_withRotorStartPos[ROTORSARRAY_SIZE], char c_refelectorTyp, char cc_DBConnections[2], char c_ringSetting[DRUMARRAY_YSIZE])
        {
            this->b_setDBConnections(cc_DBConnections);
            this->b_setDrums(i_withRotors);
            this->b_setDrumsToPos(c_withRotorStartPos);
            this->b_setReflector(c_refelectorTyp);
            this->b_setIteration(0);
            this->b_setRingSetting(c_ringSetting);
        } 

        bool b_setDrums(int i_withDrums[ROTORSARRAY_SIZE]);
        bool b_setDrumsToPos(char c_withDrumStartPos[ROTORSARRAY_SIZE]);
        bool b_setReflector(char c_withReflectorTyp);
        bool b_setDBConnections(char cc_DBConnections[2]);
        bool b_setIteration(int i_toIteration);
        bool b_setRingSetting(char c_ringSetting[DRUMARRAY_YSIZE]);
        bool b_setCoreOffset(int i_coreOffsetDrums[AMOUNTOFDRUMS]);

        void getDrums(int i_drums[ROTORSARRAY_SIZE]);
        void getdrumPos(char c_drumPos[ROTORSARRAY_SIZE]);
        char c_getRefelector(char c_refelector);
        void getDBConnections(char cc_DBConnections[2]);
        int i_getInteration();
        void getRingSetting(char c_ringSetting[DRUMARRAY_YSIZE]);
        void getCoreOffset(int i_coreOffsetDrums[AMOUNTOFDRUMS]);

        bool b_rotateToNextPos(int i_currentIteration);

        // the inputLetter descripes the input in accordance to the AAA setting 
        // it is not necessary to know the position of the drums .... if you press the A key of the Enigma the A contact gets the current
        char c_forwardThroughDrum(int i_drum, char c_inputLetter);
        char c_backwardThroughDrum(int i_drum, char c_inputLetter);
        char c_throughReflector(char c_reflector, char c_inputLetter);

        char c_encryptLetter(char c_letterToEncrypt);



        //help function
        char c_abcOffset(char c_startValue, int i_offset);
        char c_normalizeToABC(int i_offset);

    //private:
        char c_drumPos[ROTORSARRAY_SIZE];
        int i_drums[ROTORSARRAY_SIZE];
        char c_reflector;
        int i_iteration;

        //This offset discripes an offset which results from an error of the drums (http://www.lysator.liu.se/~koma/turingbombe/TuringBombeTutorial.pdf)
        int i_coreOffsetDrums[AMOUNTOFDRUMS] = {1,1,1,2,3};
        //the starting position is always Z
        int i_ringSetting[DRUMARRAY_YSIZE] = {25,25,25};
    private:

        

};
