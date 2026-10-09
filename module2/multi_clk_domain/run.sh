verilator --binary -j 0 -Wall \
	top_multi_clk.v async_fifo.v block_b.v \
	block_a.v tb_multi_clk.v --top tb_multi_clk \
	--timing --CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj__dir not found"; exit 1; }
make -f Vtb_multi_clk.mk Vtb_multi_clk || { echo "Compilation failed"; exit 1; }
./Vtb_multi_clk || { echo "Simulation failed"; exit 1; }
gtkwave dump.vcd
