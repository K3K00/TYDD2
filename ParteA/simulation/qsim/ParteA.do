onerror {quit -f}
vlib work
vlog -work work ParteA.vo
vlog -work work ParteA.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ParteA_vlg_vec_tst
vcd file -direction ParteA.msim.vcd
vcd add -internal ParteA_vlg_vec_tst/*
vcd add -internal ParteA_vlg_vec_tst/i1/*
add wave /*
run -all
