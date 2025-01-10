#include "dst/txtincongen.h"

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
	const std::string& value = algo::Utility::split(buffer_line).second;

	if(category == dst::decls_incongen_nps::possible_nps::cats_nps::nrows)
	{
		this->nrows = std::stoi(value);
		return true;
	}
	if(category == dst::decls_incongen_nps::possible_nps::cats_nps::ncols)
	{
		this->ncols = std::stoi(value);
		return true;
	}
	if(category == dst::decls_incongen_nps::possible_nps::cats_nps::tradius)
	{
		const std::vector<std::string>& possible_vals
			= find_vals_of_corresponding_cats(category);

		const std::pair<std::pair<std::string, double>, bool> buffer_match
			= match_with_val(value, possible_vals);

		if(!buffer_match.second)
		{
			return false;
		}

		this->tradius = buffer_match.first;
		return true;
	}
	if(category == dst::decls_incongen_nps::possible_nps::cats_nps::tlength)
	{
		const std::vector<std::string>& possible_vals
			= find_vals_of_corresponding_cats(category);

		const std::pair<std::pair<std::string, double>, bool> buffer_match
			= match_with_val(value, possible_vals);

		if(!buffer_match.second)
		{
			return false;
		}

		this->tlength = buffer_match.first;
		return true;
	}
	if(category == dst::decls_incongen_nps::possible_nps::cats_nps::tmns_type)
	{
		const std::vector<std::string>& possible_vals
			= find_vals_of_corresponding_cats(category);

		const std::pair<std::pair<std::string, double>, bool> buffer_match
			= match_with_val(value, possible_vals);

		if(!buffer_match.second)
		{

			return false;
		}

		this->tmns_type = value;
		return true;
	}

	return false;
}


bool dst::TxtIncongen::is_const(const std::string& s)
{
	const std::string target
		= dst::decls_incongen_nps::possible_nps::vals_nps::constant;
	return s.substr(0, target.size()) == target;
}

std::pair<std::pair<std::string, double>, bool> dst::TxtIncongen::match_with_val(const std::string& s, const std::vector<std::string>& v)
{
	std::pair<std::string, double> buffer;

	if(is_const(value))
	{
		buffer.second = std::stod(algo::Utility::split(value).second);
		buffer.first
			= dst::decls_incongen_nps::possible_nps::vals_nps::constant;
		return {buffer, true};
	}

	for(const std::string& val: v)
	{
		if(val == s)
		{
			buffer.first = s;
			return {buffer, true};
		}
	}

	return {buffer, false};
}


std::vector<std::string> dst::TxtIncongen::find_vals_of_corresponding_cats(const std::string& s)
{
	for(const dst::decls_incongen_nps::CategoryAndValues& cv:
		dst::decls_incongen_nps::category_and_values_vec)
	{
		if(cv.category == s)
		{
			return {cv.values, true};
		}
	}

	std::cout << "Error in txtincongen.cpp in determining values" << std::endl;
	return {};
}
