#include <string>

namespace decl
{
	const std::string target_output = "Makefile2";
	const std::string path_src_folder = "src/";
	const std::string path_run_folder = "run/";
	const std::string path_build_folder = "build/";
	const std::string path_plot = path_run_folder + "output_files/plots";

	const std::string terminal_mkdir = "mkdir " ;
	const std::string terminal_rmrf = "rm -rf ";
	const std::string terminal_geany_open = "geany -i ";

	const std::string compile_command_object = "g++ -c -Wall -std=c++17 ";
	const std::string compile_command_exe = "g++ ";
	const std::string input_file_name = path_src_folder + "file-structure.txt";
}
