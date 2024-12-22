#ifndef FUNCDETERMINE_H
#define FUNCDETERMINE_H

#include "head/decl.h"
#include "dstdimension.h"

namespace func
{
	class Determine
	{
		static int cap_press_contb_from_direc(const int direction);

	public:

		static Tdouble determine_volume(const Tdouble& radius, const Tdouble& velocity, const double time_step, const network::Dimension& dimension);

		static std::vector<std::vector<int>> gen_add_mnsc(
			const TMns& mnsc,
			const network::Dimension& dimension
		);
	};
}

#endif
