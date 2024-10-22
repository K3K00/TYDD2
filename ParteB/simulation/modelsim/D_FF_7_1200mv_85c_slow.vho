-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/22/2024 15:04:53"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	restador_completo IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_bin : IN std_logic;
	clk : IN std_logic;
	o_rout : OUT std_logic;
	o_bout : OUT std_logic
	);
END restador_completo;

-- Design Ports Information
-- o_rout	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_bout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_bin	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_bin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_rout : std_logic;
SIGNAL ww_o_bout : std_logic;
SIGNAL \o_rout~output_o\ : std_logic;
SIGNAL \o_bout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_b~input_o\ : std_logic;
SIGNAL \D2|Q~feeder_combout\ : std_logic;
SIGNAL \D2|Q~q\ : std_logic;
SIGNAL \in_a~input_o\ : std_logic;
SIGNAL \D1|Q~q\ : std_logic;
SIGNAL \rout~0_combout\ : std_logic;
SIGNAL \D5|Q~q\ : std_logic;
SIGNAL \in_bin~input_o\ : std_logic;
SIGNAL \D3|Q~feeder_combout\ : std_logic;
SIGNAL \D3|Q~q\ : std_logic;
SIGNAL \bout~0_combout\ : std_logic;
SIGNAL \D4|Q~q\ : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_bin <= in_bin;
ww_clk <= clk;
o_rout <= ww_o_rout;
o_bout <= ww_o_bout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X72_Y0_N9
\o_rout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5|Q~q\,
	devoe => ww_devoe,
	o => \o_rout~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\o_bout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Q~q\,
	devoe => ww_devoe,
	o => \o_bout~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\in_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => \in_b~input_o\);

-- Location: LCCOMB_X57_Y1_N26
\D2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Q~feeder_combout\ = \in_b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_b~input_o\,
	combout => \D2|Q~feeder_combout\);

-- Location: FF_X57_Y1_N27
\D2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|Q~q\);

-- Location: IOIBUF_X85_Y0_N8
\in_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => \in_a~input_o\);

-- Location: FF_X57_Y1_N29
\D1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \in_a~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|Q~q\);

-- Location: LCCOMB_X57_Y1_N24
\rout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rout~0_combout\ = \D3|Q~q\ $ (\D2|Q~q\ $ (\D1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Q~q\,
	datac => \D2|Q~q\,
	datad => \D1|Q~q\,
	combout => \rout~0_combout\);

-- Location: FF_X57_Y1_N25
\D5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|Q~q\);

-- Location: IOIBUF_X94_Y0_N8
\in_bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_bin,
	o => \in_bin~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\D3|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3|Q~feeder_combout\ = \in_bin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_bin~input_o\,
	combout => \D3|Q~feeder_combout\);

-- Location: FF_X57_Y1_N13
\D3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \D3|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|Q~q\);

-- Location: LCCOMB_X57_Y1_N30
\bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bout~0_combout\ = (\D1|Q~q\ & (\D2|Q~q\ & \D3|Q~q\)) # (!\D1|Q~q\ & ((\D2|Q~q\) # (\D3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1|Q~q\,
	datac => \D2|Q~q\,
	datad => \D3|Q~q\,
	combout => \bout~0_combout\);

-- Location: FF_X57_Y1_N31
\D4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|Q~q\);

ww_o_rout <= \o_rout~output_o\;

ww_o_bout <= \o_bout~output_o\;
END structure;


