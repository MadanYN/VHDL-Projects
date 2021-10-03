transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/seq4_beh/seq4beh.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/seq4_beh/DUT.vhd}

vcom -93 -work work {C:/Users/hp/Desktop/seq4_beh/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
