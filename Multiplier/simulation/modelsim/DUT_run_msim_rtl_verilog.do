transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/DUT.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Gates.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Fulladder.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Mult4x3.vhd}

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Multiplier/Testbench.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
