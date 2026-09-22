verilator --binary -j 0 -Wall alu.v uart_stub.v \
	soc_top.v tb_soc.v --top tb_soc \
	--timing --CFLAGS '-std=c++20' \
	--trace

cd obj_dir || { echo "obj_dir doesn't exist"; exit 1; }
make -f Vtb_soc.mk Vtb_soc || { echo "Compilation failed"; exit 1; }
./Vtb_soc || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
