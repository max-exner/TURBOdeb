/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include "xparameters.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xil_testmem.h"

#include "platform.h"
#include "xil_printf.h"

#include "xbram.h"

XBram_Config *ConfigPtr;
XBram Bram;

uint32_t axi_init(){
	int Status;
	ConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (ConfigPtr == (XBram_Config *) NULL) {
		xil_printf("Fail");
		return XST_FAILURE;
	}

	Status = XBram_CfgInitialize(&Bram, ConfigPtr, ConfigPtr->CtrlBaseAddress);

	Status = XBram_SelfTest(&Bram, 0);
	if (Status != XST_SUCCESS) {
		xil_printf("Fail");
		return XST_FAILURE;	}



	xil_printf("Yeah !! Success !!");
	return XST_SUCCESS;
}

void axi_write_bram(uint32_t ui_adress, uint32_t data){
	XBram_WriteReg(ConfigPtr->CtrlBaseAddress, ui_adress, data);
}

uint32_t axi_read_bram(uint32_t ui_adress){
	return XBram_ReadReg(ConfigPtr->CtrlBaseAddress, ui_adress);
}

uint32_t char_to_uint(char character){
	xil_printf("Got character: %c\t",character);
	xil_printf("The int value is: %i\t",character);
	xil_printf("The uint value is: %i\n",character-65);
	if ((character-65)>25){
		xil_printf("ERROR while parsing char to uint, may the char is not a capital letter!");
	}
	return character-65;
}

uint32_t char_num_to_uint(char character){
	if ((character-48)>9){
		xil_printf("ERROR while parsing char number to uint, may the char is not a number!");
	}
	return character-48;
}

char uint_to_char(uint32_t unsignedint){
	return unsignedint+65;
}

