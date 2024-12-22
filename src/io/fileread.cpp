#include "io/fileread.h"

std::pair<Tdouble, bool> io::FileRead::radius()
{
	return io::FileRead::table<double>(decl::file::input::RADIUS);
}

std::pair<Tdouble, bool> io::FileRead::length()
{
	return io::FileRead::table<double>(decl::file::input::LENGTH);
}

std::pair<dst::Parameter, bool> io::FileRead::parameter()
{
	std::ifstream fin(decl::file::input::PARAMETER);
	std::vector<std::string> buffer_line_vec;
	std::string buffer_str;
	while(fin >> buffer_str)
	{
		buffer_line_vec.push_back(buffer_str);
	}

	dst::Parameter parameter;
	for(const std::string& line_str: buffer_line_vec)
	{
		const std::string name = line_str.substr(0, line_str.find('='));
		const double value = std::stod(line_str.substr(line_str.find('=') + 1));
		const bool success = parameter.set(name, value);
		if(!success)
		{
			std::cout << "-ERR- parameter.txt is corrupted, failure reading" << line_str << std::endl;
			return {parameter, false};
		}
	}

	return {parameter, true};
}

std::pair<TMns, bool> io::FileRead::mnsc()
{
	return io::FileRead::table<dst::Mns>(decl::file::input::MNSC);
}

io::InputFiles io::FileRead::all()
{
	InputFiles input_files;
	input_files.success = false;

	// STEP-1.1 read radius
	const auto& buffer_radius = io::FileRead::radius();
	if(!buffer_radius.second)
	{
		std::cout << "-ERR-radius.txt is corrupted" << std::endl;
		return input_files;
	}
	input_files.tradius = buffer_radius.first;

	// STEP-1.2 read mnsc
	const auto& buffer_mnsc = io::FileRead::mnsc();
	if(!buffer_mnsc.second)
	{
		std::cout << "-ERR-mnsc.txt meniscus configuration file is corrupted" << std::endl;
		return input_files;
	}
	input_files.tmnsc = buffer_mnsc.first;

	// STEP-1.3 read length
	const auto& buffer_length = io::FileRead::length();
	if(!buffer_length.second)
	{
		std::cout << "-ERR-length.txt meniscus file is corrupted" << std::endl;
		return input_files;
	}
	input_files.tlength = buffer_length.first;

	// STEP-1.4 read parameter
	const auto& buffer_parameter = io::FileRead::parameter();
	if(!buffer_parameter.second)
	{
		std::cout << "-ERR-parameter meniscus file is corrupted" << std::endl;
		return input_files;
	}
	input_files.parameter = buffer_parameter.first;


	input_files.dimension = network::Dimension(input_files.tradius);
	const network::Dimension dmnsc(input_files.tmnsc);
	const network::Dimension dlength(input_files.tlength);

	// STEP-2.1 check if tmns dimensions are okay
	if(!(input_files.dimension == dmnsc))
	{
		std::cout << "-ERR-Dimensions of tmns.txt is not correct" << std::endl;
		return input_files;
	}

	// STEP-2.2 check if tlength dimensions are okay
	if(!(input_files.dimension == dlength))
	{
		std::cout << "-ERR-Dimensions of tlength.txt is not correct" << std::endl;
		return input_files;
	}

	input_files.success = true;
	std::cout << "--FDK-All input files read correctly" << std::endl;
	return input_files;
}
