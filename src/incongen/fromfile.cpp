#include "incongen/fromfile.h"

bool incongen::FromFile::generate()
{
	// read input/incongen.txt
	// if the file is good, generate accordingly
	// if bad write a default template and return false

	const std::pair<dst::TxtIncongen, bool>& txt_incongen
		= io::FileRead::read_incongen();

	if(!txt_incongen.second)
	{
		io::FileWrite::sample_txt_incongen();
		return false;

	}

	const dst::TxtIncongen& settings = txt_incongen.first;


	return true;
}

