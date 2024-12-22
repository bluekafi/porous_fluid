#ifndef IO_FILEREAD_H
#define IO_FILEREAD_H

#include "network/dimension.h"
#include "dst/parameter.h"

namespace io
{
	struct InputFiles
	{
		Tdouble tradius;
		TMns tmnsc;
		Tdouble tlength;
		dst::Parameter parameter;
		network::Dimension dimension;
		bool success;
	};

	class FileRead
	{

		template<class T>
		static std::pair<std::vector<std::vector<T>>, bool> table(
			const std::string& file_name);

	public:
		static std::pair<Tdouble, bool> radius();
		static std::pair<TMns, bool> mnsc();
		static std::pair<Tdouble, bool> length();
		static std::pair<dst::Parameter, bool> parameter();
		static InputFiles all();
	};
}

template<class T>
std::pair<std::vector<std::vector<T>>, bool> io::FileRead::table(const std::string& file_name)
{
	std::pair<std::vector<std::vector<T>>, bool> buffer;
	buffer.second = false;

	std::ifstream fin(file_name);
	if(!fin)
	{
		std::cout << "-ERR-" << file_name << " does not exist, create using generate or restore manually." << std::endl;
		return buffer;
	}

	int rows, cols;
	fin >> rows >> cols;

	std::vector<T> buffer_vec;
	T ipt;
	while(fin >> ipt)
	{
		buffer_vec.push_back(ipt);
	}


	if(buffer_vec.size() != size_t(rows * cols))
	{
		std::cout << "-ERR-in file " << file_name << " rows, cols are declared differently than the actual data in them." << std::endl;
		return buffer;
	}

	buffer.first = std::vector<std::vector<T>>(rows, std::vector<T>(cols));
	int count = 0;
	for(auto& row: buffer.first)
	{
		for(auto& cell: row)
		{
			cell = buffer_vec[count ++];
		}
	}
	buffer.second = true;

	return buffer;
}

#endif
