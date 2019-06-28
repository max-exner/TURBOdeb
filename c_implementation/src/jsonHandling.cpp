#include "jsonHandling.hpp"


jsonHandling::jsonHandling(string s_file_path)
{
    if (s_file_path.find(".json")== string::npos){
        throw runtime_error("The given File is not a JSON File!");
    }
    this->s_file_path = s_file_path;
    this->open_file();
}

jsonHandling::~jsonHandling()
{
}

void jsonHandling::open_file(){
    try
    {
        json_file.open(s_file_path,ios::in);
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }   
}



void jsonHandling::parse_file(){
    //Read File Content
    stringstream buffer;
    buffer << json_file.rdbuf();            
    string s_json_content = buffer.str();

    //Parse the JSON content (dependency jsoncpp)    
    try
    {
        reader.parse(s_json_content, json_value);
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\t' << "It was not possible to parse the JSON File!" << endl;
    }   
}

string jsonHandling::get_json_value(string key){
    return json_value[key].asString();
}