int main()
{
    char 		c_created_string[64];
    uint32_t	uint32_received_Data = 0;
    uint32_t	uint32_address = 0;
    uint32_t 	ui_data32 = 0;
    uint32_t 	ui_data_32, ui_drum1,ui_drum2,ui_drum3, ui_bram_status, ui_bram_solution,ui_bram_next_solution;
    init_platform();
    axi_init();
    while(1)
    {
    	int i = 0;
    	//read the serial communication
    	while((c_created_string[i] = getchar())!='\r')
    	{

    	    xil_printf("%c",c_created_string[i]);
    	    i++ ;
    	}
    	//pseudo case in dependency to the
		//CMD: DRUM -- Write the drum positions to BRAM
		if(c_created_string[0]=='D' && c_created_string[1]=='R' && c_created_string[2]=='U' && c_created_string[3]=='M')
		{
			for(uint32_t i = 0 ; i<6 ; i++){
				ui_data32 = 0;
				//Merge the data structure (when the Drum Pos is ZZN then the N is the Pos 1)
				ui_data32 |= (char_to_uint(c_created_string[5+8*i]));
				ui_data32 |= (char_to_uint(c_created_string[6+8*i])<<5);
				ui_data32 |= (char_to_uint(c_created_string[7+8*i])<<10);

				ui_data32 |= (char_to_uint(c_created_string[9+8*i])<<15);
				ui_data32 |= (char_to_uint(c_created_string[10+8*i])<<20);
				ui_data32 |= (char_to_uint(c_created_string[11+8*i])<<25);
				//Send Data to BRAM
				axi_write_bram(i+1,ui_data32);
				xil_printf("\nWrite Data to address %u: %u", i+1,ui_data32);
			}
			/*xil_printf("Read from BRAM: \n");
			uint32_received_Data = axi_read_bram(XBRAM_ECC_ON_OFF_OFFSET);
			xil_printf("uint32_received_Data: %i",uint32_received_Data);
			xil_printf("\n");
			xil_printf("End read from BRAM \n");*/
		}
		//CMD: DTYP -- Write the drum typ into local variables (BRAM write takes place at IODB)
		else if(c_created_string[0]=='D' && c_created_string[1]=='T' && c_created_string[2]=='Y' && c_created_string[3]=='P')
		{
            ui_drum1 = char_num_to_uint(c_created_string[5]);
            ui_drum2 = char_num_to_uint(c_created_string[7]);
            ui_drum3 = char_num_to_uint(c_created_string[9]);
            xil_printf("\nSave drum typ to var: %u %u %u", ui_drum1,ui_drum2,ui_drum3);
			/*xil_printf("Write to BRAM\n");
			axi_write_bram(0x08, 0xFF);
			xil_printf("End write to BRAM\n");*/
		}
		//CMD: IODB -- Write DRUM and DB configs to BRAM
		else if(c_created_string[0]=='I' && c_created_string[1]=='O' && c_created_string[2]=='D' && c_created_string[3]=='B')
		{
            ui_data32 = 0;
            //Merge data DRUMs, testregister and inputregister
            ui_data32 |= ui_drum1;
            ui_data32 |= (ui_drum2<<3);
            ui_data32 |= (ui_drum3<<6);
            ui_data32 |= (char_to_uint(c_created_string[5])<<9);
            ui_data32 |= (char_to_uint(c_created_string[6])<<14);
            //Write content to adress 7
            axi_write_bram(7,ui_data32);
            xil_printf("\nWrite IODB to address %u: %u", 7,ui_data32);
            //Merge and send Data for DB connections
            for(uint32_t i=0;i<4;i++){
                    //Merge
                    ui_data_32 = 0;
                    ui_data32 |= (char_to_uint(c_created_string[8+9*i]));
                    ui_data32 |= (char_to_uint(c_created_string[9+9*i])<<5);
                    ui_data32 |= (char_to_uint(c_created_string[11+9*i])<<10);
                    ui_data32 |= (char_to_uint(c_created_string[12+9*i])<<15);
                    ui_data32 |= (char_to_uint(c_created_string[14+9*i])<<20);
                    ui_data32 |= (char_to_uint(c_created_string[15+9*i])<<25);
                    //Send Data to BRAM
                    axi_write_bram(i+8,ui_data32);
                    xil_printf("\nWrite IODB to address %u: %u", i+8,ui_data32);
            }
            //Start the TURBO
            axi_write_bram(0,0x1);

			/*xil_printf("\nConfigPtr:\n");
			xil_printf(ConfigPtr);
			xil_printf("\n");
			xil_printf("\nCtrlBaseAddress:\n");
			xil_printf(ConfigPtr->CtrlBaseAddress);
			xil_printf("\n");*/
		}
		//CMD: RQST -- Check the TURBO status and return the next possible solution or a STOP
		else if(c_created_string[0]=='R' && c_created_string[1]=='Q' && c_created_string[2]=='S' && c_created_string[3]=='T')
		{

		}
		//CMD: RSET -- Check the TURBO status and return the next possible solution or a STOP
		else if(c_created_string[0]=='R' && c_created_string[1]=='S' && c_created_string[2]=='E' && c_created_string[3]=='T')
		{
            axi_write_bram(0,2);
            for(uint32_t i=0;i<255;i=i+4){
            	axi_write_bram(i,0x0);
            }
		}
		//Print the BRAM
		else if(c_created_string[0]=='T' && c_created_string[1]=='E' && c_created_string[2]=='S' && c_created_string[3]=='T')
		{
			xil_printf("\n");
			for(uint32_t i=0;i<255;i = i+4){
				xil_printf("%u\n", axi_read_bram(i));
			}
		}
		//Write value to BRAM
		else if(c_created_string[0]=='V' && c_created_string[1]=='L' && c_created_string[2]=='U' && c_created_string[3]=='E'){
			xil_printf("Write to BRAM\n");
			axi_write_bram(0x0C, 0xFF);
			//XBram_WriteReg(ConfigPtr->CtrlBaseAddress, 6, 1);
			xil_printf("End write to BRAMM\n");
		}
		//Write value to BRAM
		else if(c_created_string[0]=='S' && c_created_string[1]=='A' && c_created_string[2]=='R' && c_created_string[3]=='T'){
			//Start the TURBO
			axi_write_bram(0,0x1);
			xil_printf("End START to BRAMM\n");
		}
    }
    cleanup_platform();
    return 0;
}


