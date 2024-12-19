#include "menu.h"
#include "decl.h"

/*
 * In src/makefile-gen$ make:
 * 		1. compiles and produces src/makefile-gen/build/genmakefile
 * 		2. runs $ ./genmakefile, this produces Makefile2
 * 		3. moves it to root folder
 *
 */

int main()
{
	const std::vector<std::string> file_vec = Menu::read_file_structure();

	// the output will be written to "Makefile2"
	std::ofstream fout(decl::target_output);

	/*
	 * all: necessary_compile
	 */
	Menu::all(fout);

	/*
	 * necessary_compile: run/ext1 run/exe2
	 * clean up the plot folder
	 */
	Menu::necessary_compile(fout, file_vec);

	/*
	 * force: clean_build, necessary_compile
	 */
	Menu::force(fout);

	/*
	 * rm -rf build
	 * mkdir build
	 */
	Menu::clean(fout);

	/*
	 * geany -i src/lib/lib.h src/lib/lib.cpp
	 */
	Menu::edit(fout, file_vec);

	/*
	 * exe1: obj1.o obj2.o exe1.o
	 * 		g++ a.o b.o -o run/exe1
	 */
	Menu::exe(fout, file_vec);

	/*
	 * build/obj1.o: obj1.cpp obj1.h headers.h
	 * 		g++ -c Wall -o obj1.o
	 */
	Menu::object(fout, file_vec);

	return 0;
}
