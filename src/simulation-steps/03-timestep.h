#ifndef FUNCTIMESTEP_H
#define FUNCTIMESTEP_H

#include "decltypedef.h"
#include "dstdiamension.h"

namespace func
{
	class TimeStep
	{

	public:
		static double decide_time_step(const Tdouble& radius, const Tdouble& velocity, const dst::Diamension& diamension);
	};
}

#endif
