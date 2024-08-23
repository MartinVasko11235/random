#ifndef INPUT_PARSER
#define INPUT_PARSER

#include <functional>
#include <memory>
#include <string>
#include <map>

class command;

class input_parser{

	private:
		
		static std::unique_ptr<command> _parse_new_file_command(int argc, const char* argv[]);

		static inline std::map<std::string, std::function<std::unique_ptr<command>(int, const char*[])>> command_parsers = {
			{"new", _parse_new_file_command}
	};
		
	
	public:

		static std::unique_ptr<command> parse(int argc, const char* argv[]);
		
			
};

#endif
