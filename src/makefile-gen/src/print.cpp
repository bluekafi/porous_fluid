#include "print.h"

void Print::echo(std::ofstream& fout, const std::string& s)
{
	fout << '\t' << "@echo " << '\"' << s << '\"' << '\n';
}

void Print::cmd(std::ofstream& fout, const std::string& s, const std::vector<std::string>& v)
{
	fout << "\n\n";
	fout << s << ':';
	for(const std::string& x: v)
	{
		fout << x << ' ';
	}
	fout << '\n';
}

void Print::script(std::ofstream& fout, const std::string& str_script)
{
	fout << '\t' << str_script << '\n';
}

