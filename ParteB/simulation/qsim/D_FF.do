onerror {quit -f}
vlib work
vlog -work work D_FF.vo
vlog -work work D_FF.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.restador_completo_vlg_vec_tst
vcd file -direction D_FF.msim.vcd
vcd add -internal restador_completo_vlg_vec_tst/*
vcd add -internal restador_completo_vlg_vec_tst/i1/*
add wave /*
run -all
