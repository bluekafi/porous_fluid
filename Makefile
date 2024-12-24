

all: necessary_compile run
	@echo "Command executed = all"


run:
	@echo "./run/simulate"


necessary_compile: folder_check run/incongen run/plot run/simulate run/test
	@echo "Command executed = necessary_compile"


folder_check:
	rm -rf result-old
	mkdir -p build
	mkdir -p docs
	mkdir -p result
	mkdir -p input
	mkdir -p run
	mv result result-old
	mkdir -p result
	mkdir -p result/calculation
	mkdir -p result/graph
	mkdir -p result/initial
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
	geany -i  src/algo/determine.h src/algo/determine.cpp src/algo/utility.h src/algo/utility.cpp src/drw/bmp.h src/drw/bmp.cpp src/dst/inputfiles.h src/dst/inputfiles.cpp src/dst/mns.h src/dst/mns.cpp src/dst/parameter.h src/dst/parameter.cpp src/dst/txtincongen.h src/dst/txtincongen.cpp src/exe/incongen.cpp src/exe/plot.cpp src/exe/simulate.cpp src/exe/test.cpp src/head/decl.h src/head/type.h src/incongen/fromcmd.h src/incongen/fromcmd.cpp src/incongen/fromfile.h src/incongen/fromfile.cpp src/incongen/garbage.h src/incongen/garbage.cpp src/incongen/manager.h src/incongen/manager.cpp src/incongen/parameter.h src/incongen/parameter.cpp src/incongen/tlength.h src/incongen/tlength.cpp src/incongen/tmns.h src/incongen/tmns.cpp src/incongen/tradius.h src/incongen/tradius.cpp src/io/cmdprint.h src/io/cmdprint.cpp src/io/cmdread.h src/io/cmdread.cpp src/io/fileplot.h src/io/fileplot.cpp src/io/fileread.h src/io/fileread.cpp src/io/filewrite.h src/io/filewrite.cpp src/math/gausslinear.h src/math/gausslinear.cpp src/math/random.h src/math/random.cpp src/measure/measure.h src/measure/measure.cpp src/network/dimension.h src/network/dimension.cpp src/simulate/manager.h src/simulate/manager.cpp src/smlsteps/01pressure.h src/smlsteps/01pressure.cpp src/smlsteps/02velocity.h src/smlsteps/02velocity.cpp src/smlsteps/03timestep.h src/smlsteps/03timestep.cpp src/smlsteps/04displacement.h src/smlsteps/04displacement.cpp


run/incongen: build/exe_incongen.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o
	g++  build/exe_incongen.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o -o run/incongen
	@echo "build/exe_incongen.o created."


run/plot: build/exe_plot.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o
	g++  build/exe_plot.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o -o run/plot
	@echo "build/exe_plot.o created."


run/simulate: build/exe_simulate.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o
	g++  build/exe_simulate.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o -o run/simulate
	@echo "build/exe_simulate.o created."


run/test: build/exe_test.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o
	g++  build/exe_test.o build/algo_determine.o build/algo_utility.o build/drw_bmp.o build/dst_inputfiles.o build/dst_mns.o build/dst_parameter.o build/dst_txtincongen.o build/incongen_fromcmd.o build/incongen_fromfile.o build/incongen_garbage.o build/incongen_manager.o build/incongen_parameter.o build/incongen_tlength.o build/incongen_tmns.o build/incongen_tradius.o build/io_cmdprint.o build/io_cmdread.o build/io_fileplot.o build/io_fileread.o build/io_filewrite.o build/math_gausslinear.o build/math_random.o build/measure_measure.o build/network_dimension.o build/simulate_manager.o build/smlsteps_01pressure.o build/smlsteps_02velocity.o build/smlsteps_03timestep.o build/smlsteps_04displacement.o -o run/test
	@echo "build/exe_test.o created."


build/algo_determine.o: src/algo/determine.h src/algo/determine.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/algo/determine.cpp -o build/algo_determine.o
	@echo "build/algo_determine.o created."


build/algo_utility.o: src/algo/utility.h src/algo/utility.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/algo/utility.cpp -o build/algo_utility.o
	@echo "build/algo_utility.o created."


build/drw_bmp.o: src/drw/bmp.h src/drw/bmp.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/drw/bmp.cpp -o build/drw_bmp.o
	@echo "build/drw_bmp.o created."


build/dst_inputfiles.o: src/dst/inputfiles.h src/dst/inputfiles.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/dst/inputfiles.cpp -o build/dst_inputfiles.o
	@echo "build/dst_inputfiles.o created."


build/dst_mns.o: src/dst/mns.h src/dst/mns.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/dst/mns.cpp -o build/dst_mns.o
	@echo "build/dst_mns.o created."


build/dst_parameter.o: src/dst/parameter.h src/dst/parameter.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/dst/parameter.cpp -o build/dst_parameter.o
	@echo "build/dst_parameter.o created."


