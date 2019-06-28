#include "menuPreparison.hpp"

menuPreparison::menuPreparison(string s_cry_msg, string s_clear_crib,uint ui_num_used_rotors, uint ui_num_posible_rotors)
{
    this->c_cry_msg = new char [s_cry_msg.length()+1];
    strcpy(this->c_cry_msg, s_cry_msg.c_str());
    this->c_clear_crib = new char [s_clear_crib.length()+1];
    strcpy(this->c_clear_crib, s_clear_crib.c_str());
    this->ui_clear_crib_length = s_clear_crib.length();
    this->ui_cry_msg_length = s_cry_msg.length();
    this->ui_num_posible_rotors = ui_num_posible_rotors;
    vector<int> i_variation(3);
    //generate the list of variation
    for(uint i = 1;i<=ui_num_posible_rotors;i++){
        for(uint j = 1;j<=ui_num_posible_rotors;j++){
           if(i != j){
                i_variation[1]=j;
                for(uint k = 1;k<=ui_num_posible_rotors;k++){
                    if((i != k) && (j != k)){
                        i_variation[0]=i;
                        i_variation[1]=j;
                        i_variation[2]=k;
                        this->i_variation_list.push_back(i_variation);
                        //cout << i << j << k << endl;
                    }
                }
            }            
        }        
    }
    //cout << i_variation_list.size()<<endl;;
}

menuPreparison::~menuPreparison()
{
}

int menuPreparison::store_posible_crib_position(){
    bool flag_posible_position;
    vector<char> c_cipher;    
    cout << "Theoreticly there are " << ui_cry_msg_length-ui_clear_crib_length << " crib positions" << endl;
    for(uint i = 0; i < ui_cry_msg_length-ui_clear_crib_length+1; i++)
    {
        flag_posible_position = true;
        c_cipher.clear();
        for(uint j = 0; j < ui_clear_crib_length; j++)
        {
            //If one letter in is the same in the crib and the cry msg then the position is not posible
            if (c_cry_msg[i+j]==c_clear_crib[j]) {
                flag_posible_position = false;
            }
            c_cipher.push_back(c_cry_msg[i+j]);
                                
        }
        //if the postion is posible, write it to the stock
        if (flag_posible_position) {
            c_position_stock.push_back(c_cipher);
            vi_position_storage.push_back(i);
        }     
    }
    return c_position_stock.size();
}

int menuPreparison::get_count_rotor_variations(){
    return this->factrorial(ui_num_posible_rotors)/this->factrorial(ui_num_posible_rotors-USED_ROTORS);
}

int menuPreparison::factrorial(int n){
    if(n>1){
        return n * this->factrorial(n-1);
    }else{
        return 1;
    }
}

vector<int> menuPreparison::get_rotor_variation(int i){
    return i_variation_list[i];
}

vector<char> menuPreparison::get_posible_crib_position(int i){
    return c_position_stock[i];
}

int menuPreparison::get_crib_size(){
    return (int)ui_clear_crib_length;
}

int menuPreparison::get_msg_size(){
    return (int)ui_cry_msg_length;
}

int menuPreparison::get_crib_pos(int i){
    return vi_position_storage[i];
}  

char* menuPreparison::get_msg_as_array(){
    return c_cry_msg;
}

char* menuPreparison::get_clear_crib_as_array(){
    return c_clear_crib;
}
char* menuPreparison::get_posible_crib_position_as_array(int i){
    for (uint j = 0; j < c_position_stock[i].size(); j++)
    {
        c_crib[j]=c_position_stock[i][j];
    }    
    
    return c_crib;
}