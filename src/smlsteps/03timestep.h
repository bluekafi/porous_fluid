#ifndef FUNCTIMESTEP_H
#define FUNCTIMESTEP_H

#include "head/decl.h"
#include "dstdimension.h"

namespace func
{
	class TimeStep
	{

	public:
		static double decide_time_step(const Tdouble& radius, const Tdouble& velocity, const network::Dimension& dimension);
	};
}

#endif
