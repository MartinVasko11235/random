#include "command.hpp"
#include <iostream>

command::command(){
	name = "null";
}


int command::run(){
	std::cout << "command does not exist\n";
	return 0;
}
