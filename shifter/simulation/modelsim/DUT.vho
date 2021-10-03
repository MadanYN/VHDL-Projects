-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/19/2021 01:36:07"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(11 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:0:m1|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:1:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:2:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:3:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:4:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:5:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:6:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|part5|bit_reverse:7:m1|O1|Y~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X15_Y5_N8
\add_instance|part1|bit_reverse:7:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(7))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X15_Y5_N2
\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(3))))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y5_N8
\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(10) & ((\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\))) # (!\input_vector~combout\(10) & 
-- (\add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X14_Y4_N0
\add_instance|part1|bit_reverse:6:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & ((\input_vector~combout\(6)))) # (!\input_vector~combout\(11) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X14_Y4_N6
\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0_combout\ = ((\input_vector~combout\(11) & ((\input_vector~combout\(2)))) # (!\input_vector~combout\(11) & (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X14_Y4_N3
\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\ = ((\input_vector~combout\(10) & ((\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\,
	datac => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X15_Y5_N4
\add_instance|part1|bit_reverse:4:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(4))))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N0
\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0_combout\ = (\input_vector~combout\(11) & (\input_vector~combout\(0))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N5
\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1_combout\ = ((\input_vector~combout\(10) & ((\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\,
	datac => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X13_Y5_N9
\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2_combout\ = ((\input_vector~combout\(9) & ((\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1_combout\))) # (!\input_vector~combout\(9) & (\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\,
	datab => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~1_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2_combout\);

-- Location: LC_X14_Y4_N4
\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1_combout\ = ((\input_vector~combout\(11) & (\input_vector~combout\(1))) # (!\input_vector~combout\(11) & ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X14_Y4_N7
\add_instance|part1|bit_reverse:5:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & (\input_vector~combout\(5))) # (!\input_vector~combout\(11) & ((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\);

-- Location: LC_X13_Y5_N0
\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(10) & (\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1_combout\)) # (!\input_vector~combout\(10) & 
-- ((\add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~1_combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X13_Y5_N1
\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\ = (\input_vector~combout\(8) & (((\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2_combout\)))) # (!\input_vector~combout\(8) & ((\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\) # 
-- ((\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\,
	datab => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~2_combout\,
	datac => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\);

-- Location: LC_X14_Y5_N0
\add_instance|part5|bit_reverse:0:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(10) & \input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N9
\add_instance|part5|bit_reverse:0:m1|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:0:m1|O1|Y~1_combout\ = (\input_vector~combout\(11) & (\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\)) # (!\input_vector~combout\(11) & (((\input_vector~combout\(0) & 
-- \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\,
	datac => \input_vector~combout\(0),
	datad => \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:0:m1|O1|Y~1_combout\);

-- Location: LC_X14_Y5_N1
\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0_combout\ = (((\input_vector~combout\(10) & \input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X14_Y5_N5
\add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\ = (\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0_combout\ & ((\input_vector~combout\(8) & (\add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\)) # (!\input_vector~combout\(8) & 
-- ((\add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\,
	datab => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~0_combout\,
	datac => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X13_Y5_N2
\add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0_combout\ = (\input_vector~combout\(9) & (\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\)) # (!\input_vector~combout\(9) & (((\input_vector~combout\(10) & 
-- \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X13_Y5_N5
\add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\ = (\input_vector~combout\(8) & ((\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\) # ((\add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\)))) # (!\input_vector~combout\(8) & 
-- (((\add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "facc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~0_combout\,
	datab => \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~0_combout\,
	datac => \add_instance|part3|n2_bit:1:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X14_Y4_N1
\add_instance|part5|bit_reverse:1:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:1:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & ((\add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\))) # (!\input_vector~combout\(11) & (\add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\,
	datab => \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:1:m1|O1|Y~0_combout\);

-- Location: LC_X14_Y5_N9
\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\ = ((\input_vector~combout\(8) & ((\add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\))) # (!\input_vector~combout\(8) & (\add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\,
	datab => \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X14_Y5_N2
\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\ = (\input_vector~combout\(9) & (((\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(8) & 
-- ((\add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\,
	datac => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X13_Y5_N3
\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0_combout\ = ((\input_vector~combout\(10) & ((\add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\) # (\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(10),
	datac => \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X13_Y5_N4
\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\ = ((\input_vector~combout\(10) & ((\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\,
	datab => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X13_Y5_N7
\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\ = (\input_vector~combout\(8) & ((\add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\) # ((!\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & 
-- (((\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\ & \input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part2|n1_bit:2:lsb:m2|O1|Y~1_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X13_Y5_N6
\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\ = (\input_vector~combout\(9) & (((\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\)))) # (!\input_vector~combout\(9) & (\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0_combout\ & 
-- ((\add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\) # (!\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f08a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~0_combout\,
	datab => \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\,
	datac => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~1_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\);

-- Location: LC_X15_Y5_N3
\add_instance|part5|bit_reverse:2:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:2:m1|O1|Y~0_combout\ = (\input_vector~combout\(11) & (((\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\)))) # (!\input_vector~combout\(11) & (\input_vector~combout\(10) & 
-- (\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\,
	datac => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:2:m1|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N7
\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1_combout\ = (!\input_vector~combout\(8) & ((\input_vector~combout\(11) & (\input_vector~combout\(4))) # (!\input_vector~combout\(11) & ((\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X14_Y5_N6
\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2_combout\ = (\input_vector~combout\(10) & ((\input_vector~combout\(9) & (\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1_combout\)) # (!\input_vector~combout\(9) & 
-- ((\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~1_combout\,
	datab => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2_combout\);

-- Location: LC_X14_Y5_N7
\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\ = (\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2_combout\) # ((\input_vector~combout\(8) & (\add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\ & \input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|part2|n1_bit:3:lsb:m2|O1|Y~1_combout\,
	datac => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\);

-- Location: LC_X14_Y5_N4
\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0_combout\ = ((\input_vector~combout\(9) & ((\add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\))) # (!\input_vector~combout\(9) & (\add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part1|bit_reverse:6:m1|O1|Y~0_combout\,
	datab => \add_instance|part1|bit_reverse:4:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0_combout\);

-- Location: LC_X14_Y5_N8
\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1_combout\ = ((\input_vector~combout\(9) & (\add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\)) # (!\input_vector~combout\(9) & ((\add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|part1|bit_reverse:5:m1|O1|Y~0_combout\,
	datac => \add_instance|part1|bit_reverse:7:m1|O1|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1_combout\);

-- Location: LC_X14_Y5_N3
\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\ = (\input_vector~combout\(10) & ((\input_vector~combout\(8) & (\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0_combout\)) # (!\input_vector~combout\(8) & 
-- ((\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(8),
	datac => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~0_combout\,
	datad => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\);

-- Location: LC_X14_Y4_N5
\add_instance|part5|bit_reverse:3:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:3:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & (\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\)) # (!\input_vector~combout\(11) & ((\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\,
	datac => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:3:m1|O1|Y~0_combout\);

-- Location: LC_X14_Y4_N2
\add_instance|part5|bit_reverse:4:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:4:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & ((\add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\))) # (!\input_vector~combout\(11) & (\add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:3:lsb:m2|O1|Y~3_combout\,
	datac => \add_instance|part4|n1_bit:4:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:4:m1|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N1
\add_instance|part5|bit_reverse:5:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:5:m1|O1|Y~0_combout\ = (\input_vector~combout\(11) & (\input_vector~combout\(10) & (\add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\))) # (!\input_vector~combout\(11) & 
-- (((\add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|part4|n1_bit:5:lsb:m2|O1|Y~1_combout\,
	datac => \add_instance|part4|n1_bit:2:lsb:m2|O1|Y~2_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:5:m1|O1|Y~0_combout\);

-- Location: LC_X14_Y4_N8
\add_instance|part5|bit_reverse:6:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:6:m1|O1|Y~0_combout\ = ((\input_vector~combout\(11) & (\add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\)) # (!\input_vector~combout\(11) & ((\add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|part4|n1_bit:6:lsb:m2|O1|Y~0_combout\,
	datab => \add_instance|part4|n1_bit:1:lsb:m2|O1|Y~1_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:6:m1|O1|Y~0_combout\);

-- Location: LC_X15_Y5_N6
\add_instance|part5|bit_reverse:7:m1|O1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|part5|bit_reverse:7:m1|O1|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(7) & \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\)))) # (!\input_vector~combout\(11) & 
-- (\add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|part4|n1_bit:0:lsb:m2|O1|Y~3_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|part5|bit_reverse:0:m1|O1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|part5|bit_reverse:7:m1|O1|Y~0_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:0:m1|O1|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:1:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:2:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:3:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:4:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:5:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:6:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|part5|bit_reverse:7:m1|O1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


