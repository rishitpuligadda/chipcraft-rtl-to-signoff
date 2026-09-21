#!/bin/bash

verilator --binary -j 0 -Wall \
	reset_sync.v cdc_sync.v top.v tb_top.v \
	-top tb_top --timing --CFLAGS "-std=c++20" \
	--trace

cd obj_dir || { echo "obj_dir doesnt exist"; exit 1; }
make -f Vtb_top.mk Vtb_top || { echo "Compilation failed"; exit 1; }
./Vtb_top || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
