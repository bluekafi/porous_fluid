#include "dst/parameter.h"

bool dst::Parameter::set(const std::string& name_parameter, const double value)
{
	const std::map<std::string, int*> name_to_variable
	{
		{"sigma", &sigma}
		{"mu_water", &mu_water}
		{"mu_oil", &mu_oil}
		{"total_volumetric_flow_rate", &total_volumetric_flow_rate}
	}

	if(name_to_variable.count(name_parameter) == 0)
	{
		return false;
	}

	(*(name_to_variable.at(name_parameter))) = value;
	return true;
}
