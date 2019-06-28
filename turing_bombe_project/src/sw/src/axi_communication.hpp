/*
 * axi_communication.hpp
 *
 *  Created on: 18.06.2019
 *      Author: mexner
 */

#ifndef SRC_AXI_COMMUNICATION_HPP_
#define SRC_AXI_COMMUNICATION_HPP_

#include "xbram.h"

class Axi_communication {
public:
	XBram Bram;
	XBram_Config *ConfigPtr;
	Axi_communication();
	virtual ~Axi_communication();
	uint32_t axi_init();
	void axi_write_bram(uint32_t ui_adress, uint32_t data);
	uint32_t axi_read_bram(uint32_t ui_adress);

};

#endif /* SRC_AXI_COMMUNICATION_HPP_ */
