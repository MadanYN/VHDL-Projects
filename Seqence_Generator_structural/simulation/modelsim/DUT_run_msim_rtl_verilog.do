transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/Scan_Chain_Files/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/Scan_Chain_Files/TopLevel.vhdl}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/flipflop.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/DUT.vhd}
vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/Seq_str.vhd}

vcom -93 -work work {C:/Users/hp/Desktop/EE214/Seq_str/Testbench.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
