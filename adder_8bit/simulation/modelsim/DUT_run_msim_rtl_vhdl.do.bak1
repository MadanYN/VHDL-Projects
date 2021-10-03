transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/DUT.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/gates.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/Fulladder.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/adder_8bit.vhd}

vcom -93 -work work {C:/Users/hp/Desktop/adder_8bit/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
