#include "dst/incongen.h"

std::set<std::string> dst::TxtIncongen::categories_set()
{
	std::set<std::string> set;
	for(const auto& category_and_values: dst::txt_incongen::category_and_values_vec)
	{
		const std::string& category = category_and_value.category;
		set.insert(category);
	}

	return set;
}


bool dst::TxtIncongen::set(const std::string& buffer_line)
{
	const std::string& category = algo::Utility::split(buffer_line).first;
	const std::string& vlaue = algo::Utility::split(buffer_line).second;

	if(category == dst::txt_incongen::cat_str::nrows)
	{
		nrows = std::stoi(vlaue);
		return true;
	}
	if(category == dst::txt_incongen::cat_str::ncols)
	{
		ncols = std::stoi(vlaue);
		return true;
	}
	if(category == dst::txt_incongen::cat_str::tradius)
	{

	}
	if(category == dst::txt_incongen::cat_str::tmns)
	{

	}

	return false;
}



