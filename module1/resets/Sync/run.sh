#!/bin/bash

verilator --binary -j 0 -Wall sync.v tb_sync.v \
  --top tb_sync --timing --CFLAGS "-std=c++20" \
  --trace

cd obj_dir || { echo "obj_dir doesn't exist"; exit 1; }
make -f Vtb_sync.mk Vtb_sync || { echo "Compilation failed"; exit 1; }
./Vtb_sync || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
