#include "menu.hpp"

menu::menu(vector<char> vc_cipher, vector<char> vc_clear_crib)
{    
    this->vc_cipher = vc_cipher;
    this->vc_clear_crib = vc_clear_crib;
    this->ui_chipher_size = vc_cipher.size();
    this->vc_row = vc_clear_crib;
    vc_row.insert(vc_row.end(),vc_cipher.begin(), vc_cipher.end()); 
    //calculate the rotor set for each crib letter (based on home position ZZZ, maybe we need to iterate this)
    //we need to know where the rotors have its overflow, this is wip!!
    vector<char> vc_rotor_set {'Z','Z','Z'};
    for(uint i=0;i<vc_clear_crib.size();i++){        
        if(vc_rotor_set[2] == 'Z'){
            vc_rotor_set[2]='A';
        } else {
            vc_rotor_set[2]++;
        }
        // cout << "Rotor set " << i << " is:";
        // cout << vc_rotor_set[0] << vc_rotor_set[1] << vc_rotor_set[2] << endl;
        this->vvc_rotor_set.push_back(vc_rotor_set);       
    }
    
}

menu::~menu()
{
}

void menu::generate_graph(){

    vector<uint> vui_graph;
    vector<char> vc_start_elements;
    for(uint i = 0; i < vc_row.size(); i++)
    {
        //cout << i << "th Char to start with: "; 
        vui_graph.clear();
        //If the next char is not jet a existing start char, start a new route
        if (find(vc_start_elements.begin(), vc_start_elements.end(),get_vc_element(i))==vc_start_elements.end()) {
            vui_graph.push_back(i);
            vc_start_elements.push_back(get_vc_element(i));
            //cout << get_vc_element(i);
            vui_graph.push_back(get_conected_value(i));
            //cout << get_vc_element(get_conected_value(i));

            iterate_conection_last_element(vui_graph);
        }        
                
    }

    //debug_print_vvui_char();
    //find the maximum length of all routes
    
    //vector<uint> vui_route_length_series;
    uint ui_max_graph_length = 0;
    
    for(uint i = 0; i < vvui_graph_posibilities.size(); i++)
    {
        if(vvui_graph_posibilities[i].size() > ui_max_graph_length){
            ui_max_graph_length = vvui_graph_posibilities[i].size();
        }
    }

    //If the max graph is bigger than the max_length menu, we need to shorten it to the max_length_menu
    if (ui_max_graph_length>(MAX_LENGTH_MENU+1)) {
        ui_max_graph_length = MAX_LENGTH_MENU+1;
    }
    
    vvvui_graph.push_back(get_routes_with_length(ui_max_graph_length));
    //vui_route_length_series.push_back(ui_max_graph_length);
    

    uint ui_missing_length = MAX_LENGTH_MENU - ui_max_graph_length + 2;
    uint ui_current_length = ui_max_graph_length-1;
    vector<vector<uint>> vvui_graphs_with_missing_length;    
    while(ui_missing_length>1){
        vvui_graphs_with_missing_length = get_routes_with_length(ui_missing_length);
        if (vvui_graphs_with_missing_length.size() != 0) {
            vvvui_graph.push_back(vvui_graphs_with_missing_length);
            ui_current_length += ui_missing_length -1 ;
            ui_missing_length = MAX_LENGTH_MENU - ui_current_length +1;
        }else
        {
            ui_missing_length--;
        }       
    }
    

    // for(uint i = 0; i < vvvui_graph.size(); i++)
    // {
    //     cout << "[INFO] Part " << i << " of possible Table routes:"<<endl;;
    //     debug_print_vvui_char(vvvui_graph[i]);
    //     cout <<endl;
    // }
    
    




    /*
    //Find all elements with the max_graph length
    //cout << endl << "[INFO] The longest graph routes are: "<< ui_max_graph_length<<endl;
    //cout << "[INFO] That are the following routes:"<<endl;
    vector<vector<uint>> vvui_graph_max_length;
    for(uint i = 0; i < vvui_graph_posibilities.size(); i++){
        if(vvui_graph_posibilities[i].size() == ui_max_graph_length){
            //debug_print_vui_char(vvui_graph_posibilities[i]);
            vvui_graph_max_length.push_back(vvui_graph_posibilities[i]);
        }
    }
    //cout << "[INFO] That are " << vvui_graph_max_length.size() << " routes"<<endl;

    **********TODO***********************AUSLAGERN UND PRÜFEN UM OPTIMALERE ROUTE ZU FINDEN***********************************
    //Find set of loops in vvui_graph_max_length (loop detection)
    //cout << endl << "[INFO] The longest graph routes with a loop are: "<< ui_max_graph_length<<endl;
    // cout << "[INFO] That are the following routes:"<<endl;
    vector<vector<uint>> vvui_graph_loops;
    for(uint i = 0; i < vvui_graph_max_length.size(); i++){
        //2 For loops to chech each element with all elements of the vector, but not itself with itself
        for(uint j = 0; j < vvui_graph_max_length[i].size();j++){
            for(uint k = 0; k < vvui_graph_max_length[i].size();k++){
                //cout << get_vc_element(vvui_graph_max_length[i][j]) <<endl;
                if(get_vc_element(vvui_graph_max_length[i][j])==get_vc_element(vvui_graph_max_length[i][k] && j!=k)){
                    if (find(vvui_graph_loops.begin(), vvui_graph_loops.end(),vvui_graph_max_length[i])==vvui_graph_loops.end()){
                        //debug_print_vui_char(vvui_graph_max_length[i]);
                        vvui_graph_loops.push_back(vvui_graph_max_length[i]);
                    }    
                    break;
                }
            }
        }
    }
    vvui_graph_max_length.clear();
    //cout << "[INFO] That are " << vvui_graph_loops.size() << " routes"<<endl;

    //choose the vui_graph where the first rotor position has the biggest rotor position sum out of vvui_graph_loops
    // This is wip!!! TODO anpassen, dass bei der zweiten Kombination mit U begonnen wird!!!
    uint ui_first_element, ui_rotor_sum, ui_max_rotor_sum;
    ui_max_rotor_sum = 0;
    vector<uint> vui_final_graph;
    for(uint i = 0; i < vvui_graph_loops.size(); i++)
    {
        ui_first_element = vvui_graph_loops[i][0];
        if(ui_first_element>ui_chipher_size)ui_first_element-=ui_chipher_size;
        ui_rotor_sum = 0;
        for(uint j = 0; j < vvc_rotor_set[i].size(); j++)
        {
            ui_rotor_sum+=vvc_rotor_set[i][j];
        }
        if(ui_rotor_sum > ui_max_rotor_sum){
            //vvui_graph_loops[i] is the final value;
            vui_final_graph = vvui_graph_loops[i];
            break;
        }
        
        
    }

    cout << "[INFO] I am proud to present the final route..." << endl; 
    debug_print_vui_char(vui_final_graph);
    */
    //cin.get(); 
}

