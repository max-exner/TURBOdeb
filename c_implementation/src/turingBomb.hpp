/**
 * @file turingBomb.hpp
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2019-04-17
 * 
 * @copyright Copyright (c) 2019
 * 
 */
 
#pragma once

#include "global.hpp"
//#include "enigma.hpp"
#include <iostream>
//#include "enigmaTB.hpp"
#include "diagonalBoard.hpp"


using namespace std;

class TuringBomb
{
  public:
    TuringBomb(st_Menu st_messageRelatedMenu)
    {
      //Enigma ob_fistEnigma(st_messageRelatedMenu.c_drums[0]);
      this->ob_TBDiagonalBoard.b_setTestRegister(st_messageRelatedMenu.c_test_register);
      this->ob_TBDiagonalBoard.b_setTestVoltage(st_messageRelatedMenu.c_input_voltage);
      this->b_setUpEnigmas(st_messageRelatedMenu);
      this->c_indicatorDrums[0] = 'Z';
      this->c_indicatorDrums[1] = 'Z';
      this->c_indicatorDrums[2] = 'Z';
      this->i_iteration = 0;
      this->b_finishedSearching = false;
    }

    void printDB();

    bool b_setFinishedSearching(bool b_finished);
    bool b_getFinishedSearching();
    bool b_setIteration(int i_iteration);
    int i_getIteration();
    bool b_setIndicatorDrums(char c_indicatorDrums[DRUMARRAY_YSIZE]);
    void getIndicatorDrums(char c_indicatorDrums[DRUMARRAY_YSIZE]);
    bool b_setUpEnigmas(st_Menu st_messageRelatedMenu);
    bool b_rotateEnigmasToNextPos();
    bool b_findNextStop(char c_stopResult[4]);
    char b_checkDBTestReg(char c_testReg[ABC_SIZE]);
    bool b_decrementIndicatorDrum();
    EnigmaTB ob_TBEnigmas[DRUMARRAY_XSIZE];

  private:
    DiagonalBoard ob_TBDiagonalBoard;
    char c_indicatorDrums[DRUMARRAY_YSIZE];
    int i_iteration;
    bool b_finishedSearching;



};