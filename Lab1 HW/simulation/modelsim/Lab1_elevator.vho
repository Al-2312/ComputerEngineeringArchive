-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/29/2024 17:44:15"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab1_elevator IS
    PORT (
	UpButton : IN std_logic_vector(3 DOWNTO 0);
	DownButton : IN std_logic_vector(3 DOWNTO 0);
	Up : OUT std_logic;
	Down : OUT std_logic;
	F0 : OUT std_logic;
	F1 : OUT std_logic
	);
END Lab1_elevator;

-- Design Ports Information
-- Up	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Down	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F0	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UpButton[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UpButton[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UpButton[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UpButton[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DownButton[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DownButton[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DownButton[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DownButton[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab1_elevator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_UpButton : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DownButton : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Up : std_logic;
SIGNAL ww_Down : std_logic;
SIGNAL ww_F0 : std_logic;
SIGNAL ww_F1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \UpButton[3]~input_o\ : std_logic;
SIGNAL \UpButton[2]~input_o\ : std_logic;
SIGNAL \UpButton[1]~input_o\ : std_logic;
SIGNAL \UpButton[0]~input_o\ : std_logic;
SIGNAL \UpBoth~0_combout\ : std_logic;
SIGNAL \DownButton[2]~input_o\ : std_logic;
SIGNAL \DownButton[3]~input_o\ : std_logic;
SIGNAL \DownButton[1]~input_o\ : std_logic;
SIGNAL \DownButton[0]~input_o\ : std_logic;
SIGNAL \Down~0_combout\ : std_logic;
SIGNAL \F0~0_combout\ : std_logic;
SIGNAL \F0~1_combout\ : std_logic;
SIGNAL \ALT_INV_DownButton[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DownButton[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DownButton[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DownButton[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_UpButton[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_UpButton[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_UpButton[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_UpButton[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_UpBoth~0_combout\ : std_logic;

BEGIN

ww_UpButton <= UpButton;
ww_DownButton <= DownButton;
Up <= ww_Up;
Down <= ww_Down;
F0 <= ww_F0;
F1 <= ww_F1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DownButton[3]~input_o\ <= NOT \DownButton[3]~input_o\;
\ALT_INV_DownButton[2]~input_o\ <= NOT \DownButton[2]~input_o\;
\ALT_INV_DownButton[1]~input_o\ <= NOT \DownButton[1]~input_o\;
\ALT_INV_DownButton[0]~input_o\ <= NOT \DownButton[0]~input_o\;
\ALT_INV_UpButton[3]~input_o\ <= NOT \UpButton[3]~input_o\;
\ALT_INV_UpButton[2]~input_o\ <= NOT \UpButton[2]~input_o\;
\ALT_INV_UpButton[1]~input_o\ <= NOT \UpButton[1]~input_o\;
\ALT_INV_UpButton[0]~input_o\ <= NOT \UpButton[0]~input_o\;
\ALT_INV_UpBoth~0_combout\ <= NOT \UpBoth~0_combout\;

-- Location: IOOBUF_X89_Y38_N5
\Up~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UpBoth~0_combout\,
	devoe => ww_devoe,
	o => ww_Up);

-- Location: IOOBUF_X89_Y35_N96
\Down~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Down~0_combout\,
	devoe => ww_devoe,
	o => ww_Down);

-- Location: IOOBUF_X89_Y38_N39
\F0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F0~0_combout\,
	devoe => ww_devoe,
	o => ww_F0);

-- Location: IOOBUF_X89_Y36_N39
\F1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F0~1_combout\,
	devoe => ww_devoe,
	o => ww_F1);

-- Location: IOIBUF_X89_Y37_N21
\UpButton[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UpButton(3),
	o => \UpButton[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\UpButton[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UpButton(2),
	o => \UpButton[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\UpButton[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UpButton(1),
	o => \UpButton[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\UpButton[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UpButton(0),
	o => \UpButton[0]~input_o\);

-- Location: LABCELL_X88_Y37_N30
\UpBoth~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UpBoth~0_combout\ = ( \UpButton[0]~input_o\ ) # ( !\UpButton[0]~input_o\ & ( ((\UpButton[1]~input_o\) # (\UpButton[2]~input_o\)) # (\UpButton[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_UpButton[3]~input_o\,
	datab => \ALT_INV_UpButton[2]~input_o\,
	datac => \ALT_INV_UpButton[1]~input_o\,
	datae => \ALT_INV_UpButton[0]~input_o\,
	combout => \UpBoth~0_combout\);

-- Location: IOIBUF_X89_Y37_N4
\DownButton[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DownButton(2),
	o => \DownButton[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\DownButton[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DownButton(3),
	o => \DownButton[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\DownButton[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DownButton(1),
	o => \DownButton[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\DownButton[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DownButton(0),
	o => \DownButton[0]~input_o\);

-- Location: LABCELL_X88_Y37_N6
\Down~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Down~0_combout\ = ( \DownButton[1]~input_o\ & ( \DownButton[0]~input_o\ & ( !\UpBoth~0_combout\ ) ) ) # ( !\DownButton[1]~input_o\ & ( \DownButton[0]~input_o\ & ( !\UpBoth~0_combout\ ) ) ) # ( \DownButton[1]~input_o\ & ( !\DownButton[0]~input_o\ & ( 
-- !\UpBoth~0_combout\ ) ) ) # ( !\DownButton[1]~input_o\ & ( !\DownButton[0]~input_o\ & ( (!\UpBoth~0_combout\ & ((\DownButton[3]~input_o\) # (\DownButton[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_UpBoth~0_combout\,
	datac => \ALT_INV_DownButton[2]~input_o\,
	datad => \ALT_INV_DownButton[3]~input_o\,
	datae => \ALT_INV_DownButton[1]~input_o\,
	dataf => \ALT_INV_DownButton[0]~input_o\,
	combout => \Down~0_combout\);

-- Location: LABCELL_X88_Y37_N12
\F0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \F0~0_combout\ = ( \DownButton[1]~input_o\ & ( \UpButton[1]~input_o\ & ( (!\UpButton[2]~input_o\) # (\UpButton[3]~input_o\) ) ) ) # ( !\DownButton[1]~input_o\ & ( \UpButton[1]~input_o\ & ( (!\UpButton[2]~input_o\) # (\UpButton[3]~input_o\) ) ) ) # ( 
-- \DownButton[1]~input_o\ & ( !\UpButton[1]~input_o\ & ( ((!\DownButton[2]~input_o\ & (!\DownButton[3]~input_o\ & !\UpButton[2]~input_o\))) # (\UpButton[3]~input_o\) ) ) ) # ( !\DownButton[1]~input_o\ & ( !\UpButton[1]~input_o\ & ( \UpButton[3]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DownButton[2]~input_o\,
	datab => \ALT_INV_DownButton[3]~input_o\,
	datac => \ALT_INV_UpButton[3]~input_o\,
	datad => \ALT_INV_UpButton[2]~input_o\,
	datae => \ALT_INV_DownButton[1]~input_o\,
	dataf => \ALT_INV_UpButton[1]~input_o\,
	combout => \F0~0_combout\);

-- Location: LABCELL_X88_Y37_N51
\F0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \F0~1_combout\ = ( \UpButton[2]~input_o\ ) # ( !\UpButton[2]~input_o\ & ( ((\UpButton[3]~input_o\) # (\DownButton[3]~input_o\)) # (\DownButton[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DownButton[2]~input_o\,
	datac => \ALT_INV_DownButton[3]~input_o\,
	datad => \ALT_INV_UpButton[3]~input_o\,
	datae => \ALT_INV_UpButton[2]~input_o\,
	combout => \F0~1_combout\);

-- Location: LABCELL_X9_Y45_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


