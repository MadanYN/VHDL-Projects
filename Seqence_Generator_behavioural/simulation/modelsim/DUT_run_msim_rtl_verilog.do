transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Sequence_beh/Seq_beh.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Sequence_beh/DUT.vhd}

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Sequence_beh/Testbench.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
