onerror {exit -code 1}
vlib work
vlog -work work lab_V12.vo
vlog -work work Waveform12.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.wrapper_add4_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab_V12.msim.vcd
vcd add -internal wrapper_add4_vlg_vec_tst/*
vcd add -internal wrapper_add4_vlg_vec_tst/i1/*
run -all
quit -f
