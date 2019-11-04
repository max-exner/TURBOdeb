# Turing Bombe Dependent Benchmark (TURBOdeb)

## The Team

    B.Eng. Tobias Niggemeyer, currently a student of biomechatronic at Bielefeld University

    B.Eng. Maximilian Exner, currently a student of biomechatronic at Bielefeld University

## Project Description

The "Turing Bomb Dependent Benchmark Project" is an elaboration of a comparison between a CPU and an FPGA. The aim of this project is to show the advantages and disadvantages of a CPU and
an FPGA using the solution algorithm of the Turing Bombe. The Turing Bombe is an electro-mechanical machine that was used to decrypt messages which were encrypted by the Enigma.

## Project Architecture

![alt text](https://github.com/max-exner/TURBOdeb/blob/master/README_DEP/TURBOdeb_Architecture.png)



## Instructions To Test The Design

### CPU Implementation

To run the CPU implementation, do the following steps (please use the Linux GCC toolchain):
* Open the [MAIN](/c_implementation/src/main.cpp) 
* Make sure that the #define FPGA_CALC is undefined
* Use the [makefile](/c_implementation/makefile) in the sw directory to build the application.
* Use the following call to run the CPU implementation (from the sw directory):
```
./bin/TURBOdeb "<Path_of_the_message_json>"
```
One example message is in the software directory. The message is stored in a json file.
The console prints will give you feedback on the decryption process and the timing.

### FPGA Implementation

Until yet it was not possible to run the full FPGA implementation on real hardware. The reason for this is that it was not possible to implement the UART interface. It is possible to program the [bitstream](/turing_bombe_project/bitstreams/turing_bombe_wrapper.bit), but then the components still wait for an instruction from the zynq processing system.

Future (when the UART interface works correctly):

* Open the Vivado project and open the SDK (this project is created with Vivado 2018.3). 
* Choose the turbo_uart_to_bram Project and run as "Launch in Hardware (system debugger)"
* Check the serial port, the port with the highest count is the right one
* Open the [MAIN](/c_implementation/src/main.cpp) and make sure that the #define FPGA_CALC is defined.
* Check the serial port in line 47
```
int serial_port = open("/dev/<serial_port>", O_RDWR);
```
* Use the [makefile](/c_implementation/makefile) in the sw directory to build the application.
* Use the following call to run the CPU implementation (from the sw directory):
```
./bin/TURBOdeb "<Path_of_the_message_json>"
```

Now the C implementation is supported by the FPGA implementation. This will cause a faster processing time.

The function of the FPGA implementation could also be shown with a simulation. This could be done with Vivado. Please do the following steps:

* Open the Vivado project
* Choose with a right-click on the simulation source "turing_bombe_wrapper_TB", "Set as Top"
* Run Simulation in Vivado
* The simulation stops when the right Enigma configuration is found. 

## YouTube Video

[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/cbkhYxeMfGk/0.jpg)](https://youtu.be/cbkhYxeMfGk)


## License

This project is licensed under the MIT License.
