verilator --binary -j 0 -Wall reset_stretch \
	reset_top tb_reset_top --top tb_reset_top \
	--timing --CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_reset_top.mk Vtb_reset_top || { echo "Compilation failed"; exit 1; }
./Vtb_reset_top || { echo "Simulation failed"; exit 1; }
gtkwave dump.vcd
