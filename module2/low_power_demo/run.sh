verilator --binary -j 0 -Wall \
	counter.v counter_clk_gate.v counter_pwr_gate.v \
	tb_low_power.v --top tb_low_power --timing \
	--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }

make -f Vtb_low_power.mk Vtb_low_power || { echo "Compilation failed"; exit 1; }

./Vtb_low_power || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
