#ifndef DST_TXTINCONGEN_H
#define DST_TXTINCONGEN_H

namespace dst
{
	namespace decls_incongen_nps
	{
		namespace possible_nps
		{
			namespace cats_nps
			{
				const std::string nrows = "nrows";
				const std::string ncols = "ncols";
				const std::string tradius = "tradius";
				const std::string tlength = "tlength";
				const std::string tmns_type = "tmns_type";
			}

			namespace vals_nps
			{
				std::string constant = "const";
				namespace radius_nps
				{
					const std::string imbibition = "imbibiton";
					const std::string constant = constant;
					const std::string function = "function";
				}

				namespace length_nps
				{
					const std::string constant = constant;
					const std::string inverseradius = "inverseradius";
				}

				namespace mns_nps
				{
					const std::string saturate_oil = "saturate_oil";
					const std::string saturate_water = "saturate_water";
					const std::string imbibition = "imbibition";
				}
			}
		}

		struct CategoryAndValues
		{
			std::string category;
			std::vector<std::string> values;
		};

		const std::vector<CategoryAndValues>
		category_and_values_vec
		{
			{
				cats_nps::nrows, {"40"}
			},

			{
				cats_nps::ncols, {"40"}
			},

			{
				cats_nps::tradius,
				{
					possible_nps::vals_nps::radius_nps::constant + "=1.13",
					possible_nps::vals_nps::radius_nps::imbibition,
					possible_nps::vals_nps::radius_nps::function
				}
			},
			{
				cats_nps::tlength,
				{
					possible_nps::vals_nps::length_nps::constant + "2.12",
					possible_nps::vals_nps::length_nps::inverseradius
				}
			},
			{
				cats_nps::tmns_type,
				{
					possible_nps::vals_nps::mns_nps::imbibition,
					possible_nps::vals_nps::mns_nps::saturate_water,
					possible_nps::vals_nps::mns_nps::saturate_oil
				}
			}
		};
	}

	class TxtIncongen
	{
	public:
		int nrows;
		int ncols;
		std::pair<std::string, double> tradius;
		std::pair<std::string, double> tlength;
		std::string tmns_type;
		bool set();
		static std::set<std::string> categories_set(const std::string& buffer_line);
		static bool is_const(const std::string& s);
		static std::pair<std::string, double> match_with_val(const std::string& s, const std::vector<std::string>& v);
		static std::vector<std::string> find_vals_of_corresponding_cats(const std::string& s);
	};

}

#endif
