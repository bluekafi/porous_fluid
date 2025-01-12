#ifndef DST_PARAMETER_H
#define DST_PARAMETER_H

namespace dst
{
	namespace decls_parameter_nps
	{
		const std::string sigma = "sigma";
		const std::string mu_water = "mu_water";
		const std::string mu_oil = "mu_oil";
		const std::string total_volumetric_flow_rate = "total_volumetric_flow_rate";
		
	}
	class Parameter
	{
	public:
		double sigma;
		double mu_water;
		double mu_oil;
		double total_volumetric_flow_rate;

		bool set(const std::string& name_parameter, const double val);
	};
}










#endif
