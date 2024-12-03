#ifndef MAKEFILE_GEN_MENU_H
#define MAKEFILE_GEN_MENU_H

#include "print.h"
#include <utility>

class Menu
{
	std::pair<std::string, std::string> split(std::string s);
	std::vector<std::string> list_executables(std::vector<std::string>& files_vec);

public:
	static void all(std::ofstream& fout);
	static void necessary_compile(std::ofstream& fout);
	static void force(std::ofstream& fout);
	static void clean(std::ofstream& fout);
	static void edit(std::ofstream& fout);
	static void exe(std::ofstream& fout);
	static void objects(std::ofstream& fout);
	static void std::vector<std::string> read_input_files_vec();
};

#endif
