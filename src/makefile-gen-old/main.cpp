



















void edit(std::ofstream& fout, std::vector<std::string>& filev)
{
	std::string s = decl::terminal_geany_open;
	for(std::string x: s)
	{
		const auto std::pair<std::string, std::string> y = split(x);
		if(y.first == "head")
		{
		}
		else if(y.first = "exe")
		{
			s += " " + x + ".cpp";
			s += " " + x + ".h";
		}
		else
		{
			s += " " + x + ".cpp";
			s += " " + x + ".h";
		}
	}

	Print::cmd(fout, "force", {"clean", "necessary_compile"});
	Print::echo(fout, "Command executed = force");
}


void exe()
{


}


void objects()
{



}


int main()
{
	const std::vector<std::string> filesv = ReadFileStructure();

	std::ofstream fout(target_output);

	/*
	 * menu_all
	 * make - this is the default command
	 * necessary compile - the only thing that it launches
	 */
	all(fout);

	/*
	 * NecessaryCompile
	 * build all object files if needed
	 * link to form executables
	 * clean up the plot folder
	 */
	necessary_compile(fout, filev);

	/*
	 * Force
	 * clean the build folder
	 * run necessary compile
	 */
	force(fout, filev);

	/*
	 * Deletes the build folder
	 * remake the build folder
	 */
	clean(fout, filev);

	/*
	 * Edit
	 * Command for geany to open all the files
	 */
	edit(fout, filev);

	/*
	 * exe1: obj1.o obj2.o exe1.o
	 * 		linking -o run/exe1
	 */
	exe(fout, filev);

	/*
	 * Objects
	 * Commands to build individual objects
	 * build/obj1.o: obj1.cpp obj1.h appsimulation.h
	 * 		g++ -c Wall -o obj1.o
	 */
	objects(fout, filev);

	return 0;
}







