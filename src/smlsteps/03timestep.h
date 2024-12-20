#ifndef FUNCTIMESTEP_H
#define FUNCTIMESTEP_H

#include "decltypedef.h"
#include "dstdimension.h"

namespace func
{
	class TimeStep
	{

	public:
		static double decide_time_step(const Tdouble& radius, const Tdouble& velocity, const dst::Dimension& dimension);
	};
}

#endif
