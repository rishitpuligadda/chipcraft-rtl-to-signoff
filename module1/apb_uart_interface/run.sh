#!/bin/bash

# Step 1: Compile RTL and Testbench using Verilator
verilator --binary -j 0 -Wall uart.v apb_uart_bridge.v tb_apb_uart.v --top tb_apb_uart --timing --trace --CFLAGS "-std=c++20"

# Step 2: Enter build directory
cd obj_dir || { echo "Error: obj_dir not found"; exit 1; }

# Step 3: Build simulation executable
make -f Vtb_apb_uart.mk Vtb_apb_uart || { echo "Error: Compilation failed"; exit 1; }

# Step 4: Run simulation
./Vtb_apb_uart || { echo "Error: Simulation failed"; exit 1; }

# Step 5: Open waveform
gtkwave apb_uart_dump.vcd
