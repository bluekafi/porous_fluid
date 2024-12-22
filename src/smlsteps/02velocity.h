#ifndef FUNCVELOCITY_H
#define FUNCVELOCITY_H

#include "head/decl.h"
#include "dstdimension.h"

namespace func
{
	class Velocity
	{

	public:
		static Tdouble calculate_velocity(
			const Tdouble& radius,
			const TMns& mnsc,
			const std::vector<std::vector<int>>& add_mnsc,
			const std::vector<double>& pressure,
			const network::Dimension& dimension
		);

		static Tdouble refine_velocity(Tdouble v);
	};
}

#endif
