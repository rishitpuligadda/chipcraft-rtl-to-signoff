verilator --binary -j 0 -Wall fifo.v tb_fifo.v \
	--top tb_fifo --timing --CFLAGS "-std=c++20" \
	--trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_fifo.mk Vtb_fifo || { echo "Compilation failed"; exit 1; }
./Vtb_fifo || { echo "Simulation failed";  exit 1; }

gtkwave dump.vcd
