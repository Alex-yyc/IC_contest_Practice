set search_path  "/usr/cad/lib/CBDK_IC_Contest_v2.1/SynopsysDC/db/  $search_path"
set target_library "slow.db fast.db"
set link_library "* $target_library dw_foundation.sldb"

analyze -format verilog {DT.v}
elaborate DT
link

source DT.sdc
check_design
compile_ultra
write -format ddc     -hierarchy -output "DT_syn.ddc"
write_sdf -version 1.0 DT_syn.sdf
write_file -format verilog -out DT_syn.v

report_area > area.log
report_timing > timing.log