char menu::get_vc_element(uint position){
    char c_element;
    //Element is seperator
    if (position == SEPERATOR) {
        c_element = ';';
    }    
    //Element is in clear chipher
    else if(position<ui_chipher_size){
        c_element = vc_clear_crib[position];
    }
    //Element is in cipher
    else
    {
        c_element = vc_cipher[position-ui_chipher_size];        
    }
    return c_element;  
}

vector<char> menu::get_rotor_position(uint position){
    vector<char> vc_rotor;
     
    //Element is in clear chipher
    if(position<ui_chipher_size){
        vc_rotor = vvc_rotor_set[position];
    }
    //Element is in cipher
    else
    {
        vc_rotor = vvc_rotor_set[position-ui_chipher_size];        
    }
    return vc_rotor;  
}

bool menu::series_exist(vector<uint> vui, char c_last_element, char c_new_element){
    bool b_state = false;
    if(vui.size()>=2){
        for(uint i = 0; i < vui.size()-1; i++)
        {
            if(get_vc_element(vui[i]) == c_last_element && get_vc_element(vui[i+1]) == c_new_element){
                
                //cout << "[INFO]\tSERIES "<< get_vc_element(vui[i]) << get_vc_element(vui[i+1])<< " EXISTS IN: ";
                //debug_print_vui_char(vui);
                //cin.get();
                b_state = true;
                break;
            }
            if(get_vc_element(vui[i]) == c_new_element && get_vc_element(vui[i+1]) == c_last_element){
                b_state = true;
                break;
            }            
        }
    }
    return b_state;  
}

