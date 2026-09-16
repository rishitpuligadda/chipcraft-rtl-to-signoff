#!/bin/bash

verilator --binary -j 0 -Wall async.v tb_async.v \
  --top tb_async --timing --CFLAGS "-std=c++20" \
  --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }

make -f Vtb_async.mk Vtb_async || { echo "compilation failed"; exit 1; }
./Vtb_async || { echo "Simulation Failed"; exit 1; }


gtkwave dump.vcd
