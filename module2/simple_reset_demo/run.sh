verilator --binary -j 0 -Wall counter_async.v \
	reset_sync.v counter_sync.v tb.v --top tb \
	--timing --CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb.mk Vtb || { echo "Compilation failed"; exit 1; }
./Vtb || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
