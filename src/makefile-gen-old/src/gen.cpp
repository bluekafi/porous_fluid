#include "gen.h"

void Gen::run(std::ofstream& fout)
{
	Print::cmd(fout, "gen");
	Print::echo(fout, "Make the genmakefile which edites the makefile itself!");

	std::vector<std::string> vobjects;
	for(const std::string& file: vmake)
	{
		std::stringstream ss;
		const std::string cpp = "src/make/" + file + ".cpp";
		const std::string object = "build/genmakefile_" + file + ".o";
		ss << GENERAL_COMPILE << ' ' << cpp << " -o " << object;
		vobjects.push_back(object);
		Print::script(fout, ss);
	}

	std::stringstream ss;
	ss << "g++ " << Utility::str_from_vector(vobjects) << " -o genmakefile";

	Print::script(fout, ss);
}
