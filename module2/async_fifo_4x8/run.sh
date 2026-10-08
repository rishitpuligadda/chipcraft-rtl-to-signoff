verilator --binary -j 0 -Wall async_fifo.v tb_async_fifo.v \
	--top tb_async_fifo --timing --CFLAGS "-std=c++20" \
	--trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_async_fifo.mk Vtb_async_fifo || { echo "Compilation failed"; exit 1; }
./Vtb_async_fifo || { echo "Simulation failed"; exit 1; }
gtkwave dump.vcd
