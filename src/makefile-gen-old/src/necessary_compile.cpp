#include "necessary_compile.h"

void NecessaryCompile::run(std::ofstream& fout, const DeclConst& decl_const)
{
	const std::vector<File>& file_vec = decl_const.file_vec;

	std::vector<File> exe_file_vec = Utility::FileVec::exe(file_vec);
	std::vector<std::string> exe_vec_str = Utility::StrVec::exe(exe_file_vec);



	clear_plot_folder(fout, decl_const);
}
