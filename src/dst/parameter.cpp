#include "dst/parameter.h"

bool dst::Parameter::set(const std::string& name_parameter, const double value)
{
	if(name_parameter == dst::decls_parameter_nps::mu_oil)
	{
		this->mu_oil = value;
		return true;
	}
	if(name_parameter == dst::decls_parameter_nps::mu_water)
	{
		this->mu_water = value;
		return true;
	}
	if(name_parameter == dst::decls_parameter_nps::sigma)
	{
		this->sigma = value;
		return true;
	}
	if(name_parameter == dst::decls_parameter_nps::total_volumetric_flow_rate)
	{
		this->total_volumetric_flow_rate = value;
		return true;
	}
	
	return false;
}