uint menu::get_conected_value(uint ui_found_element){
    uint ui_value = NOT_FOUND;
    //is found element in clear than the connected element is in cipher
    if(ui_found_element<ui_chipher_size){
        ui_value = ui_found_element + ui_chipher_size;
    }
    //is found element in cipher than the connected element is in clear
    else
    {
        ui_value = ui_found_element - ui_chipher_size;
    }
    return ui_value;
}

void menu::iterate_conection_last_element(vector<uint> vui_graph){
    vector<uint> vui_local_graph;
    uint ui_last_element = vui_graph[vui_graph.size()-1];
    char c_last_element = get_vc_element(ui_last_element); 
    //cout << "\tThe last element of the vector is " << ui_last_element << " --- " << c_last_element << endl;
    uint ui_before_last_element = vui_graph[vui_graph.size()-2];
    char c_before_last_element = get_vc_element(ui_before_last_element); 
    //cout << "\t\t\t\tThe befor last element of the vector is " << ui_before_last_element << " --- " << c__before_last_element << endl;
    //Find all connection elements and write it to the vui_connection_collection
    vector<uint> vui_connection_collection;    
    for(uint i = 0; i < vc_row.size(); i++)
    {
        //If the last_element is the current char and the connected value is not the befor last element
        //, write the connected element to the collection
        if(c_last_element == get_vc_element(i) /*&& get_conected_value(i) != ui_before_last_element*/){
            vui_connection_collection.push_back(get_conected_value(i));
            //cout << "\t\t\t\tThe last element of the vector is connected to " << get_conected_value(i) << " --- " << get_vc_element(get_conected_value(i)) <<endl;
        }
    }

    //Iterate the connection collection and check if the 
    for(uint i = 0; i < vui_connection_collection.size(); i++)
    {
        vui_local_graph = vui_graph;
        
        //If the char of the collection is the char befor last,
        //the graph is finished, so it is write to the vvui_graph_posibilities
        if(get_vc_element(vui_connection_collection[i])== c_before_last_element){
            write_to_posibility_graph(vui_local_graph);
        } 
        //If the char of the collection cases a series,
        //the graph is finished
        else if (series_exist(vui_local_graph,c_last_element,get_vc_element(vui_connection_collection[i]))) {            
            write_to_posibility_graph(vui_local_graph);
        }
        //else the char of the collection is a new element of the graph and the function will call again
        else{
            vui_local_graph.push_back(vui_connection_collection[i]);
            iterate_conection_last_element(vui_local_graph);
        }
        
    }
    vui_local_graph.clear();
}

