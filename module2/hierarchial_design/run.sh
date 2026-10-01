verilator --binary -j 0 -Wall \
	counter.v adder.v top_module.v \
	tb_top_module.v --top tb_top_module \
	--timing --CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_top_module.mk Vtb_top_module || { echo "comilation failed"; exit 1; }
./Vtb_top_module || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
