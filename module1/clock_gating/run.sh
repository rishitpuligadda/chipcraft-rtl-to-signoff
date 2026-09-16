#!/bin/bash

verilator --binary -j 0 -Wall ff_no_gating.v ff_with_gating.v \
tb_ff.v --top tb_ff --timing \
--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }

make -f Vtb_ff.mk Vtb_ff || { echo "compilation failed"; exit 1; }

./Vtb_ff || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
