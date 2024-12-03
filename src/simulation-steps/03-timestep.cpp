#include "functimestep.h"

double func::TimeStep::decide_time_step(const Tdouble& radius, const Tdouble& velocity, const dst::Diamension& diamension)
{
	double max_vel = 0;

	for(int row = 0; row < diamension.rows; ++ row)
	{
		for(int col = 0; col < diamension.cols; ++ col)
		{
			const double r = radius[row][col];
			const double len = declconst::TUBE_LENGTH_CONST / (r * r);
			max_vel = std::max(std::abs(velocity[row][col]) / len, max_vel);
		}
	}

	return 1.0 / max_vel / declconst::TIME_DIV;
}
