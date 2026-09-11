#!/bin/bash

verilator --binary -j 0 -Wall apb_timer.v tb_apb_timer.v \
  --top tb_apb_timer --timing --CFLAGS "-std=c++20" --trace

./obj_dir/Vtb_apb_timer || { echo "Compilation failed"; exit 1; }

gtkwave apb_timer.vcd
