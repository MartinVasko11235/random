#ifndef NEW_FILE_COMMAND
#define NEW_FILE_COMMAND

#include "command.hpp"
#include <string>

class new_file_command : command{

	std::string _filename;
	
	public:

		new_file_command(std::string filename);

		int run();			
};


#endif
