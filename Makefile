

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
	geany -i  src/dst/meniscus.h src/dst/meniscus.cpp src/exe/incongen.cpp src/exe/plot.cpp src/exe/simulate.cpp src/exe/test.cpp src/graphics/drawbmp.h src/graphics/drawbmp.cpp src/head/decltypedef.h src/incongen/incongen.h src/incongen/incongen.cpp src/input-output/cmdioprint.h src/input-output/cmdioprint.cpp src/input-output/cmdioread.h src/input-output/cmdioread.cpp src/input-output/fileioplot.h src/input-output/fileioplot.cpp src/input-output/fileioread.h src/input-output/fileioread.cpp src/input-output/fileiowrite.h src/input-output/fileiowrite.cpp src/math/gausslinear.h src/math/gausslinear.cpp src/math/random.h src/math/random.cpp src/measurement/measure.h src/measurement/measure.cpp src/network-structure/dimension.h src/network-structure/dimension.cpp src/simulation-algorithms/determine.h src/simulation-algorithms/determine.cpp src/simulation-steps/00-simulate-manager.h src/simulation-steps/00-simulate-manager.cpp src/simulation-steps/01-pressure.h src/simulation-steps/01-pressure.cpp src/simulation-steps/02-velocity.h src/simulation-steps/02-velocity.cpp src/simulation-steps/03-timestep.h src/simulation-steps/03-timestep.cpp src/simulation-steps/04-displacement.h src/simulation-steps/04-displacement.cpp


run/incongen: build/exe_incongen.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o
	g++  build/exe_incongen.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o -o run/incongen
	@echo "build/exe_incongen.o created."


run/plot: build/exe_plot.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o
	g++  build/exe_plot.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o -o run/plot
	@echo "build/exe_plot.o created."


run/simulate: build/exe_simulate.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o
	g++  build/exe_simulate.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o -o run/simulate
	@echo "build/exe_simulate.o created."


run/test: build/exe_test.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o
	g++  build/exe_test.o build/dst_meniscus.o build/graphics_drawbmp.o build/incongen_incongen.o build/input-output_cmdioprint.o build/input-output_cmdioread.o build/input-output_fileioplot.o build/input-output_fileioread.o build/input-output_fileiowrite.o build/math_gausslinear.o build/math_random.o build/measurement_measure.o build/network-structure_dimension.o build/simulation-algorithms_determine.o build/simulation-steps_00-simulate-manager.o build/simulation-steps_01-pressure.o build/simulation-steps_02-velocity.o build/simulation-steps_03-timestep.o build/simulation-steps_04-displacement.o -o run/test
	@echo "build/exe_test.o created."


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


build/graphics_drawbmp.o: src/graphics/drawbmp.h src/graphics/drawbmp.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/graphics/drawbmp.cpp -o build/graphics_drawbmp.o
	@echo "build/graphics_drawbmp.o created."


build/incongen_incongen.o: src/incongen/incongen.h src/incongen/incongen.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/incongen/incongen.cpp -o build/incongen_incongen.o
	@echo "build/incongen_incongen.o created."


build/input-output_cmdioprint.o: src/input-output/cmdioprint.h src/input-output/cmdioprint.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/input-output/cmdioprint.cpp -o build/input-output_cmdioprint.o
	@echo "build/input-output_cmdioprint.o created."


build/input-output_cmdioread.o: src/input-output/cmdioread.h src/input-output/cmdioread.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/input-output/cmdioread.cpp -o build/input-output_cmdioread.o
	@echo "build/input-output_cmdioread.o created."


build/input-output_fileioplot.o: src/input-output/fileioplot.h src/input-output/fileioplot.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/input-output/fileioplot.cpp -o build/input-output_fileioplot.o
	@echo "build/input-output_fileioplot.o created."


build/input-output_fileioread.o: src/input-output/fileioread.h src/input-output/fileioread.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/input-output/fileioread.cpp -o build/input-output_fileioread.o
	@echo "build/input-output_fileioread.o created."


build/input-output_fileiowrite.o: src/input-output/fileiowrite.h src/input-output/fileiowrite.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/input-output/fileiowrite.cpp -o build/input-output_fileiowrite.o
	@echo "build/input-output_fileiowrite.o created."


build/math_gausslinear.o: src/math/gausslinear.h src/math/gausslinear.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/gausslinear.cpp -o build/math_gausslinear.o
	@echo "build/math_gausslinear.o created."


build/math_random.o: src/math/random.h src/math/random.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/math/random.cpp -o build/math_random.o
	@echo "build/math_random.o created."


build/measurement_measure.o: src/measurement/measure.h src/measurement/measure.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/measurement/measure.cpp -o build/measurement_measure.o
	@echo "build/measurement_measure.o created."


build/network-structure_dimension.o: src/network-structure/dimension.h src/network-structure/dimension.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/network-structure/dimension.cpp -o build/network-structure_dimension.o
	@echo "build/network-structure_dimension.o created."


build/simulation-algorithms_determine.o: src/simulation-algorithms/determine.h src/simulation-algorithms/determine.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-algorithms/determine.cpp -o build/simulation-algorithms_determine.o
	@echo "build/simulation-algorithms_determine.o created."


build/simulation-steps_00-simulate-manager.o: src/simulation-steps/00-simulate-manager.h src/simulation-steps/00-simulate-manager.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-steps/00-simulate-manager.cpp -o build/simulation-steps_00-simulate-manager.o
	@echo "build/simulation-steps_00-simulate-manager.o created."


build/simulation-steps_01-pressure.o: src/simulation-steps/01-pressure.h src/simulation-steps/01-pressure.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-steps/01-pressure.cpp -o build/simulation-steps_01-pressure.o
	@echo "build/simulation-steps_01-pressure.o created."


build/simulation-steps_02-velocity.o: src/simulation-steps/02-velocity.h src/simulation-steps/02-velocity.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-steps/02-velocity.cpp -o build/simulation-steps_02-velocity.o
	@echo "build/simulation-steps_02-velocity.o created."


build/simulation-steps_03-timestep.o: src/simulation-steps/03-timestep.h src/simulation-steps/03-timestep.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-steps/03-timestep.cpp -o build/simulation-steps_03-timestep.o
	@echo "build/simulation-steps_03-timestep.o created."


build/simulation-steps_04-displacement.o: src/simulation-steps/04-displacement.h src/simulation-steps/04-displacement.cpp src/head/decltypedef.h
	g++ -c -Wall -std=c++17 -Isrc/ src/simulation-steps/04-displacement.cpp -o build/simulation-steps_04-displacement.o
	@echo "build/simulation-steps_04-displacement.o created."
