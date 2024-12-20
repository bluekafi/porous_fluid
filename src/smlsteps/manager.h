#ifndef FUNCGLOBAL_H
#define FUNCGLOBAL_H

#include "cmdioprint.h"
#include "fileioplot.h"
#include "fileiowrite.h"
#include "dstdimension.h"

#include "funcdetermine.h"
#include "funcintegration.h"
#include "funcmeasure.h"
#include "funcpressure.h"
#include "functimestep.h"
#include "funcvelocity.h"

#include "decltypedef.h"
#include "declconst.h"

struct ConfigAtMomentTime
{
	double clock;
	TMns mnsc;
	double pressure_input;
	double volume_injected;
	double flow_rate_at_this_step;
	double volume_blue_in_system;
};

namespace func
{
	class Global
	{
		static void makeplot
		(
			const Tdouble& radius,
			const TMns& mnsc,
			const int count,
			const double clock
		);

		static bool within_limits_fluid_first_type
		(
			const Tdouble& radius,
			const TMns& mnsc,
			double& proportion
		);

		static void SmartPrint(
				const std::vector<ConfigAtMomentTime>& vec,
				const Tdouble& radius
		);
	public:
		static void simulate(const Tdouble& radius,
			TMns& mnsc, const dst::Dimension& dimension);
	};
}

#endif
