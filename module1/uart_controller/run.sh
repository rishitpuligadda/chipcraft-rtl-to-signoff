#!/bin/bash

verilator --binary -j 0 -Wall uart.v tb_uart.v --top tb_uart --timing -CFLAGS "-std=c++20" --trace || { echo "ERROR: Compilation Failed"; exit 1; }

./obj_dir/Vtb_uart || { echo "ERROR: Simulation Failed"; exit 1; }

gtkwave uart_transmitter.vcd &
