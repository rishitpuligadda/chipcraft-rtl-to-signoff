verilator --binary -j 0 -Wall \
	neg_latch_gating.v tb_neg_latch_gating \
	--top tb_neg_latch_gating --timing \
	--CFLAGS "-std=c++20" --trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_neg_latch_gating.mk Vtb_neg_latch_gating || { echo "Compilation failed"; exit 1; }
./Vtb_neg_latch_gating || { echo "Simulation failed"; exit 1; }

gtkwave dump.vcd
