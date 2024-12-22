#ifndef DST_PARAMETER_H
#define DST_PARAMETER_H

namespace dst
{
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
