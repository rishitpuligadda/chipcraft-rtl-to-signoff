verilator --binary -j 0 -Wall \
	counter.v alu.v mux21.v mini_soc.v tb_mini_soc.v \
	--top-module tb_mini_soc --timing --CFLAGS "-std=c++20" \
	--trace

cd obj_dir || { echo "obj_dir not found!"; exit 1; }
make -f Vtb_mini_soc.mk Vtb_mini_soc || { echo "Compilation failed"; exit 1; }
./Vtb_mini_soc || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
