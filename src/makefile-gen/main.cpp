#include "menu.h"
#include "decl.h"


int main()
{
	const std::vector<std::string> files_vec = Menu::read_input_files_vec();
	std::ofstream fout(decl::target_output);

	/*
	 * all: necessary_compile
	 */
	Menu::all(fout);

	/*
	 * necessary_compile: run/ext1 run/exe2
	 * clean up the plot folder
	 */
	Menu::necessary_compile(fout, files_vec);

	/*
	 * force: clean_build, necessary_compile
	 */
	Menu::force(fout, files_vec);

	/*
	 * rm -rf build
	 * mkdir build
	 */
	Menu::clean(fout, files_vec);

	/*
	 * geany -i src/lib/lib.h src/lib/lib.cpp
	 */
	Menu::edit(fout, files_vec);

	/*
	 * exe1: obj1.o obj2.o exe1.o
	 * 		g++ a.o b.o -o run/exe1
	 */
	Menu::exe(fout, files_vec);

	/*
	 * build/obj1.o: obj1.cpp obj1.h headers.h
	 * 		g++ -c Wall -o obj1.o
	 */
	Menu::objects(fout, files_vec);

	return 0;
}