build/dst_txtincongen.o: src/dst/txtincongen.h src/dst/txtincongen.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/dst/txtincongen.cpp -o build/dst_txtincongen.o
	@echo "build/dst_txtincongen.o created."


build/exe_incongen.o: src/exe/incongen.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/incongen.cpp -o build/exe_incongen.o
	@echo "build/exe_incongen.o created."


build/exe_plot.o: src/exe/plot.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/plot.cpp -o build/exe_plot.o
	@echo "build/exe_plot.o created."


build/exe_simulate.o: src/exe/simulate.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/simulate.cpp -o build/exe_simulate.o
	@echo "build/exe_simulate.o created."


build/exe_test.o: src/exe/test.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/exe/test.cpp -o build/exe_test.o
	@echo "build/exe_test.o created."


build/incongen_fromcmd.o: src/incongen/fromcmd.h src/incongen/fromcmd.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/fromcmd.cpp -o build/incongen_fromcmd.o
	@echo "build/incongen_fromcmd.o created."


build/incongen_fromfile.o: src/incongen/fromfile.h src/incongen/fromfile.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/fromfile.cpp -o build/incongen_fromfile.o
	@echo "build/incongen_fromfile.o created."


build/incongen_garbage.o: src/incongen/garbage.h src/incongen/garbage.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/garbage.cpp -o build/incongen_garbage.o
	@echo "build/incongen_garbage.o created."


build/incongen_manager.o: src/incongen/manager.h src/incongen/manager.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/manager.cpp -o build/incongen_manager.o
	@echo "build/incongen_manager.o created."


build/incongen_parameter.o: src/incongen/parameter.h src/incongen/parameter.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/parameter.cpp -o build/incongen_parameter.o
	@echo "build/incongen_parameter.o created."


build/incongen_tlength.o: src/incongen/tlength.h src/incongen/tlength.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/tlength.cpp -o build/incongen_tlength.o
	@echo "build/incongen_tlength.o created."


build/incongen_tmns.o: src/incongen/tmns.h src/incongen/tmns.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/tmns.cpp -o build/incongen_tmns.o
	@echo "build/incongen_tmns.o created."


build/incongen_tradius.o: src/incongen/tradius.h src/incongen/tradius.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/tradius.cpp -o build/incongen_tradius.o
	@echo "build/incongen_tradius.o created."


build/io_cmdprint.o: src/io/cmdprint.h src/io/cmdprint.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/cmdprint.cpp -o build/io_cmdprint.o
	@echo "build/io_cmdprint.o created."


build/io_cmdread.o: src/io/cmdread.h src/io/cmdread.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/cmdread.cpp -o build/io_cmdread.o
	@echo "build/io_cmdread.o created."


build/io_fileplot.o: src/io/fileplot.h src/io/fileplot.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/fileplot.cpp -o build/io_fileplot.o
	@echo "build/io_fileplot.o created."


build/io_fileread.o: src/io/fileread.h src/io/fileread.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/fileread.cpp -o build/io_fileread.o
	@echo "build/io_fileread.o created."


build/io_filewrite.o: src/io/filewrite.h src/io/filewrite.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/io/filewrite.cpp -o build/io_filewrite.o
	@echo "build/io_filewrite.o created."


build/math_gausslinear.o: src/math/gausslinear.h src/math/gausslinear.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/gausslinear.cpp -o build/math_gausslinear.o
	@echo "build/math_gausslinear.o created."


build/math_random.o: src/math/random.h src/math/random.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/random.cpp -o build/math_random.o
	@echo "build/math_random.o created."


build/measure_measure.o: src/measure/measure.h src/measure/measure.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/measure/measure.cpp -o build/measure_measure.o
	@echo "build/measure_measure.o created."


build/network_dimension.o: src/network/dimension.h src/network/dimension.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/network/dimension.cpp -o build/network_dimension.o
	@echo "build/network_dimension.o created."


build/simulate_manager.o: src/simulate/manager.h src/simulate/manager.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulate/manager.cpp -o build/simulate_manager.o
	@echo "build/simulate_manager.o created."


build/smlsteps_01pressure.o: src/smlsteps/01pressure.h src/smlsteps/01pressure.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/01pressure.cpp -o build/smlsteps_01pressure.o
	@echo "build/smlsteps_01pressure.o created."


build/smlsteps_02velocity.o: src/smlsteps/02velocity.h src/smlsteps/02velocity.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/02velocity.cpp -o build/smlsteps_02velocity.o
	@echo "build/smlsteps_02velocity.o created."


build/smlsteps_03timestep.o: src/smlsteps/03timestep.h src/smlsteps/03timestep.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/03timestep.cpp -o build/smlsteps_03timestep.o
	@echo "build/smlsteps_03timestep.o created."


build/smlsteps_04displacement.o: src/smlsteps/04displacement.h src/smlsteps/04displacement.cpp src/head/decl.h src/head/type.h
	g++ -c -Wall -std=c++17 -Isrc/ src/smlsteps/04displacement.cpp -o build/smlsteps_04displacement.o
	@echo "build/smlsteps_04displacement.o created."
