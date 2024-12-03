all:
	rm -rf build
	mkdir build
	g++ -c -Isrc/ -Wall -std=c++17 main.cpp -o build/main.o
	g++ -c -Isrc/ -Wall -std=c++17 src/print.cpp -o build/print.o
	g++ -c -Isrc/ -Wall -std=c++17 src/menu.cpp -o build/menu.o
	g++ build/main.o build/print.o build/menu.o -o build/genmakefile
	./build/genmakefile
	mv Makefile2 ../../

edit:
	geany -i main.cpp src/decl.h src/print.h src/print.cpp  src/menu.h src/menu.cpp 
 

	
	
	
	
	
	
	
	
