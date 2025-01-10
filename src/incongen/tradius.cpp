#include "incongen/tradius.h"

void incongen::TRadius::write_to_file(const std::pair<std::string, double>& p)
{
	io::FileWrite::tradius(generate_based_on_category(p));
}


tdouble_type incongen::TRadius::generate_based_on_category(const std::pair<std::string, double>& p)
{
	if(p.first == dst::decls_incongen_nps::possible_nps::vals_nps::constant)
	{



	}
	if(p.first == dst::decls_incongen_nps::possible_nps::vals_nps::radius_nps::function)
	{



	}
	if(p.first == dst::decls_incongen_nps::possible_nps::vals_nps::radius_nps::imbibition)
	{


	}

	std::cout << "-ERR- unknown category, incongen/tradius.cpp" << std::endl;
	return;
}