void menu::write_to_posibility_graph(vector<uint> vui_local_graph){
    //create the backwarts graph of the given graph
    vector<uint> vui_local_graph_backwarts;
    stringstream ss_local_graph_backwarts, ss_posible_graph;
    
    bool b_backwarts_exist = false;    
    // for(uint i = vui_local_graph.size(); i > 0; i--)
    // {
    //     vui_local_graph_backwarts.push_back(vui_local_graph[i-1]);
    //     ss_local_graph_backwarts << get_vc_element(vui_local_graph[i-1]);
    //     //s_local_graph_backwarts = s_local_graph_backwarts + string(vui_local_graph[i-1]);
    // }

    // for(uint i = 0; i < vvui_graph_posibilities.size(); i++)
    // {
    //     ss_posible_graph.clear();
    //     for(uint j = 0; j < vvui_graph_posibilities[i].size(); j++)
    //     {
    //         //if(strcmp(vvui_graph_posibilities[i], vui_local_graph_backwarts);
    //         ss_posible_graph << get_vc_element(vvui_graph_posibilities[i][j]);
    //     }    
    //     // cout << ss_posible_graph.str() << endl;
    //     // cout << ss_local_graph_backwarts.str() << endl;
    //     // cin.get();
    //     //TODO!!!Umgekehrte Serie vermeiden um Laufzeit zu optimieren!!
    //     if(strcmp(ss_posible_graph.str().c_str(),/*ss_local_graph_backwarts.str().c_str()*/"HTSRZERK")==0){
    //         cout << ss_posible_graph.str() << endl;
    //         cout << ss_local_graph_backwarts.str() << endl;
    //         cin.get();
    //         b_backwarts_exist = true;
    //         break;
    //     }        
    // }
    
        
    if(find(vvui_graph_posibilities.begin(), vvui_graph_posibilities.end(),vui_local_graph)==vvui_graph_posibilities.end()){
        if (b_backwarts_exist==false) { //Funktioniert nicht!!!
            vvui_graph_posibilities.push_back(vui_local_graph);
            //debug_print_vui_char(vui_local_graph);
        }
    }
}

void menu::debug_print_vui_char(vector<uint> vui){
    cout << "[INFO]\tThe vector is: ";
    for(uint i = 0; i < vui.size(); i++)
    {
        cout << get_vc_element(vui[i]);
    }
    cout << endl;
    
}

void menu::debug_print_vvui_char(vector<vector<uint>> vvui){
    for(uint i = 0; i < vvui.size(); i++)
    {
        debug_print_vui_char(vvui[i]);
    }
    
}


vector<vector<uint>> menu::get_routes_with_length(uint length){
    vector<vector<uint>> vvui_reduced_graph;
    for(uint i = 0; i < vvui_graph_posibilities.size(); i++){
        if(vvui_graph_posibilities[i].size() == length){
            //debug_print_vui_char(vvui_graph_posibilities[i]);
            vvui_reduced_graph.push_back(vvui_graph_posibilities[i]);
        }
    } 
    return vvui_reduced_graph; 
}

