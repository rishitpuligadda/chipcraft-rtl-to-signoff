verilator --binary -j 0 -Wall clk_mux.v clk_divider.v \
	tb_multi_clk.v --top tb_multi_clk --timing \
	-CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_multi_clk.mk Vtb_multi_clk || { echo "Compilation failed"; exit 1; }
./Vtb_multi_clk || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
