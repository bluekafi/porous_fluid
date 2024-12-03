#ifndef MAKEFILE_GEN_PRINT_H
#define MAKEFILE_GEN_PRINT_H

#include <fstream>
#include <vector>
#include <string>

class Print
{
public:
	static void echo(std::ofstream& fout, const std::string& echo_comment);
	static void cmd(std::ofstream& fout, const std::string& makefile_cmd_title, const std::vector<std::string>& makefile_cmd_dependencies);
	static void script(std::ofstream& fout, const std::string& str_script);
};

#endif