bool menu::generate_tabel(){
    //TODO Loop detection -- remove not suitable routes from the graph

    //Combine the routes from the graph 
    //Sammlung<Abfolge<Rotorposition<char>>>
    vector<vector<uint>> vvui_routes;
    vector<vector<char>> vvc_rotor_route;
    vector<vector<vector<char>>> vvvc_rotor_table_collection;
    vector<vector<char>> vvc_char_table_collection;
       
    vvui_routes = combine_graph_routes(0);


    
    for(uint i = 0; i < vvui_routes.size(); i++)
    {
        vvc_rotor_route.clear();
        //first has no information, it is the sam rotor as the second that the reason why I start at one
        for(uint j = 1; j < (vvui_routes[i].size()); j++)
        {
            if(vvui_routes[i][j-1] != SEPERATOR && vvui_routes[i][j] != SEPERATOR){
               vvc_rotor_route.push_back(get_rotor_position(vvui_routes[i][j])); 
            }           
            //cout << get_vc_element(vvui_routes[i][j]);
        }
        vvvc_rotor_table_collection.push_back(vvc_rotor_route);
        //cout << endl;
    }    
    
    //Calculate the count of equal rotor positions in the rotor_table_collection
    uint ui_iteration_equal_count;
    vector<uint> vui_equal_rotor_count;
    vector<uint> vui_already_found;
    for(uint i = 0; i < vvvc_rotor_table_collection.size(); i++)
    {
        //cout << "[INFO] " << i << "th rotor table: ";
        ui_iteration_equal_count = 0;
        // for(uint j = 0; j < vvvc_rotor_table_collection[i].size(); j++)
        // { 
        //     for(uint k = 0; k < vvvc_rotor_table_collection[i][j].size(); k++)
        //     {
        //         cout << vvvc_rotor_table_collection[i][j][k];                
        //     }
        //     cout << " ; ";
        // }
        
        for(uint j = 0; j < vvvc_rotor_table_collection[i].size(); j++)
        {   
            //only if the j-th rotor set is not already a dublicate
            if(find(vui_already_found.begin(),vui_already_found.end(),j)==vui_already_found.end()){
                for(uint k = 0; k < vvvc_rotor_table_collection[i].size(); k++)
                {
                    //rotor set is not iself an rotorset j is rotorset k, then count up 
                    if(j!=k && vvvc_rotor_table_collection[i][j]==vvvc_rotor_table_collection[i][k]){
                        ui_iteration_equal_count++;
                        vui_already_found.push_back(k);
                        // cout << vvvc_rotor_table_collection[i][j][0]<< vvvc_rotor_table_collection[i][j][1]<< vvvc_rotor_table_collection[i][j][2]<<endl;
                        // cout << vvvc_rotor_table_collection[i][k][0]<< vvvc_rotor_table_collection[i][k][1]<< vvvc_rotor_table_collection[i][k][2]<<endl<<endl;
                    }
                } 
            }               
           
        }
        vui_equal_rotor_count.push_back(ui_iteration_equal_count);
        
        //cout<<ui_iteration_equal_count<<endl;
        //cin.get();    
    }
    
    //get first lowest count index
    uint ui_lowest_index;
    ui_iteration_equal_count = numeric_limits<uint>::max();
    for(uint i = 0; i < vui_equal_rotor_count.size(); i++)
    {
        if(vui_equal_rotor_count[i]<ui_iteration_equal_count){
            ui_iteration_equal_count = vui_equal_rotor_count[i];
            ui_lowest_index = i;
        }
    }
    if(ui_iteration_equal_count != 0){
        cout << "[INFO] This menu is not valid\tI find no graph without double rotor sets" <<endl;
        return false;
    }
    //cout<<"[INFO] The lowest is: ";

    //Allocation of rotor tabel and route to the final elements
    vvc_rotor_table = vvvc_rotor_table_collection[ui_lowest_index];
    
    vector<char> vc_routes_row;
    for(uint i = 0; i < vvui_routes[ui_lowest_index].size(); i++)
    {
        vc_routes_row.push_back(get_vc_element(vvui_routes[ui_lowest_index][i]));
        cout << vc_routes_row[i];
    }
    cout << endl;
    //Just printing
    for(uint j = 0; j < vvc_rotor_table.size(); j++)
    {   
        for(uint k = 0; k < vvc_rotor_table[j].size(); k++)
        {
            cout << vvvc_rotor_table_collection[ui_lowest_index][j][k];                
        }
        cout << " ; ";
    }        
    cout<<ui_iteration_equal_count<<endl;
    vector<char> vc_char_table_element; 
    //Iterate vc_routes_row to find the elements of the char tabel
    for(uint i = 0; i < vc_routes_row.size(); i++)
    {
        vc_char_table_element.clear();
        vc_char_table_element.push_back(vc_routes_row[i]);
        //If the element is not a seperator and the element is not in the the table then push it to the tabel        
        if(vc_routes_row[i]!= ';' && find(vvc_char_table.begin(), vvc_char_table.end(),vc_char_table_element)==vvc_char_table.end()){
            vvc_char_table.push_back(vc_char_table_element);
            //cout << vc_routes_row[i];
        }
    }
    //cout << endl;

    vector<vector<char>>::iterator iter_index_of_char;
    uint ui_index_of_current, ui_index_of_connected;
    uint ui_route_overflow= 0;
    string pchar_connected_number;
    for(uint i = 0; i < vc_routes_row.size(); i++)
    {
        if(vc_routes_row[i]!=';'){
            //find current element in vvc_char_table
            ui_index_of_current = get_index_of_element(vvc_char_table,vc_routes_row[i]);            
            //cout << "Found element " << vc_routes_row[i] << " at Pos " << ui_index_of_current+1 << endl;
            //load the current element
            vc_char_table_element.clear();
            vc_char_table_element = vvc_char_table[ui_index_of_current]; 
            
            //write predecessor connections
            //if it is not the first element of a single route, then there is a predecssor
            if(i!=0){
                if(vc_routes_row[i-1] != ';'){
                    //Find index of the predecessor
                    ui_index_of_connected = i-ui_route_overflow;
                    pchar_connected_number = to_string(ui_index_of_connected).c_str();
                    for(uint j = 0; j < pchar_connected_number.length(); j++)
                    {
                        vc_char_table_element.push_back(pchar_connected_number[j]);
                    }
                    vc_char_table_element.push_back('o');
                }
            }

            //write successor connections
            //if it is not the lsz element of a single route (i+1 is no problem because the last element of vc_routes_row is a ;, so it is not posible to enter this section with a ;)
            //, then there is a predecssor
            if(vc_routes_row[i+1] != ';'){
                //Find index of the successor
                ui_index_of_connected = i+1-ui_route_overflow;
                pchar_connected_number = to_string(ui_index_of_connected).c_str();
                for(uint j = 0; j < pchar_connected_number.length(); j++)
                    {
                        vc_char_table_element.push_back(pchar_connected_number[j]);
                }
                vc_char_table_element.push_back('i');
            }

            //write the element back
            vvc_char_table[ui_index_of_current] = vc_char_table_element;    
        } else
        {
            ui_route_overflow += 2;
        }        
    }

    //just printing
    cout << "[INFO] This is the char table:" <<endl;
    for(uint i = 0; i < vvc_char_table.size(); i++)
    {
        for(uint j = 0; j < vvc_char_table[i].size(); j++)
        {
            cout << vvc_char_table[i][j];
        }
        cout<<endl;
        
    }

    //Calculate the input letter
    uint ui_max_size=0;
    uint ui_index_input_letter;
    for(uint i = 0; i < vvc_char_table.size(); i++)
    {
        if(vvc_char_table[i].size()>ui_max_size){
            ui_max_size = vvc_char_table[i].size();
            c_input_letter = vvc_char_table[i][0];
            ui_index_input_letter = i;
        }
    }

    

    cout << "[INFO] The input letter is: " << c_input_letter <<endl;
    
    //calculate the test letter
    uint ui_index_test_letter = ui_index_input_letter+1;
    vector<uint> vui_connected_elements_input_letter = get_all_connected_elements_of_tabel_element(vvc_char_table[ui_index_input_letter]);
    vector<uint> vui_connected_elements_test_letter;
    bool b_test_letter_has_no_connection;
    uint ui_while_count=0;
    do
    {
        b_test_letter_has_no_connection = true;
        // cout << "[DEBUG] I am in the " << ui_while_count << " loop to detect the test letter" << endl;
        // cout <<"[DEBUG] ui_index_test_letter: " << ui_index_test_letter << " vvc_char_table.size(): " << vvc_char_table.size()<<endl;
        if (ui_index_test_letter >= vvc_char_table.size()) {
            ui_index_test_letter -= vvc_char_table.size();
        }
        //get all elements of the possible test_letter
        vui_connected_elements_test_letter = get_all_connected_elements_of_tabel_element(vvc_char_table[ui_index_test_letter]);
        //iterate this elements and check if it is in the input letter set
        for(uint i = 0; i < vui_connected_elements_test_letter.size(); i++)
        {   
            if(find(vui_connected_elements_input_letter.begin(), vui_connected_elements_input_letter.end(), vui_connected_elements_test_letter[i])!=vui_connected_elements_input_letter.end()){
                b_test_letter_has_no_connection = false;
            }
        }
        
        if(b_test_letter_has_no_connection == false){
            ui_index_test_letter++;            
        }
        ui_while_count++;
        //if the while count is bigger than the size of the char_table then it is not posible to calculate a test letter => menu is 
        if (ui_while_count >= vvc_char_table.size()){
            cout << "[INFO] This menu is not valid\tI did not find a test letter" <<endl;
            return false;
        }
    } while (b_test_letter_has_no_connection == false );
    
    c_test_letter = vvc_char_table[ui_index_test_letter][0];
    cout << "[INFO] The test letter is: " << c_test_letter <<endl;

    
    
    //cin.get();
    return true; 
}

