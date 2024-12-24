#ifndef DST_INPUTFILES_H
#define DST_INPUTFILES_H

namespace dst
{
	struct InputFiles
	{
		Tdouble tradius;
		TMns tmnsc;
		Tdouble tlength;
		dst::Parameter parameter;
		network::Dimension dimension;
		bool success;
	};
}

#endif
