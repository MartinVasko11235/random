#include "utils/input_parser.hpp"
#include "commands/command.hpp"
#include <memory>
#include <iostream>

int main(int argc, const char* argv[]){

	std::unique_ptr<command> cmd = input_parser::parse(argc, argv);

	int return_code = cmd->run();

	if (return_code == -1){
		std::cout << "command unsuccesful\n";
	}

	return 0;
}