vector<vector<uint>> menu::combine_graph_routes(uint ui_level){
    vector<uint> vui_route;
    vector<vector<uint>> vvui_routes;
    vector<vector<uint>> vvui_routes_recursion;
    for(uint i = 0; i < vvvui_graph[ui_level].size(); i++)
    {
        if (ui_level < (vvvui_graph.size()-1)) {           
            vvui_routes_recursion = combine_graph_routes(ui_level+1);
            for(uint j = 0; j < vvui_routes_recursion.size(); j++)
            {
                vui_route.clear();
                //lowest level first
                for(uint k = 0; k < vvvui_graph[ui_level][i].size(); k++)
                {            
                    vui_route.push_back(vvvui_graph[ui_level][i][k]);                            
                }
                vui_route.push_back(SEPERATOR);
                //highest (recursion) level second
                for(uint k = 0; k < vvui_routes_recursion[j].size(); k++)
                {            
                    vui_route.push_back(vvui_routes_recursion[j][k]);                            
                }                
                vvui_routes.push_back(vui_route);
            }            
        }else{
            vui_route.clear();
            for(uint j = 0; j < vvvui_graph[ui_level][i].size(); j++)
            {            
                vui_route.push_back(vvvui_graph[ui_level][i][j]);                            
            }
            vui_route.push_back(SEPERATOR);//separator        
            vvui_routes.push_back(vui_route);
        }
    }
    return vvui_routes; 
}

