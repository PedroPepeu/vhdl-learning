onerror {exit -code 1}
vlib work
vcom -work work mux.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L arriaii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.mux_vhd_vec_tst
vcd file -direction mux.msim.vcd
vcd add -internal mux_vhd_vec_tst/*
vcd add -internal mux_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
