#!/bin/bash

verilator --binary -j 0 -Wall cdc.v \
tb_cdc.v --top tb_cdc --timing \
--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }

make -f Vtb_cdc.mk Vtb_cdc || { echo "compilation failed"; exit 1; }

./Vtb_cdc || { echo "Simulation failed"; exit 1; }

gtkwave dumb.vcd

