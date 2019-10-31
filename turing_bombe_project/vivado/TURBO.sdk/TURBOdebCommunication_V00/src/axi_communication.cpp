/*
 * axi_communication.cpp
 *
 *  Created on: 18.06.2019
 *      Author: mexner
 */

#include "axi_communication.hpp"

Axi_communication::Axi_communication() {
	// TODO Auto-generated constructor stub
	this->axi_init();
}

Axi_communication::~Axi_communication() {
	// TODO Auto-generated destructor stub
}


uint32_t Axi_communication::axi_init(){
	int Status;
	ConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (ConfigPtr == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}

	Status = XBram_CfgInitialize(&Bram, ConfigPtr, ConfigPtr->CtrlBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

void Axi_communication::axi_write_bram(uint32_t ui_adress, uint32_t data){
	XBram_WriteReg(ConfigPtr->MemBaseAddress, ui_adress, data);
}

uint32_t Axi_communication::axi_read_bram(uint32_t ui_adress){
	return XBram_ReadReg(ConfigPtr->MemBaseAddress, ui_adress);
}



