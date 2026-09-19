#!/bin/bash

verilator --binary -j 0 -Wall simple_timer.v tb_simple_timer.v \
	--top-module tb_simple_timer --timing \
	--CFLAGS "-std=c++20 -fcoroutines" --trace

cd obj_dir || { echo "obj_dir not there"; exit 1; }

make -f Vtb_simple_timer.mk Vtb_simple_timer || { echo "Compilation failed!"; exit 1; }

./Vtb_simple_timer || { echo "Simulation failed!"; exit 1; }

gtkwave dump.vcd
