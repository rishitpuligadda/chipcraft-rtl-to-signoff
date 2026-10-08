verilator --binary -j 0 -Wall \
	inefficient_fsm.v  optimized_fsm.v \
	tb_fsm.v --top tb_fsm --timing \
	--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_fsm.mk Vtb_fsm || { echo "Compilation failed"; exit 1; }
./Vtb_fsm || { echo "Simulation failed"; exit 1; }
gtkwave dump.vcd
