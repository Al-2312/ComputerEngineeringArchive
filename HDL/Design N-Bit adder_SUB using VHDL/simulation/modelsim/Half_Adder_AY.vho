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

-- DATE "11/01/2024 11:31:15"

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

ENTITY 	BitNFull_Add_Sub_AY IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic
	);
END BitNFull_Add_Sub_AY;

-- Design Ports Information
-- S[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BitNFull_Add_Sub_AY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \forloop:0:fourBit_add_sub|half_adder2|S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \forloop:1:fourBit_add_sub|half_adder2|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \forloop:1:fourBit_add_sub|Cout~combout\ : std_logic;
SIGNAL \forloop:2:fourBit_add_sub|half_adder2|S~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \forloop:3:fourBit_add_sub|half_adder2|S~combout\ : std_logic;
SIGNAL \forloop:3:fourBit_add_sub|Cout~combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \forloop:1:fourBit_add_sub|ALT_INV_Cout~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\forloop:1:fourBit_add_sub|ALT_INV_Cout~combout\ <= NOT \forloop:1:fourBit_add_sub|Cout~combout\;

-- Location: IOOBUF_X89_Y38_N56
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \forloop:0:fourBit_add_sub|half_adder2|S~0_combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y35_N96
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \forloop:1:fourBit_add_sub|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X89_Y38_N39
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \forloop:2:fourBit_add_sub|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y35_N45
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \forloop:3:fourBit_add_sub|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X89_Y38_N22
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \forloop:3:fourBit_add_sub|Cout~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X89_Y36_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\forloop:0:fourBit_add_sub|half_adder2|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:0:fourBit_add_sub|half_adder2|S~0_combout\ = ( !\B[0]~input_o\ & ( \A[0]~input_o\ ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \forloop:0:fourBit_add_sub|half_adder2|S~0_combout\);

-- Location: IOIBUF_X89_Y36_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X88_Y37_N9
\forloop:1:fourBit_add_sub|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:1:fourBit_add_sub|half_adder2|S~combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (!\Cin~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\Cin~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \forloop:1:fourBit_add_sub|half_adder2|S~combout\);

-- Location: IOIBUF_X89_Y37_N55
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y37_N42
\forloop:1:fourBit_add_sub|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:1:fourBit_add_sub|Cout~combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\Cin~input_o\ $ (!\B[1]~input_o\)) # (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\Cin~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[1]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & (!\Cin~input_o\ $ (!\B[1]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & (\Cin~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000100100001001001010011010100110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \forloop:1:fourBit_add_sub|Cout~combout\);

-- Location: LABCELL_X88_Y37_N51
\forloop:2:fourBit_add_sub|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:2:fourBit_add_sub|half_adder2|S~combout\ = ( \Cin~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (!\forloop:1:fourBit_add_sub|Cout~combout\)) ) ) # ( !\Cin~input_o\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ 
-- (\forloop:1:fourBit_add_sub|Cout~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \forloop:1:fourBit_add_sub|ALT_INV_Cout~combout\,
	datae => \ALT_INV_Cin~input_o\,
	combout => \forloop:2:fourBit_add_sub|half_adder2|S~combout\);

-- Location: IOIBUF_X89_Y37_N4
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X88_Y37_N24
\forloop:3:fourBit_add_sub|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:3:fourBit_add_sub|half_adder2|S~combout\ = ( \A[2]~input_o\ & ( \Cin~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((!\forloop:1:fourBit_add_sub|Cout~combout\ & \B[2]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \Cin~input_o\ & ( 
-- !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((!\forloop:1:fourBit_add_sub|Cout~combout\) # (\B[2]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\Cin~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\B[2]~input_o\) # 
-- (\forloop:1:fourBit_add_sub|Cout~combout\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\Cin~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\forloop:1:fourBit_add_sub|Cout~combout\ & \B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001011010011010010110010110101001010101101010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \forloop:1:fourBit_add_sub|ALT_INV_Cout~combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \forloop:3:fourBit_add_sub|half_adder2|S~combout\);

-- Location: LABCELL_X88_Y37_N30
\forloop:3:fourBit_add_sub|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \forloop:3:fourBit_add_sub|Cout~combout\ = ( \A[2]~input_o\ & ( \Cin~input_o\ & ( (!\A[3]~input_o\ & (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\forloop:1:fourBit_add_sub|Cout~combout\)))) # (\A[3]~input_o\ & (((!\B[3]~input_o\) # (!\B[2]~input_o\)) # 
-- (\forloop:1:fourBit_add_sub|Cout~combout\))) ) ) ) # ( !\A[2]~input_o\ & ( \Cin~input_o\ & ( (!\A[3]~input_o\ & (\forloop:1:fourBit_add_sub|Cout~combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # 
-- ((\forloop:1:fourBit_add_sub|Cout~combout\ & !\B[2]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\Cin~input_o\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\B[2]~input_o\) # (\forloop:1:fourBit_add_sub|Cout~combout\)))) # (\A[3]~input_o\ & (((\B[2]~input_o\) 
-- # (\B[3]~input_o\)) # (\forloop:1:fourBit_add_sub|Cout~combout\))) ) ) ) # ( !\A[2]~input_o\ & ( !\Cin~input_o\ & ( (!\A[3]~input_o\ & (\forloop:1:fourBit_add_sub|Cout~combout\ & (\B[3]~input_o\ & \B[2]~input_o\))) # (\A[3]~input_o\ & 
-- (((\forloop:1:fourBit_add_sub|Cout~combout\ & \B[2]~input_o\)) # (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000101110101111101110001010100001111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \forloop:1:fourBit_add_sub|ALT_INV_Cout~combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \forloop:3:fourBit_add_sub|Cout~combout\);

-- Location: MLABCELL_X25_Y13_N3
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


