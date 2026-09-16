#!/bin/bash

verilator --binary -j 0 -Wall glob.v tb_global.v \
  --top tb_global --timing --CFLAGS "-std=c++20" \
  --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_global.mk Vtb_global || { echo "Compilation failed"; exit 1; }
./Vtb_global || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
