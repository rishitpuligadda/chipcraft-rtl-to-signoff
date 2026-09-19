#!/bin/bash

verilator --binary -j 0 -Wall domain_reset.v tb_domain.v \
  --top tb_domain --timing --CFLAGS "-std=c++20" \
  --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_domain.mk Vtb_domain || { echo "Compilation failed"; exit 1; }
./Vtb_domain || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
