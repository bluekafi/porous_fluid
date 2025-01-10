#ifndef DST_INPUTFILES_H
#define DST_INPUTFILES_H

namespace dst
{
	struct InputFiles
	{
		tdouble_type tradius;
		tmns_type tmns_typec;
		tdouble_type tlength;
		dst::Parameter parameter;
		network::Dimension dimension;
		bool success;
	};
}

#endif
