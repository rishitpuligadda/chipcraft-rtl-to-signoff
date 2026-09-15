#!/bin/bash

verilator --binary -j 0 -Wall metastability.v \
tb_metastability.v --top tb_metastability --timing \
--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }

make -f Vtb_metastability.mk Vtb_metastability || { echo "compilation failed"; exit 1; }

./Vtb_metastability || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
