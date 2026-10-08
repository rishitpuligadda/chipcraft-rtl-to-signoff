verilator --binary -j 0 -Wall \
	pos_latch_gating.v tb_pos_latch_gating \
	--top tb_pos_latch_gating --timing \
	--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_pos_latch_gating.mk Vtb_pos_latch_gating || { echo "Compilation failed"; exit 1; }
./Vtb_pos_latch_gating || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
