#include "menu.h"


void std::vector<std::string> Menu::read_input_files_vec()
{
	std::ifstream fin(decl::input_file_name);
	std::vector<std::string> files_vec;
	std::string input_str_buffer;
	while(fin >> input_str_buffer)
	{
		files_vec.push_back(input_str_buffer);
	}

	std::sort(files_vec.begin(), files_vec.end());

	return files;
}


std::pair<std::string, std::string> Menu::split(const std::string& s)
{
	return {s.substr(0, s.find('/'), s.substr(s.find('/') + 1)};
}


std::vector<std::string> Menu::list_executables(std::vector<std::string>& files_vec)
{
	std::vector<std::string> exev;
	for(std::string x: files_vec)
	{
		const std::string split = x.split;
		if(split.first == "exe")
		{
			exev.push_back(decl::path_run_folder + split.second));
		}
	}

	return exev;
}


void Menu::all(std::ofstream& fout)
{
	Print::cmd(fout, "all", {"necessary_compile"});
	Print::echo(fout, "Command executed = all, which is default make");
}


void Menu::necessary_compile(std::ofstream& fout, std::vector<std::string>& files_vec)
{
	Print::cmd(fout, "necessary_compile", list_executables(files_vec));

	Print::script(fout, decl::terminal_rmrf +  decl::path_plot);
	Print::script(fout, decl::terminal_mkdir + decl::path_plot);

	Print::echo(fout, "Command executed = necessary_compile");
}

void Menu::force(std::ofstream& fout)
{
	Print::cmd(fout, "force", {"clean", "necessary_compile"});
	Print::echo(fout, "Command executed = force");

}

void Menu::clean()
{
	Print::script(fout, decl::terminal_rmrf +  decl::path_plot);

}


