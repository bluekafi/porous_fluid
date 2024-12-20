

all: necessary_compile
	@echo "Command executed = all"


necessary_compile: folder_check run/incongen run/plot run/simulate run/test
	@echo "Command executed = necessary_compile"


folder_check:
	rm -rf result-old
	mkdir -p build
	mkdir -p docs
	mkdir -p result
	mkdir -p run
	mv result result-old
	mkdir -p result
	mkdir -p result/calculation
	mkdir -p result/graph
	mkdir -p result/noradius
	mkdir -p result/pressure
	mkdir -p result/thick
	mkdir -p result/velocity
	@echo "Command executed = folder_check"


force: clean necessary_compile
	@echo "Command executed = force"
	rm -rf build/
	mkdir -p build/


edit:
	geany -i  src/algo/determine.h src/algo/determine.cpp src/drw/bmp.h src/drw/bmp.cpp src/dst/meniscus.h src/dst/meniscus.cpp src/exe/incongen.cpp src/exe/plot.cpp src/exe/simulate.cpp src/exe/test.cpp src/head/decltypedef.h src/incongen/manager.h src/incongen/manager.cpp src/io/cmdprint.h src/io/cmdprint.cpp src/io/cmdread.h src/io/cmdread.cpp src/io/fileplot.h src/io/fileplot.cpp src/io/fileread.h src/io/fileread.cpp src/io/filewrite.h src/io/filewrite.cpp src/math/gausslinear.h src/math/gausslinear.cpp src/math/random.h src/math/random.cpp src/measure/measure.h src/measure/measure.cpp src/network/dimension.h src/network/dimension.cpp src/smlsteps/01pressure.h src/smlsteps/01pressure.cpp src/smlsteps/02velocity.h src/smlsteps/02velocity.cpp src/smlsteps/03timestep.h src/smlsteps/03timestep.cpp src/smlsteps/04displacement.h src/smlsteps/04displacement.cpp src/smlsteps/manager.h src/smlsteps/manager.cpp


run/incongen: build/exe_incongen.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o
	g++  build/exe_incongen.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o -o run/incongen
	@echo "build/exe_incongen.o created."


run/plot: build/exe_plot.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o
	g++  build/exe_plot.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o -o run/plot
	@echo "build/exe_plot.o created."


run/simulate: build/exe_simulate.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o
	g++  build/exe_simulate.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o -o run/simulate
	@echo "build/exe_simulate.o created."


run/test: build/exe_test.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o
	g++  build/exe_test.o build/algo_determine.o build/drw_bmp.o build/dst_meniscus.o build/incongen_manager.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o build/smlsteps_manager.o -o run/test
	@echo "build/exe_test.o created."


build/algo_determine.o: src/algo/determine.h src/algo/determine.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/algo/determine.cpp -o build/algo_determine.o
	@echo "build/algo_determine.o created."


build/drw_bmp.o: src/drw/bmp.h src/drw/bmp.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/drw/bmp.cpp -o build/drw_bmp.o
	@echo "build/drw_bmp.o created."


build/dst_meniscus.o: src/dst/meniscus.h src/dst/meniscus.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/dst/meniscus.cpp -o build/dst_meniscus.o
	@echo "build/dst_meniscus.o created."


build/exe_incongen.o: src/exe/incongen.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/incongen.cpp -o build/exe_incongen.o
	@echo "build/exe_incongen.o created."


build/exe_plot.o: src/exe/plot.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/plot.cpp -o build/exe_plot.o
	@echo "build/exe_plot.o created."


build/exe_simulate.o: src/exe/simulate.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/simulate.cpp -o build/exe_simulate.o
	@echo "build/exe_simulate.o created."


build/exe_test.o: src/exe/test.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/test.cpp -o build/exe_test.o
	@echo "build/exe_test.o created."


build/incongen_manager.o: src/incongen/manager.h src/incongen/manager.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/manager.cpp -o build/incongen_manager.o
	@echo "build/incongen_manager.o created."


build/io_cmdprint.o: src/io/cmdprint.h src/io/cmdprint.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/cmdprint.cpp -o build/io_cmdprint.o
	@echo "build/io_cmdprint.o created."


build/io_cmdread.o: src/io/cmdread.h src/io/cmdread.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/cmdread.cpp -o build/io_cmdread.o
	@echo "build/io_cmdread.o created."


build/io_fileplot.o: src/io/fileplot.h src/io/fileplot.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/fileplot.cpp -o build/io_fileplot.o
	@echo "build/io_fileplot.o created."


build/io_fileread.o: src/io/fileread.h src/io/fileread.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/fileread.cpp -o build/io_fileread.o
	@echo "build/io_fileread.o created."


build/io_filewrite.o: src/io/filewrite.h src/io/filewrite.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/filewrite.cpp -o build/io_filewrite.o
	@echo "build/io_filewrite.o created."


build/math_gausslinear.o: src/math/gausslinear.h src/math/gausslinear.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/gausslinear.cpp -o build/math_gausslinear.o
	@echo "build/math_gausslinear.o created."


build/math_random.o: src/math/random.h src/math/random.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/random.cpp -o build/math_random.o
	@echo "build/math_random.o created."


build/measure_measure.o: src/measure/measure.h src/measure/measure.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/measure/measure.cpp -o build/measure_measure.o
	@echo "build/measure_measure.o created."


build/network_dimension.o: src/network/dimension.h src/network/dimension.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/network/dimension.cpp -o build/network_dimension.o
	@echo "build/network_dimension.o created."


build/smlsteps_01pressure.o: src/smlsteps/01pressure.h src/smlsteps/01pressure.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/01pressure.cpp -o build/smlsteps_01pressure.o
	@echo "build/smlsteps_01pressure.o created."


build/smlsteps_02velocity.o: src/smlsteps/02velocity.h src/smlsteps/02velocity.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/02velocity.cpp -o build/smlsteps_02velocity.o
	@echo "build/smlsteps_02velocity.o created."


build/smlsteps_03timestep.o: src/smlsteps/03timestep.h src/smlsteps/03timestep.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/03timestep.cpp -o build/smlsteps_03timestep.o
	@echo "build/smlsteps_03timestep.o created."


build/smlsteps_04displacement.o: src/smlsteps/04displacement.h src/smlsteps/04displacement.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/04displacement.cpp -o build/smlsteps_04displacement.o
	@echo "build/smlsteps_04displacement.o created."


build/smlsteps_manager.o: src/smlsteps/manager.h src/smlsteps/manager.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/manager.cpp -o build/smlsteps_manager.o
	@echo "build/smlsteps_manager.o created."
