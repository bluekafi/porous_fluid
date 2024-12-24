#ifndef DST_TXTINCONGEN_H
#define DST_TXTINCONGEN_H

namespace dst
{
	namespace txt_incongen
	{
		struct CategoryAndValues
		{
			std::string category;
			std::vector<std::string> values;
		};

		namespace cat_str
		{
			const std::string nrows = "nrows";
			const std::string ncols = "ncols";
			const std::string tradius = "tradius";
			const std::string tlength = "tlength";
			const std::string tmns = "tmns";
		}

		const std::vector<CategoryAndValues>
		category_and_values_vec
		{
			{cat_str::nrows, {"40"}},
			{cat_str::ncols, {"40"}},
			{cat_str::tradius, {"const=3.00", "imbibition", "function"}},
			{cat_str::tlength, {"const=1.15", "inverseradius"}},
			{cat_str::tmns, {"saturate_oil", "saturate_water", "imbibition"}}
		};
	}

	class TxtIncongen
	{
	public:
		int nrows;
		int ncols;
		std::pair<std::string, double> tradius;
		std::pair<std::string, double> tlength;
		std::string tmns;
		bool set();
		static std::set<std::string> categories_set(const std::string& buffer_line);
	};

}

#endif
