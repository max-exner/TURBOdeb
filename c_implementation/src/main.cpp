#include "global.hpp"
#include "jsonHandling.hpp"
#include "menuPreparison.hpp"
#include "menu.hpp"
#include <chrono>
#include "turingBomb.hpp"
#include "checkingMachine.hpp"
#include "enigma.hpp"
#include "json/json.h"

// C library headers
#include <stdio.h>
#include <string.h>

// Linux headers
#include <fcntl.h> // Contains file controls like O_RDWR
#include <errno.h> // Error integer and strerror() function
#include <termios.h> // Contains POSIX terminal control definitions
#include <unistd.h> // write(), read(), close()


using namespace std;

#define MAX_ROTORS 5
#define FPGA_CALC           //ToDo: CMD Parameter
#undef FPGA_CALC

#define BAUDRATE B115200


using namespace std;

void print_runtime(chrono::high_resolution_clock::time_point t_start);

/**This is the main function
 * @brief In the main all aplication function are called
 * 
 * @return int 
 */

int main(int argc, char **argv) 

{    
    //********************************  
    // Check the Parameter
    //********************************   

    string s_file_path;
    string s_mode = "CPU";
    int serial_port;    

    for(int i = 0; i < argc; i++)
    {        
        if (strcmp(argv[i], "-m")==0)
        {
            s_file_path = argv[i+1];
        } 
        else if (strcmp(argv[i], "-p")==0) 
        {
            s_mode = argv[i+1];
        }
    }
    if(s_file_path.empty()){
        cerr << "Wrong Parameter! Please give me the message that should be encrypted!" << endl;
        return 99;
    }

    
    if (strcmp(s_mode.c_str(), "CPU")!=0)
    {
        //https://blog.mbedded.ninja/programming/operating-systems/linux/linux-serial-ports-using-c-cpp/
        //setup serial connection
        serial_port = open(s_mode.c_str(), O_RDWR);  // CMD Parameter: "/dev/ttyUSB1"

        //Check for errors
        if (serial_port < 0) 
        {
            printf("Error %i from open: %s\n", errno, strerror(errno));
        }
        // Create new termios struc, we call it 'tty' for convention
        struct termios tty;
        memset(&tty, 0, sizeof tty);

        // Read in existing settings, and handle any error
        if(tcgetattr(serial_port, &tty) != 0) {
            printf("Error %i from tcgetattr: %s\n", errno, strerror(errno));
        }
        tty.c_cflag = BAUDRATE | CS8 | CLOCAL | CREAD; // | CRTSCTS
        tty.c_iflag = IGNPAR | ICRNL;
        tty.c_oflag = 0;
        tty.c_lflag = ICANON;
        tty.c_cc[VINTR]    = 0;     /* Ctrl-c */ 
        tty.c_cc[VQUIT]    = 0;     /* Ctrl-\ */
        tty.c_cc[VERASE]   = 0;     /* del */
        tty.c_cc[VKILL]    = 0;     /* @ */
        tty.c_cc[VEOF]     = 4;     /* Ctrl-d */
        tty.c_cc[VTIME]    = 0;     /* inter-character timer unused */
        tty.c_cc[VMIN]     = 1;     /* blocking read until 1 character arrives */
        tty.c_cc[VSWTC]    = 0;     /* '\0' */
        tty.c_cc[VSTART]   = 0;     /* Ctrl-q */ 
        tty.c_cc[VSTOP]    = 0;     /* Ctrl-s */
        tty.c_cc[VSUSP]    = 0;     /* Ctrl-z */
        tty.c_cc[VEOL]     = 0;     /* '\0' */
        tty.c_cc[VREPRINT] = 0;     /* Ctrl-r */
        tty.c_cc[VDISCARD] = 0;     /* Ctrl-u */
        tty.c_cc[VWERASE]  = 0;     /* Ctrl-w */
        tty.c_cc[VLNEXT]   = 0;     /* Ctrl-v */
        tty.c_cc[VEOL2]    = 0;     /* '\0' */        

        /*tty.c_cflag &= ~PARENB; // Clear parity bit, disabling parity (most common)
        tty.c_cflag &= ~CSTOPB; // Clear stop field, only one stop bit used in communication (most common)
        tty.c_cflag |= CS8; // 8 bits per byte (most common)
        tty.c_cflag &= ~CRTSCTS; // Disable RTS/CTS hardware flow control (most common)
        tty.c_cflag |= CREAD | CLOCAL; // Turn on READ & ignore ctrl lines (CLOCAL = 1)
        tty.c_lflag &= ICANON;
        tty.c_lflag &= ~ECHO; // Disable echo
        tty.c_lflag &= ~ECHOE; // Disable erasure
        tty.c_lflag &= ~ECHONL; // Disable new-line echo
        tty.c_lflag &= ~ISIG; // Disable interpretation of INTR, QUIT and SUSP
        tty.c_iflag &= ~(IXON | IXOFF | IXANY); // Turn off s/w flow ctrl
        tty.c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP|INLCR|IGNCR|ICRNL); // Disable any special handling of received bytes
        tty.c_oflag &= ~OPOST; // Prevent special interpretation of output bytes (e.g. newline chars)
        tty.c_oflag &= ~ONLCR; // Prevent conversion of newline to carriage return/line feed
        tty.c_cc[VTIME] = 0;    // Wait for up to 1s (10 deciseconds), returning as soon as any data is received.
        tty.c_cc[VMIN] = 1;
        cfsetispeed(&tty, B19200);
        cfsetospeed(&tty, B19200);*/

        // Save tty settings, also checking for error
        if (tcsetattr(serial_port, TCSANOW, &tty) != 0) {
            printf("Error %i from tcsetattr: %s\n", errno, strerror(errno));
        }
    }

  chrono::high_resolution_clock::time_point t_start = chrono::high_resolution_clock::now();

  string s_cry_msg,s_clear_crib;

  try
  {
      jsonHandling json_file(s_file_path); 
      json_file.parse_file();
      s_cry_msg = json_file.get_json_value("crypted");
      s_clear_crib = json_file.get_json_value("clear_crib");

  }
  catch(const std::exception& e)
  {
      cerr << e.what() << endl;
      return 99;
  }    

  //Print read msg and make a char vector out of the clear crib  
  cout << "The crypted message is: " << s_cry_msg << endl;
  cout << "The clear crib is: " << s_clear_crib << endl;
  vector<char> vc_clear_crib(s_clear_crib.begin(), s_clear_crib.end());

  //Do Preparison
  menuPreparison preparison(s_cry_msg, s_clear_crib,USED_ROTORS,MAX_ROTORS);  

  //Check the posible position
  int i_stock_count = preparison.store_posible_crib_position();
  cout << "I found " << i_stock_count << " possible positions." <<endl;
  string s_message = "n.a.";  

  cout << "Let's go" << endl;
  st_Menu st_my_menu;
  char * c_message, * c_clearCrib;
  c_message =preparison.get_msg_as_array();

  c_clearCrib = preparison.get_clear_crib_as_array();

  int i_cribSize = preparison.get_crib_size();            

   int i_messageSize = preparison.get_msg_size();

  //for loop that checks all rotor variations         
      //cout << "I will check this rotor variation: " << iv_rotors[0]  << iv_rotors[1]  << iv_rotors[2]  << endl;
      //for loop that checks all posible crib positions
  for(int j=0; j<i_stock_count;j++)
  {    
      //TODO getter Methode!!!
      //char c_crib[MAX_CRIB_SIZE] = {'S','N','M','K','G','G','S','T','Z','Z','U','G','A','R','L','V'};
      char * c_crib = preparison.get_posible_crib_position_as_array(j);
      int i_cribPos = preparison.get_crib_pos(j);
      cout << "The current crib is at position: " << i_cribPos << endl; 
      //Menu erstellen
      menu TURBOmenu(preparison.get_posible_crib_position(j), vc_clear_crib);
      TURBOmenu.generate_graph();    

      for(uint i = 0; i < preparison.get_posible_crib_position(j).size(); i++)
      {
          cout << preparison.get_posible_crib_position(j)[i];
      }
      cout <<endl;
      
      if (TURBOmenu.generate_tabel())
      {
          for(int i=0; i<preparison.get_count_rotor_variations();i++)
          {
            vector<int> vi_current_rotor_variation = preparison.get_rotor_variation(i);
            TURBOmenu.set_rotor_variation(vi_current_rotor_variation);
            st_my_menu = TURBOmenu.get_Menu();      
            // //Turing Bomb Stuff
            // //chrono::high_resolution_clock::time_point t_start = chrono::high_resolution_clock::now();
            char c_stopResult[4];
            char c_plugBoardSetting[ABC_SIZE];
            char c_startPosE[3] = {'Y','W','Y'};
            int i_coreOffset[AMOUNTOFDRUMS] = {0,0,0,0,0};
            char c_ringSetting[DRUMARRAY_YSIZE];

            //just for testing
            st_my_menu.i_rotors[0] = 2;
            st_my_menu.i_rotors[1] = 5;
            st_my_menu.i_rotors[2] = 3;
            TuringBomb ob_fistTuringBomb(st_my_menu);
            CheckingMachine ob_CheckingMachine;
            Enigma ob_firstEnigma;
            ob_firstEnigma.b_setReflector(st_my_menu.c_reflector);
            ob_firstEnigma.b_setDrums(st_my_menu.i_rotors);
            ob_firstEnigma.b_setCoreOffset(i_coreOffset);
            cout << "Start" << endl;
            t_start = chrono::high_resolution_clock::now();
            //***********************************
            //FPGA RUN
            //***********************************
            if (strcmp(s_mode.c_str(), "CPU")!=0){
                unsigned char return_msg[] = {'\r'};

                // send reset to BRAM
                unsigned char reset_instruction_msg[] = {'R','S','E','T'};
                write(serial_port, reset_instruction_msg, sizeof(reset_instruction_msg)); 
                write(serial_port, return_msg, sizeof(return_msg)); 

                //send drum possition
                unsigned char drum_instruction_msg[] = {'D','R','U','M'};
                write(serial_port, drum_instruction_msg, sizeof(drum_instruction_msg));

                for(int i = 0; i<DRUMARRAY_XSIZE ; i++)
                {
                    unsigned char msg_drum_pos[] = {';', st_my_menu.c_drums[i][0], st_my_menu.c_drums[i][1], st_my_menu.c_drums[i][2]};
                    write(serial_port, msg_drum_pos, sizeof(msg_drum_pos));
                }
                write(serial_port, return_msg, sizeof(return_msg));

                //send the drums
                unsigned char drumtyp_instruction_msg[] = {'D','T','Y','P'};
                write(serial_port, drumtyp_instruction_msg, sizeof(drumtyp_instruction_msg));
                for(int i = 0; i<DRUMARRAY_YSIZE ; i++)
                {
                    char rotor_c;
                    sprintf(&rotor_c,"%d",st_my_menu.i_rotors[i]);
                    unsigned char msg_drum[] = { ';', rotor_c};
                    write(serial_port, msg_drum, sizeof(msg_drum));
                }    
                write(serial_port, return_msg, sizeof(return_msg));


                //send DB-Connections
                unsigned char dbcon_instruction_msg[] = {'I','O','D','B',';',st_my_menu.c_test_register,st_my_menu.c_input_voltage};
                write(serial_port, dbcon_instruction_msg, sizeof(dbcon_instruction_msg));
                char c_enigmaDBConnections[2];
                char c_test[2];
                int i_DBconnectionCount;
                int i_foundNumber = 0;
                for(int i_enigma = 0; i_enigma < DRUMARRAY_XSIZE; i_enigma = i_enigma+1)
                {
                    //set up the diagonal board connections
                    i_DBconnectionCount = 0;
                    for(int i_route = 0; i_route < ROUTENARRAY_XSIZE; i_route = i_route +1)
                    {
                        for(int i_searchCon = 0; i_searchCon < ROUTENARRAY_YSIZE; i_searchCon++)
                        {
                            //find first number in route
                            if(isdigit(st_my_menu.c_routen[i_route][i_searchCon]))
                            {
                                //prevent for overflow
                                if(i_route < ROUTENARRAY_XSIZE-1)
                                {
                                    //check if the number has two digits
                                    if(isdigit(st_my_menu.c_routen[i_route][i_searchCon+1]))
                                    {
                                        i_foundNumber = ((st_my_menu.c_routen[i_route][i_searchCon]-48)*10) +
                                                        ((st_my_menu.c_routen[i_route][i_searchCon+1])-48);                          
                                    }
                                    //number consists of one digit
                                    else
                                    {
                                        i_foundNumber = ((st_my_menu.c_routen[i_route][i_searchCon])-48);
                                    }  

                                    if(i_foundNumber == i_enigma+1)
                                    {
                                        if(i_DBconnectionCount < 2)
                                        {
                                            c_enigmaDBConnections[i_DBconnectionCount] = st_my_menu.c_routen[i_route][0];
                                        }
                                        i_DBconnectionCount = i_DBconnectionCount+1;   
                                    }  
                                }


                            }
                        }
                    }
                    unsigned char msg_drum[] = { ';', c_enigmaDBConnections[0], c_enigmaDBConnections[1]};
                    write(serial_port, msg_drum, sizeof(msg_drum));
       
                }   
                write(serial_port, return_msg, sizeof(return_msg)); 

                //test if everything is written to BRAM
                // cout << "Close Port" << endl;
                // close(serial_port);
                // exit(0);

                //send solution request
                unsigned char solutionrequest_instruction_msg[] = {'R','Q','S','T'};
                write(serial_port, solutionrequest_instruction_msg, sizeof(solutionrequest_instruction_msg)); 
                write(serial_port, return_msg, sizeof(return_msg)); 
                //wait for response
                char read_buf[275];
                memset(&read_buf, '\0', sizeof(read_buf));
                int buffer_counter_i = 8;
                char msg_buffer_c[9];
                while(true)
                {
                    //send solution request
                    unsigned char solutionrequest_instruction_msg[] = {'R','Q','S','T'};
                    write(serial_port, solutionrequest_instruction_msg, sizeof(solutionrequest_instruction_msg)); 
                    write(serial_port, return_msg, sizeof(return_msg)); 
                    read(serial_port, &read_buf, sizeof(read_buf));
                    cout << read_buf << endl; 
                    if(read_buf[0] == 'S' && read_buf[1] == 'O' && read_buf[2] == 'L' && read_buf[3] == 'U' && read_buf[8] != '\0') 
                    {
                        cout << "Found Solution" << endl;
                        cout << read_buf << endl;
                        c_stopResult[0] = read_buf[5];
                        c_stopResult[1] = read_buf[6];
                        c_stopResult[2] = read_buf[7];
                        c_stopResult[3] = read_buf[8];

                        cout << "Result: "<<c_stopResult[0]<<c_stopResult[1]<<c_stopResult[2]<<c_stopResult[3] << endl;
                        if(ob_CheckingMachine.calcPlugBoardConnections(st_my_menu,c_stopResult,c_plugBoardSetting))
                        {
                            c_ringSetting[0] = c_stopResult[0];
                            c_ringSetting[1] = c_stopResult[1];
                            c_ringSetting[2] = c_stopResult[2];
                            ob_firstEnigma.b_setDrumsToPos(c_startPosE);
                            ob_firstEnigma.b_setRingSetting(c_ringSetting);
                            ob_firstEnigma.b_setPlugBoard(c_plugBoardSetting);
                            if(ob_firstEnigma.b_decryptMessage(c_message,i_messageSize,c_crib,c_clearCrib,i_cribSize,i_cribPos,c_plugBoardSetting, st_my_menu, c_ringSetting))
                            {
                                print_runtime(t_start);
                                //send reset
                                unsigned char reset_instruction_msg[] = {'R','S','E','T'};
                                write(serial_port, reset_instruction_msg, sizeof(reset_instruction_msg)); 
                                write(serial_port, return_msg, sizeof(return_msg)); 
                                close(serial_port);
                                exit(0);
                            }
                        }
                        else
                        {
                            //send solution request
                            unsigned char solutionrequest_instruction_msg[] = {'R','Q','S','T'};
                            write(serial_port, solutionrequest_instruction_msg, sizeof(solutionrequest_instruction_msg)); 
                            write(serial_port, return_msg, sizeof(return_msg)); 
                            memset(&read_buf, '\0', sizeof(read_buf));
                        }
                        
                    }
                    else if(read_buf[0] == 'S' && read_buf[1] == 'T' && read_buf[2] == 'O' && read_buf[3] == 'P') 
                    {
                        cout << "Stop" << endl;
                        break;
                    }
                    else if(read_buf[0] == 'N' && read_buf[1] == 'S' && read_buf[2] == 'O' && read_buf[3] == 'L')
                    {
                        //no sulution in BRAM .... try again!
                    }
                    //

                }  



                
            }
            //***********************************
            // CPU RUN
            //*********************************** 
            else 
            {

                while(ob_fistTuringBomb.b_findNextStop(c_stopResult))
                {
                    //DKXD
                        //c_stopResult[0] = 'D';//read_buf[5];
                        //c_stopResult[1] = 'K';//read_buf[6];
                        //c_stopResult[2] = 'X';//read_buf[7];
                        //c_stopResult[3] = 'D';//read_buf[8];
                        //cout << st_my_menu.i_rotors[0] << st_my_menu.i_rotors[1] << st_my_menu.i_rotors[2] << endl;
                        //cout << c_stopResult[0] << c_stopResult[1] << c_stopResult[2] << endl;//c_stopResult[3] << endl;
                        //ob_fistTuringBomb.printDB();
                        //getchar();
                        //print_runtime(t_start);
                        if(ob_CheckingMachine.calcPlugBoardConnections(st_my_menu,c_stopResult,c_plugBoardSetting))
                        {
                        c_ringSetting[0] = c_stopResult[0];
                        c_ringSetting[1] = c_stopResult[1];
                        c_ringSetting[2] = c_stopResult[2];
                        ob_firstEnigma.b_setDrumsToPos(c_startPosE);
                        ob_firstEnigma.b_setRingSetting(c_ringSetting);
                        ob_firstEnigma.b_setPlugBoard(c_plugBoardSetting);
                        if(ob_firstEnigma.b_decryptMessage(c_message,i_messageSize,c_crib,c_clearCrib,i_cribSize,i_cribPos,c_plugBoardSetting, st_my_menu, c_ringSetting))
                        {
                            //DKXB
                            cout << "Ring settings : " << c_ringSetting[0] << c_ringSetting[1] << c_ringSetting[2] << endl;
                            cout << "Diagonalboard solutuion : " << c_stopResult[3] << endl;
                            cout << "Plugboard setting : " << c_plugBoardSetting << endl;
                            print_runtime(t_start);
                            exit(0);
                        }
                    }
                }
            }
            
         }
      
      }
  }
  cout << "It was not possible to encrypt this message!" << endl;  
  return 99;    

}

void print_runtime(chrono::high_resolution_clock::time_point t_start){
    chrono::high_resolution_clock::time_point t_end = chrono::high_resolution_clock::now();
    chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t_end - t_start);
    cout << "I need " << time_span.count() << " seconds for the computation"<< endl;
}
