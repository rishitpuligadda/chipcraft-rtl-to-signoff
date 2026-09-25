verilator --binary -j 0 -Wall sync2_stage.v sync3_stage.v \
	tb_sync.v --top tb_sync --timing --CFLAGS "-std=c++20" \
	--trace

cd obj_dir || { echo "obj_dir not found"; exit 1; }
make -f Vtb_sync.mk Vtb_sync || { echo "Comiplation Failed"; exit 1; }
./Vtb_sync || { echo "Simultion Failed"; exit 1; }

gtkwave dump.vcd
