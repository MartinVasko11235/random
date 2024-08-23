#include "input_parser.hpp"
#include "../commands/command.hpp"
#include <functional>
#include <memory>
#include <string>


std::unique_ptr<command> input_parser::parse(int argc, const char* argv[]){
	if (argc == 1){
		return std::make_unique<command>();
	}
	std::string name = argv[1];	
	auto parser_it = input_parser::command_parsers.find(name);

	if (parser_it == input_parser::command_parsers.end()){
		return std::make_unique<command>();
	}

	return parser_it->second(argc, argv);
	    		
}

std::unique_ptr<command> input_parser::_parse_new_file_command(int argc, const char* argv[]){
	
}
