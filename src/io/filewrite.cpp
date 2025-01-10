#include "io/fileread.h"

void fileio::FileWrite::tradius(const tdouble_type& tradius)
{
	write_base(decl::file::input::RADIUS, tradius);
}

void fileio::FileWrite::tlength(const tdouble_type& tlength)
{
	write_base(decl::file::input::LENGTH, tlength);
}

void fileio::FileWrite::tmns_type(const tmns_type& tmns_type)
{
	write_base(decl::file::input::MNSC, tmns_type);
}

void fileio::FileWrite::sample_incongen_txt()
{
	std::ofstream fout(decl::file::input::INCONGEN);

	for(const dst::TxtIncongenCaregotyAndValues& category_and_values:
		dst::txt_incongen_category_and_values_vec)
	{
		const std::string& category
			= category_and_values.category;
		const std::vector<std::string>& values
			= category_and_values.values;

		fout << category << "=";
		for(int i = 0; i < int(values.size()); ++ i)
		{
			if(i) fout << "/";
			fout << values[i];
		}

		fout << '\n';
	}

}

void fileio::FileWrite::fluid_ppr(
	const std::vector<std::string>& header,
	const std::vector<std::vector<double>>& table
)
{
	std::ofstream fout(declfilename::FILE_FLUID_PPR);

	for(const std::string& head: header)
	{
		fout << head << '\t';
	}
	fout << '\n';

	for(const auto& row: table)
	{
		for(const auto x: row)
		{
			fout << x << '\t';
		}
		fout << '\n';
	}
}