uint menu::get_index_of_element(vector<vector<char>> vvc_collection, char c_element){
    for(uint i = 0; i < vvc_collection.size(); i++)
    {
        if (vvc_collection[i][0] == c_element) {
            return i;
        }        
    }
    return vvc_collection.size();    
}

vector<uint> menu::get_all_connected_elements_of_tabel_element(vector<char> vc_table_element){
    vector<uint> vui_connected_elements;
    uint ui_connected_element;
    ostringstream ss_number;
    for(uint i = 0; i < vc_table_element.size(); i++)
    {
        if(isdigit(vc_table_element[i])){
            ss_number << vc_table_element[i];                       
        }
        else
        {
            if(ss_number.str().empty() == false){
                ui_connected_element=atoi(ss_number.str().c_str());
                vui_connected_elements.push_back(ui_connected_element);
                //cout << "[DEBUG] I add the following ui_connected_element: " << ui_connected_element <<endl;
            }
            ss_number.str("");
        }       
    }    
    return vui_connected_elements;
}

void menu::set_rotor_variation(vector<int> vi_current_rotor_variation){
    this->vi_rotor_variation = vi_current_rotor_variation;
}

st_Menu menu::get_Menu(){
    st_Menu st_menu;
    //Write the rotor variation (the row of rotors that should be test)
    for(uint i = 0; i < vi_rotor_variation.size(); i++)
    {
        st_menu.i_rotors[i] = vi_rotor_variation[i];        
    }
    //Write the reflector (wip we just write the B reflector)
    st_menu.c_reflector = 'B';
    //Write the input und test letter
    st_menu.c_input_voltage = c_input_letter;
    st_menu.c_test_register = c_test_letter;
    //Write the rotor tabel
    for(uint i = 0; i < vvc_rotor_table.size(); i++)
    {
        for(uint j = 0; j < vvc_rotor_table[i].size(); j++)
        {
            st_menu.c_drums[i][j]=vvc_rotor_table[i][j];
        }
        
    }
    //Write the char table
    for(uint i = 0; i < vvc_char_table.size(); i++)
    {
        for(uint j = 0; j < vvc_char_table[i].size(); j++)
        {
            st_menu.c_routen[i][j]=vvc_char_table[i][j];
        }
        
    }



    return st_menu;
}