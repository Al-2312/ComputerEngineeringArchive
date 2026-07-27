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

-- DATE "12/13/2024 12:24:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Yunayev_Final_Project IS
    PORT (
	CLK : IN std_logic;
	Reset : IN std_logic;
	Increment : IN std_logic;
	Reg1Load : IN std_logic;
	Reg2Load : IN std_logic;
	Reg3Load : IN std_logic;
	Reg4Load : IN std_logic;
	WriteEnable : IN std_logic;
	SelectDemux : IN std_logic;
	SelectMux : IN std_logic;
	AddSub : IN std_logic;
	Sum : BUFFER std_logic_vector(31 DOWNTO 0);
	Overflow : BUFFER std_logic
	);
END Yunayev_Final_Project;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddSub	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg3Load	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Load	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg4Load	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelectDemux	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelectMux	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteEnable	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Increment	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Load	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Yunayev_Final_Project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Increment : std_logic;
SIGNAL ww_Reg1Load : std_logic;
SIGNAL ww_Reg2Load : std_logic;
SIGNAL ww_Reg3Load : std_logic;
SIGNAL ww_Reg4Load : std_logic;
SIGNAL ww_WriteEnable : std_logic;
SIGNAL ww_SelectDemux : std_logic;
SIGNAL ww_SelectMux : std_logic;
SIGNAL ww_AddSub : std_logic;
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \AddSub~input_o\ : std_logic;
SIGNAL \FFAddSub|Q~q\ : std_logic;
SIGNAL \Reg3Load~input_o\ : std_logic;
SIGNAL \FFReg3|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:0:U1|Q~feeder_combout\ : std_logic;
SIGNAL \WriteEnable~input_o\ : std_logic;
SIGNAL \FFWriteEnable|Q~feeder_combout\ : std_logic;
SIGNAL \FFWriteEnable|Q~q\ : std_logic;
SIGNAL \Increment~input_o\ : std_logic;
SIGNAL \AddressCU|address[0]~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \AddressCU|address[1]~1_combout\ : std_logic;
SIGNAL \AddressCU|address[2]~2_combout\ : std_logic;
SIGNAL \AddressCU|address[3]~3_combout\ : std_logic;
SIGNAL \AddressCU|address[4]~4_combout\ : std_logic;
SIGNAL \reg4|gen_reg:1:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:4:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:6:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:8:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:9:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:10:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:31:U1|Q~feeder_combout\ : std_logic;
SIGNAL \SelectDemux~input_o\ : std_logic;
SIGNAL \FFSelectDemux|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:31:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[31]~feeder_combout\ : std_logic;
SIGNAL \Reg2Load~input_o\ : std_logic;
SIGNAL \FFReg2|Q~q\ : std_logic;
SIGNAL \SelectMux~input_o\ : std_logic;
SIGNAL \FFSelectMux|Q~feeder_combout\ : std_logic;
SIGNAL \FFSelectMux|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:31:U1|Q~q\ : std_logic;
SIGNAL \Reg4Load~input_o\ : std_logic;
SIGNAL \FFReg4|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:31:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:31:U1|Q~q\ : std_logic;
SIGNAL \Reg1|data_out[31]~feeder_combout\ : std_logic;
SIGNAL \Reg1Load~input_o\ : std_logic;
SIGNAL \FFReg1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:11:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:13:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:16:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:17:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:18:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:19:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:22:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:27:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:29:U1|Q~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:30:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:30:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:30:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:30:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[30]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:29:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:29:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:28:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:28:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:28:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:28:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[28]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:27:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:27:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:26:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:26:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:26:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[26]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:26:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[26]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:25:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:25:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:25:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[25]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:25:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:24:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:24:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:24:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:24:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[24]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:23:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:23:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:23:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:22:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:22:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:21:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:21:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:21:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:20:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:20:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:20:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:19:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:19:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:18:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:18:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:17:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:17:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:16:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:15:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:15:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:15:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:15:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:14:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:14:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:14:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:13:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:12:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:12:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:12:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:12:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:11:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:11:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:10:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:9:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:9:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:8:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:8:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:7:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:7:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:7:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:7:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:6:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:6:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:5:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:5:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:5:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:5:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:4:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:4:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:3:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:3:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:3:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:3:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:2:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:2:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:2:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:2:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:1:U1|Q~q\ : std_logic;
SIGNAL \Reg1|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:0:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:0:U1|Q~q\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ : std_logic;
SIGNAL \reg3|gen_reg:30:U1|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:29:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:29:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:29:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:29:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:28:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:28:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:28:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[28]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:27:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:27:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:27:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[27]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:27:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:26:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:26:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:26:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg1|gen_reg:25:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:25:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:25:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[25]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg1|gen_reg:24:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:24:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:24:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[24]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:23:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:23:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:22:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:22:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:22:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:22:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:21:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:21:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:21:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:20:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:20:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:20:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:19:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:19:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[19]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:19:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:19:U1|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:18:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:18:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:18:U1|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:17:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:17:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[17]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:17:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[17]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:17:U1|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:16:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:16:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:16:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg1|gen_reg:15:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:15:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:15:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:14:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:14:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:14:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg2|gen_reg:13:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:13:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:13:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:12:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:12:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:12:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:11:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:11:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:11:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:11:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg1|gen_reg:30:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:30:U1|Q~q\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ : std_logic;
SIGNAL \reg3|gen_reg:31:U1|Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:10:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:10:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:10:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:10:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg2|gen_reg:9:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:9:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:9:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:9:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:8:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:8:U1|Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:8:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:8:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:7:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:7:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:7:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Reg2|gen_reg:6:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:6:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:6:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:6:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:5:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:5:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:5:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:4:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:4:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:4:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:4:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:3:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:3:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:3:U1|Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:2:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg1|gen_reg:2:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:2:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:1:U1|Q~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:1:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:1:U1|Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:1:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \Reg2|gen_reg:0:U1|Q~q\ : std_logic;
SIGNAL \Reg2|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_reg:0:U1|Q~q\ : std_logic;
SIGNAL \reg4|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_reg:0:U1|Q~q\ : std_logic;
SIGNAL \reg3|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \reg3|data_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \reg3|data_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \reg3|data_out[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~COUT\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1_sumout\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \reg3|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|overflow_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Reg1|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \AddressCU|address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg4|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reg2|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Increment~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteEnable~input_o\ : std_logic;
SIGNAL \ALT_INV_SelectMux~input_o\ : std_logic;
SIGNAL \AddressCU|ALT_INV_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FFSelectMux|ALT_INV_Q~q\ : std_logic;
SIGNAL \FFSelectDemux|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|ALT_INV_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reg1|ALT_INV_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \reg3|gen_reg:28:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:25:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:24:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:23:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:22:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:20:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:14:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:12:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:11:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:10:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:9:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:7:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:6:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:5:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:4:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:2:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:1:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|gen_reg:0:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_overflow_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FFAddSub|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg3|ALT_INV_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reg2|gen_reg:26:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:25:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:23:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:22:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:20:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:19:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:18:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:17:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:16:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:15:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:13:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:12:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:9:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:6:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:4:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:1:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:0:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg2|gen_reg:31:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \reg4|gen_reg:30:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:28:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:27:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:26:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:24:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:23:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:18:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:17:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:16:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:13:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:12:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:11:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:8:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:7:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:5:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:2:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:1:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \reg4|gen_reg:0:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Reg1|gen_reg:31:U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_add_sub_cella[31]~1_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Reset <= Reset;
ww_Increment <= Increment;
ww_Reg1Load <= Reg1Load;
ww_Reg2Load <= Reg2Load;
ww_Reg3Load <= Reg3Load;
ww_Reg4Load <= Reg4Load;
ww_WriteEnable <= WriteEnable;
ww_SelectDemux <= SelectDemux;
ww_SelectMux <= SelectMux;
ww_AddSub <= AddSub;
Sum <= ww_Sum;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \reg3|data_out\(31) & \reg3|data_out[10]~DUPLICATE_q\ & \reg3|data_out\(9) & \reg3|data_out\(8) & 
\reg3|data_out[7]~DUPLICATE_q\ & \reg3|data_out\(6) & \reg3|data_out\(5) & \reg3|data_out\(4) & \reg3|data_out\(3) & \reg3|data_out\(2) & \reg3|data_out\(1) & \reg3|data_out[0]~DUPLICATE_q\);

\Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\AddressCU|address\(4) & \AddressCU|address\(3) & \AddressCU|address\(2) & \AddressCU|address\(1) & \AddressCU|address\(0));

\Ram|altsyncram_component|auto_generated|q_a\(0) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Ram|altsyncram_component|auto_generated|q_a\(1) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Ram|altsyncram_component|auto_generated|q_a\(2) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Ram|altsyncram_component|auto_generated|q_a\(3) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Ram|altsyncram_component|auto_generated|q_a\(4) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Ram|altsyncram_component|auto_generated|q_a\(5) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Ram|altsyncram_component|auto_generated|q_a\(6) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Ram|altsyncram_component|auto_generated|q_a\(7) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Ram|altsyncram_component|auto_generated|q_a\(8) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Ram|altsyncram_component|auto_generated|q_a\(9) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Ram|altsyncram_component|auto_generated|q_a\(10) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Ram|altsyncram_component|auto_generated|q_a\(31) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (\reg3|data_out\(30) & \reg3|data_out\(29) & \reg3|data_out\(28) & \reg3|data_out\(27) & \reg3|data_out[26]~DUPLICATE_q\ & \reg3|data_out[25]~DUPLICATE_q\ & 
\reg3|data_out\(24) & \reg3|data_out\(23) & \reg3|data_out\(22) & \reg3|data_out\(21) & \reg3|data_out\(20) & \reg3|data_out\(19) & \reg3|data_out\(18) & \reg3|data_out\(17) & \reg3|data_out[16]~DUPLICATE_q\ & \reg3|data_out\(15) & 
\reg3|data_out[14]~DUPLICATE_q\ & \reg3|data_out\(13) & \reg3|data_out\(12) & \reg3|data_out[11]~DUPLICATE_q\);

\Ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\AddressCU|address\(4) & \AddressCU|address\(3) & \AddressCU|address\(2) & \AddressCU|address\(1) & \AddressCU|address\(0));

\Ram|altsyncram_component|auto_generated|q_a\(11) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\Ram|altsyncram_component|auto_generated|q_a\(12) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\Ram|altsyncram_component|auto_generated|q_a\(13) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(2);
\Ram|altsyncram_component|auto_generated|q_a\(14) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(3);
\Ram|altsyncram_component|auto_generated|q_a\(15) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(4);
\Ram|altsyncram_component|auto_generated|q_a\(16) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(5);
\Ram|altsyncram_component|auto_generated|q_a\(17) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(6);
\Ram|altsyncram_component|auto_generated|q_a\(18) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(7);
\Ram|altsyncram_component|auto_generated|q_a\(19) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(8);
\Ram|altsyncram_component|auto_generated|q_a\(20) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(9);
\Ram|altsyncram_component|auto_generated|q_a\(21) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(10);
\Ram|altsyncram_component|auto_generated|q_a\(22) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(11);
\Ram|altsyncram_component|auto_generated|q_a\(23) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(12);
\Ram|altsyncram_component|auto_generated|q_a\(24) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(13);
\Ram|altsyncram_component|auto_generated|q_a\(25) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(14);
\Ram|altsyncram_component|auto_generated|q_a\(26) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(15);
\Ram|altsyncram_component|auto_generated|q_a\(27) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(16);
\Ram|altsyncram_component|auto_generated|q_a\(28) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(17);
\Ram|altsyncram_component|auto_generated|q_a\(29) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(18);
\Ram|altsyncram_component|auto_generated|q_a\(30) <= \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(19);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_Increment~input_o\ <= NOT \Increment~input_o\;
\ALT_INV_WriteEnable~input_o\ <= NOT \WriteEnable~input_o\;
\ALT_INV_SelectMux~input_o\ <= NOT \SelectMux~input_o\;
\AddressCU|ALT_INV_address\(4) <= NOT \AddressCU|address\(4);
\AddressCU|ALT_INV_address\(3) <= NOT \AddressCU|address\(3);
\AddressCU|ALT_INV_address\(2) <= NOT \AddressCU|address\(2);
\AddressCU|ALT_INV_address\(1) <= NOT \AddressCU|address\(1);
\AddressCU|ALT_INV_address\(0) <= NOT \AddressCU|address\(0);
\FFSelectMux|ALT_INV_Q~q\ <= NOT \FFSelectMux|Q~q\;
\FFSelectDemux|ALT_INV_Q~q\ <= NOT \FFSelectDemux|Q~q\;
\reg4|ALT_INV_data_out\(30) <= NOT \reg4|data_out\(30);
\Reg1|ALT_INV_data_out\(30) <= NOT \Reg1|data_out\(30);
\reg4|ALT_INV_data_out\(29) <= NOT \reg4|data_out\(29);
\Reg1|ALT_INV_data_out\(29) <= NOT \Reg1|data_out\(29);
\reg4|ALT_INV_data_out\(28) <= NOT \reg4|data_out\(28);
\Reg1|ALT_INV_data_out\(28) <= NOT \Reg1|data_out\(28);
\reg4|ALT_INV_data_out\(27) <= NOT \reg4|data_out\(27);
\Reg1|ALT_INV_data_out\(27) <= NOT \Reg1|data_out\(27);
\reg4|ALT_INV_data_out\(26) <= NOT \reg4|data_out\(26);
\Reg1|ALT_INV_data_out\(26) <= NOT \Reg1|data_out\(26);
\reg4|ALT_INV_data_out\(25) <= NOT \reg4|data_out\(25);
\Reg1|ALT_INV_data_out\(25) <= NOT \Reg1|data_out\(25);
\reg4|ALT_INV_data_out\(24) <= NOT \reg4|data_out\(24);
\Reg1|ALT_INV_data_out\(24) <= NOT \Reg1|data_out\(24);
\reg4|ALT_INV_data_out\(23) <= NOT \reg4|data_out\(23);
\Reg1|ALT_INV_data_out\(23) <= NOT \Reg1|data_out\(23);
\reg4|ALT_INV_data_out\(22) <= NOT \reg4|data_out\(22);
\Reg1|ALT_INV_data_out\(22) <= NOT \Reg1|data_out\(22);
\reg4|ALT_INV_data_out\(21) <= NOT \reg4|data_out\(21);
\Reg1|ALT_INV_data_out\(21) <= NOT \Reg1|data_out\(21);
\reg4|ALT_INV_data_out\(20) <= NOT \reg4|data_out\(20);
\Reg1|ALT_INV_data_out\(20) <= NOT \Reg1|data_out\(20);
\reg4|ALT_INV_data_out\(19) <= NOT \reg4|data_out\(19);
\Reg1|ALT_INV_data_out\(19) <= NOT \Reg1|data_out\(19);
\reg4|ALT_INV_data_out\(18) <= NOT \reg4|data_out\(18);
\Reg1|ALT_INV_data_out\(18) <= NOT \Reg1|data_out\(18);
\reg4|ALT_INV_data_out\(17) <= NOT \reg4|data_out\(17);
\Reg1|ALT_INV_data_out\(17) <= NOT \Reg1|data_out\(17);
\reg4|ALT_INV_data_out\(16) <= NOT \reg4|data_out\(16);
\Reg1|ALT_INV_data_out\(16) <= NOT \Reg1|data_out\(16);
\reg4|ALT_INV_data_out\(15) <= NOT \reg4|data_out\(15);
\Reg1|ALT_INV_data_out\(15) <= NOT \Reg1|data_out\(15);
\reg4|ALT_INV_data_out\(14) <= NOT \reg4|data_out\(14);
\Reg1|ALT_INV_data_out\(14) <= NOT \Reg1|data_out\(14);
\reg4|ALT_INV_data_out\(13) <= NOT \reg4|data_out\(13);
\Reg1|ALT_INV_data_out\(13) <= NOT \Reg1|data_out\(13);
\reg4|ALT_INV_data_out\(12) <= NOT \reg4|data_out\(12);
\Reg1|ALT_INV_data_out\(12) <= NOT \Reg1|data_out\(12);
\reg4|ALT_INV_data_out\(11) <= NOT \reg4|data_out\(11);
\Reg1|ALT_INV_data_out\(11) <= NOT \Reg1|data_out\(11);
\reg4|ALT_INV_data_out\(10) <= NOT \reg4|data_out\(10);
\Reg1|ALT_INV_data_out\(10) <= NOT \Reg1|data_out\(10);
\reg4|ALT_INV_data_out\(9) <= NOT \reg4|data_out\(9);
\Reg1|ALT_INV_data_out\(9) <= NOT \Reg1|data_out\(9);
\reg4|ALT_INV_data_out\(8) <= NOT \reg4|data_out\(8);
\Reg1|ALT_INV_data_out\(8) <= NOT \Reg1|data_out\(8);
\reg4|ALT_INV_data_out\(7) <= NOT \reg4|data_out\(7);
\Reg1|ALT_INV_data_out\(7) <= NOT \Reg1|data_out\(7);
\reg4|ALT_INV_data_out\(6) <= NOT \reg4|data_out\(6);
\Reg1|ALT_INV_data_out\(6) <= NOT \Reg1|data_out\(6);
\reg4|ALT_INV_data_out\(5) <= NOT \reg4|data_out\(5);
\Reg1|ALT_INV_data_out\(5) <= NOT \Reg1|data_out\(5);
\reg4|ALT_INV_data_out\(4) <= NOT \reg4|data_out\(4);
\Reg1|ALT_INV_data_out\(4) <= NOT \Reg1|data_out\(4);
\reg4|ALT_INV_data_out\(3) <= NOT \reg4|data_out\(3);
\Reg1|ALT_INV_data_out\(3) <= NOT \Reg1|data_out\(3);
\reg4|ALT_INV_data_out\(2) <= NOT \reg4|data_out\(2);
\Reg1|ALT_INV_data_out\(2) <= NOT \Reg1|data_out\(2);
\reg4|ALT_INV_data_out\(1) <= NOT \reg4|data_out\(1);
\Reg1|ALT_INV_data_out\(1) <= NOT \Reg1|data_out\(1);
\reg4|ALT_INV_data_out\(0) <= NOT \reg4|data_out\(0);
\Reg1|ALT_INV_data_out\(0) <= NOT \Reg1|data_out\(0);
\reg4|ALT_INV_data_out\(31) <= NOT \reg4|data_out\(31);
\Reg1|ALT_INV_data_out\(31) <= NOT \Reg1|data_out\(31);
\reg3|gen_reg:28:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:28:U1|Q~q\;
\reg3|gen_reg:25:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:25:U1|Q~q\;
\reg3|gen_reg:24:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:24:U1|Q~q\;
\reg3|gen_reg:23:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:23:U1|Q~q\;
\reg3|gen_reg:22:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:22:U1|Q~q\;
\reg3|gen_reg:20:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:20:U1|Q~q\;
\reg3|gen_reg:14:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:14:U1|Q~q\;
\reg3|gen_reg:12:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:12:U1|Q~q\;
\reg3|gen_reg:11:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:11:U1|Q~q\;
\reg3|gen_reg:10:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:10:U1|Q~q\;
\reg3|gen_reg:9:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:9:U1|Q~q\;
\reg3|gen_reg:7:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:7:U1|Q~q\;
\reg3|gen_reg:6:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:6:U1|Q~q\;
\reg3|gen_reg:5:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:5:U1|Q~q\;
\reg3|gen_reg:4:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:4:U1|Q~q\;
\reg3|gen_reg:2:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:2:U1|Q~q\;
\reg3|gen_reg:1:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:1:U1|Q~q\;
\reg3|gen_reg:0:U1|ALT_INV_Q~q\ <= NOT \reg3|gen_reg:0:U1|Q~q\;
\Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_overflow_wire\(0) <= NOT \Add_Sub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0);
\FFAddSub|ALT_INV_Q~q\ <= NOT \FFAddSub|Q~q\;
\reg3|ALT_INV_data_out\(31) <= NOT \reg3|data_out\(31);
\reg3|ALT_INV_data_out\(30) <= NOT \reg3|data_out\(30);
\reg3|ALT_INV_data_out\(29) <= NOT \reg3|data_out\(29);
\reg3|ALT_INV_data_out\(28) <= NOT \reg3|data_out\(28);
\reg3|ALT_INV_data_out\(27) <= NOT \reg3|data_out\(27);
\reg3|ALT_INV_data_out\(26) <= NOT \reg3|data_out\(26);
\reg3|ALT_INV_data_out\(25) <= NOT \reg3|data_out\(25);
\reg3|ALT_INV_data_out\(24) <= NOT \reg3|data_out\(24);
\reg3|ALT_INV_data_out\(23) <= NOT \reg3|data_out\(23);
\reg3|ALT_INV_data_out\(22) <= NOT \reg3|data_out\(22);
\reg3|ALT_INV_data_out\(21) <= NOT \reg3|data_out\(21);
\reg3|ALT_INV_data_out\(20) <= NOT \reg3|data_out\(20);
\reg3|ALT_INV_data_out\(19) <= NOT \reg3|data_out\(19);
\reg3|ALT_INV_data_out\(18) <= NOT \reg3|data_out\(18);
\reg3|ALT_INV_data_out\(17) <= NOT \reg3|data_out\(17);
\reg3|ALT_INV_data_out\(16) <= NOT \reg3|data_out\(16);
\reg3|ALT_INV_data_out\(15) <= NOT \reg3|data_out\(15);
\reg3|ALT_INV_data_out\(14) <= NOT \reg3|data_out\(14);
\reg3|ALT_INV_data_out\(13) <= NOT \reg3|data_out\(13);
\reg3|ALT_INV_data_out\(12) <= NOT \reg3|data_out\(12);
\reg3|ALT_INV_data_out\(11) <= NOT \reg3|data_out\(11);
\reg3|ALT_INV_data_out\(10) <= NOT \reg3|data_out\(10);
\reg3|ALT_INV_data_out\(9) <= NOT \reg3|data_out\(9);
\reg3|ALT_INV_data_out\(8) <= NOT \reg3|data_out\(8);
\reg3|ALT_INV_data_out\(7) <= NOT \reg3|data_out\(7);
\reg3|ALT_INV_data_out\(6) <= NOT \reg3|data_out\(6);
\reg3|ALT_INV_data_out\(5) <= NOT \reg3|data_out\(5);
\reg3|ALT_INV_data_out\(4) <= NOT \reg3|data_out\(4);
\reg3|ALT_INV_data_out\(3) <= NOT \reg3|data_out\(3);
\reg3|ALT_INV_data_out\(2) <= NOT \reg3|data_out\(2);
\reg3|ALT_INV_data_out\(1) <= NOT \reg3|data_out\(1);
\reg3|ALT_INV_data_out\(0) <= NOT \reg3|data_out\(0);
\Reg2|gen_reg:26:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:26:U1|Q~q\;
\Reg2|gen_reg:25:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:25:U1|Q~q\;
\Reg2|gen_reg:23:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:23:U1|Q~q\;
\Reg2|gen_reg:22:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:22:U1|Q~q\;
\Reg2|gen_reg:20:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:20:U1|Q~q\;
\Reg2|gen_reg:19:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:19:U1|Q~q\;
\Reg2|gen_reg:18:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:18:U1|Q~q\;
\Reg2|gen_reg:17:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:17:U1|Q~q\;
\Reg2|gen_reg:16:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:16:U1|Q~q\;
\Reg2|gen_reg:15:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:15:U1|Q~q\;
\Reg2|gen_reg:13:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:13:U1|Q~q\;
\Reg2|gen_reg:12:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:12:U1|Q~q\;
\Reg2|gen_reg:9:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:9:U1|Q~q\;
\Reg2|gen_reg:6:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:6:U1|Q~q\;
\Reg2|gen_reg:4:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:4:U1|Q~q\;
\Reg2|gen_reg:1:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:1:U1|Q~q\;
\Reg2|gen_reg:0:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:0:U1|Q~q\;
\Reg2|gen_reg:31:U1|ALT_INV_Q~q\ <= NOT \Reg2|gen_reg:31:U1|Q~q\;
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(12);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(14);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(15);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(17) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(17);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(18) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(18);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(19) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(19);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(20) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(20);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(21) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(21);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(22) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(22);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(24) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(24);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(25) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(25);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(26);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(27);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(28);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(29);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(30);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(11);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(1);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(2);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(3);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(4);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(5);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(6);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(7);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(8);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(9);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(10);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(31);
\Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \Ram|altsyncram_component|auto_generated|q_a\(0);
\reg4|gen_reg:30:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:30:U1|Q~q\;
\reg4|gen_reg:28:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:28:U1|Q~q\;
\reg4|gen_reg:27:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:27:U1|Q~q\;
\reg4|gen_reg:26:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:26:U1|Q~q\;
\reg4|gen_reg:24:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:24:U1|Q~q\;
\reg4|gen_reg:23:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:23:U1|Q~q\;
\reg4|gen_reg:18:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:18:U1|Q~q\;
\reg4|gen_reg:17:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:17:U1|Q~q\;
\reg4|gen_reg:16:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:16:U1|Q~q\;
\reg4|gen_reg:13:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:13:U1|Q~q\;
\reg4|gen_reg:12:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:12:U1|Q~q\;
\reg4|gen_reg:11:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:11:U1|Q~q\;
\reg4|gen_reg:8:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:8:U1|Q~q\;
\reg4|gen_reg:7:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:7:U1|Q~q\;
\reg4|gen_reg:5:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:5:U1|Q~q\;
\reg4|gen_reg:2:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:2:U1|Q~q\;
\Reg1|gen_reg:1:U1|ALT_INV_Q~q\ <= NOT \Reg1|gen_reg:1:U1|Q~q\;
\reg4|gen_reg:0:U1|ALT_INV_Q~q\ <= NOT \reg4|gen_reg:0:U1|Q~q\;
\Reg1|gen_reg:31:U1|ALT_INV_Q~q\ <= NOT \Reg1|gen_reg:31:U1|Q~q\;
\Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_add_sub_cella[31]~1_sumout\ <= NOT \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1_sumout\;

-- Location: IOOBUF_X34_Y0_N42
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X36_Y0_N19
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(1),
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X36_Y0_N36
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(2),
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X6_Y0_N19
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(3),
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X32_Y0_N19
\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(4));

-- Location: IOOBUF_X6_Y0_N2
\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(5),
	devoe => ww_devoe,
	o => ww_Sum(5));

-- Location: IOOBUF_X36_Y0_N2
\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(6),
	devoe => ww_devoe,
	o => ww_Sum(6));

-- Location: IOOBUF_X6_Y0_N53
\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(7));

-- Location: IOOBUF_X30_Y0_N19
\Sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(8),
	devoe => ww_devoe,
	o => ww_Sum(8));

-- Location: IOOBUF_X30_Y0_N2
\Sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(9),
	devoe => ww_devoe,
	o => ww_Sum(9));

-- Location: IOOBUF_X4_Y0_N2
\Sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(10));

-- Location: IOOBUF_X38_Y0_N19
\Sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(11));

-- Location: IOOBUF_X34_Y0_N93
\Sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(12),
	devoe => ww_devoe,
	o => ww_Sum(12));

-- Location: IOOBUF_X36_Y0_N53
\Sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(13),
	devoe => ww_devoe,
	o => ww_Sum(13));

-- Location: IOOBUF_X38_Y0_N2
\Sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(14));

-- Location: IOOBUF_X32_Y0_N2
\Sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(15),
	devoe => ww_devoe,
	o => ww_Sum(15));

-- Location: IOOBUF_X32_Y0_N53
\Sum[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[16]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(16));

-- Location: IOOBUF_X8_Y0_N2
\Sum[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(17),
	devoe => ww_devoe,
	o => ww_Sum(17));

-- Location: IOOBUF_X34_Y0_N59
\Sum[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(18),
	devoe => ww_devoe,
	o => ww_Sum(18));

-- Location: IOOBUF_X8_Y0_N19
\Sum[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(19),
	devoe => ww_devoe,
	o => ww_Sum(19));

-- Location: IOOBUF_X38_Y0_N36
\Sum[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(20),
	devoe => ww_devoe,
	o => ww_Sum(20));

-- Location: IOOBUF_X30_Y0_N53
\Sum[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(21),
	devoe => ww_devoe,
	o => ww_Sum(21));

-- Location: IOOBUF_X26_Y0_N76
\Sum[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[22]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(22));

-- Location: IOOBUF_X28_Y0_N53
\Sum[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(23),
	devoe => ww_devoe,
	o => ww_Sum(23));

-- Location: IOOBUF_X34_Y0_N76
\Sum[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(24),
	devoe => ww_devoe,
	o => ww_Sum(24));

-- Location: IOOBUF_X26_Y0_N59
\Sum[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[25]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(25));

-- Location: IOOBUF_X26_Y0_N93
\Sum[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out[26]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Sum(26));

-- Location: IOOBUF_X30_Y0_N36
\Sum[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(27),
	devoe => ww_devoe,
	o => ww_Sum(27));

-- Location: IOOBUF_X8_Y0_N36
\Sum[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(28),
	devoe => ww_devoe,
	o => ww_Sum(28));

-- Location: IOOBUF_X8_Y0_N53
\Sum[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(29),
	devoe => ww_devoe,
	o => ww_Sum(29));

-- Location: IOOBUF_X26_Y0_N42
\Sum[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(30),
	devoe => ww_devoe,
	o => ww_Sum(30));

-- Location: IOOBUF_X32_Y0_N36
\Sum[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|data_out\(31),
	devoe => ww_devoe,
	o => ww_Sum(31));

-- Location: IOOBUF_X4_Y0_N53
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_overflow_wire\(0),
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N35
\AddSub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddSub,
	o => \AddSub~input_o\);

-- Location: FF_X9_Y6_N2
\FFAddSub|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \AddSub~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFAddSub|Q~q\);

-- Location: IOIBUF_X28_Y0_N18
\Reg3Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reg3Load,
	o => \Reg3Load~input_o\);

-- Location: FF_X16_Y4_N29
\FFReg3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg3Load~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFReg3|Q~q\);

-- Location: FF_X12_Y6_N50
\reg3|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[0]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(0));

-- Location: LABCELL_X12_Y6_N18
\reg4|gen_reg:0:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:0:U1|Q~feeder_combout\ = ( \reg3|data_out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(0),
	combout => \reg4|gen_reg:0:U1|Q~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N18
\WriteEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteEnable,
	o => \WriteEnable~input_o\);

-- Location: MLABCELL_X8_Y3_N45
\FFWriteEnable|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFWriteEnable|Q~feeder_combout\ = ( \WriteEnable~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteEnable~input_o\,
	combout => \FFWriteEnable|Q~feeder_combout\);

-- Location: FF_X8_Y3_N47
\FFWriteEnable|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \FFWriteEnable|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFWriteEnable|Q~q\);

-- Location: IOIBUF_X28_Y0_N1
\Increment~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Increment,
	o => \Increment~input_o\);

-- Location: LABCELL_X16_Y5_N45
\AddressCU|address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressCU|address[0]~0_combout\ = ( \AddressCU|address\(0) & ( !\Increment~input_o\ ) ) # ( !\AddressCU|address\(0) & ( \Increment~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Increment~input_o\,
	datae => \AddressCU|ALT_INV_address\(0),
	combout => \AddressCU|address[0]~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X16_Y5_N47
\AddressCU|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \AddressCU|address[0]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressCU|address\(0));

-- Location: LABCELL_X16_Y5_N54
\AddressCU|address[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressCU|address[1]~1_combout\ = ( \AddressCU|address\(1) & ( (!\Increment~input_o\) # (!\AddressCU|address\(0)) ) ) # ( !\AddressCU|address\(1) & ( (\Increment~input_o\ & \AddressCU|address\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Increment~input_o\,
	datad => \AddressCU|ALT_INV_address\(0),
	datae => \AddressCU|ALT_INV_address\(1),
	combout => \AddressCU|address[1]~1_combout\);

-- Location: FF_X16_Y5_N56
\AddressCU|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \AddressCU|address[1]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressCU|address\(1));

-- Location: LABCELL_X16_Y5_N39
\AddressCU|address[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressCU|address[2]~2_combout\ = ( \AddressCU|address\(2) & ( (!\Increment~input_o\) # ((!\AddressCU|address\(0)) # (!\AddressCU|address\(1))) ) ) # ( !\AddressCU|address\(2) & ( (\Increment~input_o\ & (\AddressCU|address\(0) & \AddressCU|address\(1))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111101000000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Increment~input_o\,
	datac => \AddressCU|ALT_INV_address\(0),
	datad => \AddressCU|ALT_INV_address\(1),
	datae => \AddressCU|ALT_INV_address\(2),
	combout => \AddressCU|address[2]~2_combout\);

-- Location: FF_X16_Y5_N41
\AddressCU|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \AddressCU|address[2]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressCU|address\(2));

-- Location: LABCELL_X16_Y5_N24
\AddressCU|address[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressCU|address[3]~3_combout\ = ( \AddressCU|address\(3) & ( \AddressCU|address\(2) & ( (!\Increment~input_o\) # ((!\AddressCU|address\(0)) # (!\AddressCU|address\(1))) ) ) ) # ( !\AddressCU|address\(3) & ( \AddressCU|address\(2) & ( 
-- (\Increment~input_o\ & (\AddressCU|address\(0) & \AddressCU|address\(1))) ) ) ) # ( \AddressCU|address\(3) & ( !\AddressCU|address\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Increment~input_o\,
	datab => \AddressCU|ALT_INV_address\(0),
	datac => \AddressCU|ALT_INV_address\(1),
	datae => \AddressCU|ALT_INV_address\(3),
	dataf => \AddressCU|ALT_INV_address\(2),
	combout => \AddressCU|address[3]~3_combout\);

-- Location: FF_X16_Y5_N26
\AddressCU|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \AddressCU|address[3]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressCU|address\(3));

-- Location: LABCELL_X16_Y5_N18
\AddressCU|address[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressCU|address[4]~4_combout\ = ( \AddressCU|address\(4) & ( \Increment~input_o\ & ( (!\AddressCU|address\(3)) # ((!\AddressCU|address\(0)) # ((!\AddressCU|address\(1)) # (!\AddressCU|address\(2)))) ) ) ) # ( !\AddressCU|address\(4) & ( 
-- \Increment~input_o\ & ( (\AddressCU|address\(3) & (\AddressCU|address\(0) & (\AddressCU|address\(1) & \AddressCU|address\(2)))) ) ) ) # ( \AddressCU|address\(4) & ( !\Increment~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AddressCU|ALT_INV_address\(3),
	datab => \AddressCU|ALT_INV_address\(0),
	datac => \AddressCU|ALT_INV_address\(1),
	datad => \AddressCU|ALT_INV_address\(2),
	datae => \AddressCU|ALT_INV_address\(4),
	dataf => \ALT_INV_Increment~input_o\,
	combout => \AddressCU|address[4]~4_combout\);

-- Location: FF_X16_Y5_N20
\AddressCU|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \AddressCU|address[4]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressCU|address\(4));

-- Location: MLABCELL_X15_Y6_N24
\reg4|gen_reg:1:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:1:U1|Q~feeder_combout\ = \reg3|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(1),
	combout => \reg4|gen_reg:1:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y6_N27
\reg4|gen_reg:4:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:4:U1|Q~feeder_combout\ = \reg3|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(4),
	combout => \reg4|gen_reg:4:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y6_N0
\reg4|gen_reg:6:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:6:U1|Q~feeder_combout\ = ( \reg3|data_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(6),
	combout => \reg4|gen_reg:6:U1|Q~feeder_combout\);

-- Location: LABCELL_X11_Y5_N3
\reg4|gen_reg:8:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:8:U1|Q~feeder_combout\ = \reg3|data_out\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(8),
	combout => \reg4|gen_reg:8:U1|Q~feeder_combout\);

-- Location: LABCELL_X11_Y5_N33
\reg4|gen_reg:9:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:9:U1|Q~feeder_combout\ = \reg3|data_out\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(9),
	combout => \reg4|gen_reg:9:U1|Q~feeder_combout\);

-- Location: FF_X8_Y6_N41
\reg3|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[10]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(10));

-- Location: MLABCELL_X8_Y6_N21
\reg4|gen_reg:10:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:10:U1|Q~feeder_combout\ = \reg3|data_out\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(10),
	combout => \reg4|gen_reg:10:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y6_N3
\reg4|gen_reg:31:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:31:U1|Q~feeder_combout\ = \reg3|data_out\(31)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(31),
	combout => \reg4|gen_reg:31:U1|Q~feeder_combout\);

-- Location: M10K_X14_Y5_N0
\Ram|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0000E0000D0000C0000B0000A00009000080000700006000050000400003000020001100001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram:Ram|altsyncram:altsyncram_component|altsyncram_5124:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \FFWriteEnable|Q~q\,
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X2_Y0_N92
\SelectDemux~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelectDemux,
	o => \SelectDemux~input_o\);

-- Location: FF_X8_Y4_N8
\FFSelectDemux|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SelectDemux~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFSelectDemux|Q~q\);

-- Location: FF_X13_Y5_N16
\Reg2|gen_reg:31:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(31),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:31:U1|Q~q\);

-- Location: LABCELL_X13_Y6_N21
\Reg2|data_out[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[31]~feeder_combout\ = ( \Reg2|gen_reg:31:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:31:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[31]~feeder_combout\);

-- Location: IOIBUF_X6_Y0_N35
\Reg2Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reg2Load,
	o => \Reg2Load~input_o\);

-- Location: FF_X11_Y4_N26
\FFReg2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2Load~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFReg2|Q~q\);

-- Location: FF_X13_Y6_N23
\Reg2|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[31]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(31));

-- Location: IOIBUF_X2_Y0_N58
\SelectMux~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelectMux,
	o => \SelectMux~input_o\);

-- Location: MLABCELL_X8_Y6_N57
\FFSelectMux|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFSelectMux|Q~feeder_combout\ = ( \SelectMux~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SelectMux~input_o\,
	combout => \FFSelectMux|Q~feeder_combout\);

-- Location: FF_X8_Y6_N59
\FFSelectMux|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \FFSelectMux|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFSelectMux|Q~q\);

-- Location: FF_X12_Y6_N5
\reg4|gen_reg:31:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:31:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(31),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:31:U1|Q~q\);

-- Location: IOIBUF_X2_Y0_N41
\Reg4Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reg4Load,
	o => \Reg4Load~input_o\);

-- Location: FF_X7_Y5_N35
\FFReg4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg4Load~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFReg4|Q~q\);

-- Location: FF_X12_Y6_N11
\reg4|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:31:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(31));

-- Location: LABCELL_X10_Y5_N15
\Reg1|gen_reg:31:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:31:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \Reg1|gen_reg:31:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N16
\Reg1|gen_reg:31:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:31:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:31:U1|Q~q\);

-- Location: LABCELL_X10_Y5_N6
\Reg1|data_out[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|data_out[31]~feeder_combout\ = ( \Reg1|gen_reg:31:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg1|gen_reg:31:U1|ALT_INV_Q~q\,
	combout => \Reg1|data_out[31]~feeder_combout\);

-- Location: IOIBUF_X2_Y0_N75
\Reg1Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reg1Load,
	o => \Reg1Load~input_o\);

-- Location: FF_X8_Y4_N38
\FFReg1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1Load~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFReg1|Q~q\);

-- Location: FF_X10_Y5_N8
\Reg1|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|data_out[31]~feeder_combout\,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(31));

-- Location: FF_X12_Y6_N47
\reg3|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[11]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(11));

-- Location: LABCELL_X12_Y6_N12
\reg4|gen_reg:11:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:11:U1|Q~feeder_combout\ = \reg3|data_out\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg3|ALT_INV_data_out\(11),
	combout => \reg4|gen_reg:11:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y6_N30
\reg4|gen_reg:13:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:13:U1|Q~feeder_combout\ = ( \reg3|data_out\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(13),
	combout => \reg4|gen_reg:13:U1|Q~feeder_combout\);

-- Location: FF_X15_Y6_N50
\reg3|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:16:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(16));

-- Location: MLABCELL_X15_Y6_N42
\reg4|gen_reg:16:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:16:U1|Q~feeder_combout\ = ( \reg3|data_out\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(16),
	combout => \reg4|gen_reg:16:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y6_N27
\reg4|gen_reg:17:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:17:U1|Q~feeder_combout\ = \reg3|data_out\(17)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(17),
	combout => \reg4|gen_reg:17:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y6_N45
\reg4|gen_reg:18:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:18:U1|Q~feeder_combout\ = ( \reg3|data_out\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(18),
	combout => \reg4|gen_reg:18:U1|Q~feeder_combout\);

-- Location: LABCELL_X11_Y5_N39
\reg4|gen_reg:19:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:19:U1|Q~feeder_combout\ = \reg3|data_out\(19)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(19),
	combout => \reg4|gen_reg:19:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y5_N18
\reg4|gen_reg:22:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:22:U1|Q~feeder_combout\ = \reg3|data_out\(22)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg3|ALT_INV_data_out\(22),
	combout => \reg4|gen_reg:22:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y5_N42
\reg4|gen_reg:27:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:27:U1|Q~feeder_combout\ = \reg3|data_out\(27)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg3|ALT_INV_data_out\(27),
	combout => \reg4|gen_reg:27:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y6_N57
\reg4|gen_reg:29:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:29:U1|Q~feeder_combout\ = ( \reg3|data_out\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(29),
	combout => \reg4|gen_reg:29:U1|Q~feeder_combout\);

-- Location: MLABCELL_X15_Y5_N45
\reg4|gen_reg:30:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:30:U1|Q~feeder_combout\ = ( \reg3|data_out\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(30),
	combout => \reg4|gen_reg:30:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y5_N0
\Reg2|gen_reg:30:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:30:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \Reg2|gen_reg:30:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N2
\Reg2|gen_reg:30:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:30:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:30:U1|Q~q\);

-- Location: FF_X13_Y5_N10
\Reg2|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:30:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(30));

-- Location: FF_X15_Y5_N46
\reg4|gen_reg:30:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:30:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(30),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:30:U1|Q~q\);

-- Location: LABCELL_X13_Y5_N57
\reg4|data_out[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[30]~feeder_combout\ = ( \reg4|gen_reg:30:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:30:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[30]~feeder_combout\);

-- Location: FF_X13_Y5_N59
\reg4|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[30]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(30));

-- Location: LABCELL_X11_Y6_N18
\Reg1|gen_reg:29:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:29:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \Reg1|gen_reg:29:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N20
\Reg1|gen_reg:29:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:29:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:29:U1|Q~q\);

-- Location: FF_X11_Y6_N46
\Reg1|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:29:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(29));

-- Location: MLABCELL_X8_Y6_N24
\reg4|gen_reg:28:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:28:U1|Q~feeder_combout\ = \reg3|data_out\(28)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(28),
	combout => \reg4|gen_reg:28:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y5_N21
\Reg2|gen_reg:28:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:28:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \Reg2|gen_reg:28:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N23
\Reg2|gen_reg:28:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:28:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:28:U1|Q~q\);

-- Location: FF_X13_Y5_N7
\Reg2|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:28:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(28));

-- Location: FF_X8_Y6_N26
\reg4|gen_reg:28:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:28:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(28),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:28:U1|Q~q\);

-- Location: MLABCELL_X8_Y6_N9
\reg4|data_out[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[28]~feeder_combout\ = \reg4|gen_reg:28:U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_reg:28:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[28]~feeder_combout\);

-- Location: FF_X8_Y6_N10
\reg4|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[28]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(28));

-- Location: MLABCELL_X8_Y5_N48
\Reg1|gen_reg:27:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:27:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	combout => \Reg1|gen_reg:27:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N50
\Reg1|gen_reg:27:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:27:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:27:U1|Q~q\);

-- Location: FF_X8_Y5_N43
\Reg1|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:27:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(27));

-- Location: FF_X15_Y5_N5
\reg3|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:26:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(26));

-- Location: MLABCELL_X15_Y5_N21
\reg4|gen_reg:26:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:26:U1|Q~feeder_combout\ = \reg3|data_out\(26)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(26),
	combout => \reg4|gen_reg:26:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y5_N36
\Reg2|gen_reg:26:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:26:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \Reg2|gen_reg:26:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N37
\Reg2|gen_reg:26:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:26:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:26:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N33
\Reg2|data_out[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[26]~feeder_combout\ = ( \Reg2|gen_reg:26:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:26:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[26]~feeder_combout\);

-- Location: FF_X15_Y5_N35
\Reg2|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[26]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(26));

-- Location: FF_X15_Y5_N23
\reg4|gen_reg:26:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:26:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(26),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:26:U1|Q~q\);

-- Location: LABCELL_X9_Y5_N51
\reg4|data_out[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[26]~feeder_combout\ = ( \reg4|gen_reg:26:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:26:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[26]~feeder_combout\);

-- Location: FF_X9_Y5_N53
\reg4|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[26]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(26));

-- Location: FF_X15_Y5_N50
\reg3|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[25]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(25));

-- Location: MLABCELL_X15_Y5_N36
\reg4|gen_reg:25:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:25:U1|Q~feeder_combout\ = ( \reg3|data_out\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(25),
	combout => \reg4|gen_reg:25:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y5_N51
\Reg2|gen_reg:25:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:25:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \Reg2|gen_reg:25:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N52
\Reg2|gen_reg:25:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:25:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:25:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N24
\Reg2|data_out[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[25]~feeder_combout\ = ( \Reg2|gen_reg:25:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:25:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[25]~feeder_combout\);

-- Location: FF_X15_Y5_N26
\Reg2|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[25]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(25));

-- Location: FF_X15_Y5_N38
\reg4|gen_reg:25:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:25:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(25),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:25:U1|Q~q\);

-- Location: FF_X9_Y5_N44
\reg4|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:25:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(25));

-- Location: MLABCELL_X15_Y5_N39
\reg4|gen_reg:24:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:24:U1|Q~feeder_combout\ = \reg3|data_out\(24)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(24),
	combout => \reg4|gen_reg:24:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y5_N30
\Reg2|gen_reg:24:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:24:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	combout => \Reg2|gen_reg:24:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N32
\Reg2|gen_reg:24:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:24:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:24:U1|Q~q\);

-- Location: FF_X13_Y5_N25
\Reg2|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:24:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(24));

-- Location: FF_X15_Y5_N40
\reg4|gen_reg:24:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:24:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(24),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:24:U1|Q~q\);

-- Location: LABCELL_X13_Y5_N54
\reg4|data_out[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[24]~feeder_combout\ = ( \reg4|gen_reg:24:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:24:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[24]~feeder_combout\);

-- Location: FF_X13_Y5_N55
\reg4|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[24]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(24));

-- Location: LABCELL_X11_Y5_N30
\reg4|gen_reg:23:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:23:U1|Q~feeder_combout\ = \reg3|data_out\(23)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg3|ALT_INV_data_out\(23),
	combout => \reg4|gen_reg:23:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N22
\Reg2|gen_reg:23:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(23),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:23:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N45
\Reg2|data_out[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[23]~feeder_combout\ = ( \Reg2|gen_reg:23:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:23:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[23]~feeder_combout\);

-- Location: FF_X11_Y5_N47
\Reg2|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[23]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(23));

-- Location: FF_X11_Y5_N31
\reg4|gen_reg:23:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:23:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(23),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:23:U1|Q~q\);

-- Location: LABCELL_X9_Y5_N54
\reg4|data_out[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[23]~feeder_combout\ = ( \reg4|gen_reg:23:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:23:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[23]~feeder_combout\);

-- Location: FF_X9_Y5_N56
\reg4|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[23]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(23));

-- Location: MLABCELL_X8_Y5_N33
\Reg1|gen_reg:22:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:22:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	combout => \Reg1|gen_reg:22:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N35
\Reg1|gen_reg:22:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:22:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:22:U1|Q~q\);

-- Location: FF_X8_Y5_N40
\Reg1|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:22:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(22));

-- Location: LABCELL_X11_Y5_N6
\reg4|gen_reg:21:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:21:U1|Q~feeder_combout\ = ( \reg3|data_out\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(21),
	combout => \reg4|gen_reg:21:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N8
\Reg2|gen_reg:21:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(21),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:21:U1|Q~q\);

-- Location: FF_X11_Y5_N44
\Reg2|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:21:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(21));

-- Location: FF_X11_Y5_N7
\reg4|gen_reg:21:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:21:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(21),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:21:U1|Q~q\);

-- Location: FF_X9_Y5_N47
\reg4|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:21:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(21));

-- Location: MLABCELL_X15_Y5_N15
\reg4|gen_reg:20:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:20:U1|Q~feeder_combout\ = \reg3|data_out\(20)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(20),
	combout => \reg4|gen_reg:20:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N34
\Reg2|gen_reg:20:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(20),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:20:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N27
\Reg2|data_out[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[20]~feeder_combout\ = ( \Reg2|gen_reg:20:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:20:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[20]~feeder_combout\);

-- Location: FF_X15_Y5_N29
\Reg2|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[20]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(20));

-- Location: FF_X15_Y5_N16
\reg4|gen_reg:20:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:20:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(20),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:20:U1|Q~q\);

-- Location: FF_X10_Y6_N46
\reg4|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:20:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(20));

-- Location: MLABCELL_X8_Y5_N0
\Reg1|gen_reg:19:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:19:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \Reg1|gen_reg:19:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N2
\Reg1|gen_reg:19:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:19:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:19:U1|Q~q\);

-- Location: FF_X8_Y5_N55
\Reg1|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:19:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(19));

-- Location: LABCELL_X10_Y5_N36
\Reg1|gen_reg:18:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:18:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	combout => \Reg1|gen_reg:18:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N38
\Reg1|gen_reg:18:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:18:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:18:U1|Q~q\);

-- Location: FF_X10_Y5_N5
\Reg1|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:18:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(18));

-- Location: LABCELL_X11_Y6_N12
\Reg1|gen_reg:17:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:17:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \Reg1|gen_reg:17:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N14
\Reg1|gen_reg:17:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:17:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:17:U1|Q~q\);

-- Location: FF_X11_Y6_N4
\Reg1|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:17:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(17));

-- Location: FF_X10_Y5_N35
\Reg1|gen_reg:16:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(16),
	sclr => \FFSelectDemux|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:16:U1|Q~q\);

-- Location: FF_X10_Y5_N52
\Reg1|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:16:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(16));

-- Location: MLABCELL_X15_Y6_N39
\reg4|gen_reg:15:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:15:U1|Q~feeder_combout\ = \reg3|data_out\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(15),
	combout => \reg4|gen_reg:15:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y5_N45
\Reg2|gen_reg:15:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:15:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \Reg2|gen_reg:15:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N46
\Reg2|gen_reg:15:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:15:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:15:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N21
\Reg2|data_out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[15]~feeder_combout\ = ( \Reg2|gen_reg:15:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:15:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[15]~feeder_combout\);

-- Location: FF_X15_Y6_N23
\Reg2|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[15]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(15));

-- Location: FF_X15_Y6_N40
\reg4|gen_reg:15:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:15:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(15),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:15:U1|Q~q\);

-- Location: FF_X10_Y6_N49
\reg4|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:15:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(15));

-- Location: FF_X12_Y6_N41
\reg3|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[14]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(14));

-- Location: LABCELL_X12_Y6_N24
\reg4|gen_reg:14:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:14:U1|Q~feeder_combout\ = \reg3|data_out\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg3|ALT_INV_data_out\(14),
	combout => \reg4|gen_reg:14:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N38
\Reg2|gen_reg:14:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(14),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:14:U1|Q~q\);

-- Location: FF_X13_Y6_N32
\Reg2|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:14:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(14));

-- Location: FF_X12_Y6_N25
\reg4|gen_reg:14:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:14:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(14),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:14:U1|Q~q\);

-- Location: FF_X10_Y6_N43
\reg4|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:14:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(14));

-- Location: FF_X10_Y5_N41
\Reg1|gen_reg:13:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(13),
	sclr => \FFSelectDemux|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:13:U1|Q~q\);

-- Location: FF_X10_Y5_N50
\Reg1|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:13:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(13));

-- Location: LABCELL_X12_Y6_N33
\reg4|gen_reg:12:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:12:U1|Q~feeder_combout\ = \reg3|data_out\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(12),
	combout => \reg4|gen_reg:12:U1|Q~feeder_combout\);

-- Location: LABCELL_X12_Y5_N39
\Reg2|gen_reg:12:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:12:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \Reg2|gen_reg:12:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N41
\Reg2|gen_reg:12:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:12:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:12:U1|Q~q\);

-- Location: LABCELL_X12_Y5_N57
\Reg2|data_out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[12]~feeder_combout\ = \Reg2|gen_reg:12:U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Reg2|gen_reg:12:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[12]~feeder_combout\);

-- Location: FF_X12_Y5_N58
\Reg2|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[12]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(12));

-- Location: FF_X12_Y6_N34
\reg4|gen_reg:12:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:12:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(12),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:12:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N39
\reg4|data_out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[12]~feeder_combout\ = ( \reg4|gen_reg:12:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:12:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[12]~feeder_combout\);

-- Location: FF_X10_Y6_N40
\reg4|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[12]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(12));

-- Location: LABCELL_X10_Y5_N18
\Reg1|gen_reg:11:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:11:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \Reg1|gen_reg:11:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N20
\Reg1|gen_reg:11:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:11:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:11:U1|Q~q\);

-- Location: FF_X10_Y5_N59
\Reg1|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:11:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(11));

-- Location: FF_X11_Y6_N32
\Reg1|gen_reg:10:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(10),
	sclr => \FFSelectDemux|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:10:U1|Q~q\);

-- Location: FF_X11_Y6_N41
\Reg1|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:10:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(10));

-- Location: LABCELL_X10_Y5_N12
\Reg1|gen_reg:9:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:9:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \Reg1|gen_reg:9:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N14
\Reg1|gen_reg:9:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:9:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:9:U1|Q~q\);

-- Location: FF_X10_Y5_N1
\Reg1|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:9:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(9));

-- Location: LABCELL_X10_Y5_N45
\Reg1|gen_reg:8:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:8:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \Reg1|gen_reg:8:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N46
\Reg1|gen_reg:8:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:8:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:8:U1|Q~q\);

-- Location: FF_X10_Y5_N29
\Reg1|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:8:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(8));

-- Location: FF_X8_Y6_N38
\reg3|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[7]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(7));

-- Location: MLABCELL_X8_Y6_N12
\reg4|gen_reg:7:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:7:U1|Q~feeder_combout\ = \reg3|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg3|ALT_INV_data_out\(7),
	combout => \reg4|gen_reg:7:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y6_N15
\Reg2|gen_reg:7:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:7:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \Reg2|gen_reg:7:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N17
\Reg2|gen_reg:7:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:7:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:7:U1|Q~q\);

-- Location: FF_X13_Y6_N52
\Reg2|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:7:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(7));

-- Location: FF_X8_Y6_N13
\reg4|gen_reg:7:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:7:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(7),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:7:U1|Q~q\);

-- Location: MLABCELL_X8_Y6_N6
\reg4|data_out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[7]~feeder_combout\ = ( \reg4|gen_reg:7:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:7:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[7]~feeder_combout\);

-- Location: FF_X8_Y6_N7
\reg4|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[7]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(7));

-- Location: LABCELL_X11_Y6_N54
\Reg1|gen_reg:6:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:6:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \Reg1|gen_reg:6:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N56
\Reg1|gen_reg:6:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:6:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:6:U1|Q~q\);

-- Location: FF_X11_Y6_N2
\Reg1|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:6:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(6));

-- Location: MLABCELL_X8_Y6_N45
\reg4|gen_reg:5:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:5:U1|Q~feeder_combout\ = \reg3|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_data_out\(5),
	combout => \reg4|gen_reg:5:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y6_N9
\Reg2|gen_reg:5:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:5:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \Reg2|gen_reg:5:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N11
\Reg2|gen_reg:5:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:5:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:5:U1|Q~q\);

-- Location: FF_X13_Y6_N4
\Reg2|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:5:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(5));

-- Location: FF_X8_Y6_N46
\reg4|gen_reg:5:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:5:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(5),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:5:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N48
\reg4|data_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[5]~feeder_combout\ = \reg4|gen_reg:5:U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg4|gen_reg:5:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[5]~feeder_combout\);

-- Location: FF_X10_Y6_N50
\reg4|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[5]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(5));

-- Location: LABCELL_X11_Y6_N27
\Reg1|gen_reg:4:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:4:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \Reg1|gen_reg:4:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N29
\Reg1|gen_reg:4:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:4:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:4:U1|Q~q\);

-- Location: FF_X10_Y6_N5
\Reg1|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:4:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(4));

-- Location: MLABCELL_X8_Y6_N48
\reg4|gen_reg:3:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:3:U1|Q~feeder_combout\ = ( \reg3|data_out\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(3),
	combout => \reg4|gen_reg:3:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y6_N39
\Reg2|gen_reg:3:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:3:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Reg2|gen_reg:3:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N41
\Reg2|gen_reg:3:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:3:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:3:U1|Q~q\);

-- Location: FF_X13_Y6_N34
\Reg2|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:3:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(3));

-- Location: FF_X8_Y6_N49
\reg4|gen_reg:3:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:3:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(3),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:3:U1|Q~q\);

-- Location: FF_X10_Y6_N38
\reg4|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:3:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(3));

-- Location: LABCELL_X12_Y6_N21
\reg4|gen_reg:2:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_reg:2:U1|Q~feeder_combout\ = ( \reg3|data_out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|ALT_INV_data_out\(2),
	combout => \reg4|gen_reg:2:U1|Q~feeder_combout\);

-- Location: LABCELL_X13_Y6_N36
\Reg2|gen_reg:2:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:2:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \Reg2|gen_reg:2:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N38
\Reg2|gen_reg:2:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:2:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:2:U1|Q~q\);

-- Location: FF_X13_Y6_N2
\Reg2|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:2:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(2));

-- Location: FF_X12_Y6_N22
\reg4|gen_reg:2:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:2:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(2),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:2:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N15
\reg4|data_out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[2]~feeder_combout\ = ( \reg4|gen_reg:2:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:2:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[2]~feeder_combout\);

-- Location: FF_X10_Y6_N17
\reg4|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[2]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(2));

-- Location: FF_X10_Y6_N28
\Reg1|gen_reg:1:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(1),
	sclr => \FFSelectDemux|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:1:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N0
\Reg1|data_out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|data_out[1]~feeder_combout\ = ( \Reg1|gen_reg:1:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg1|gen_reg:1:U1|ALT_INV_Q~q\,
	combout => \Reg1|data_out[1]~feeder_combout\);

-- Location: FF_X10_Y6_N2
\Reg1|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|data_out[1]~feeder_combout\,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(1));

-- Location: LABCELL_X11_Y6_N15
\Reg1|gen_reg:0:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:0:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \Reg1|gen_reg:0:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N17
\Reg1|gen_reg:0:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:0:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:0:U1|Q~q\);

-- Location: FF_X10_Y6_N11
\Reg1|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:0:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(0));

-- Location: LABCELL_X9_Y6_N0
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\ = CARRY(( !\FFAddSub|Q~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FFAddSub|ALT_INV_Q~q\,
	cin => GND,
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\);

-- Location: LABCELL_X9_Y6_N3
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(0) = SUM(( \Reg1|data_out\(0) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(0)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \Reg1|data_out\(0) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(0)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(0),
	datad => \Reg1|ALT_INV_data_out\(0),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~6_cout\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(0),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: LABCELL_X9_Y6_N6
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(1) = SUM(( \Reg1|data_out\(1) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(1)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( \Reg1|data_out\(1) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(1)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(1),
	datad => \Reg1|ALT_INV_data_out\(1),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(1),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: LABCELL_X9_Y6_N9
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(2) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(2)) ) + ( \Reg1|data_out\(2) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(2)) ) + ( \Reg1|data_out\(2) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(2),
	datad => \reg4|ALT_INV_data_out\(2),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(2),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: LABCELL_X9_Y6_N12
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(3) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(3)) ) + ( \Reg1|data_out\(3) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(3)) ) + ( \Reg1|data_out\(3) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(3),
	datad => \reg4|ALT_INV_data_out\(3),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(3),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: LABCELL_X9_Y6_N15
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(4) = SUM(( \Reg1|data_out\(4) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(4)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( \Reg1|data_out\(4) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(4)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(4),
	datad => \Reg1|ALT_INV_data_out\(4),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(4),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: LABCELL_X9_Y6_N18
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(5) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(5)) ) + ( \Reg1|data_out\(5) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(5)) ) + ( \Reg1|data_out\(5) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(5),
	datad => \reg4|ALT_INV_data_out\(5),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(5),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: LABCELL_X9_Y6_N21
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(6) = SUM(( \Reg1|data_out\(6) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(6)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( \Reg1|data_out\(6) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(6)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(6),
	datad => \Reg1|ALT_INV_data_out\(6),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(6),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: LABCELL_X9_Y6_N24
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(7) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(7)) ) + ( \Reg1|data_out\(7) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(7)) ) + ( \Reg1|data_out\(7) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(7),
	datad => \reg4|ALT_INV_data_out\(7),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(7),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\);

-- Location: LABCELL_X9_Y6_N27
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(8) = SUM(( \Reg1|data_out\(8) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(8)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ = CARRY(( \Reg1|data_out\(8) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(8)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(8),
	datad => \Reg1|ALT_INV_data_out\(8),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[7]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(8),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\);

-- Location: LABCELL_X9_Y6_N30
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(9) = SUM(( \Reg1|data_out\(9) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(9)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ = CARRY(( \Reg1|data_out\(9) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(9)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(9),
	datad => \Reg1|ALT_INV_data_out\(9),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[8]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(9),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\);

-- Location: LABCELL_X9_Y6_N33
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(10) = SUM(( \Reg1|data_out\(10) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(10)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ = CARRY(( \Reg1|data_out\(10) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(10)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(10),
	datad => \Reg1|ALT_INV_data_out\(10),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[9]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(10),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\);

-- Location: LABCELL_X9_Y6_N36
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(11) = SUM(( \Reg1|data_out\(11) ) + ( !\reg4|data_out\(11) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ = CARRY(( \Reg1|data_out\(11) ) + ( !\reg4|data_out\(11) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_data_out\(11),
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(11),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[10]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(11),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\);

-- Location: LABCELL_X9_Y6_N39
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(12) = SUM(( \Reg1|data_out\(12) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(12)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ = CARRY(( \Reg1|data_out\(12) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(12)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(12),
	dataf => \reg4|ALT_INV_data_out\(12),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[11]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(12),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\);

-- Location: LABCELL_X9_Y6_N42
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(13) = SUM(( \Reg1|data_out\(13) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(13)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ = CARRY(( \Reg1|data_out\(13) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(13)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(13),
	datad => \Reg1|ALT_INV_data_out\(13),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[12]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(13),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\);

-- Location: LABCELL_X9_Y6_N45
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(14) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(14)) ) + ( \Reg1|data_out\(14) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(14)) ) + ( \Reg1|data_out\(14) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(14),
	datad => \reg4|ALT_INV_data_out\(14),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[13]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(14),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\);

-- Location: LABCELL_X9_Y6_N48
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(15) = SUM(( \Reg1|data_out\(15) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(15)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ = CARRY(( \Reg1|data_out\(15) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(15)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(15),
	dataf => \reg4|ALT_INV_data_out\(15),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[14]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(15),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\);

-- Location: LABCELL_X9_Y6_N51
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(16) = SUM(( \Reg1|data_out\(16) ) + ( !\reg4|data_out\(16) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ = CARRY(( \Reg1|data_out\(16) ) + ( !\reg4|data_out\(16) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_data_out\(16),
	datab => \FFAddSub|ALT_INV_Q~q\,
	datad => \Reg1|ALT_INV_data_out\(16),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[15]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(16),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\);

-- Location: LABCELL_X9_Y6_N54
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(17) = SUM(( \Reg1|data_out\(17) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(17)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ = CARRY(( \Reg1|data_out\(17) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(17)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(17),
	datad => \Reg1|ALT_INV_data_out\(17),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[16]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(17),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\);

-- Location: LABCELL_X9_Y6_N57
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(18) = SUM(( \Reg1|data_out\(18) ) + ( !\reg4|data_out\(18) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ = CARRY(( \Reg1|data_out\(18) ) + ( !\reg4|data_out\(18) $ (\FFAddSub|Q~q\) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_data_out\(18),
	datab => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(18),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[17]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(18),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\);

-- Location: LABCELL_X9_Y5_N0
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(19) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(19)) ) + ( \Reg1|data_out\(19) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(19)) ) + ( \Reg1|data_out\(19) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(19),
	dataf => \Reg1|ALT_INV_data_out\(19),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[18]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(19),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\);

-- Location: LABCELL_X9_Y5_N3
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(20) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(20)) ) + ( \Reg1|data_out\(20) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(20)) ) + ( \Reg1|data_out\(20) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(20),
	datad => \reg4|ALT_INV_data_out\(20),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[19]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(20),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\);

-- Location: LABCELL_X9_Y5_N6
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(21) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(21)) ) + ( \Reg1|data_out\(21) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(21)) ) + ( \Reg1|data_out\(21) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(21),
	datad => \reg4|ALT_INV_data_out\(21),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[20]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(21),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\);

-- Location: LABCELL_X9_Y5_N9
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(22) = SUM(( \Reg1|data_out\(22) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(22)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ = CARRY(( \Reg1|data_out\(22) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(22)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(22),
	datad => \Reg1|ALT_INV_data_out\(22),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[21]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(22),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\);

-- Location: LABCELL_X9_Y5_N12
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(23) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(23)) ) + ( \Reg1|data_out\(23) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(23)) ) + ( \Reg1|data_out\(23) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(23),
	datad => \reg4|ALT_INV_data_out\(23),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[22]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(23),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\);

-- Location: LABCELL_X9_Y5_N15
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(24) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(24)) ) + ( \Reg1|data_out\(24) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(24)) ) + ( \Reg1|data_out\(24) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(24),
	datad => \reg4|ALT_INV_data_out\(24),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[23]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(24),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\);

-- Location: LABCELL_X9_Y5_N18
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(25) = SUM(( \Reg1|data_out\(25) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(25)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ = CARRY(( \Reg1|data_out\(25) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(25)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(25),
	dataf => \reg4|ALT_INV_data_out\(25),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[24]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(25),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\);

-- Location: LABCELL_X9_Y5_N21
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(26) = SUM(( \Reg1|data_out\(26) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(26)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ = CARRY(( \Reg1|data_out\(26) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(26)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(26),
	dataf => \reg4|ALT_INV_data_out\(26),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[25]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(26),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\);

-- Location: LABCELL_X9_Y5_N24
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(27) = SUM(( \Reg1|data_out\(27) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(27)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ = CARRY(( \Reg1|data_out\(27) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(27)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(27),
	datad => \Reg1|ALT_INV_data_out\(27),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[26]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(27),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\);

-- Location: LABCELL_X9_Y5_N27
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(28) = SUM(( \Reg1|data_out\(28) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(28)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ = CARRY(( \Reg1|data_out\(28) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(28)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(28),
	dataf => \reg4|ALT_INV_data_out\(28),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[27]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(28),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\);

-- Location: LABCELL_X9_Y5_N30
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(29) = SUM(( \Reg1|data_out\(29) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(29)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ = CARRY(( \Reg1|data_out\(29) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(29)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(29),
	datad => \Reg1|ALT_INV_data_out\(29),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[28]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(29),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\);

-- Location: LABCELL_X9_Y5_N33
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(30) = SUM(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(30)) ) + ( \Reg1|data_out\(30) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ = CARRY(( !\FFAddSub|Q~q\ $ (\reg4|data_out\(30)) ) + ( \Reg1|data_out\(30) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \Reg1|ALT_INV_data_out\(30),
	datad => \reg4|ALT_INV_data_out\(30),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[29]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(30),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\);

-- Location: FF_X9_Y5_N34
\reg3|gen_reg:30:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:30:U1|Q~q\);

-- Location: FF_X15_Y5_N58
\reg3|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:30:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(30));

-- Location: M10K_X14_Y5_N0
\Ram|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram:Ram|altsyncram:altsyncram_component|altsyncram_5124:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \FFWriteEnable|Q~q\,
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LABCELL_X13_Y6_N6
\Reg2|gen_reg:29:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:29:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \Reg2|gen_reg:29:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N8
\Reg2|gen_reg:29:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:29:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:29:U1|Q~q\);

-- Location: FF_X13_Y6_N59
\Reg2|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:29:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(29));

-- Location: FF_X12_Y6_N59
\reg4|gen_reg:29:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:29:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(29),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:29:U1|Q~q\);

-- Location: FF_X12_Y6_N7
\reg4|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:29:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(29));

-- Location: FF_X9_Y5_N31
\reg3|gen_reg:29:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:29:U1|Q~q\);

-- Location: FF_X11_Y5_N49
\reg3|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:29:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(29));

-- Location: MLABCELL_X8_Y5_N51
\Reg1|gen_reg:28:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:28:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \Reg1|gen_reg:28:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N53
\Reg1|gen_reg:28:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:28:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:28:U1|Q~q\);

-- Location: FF_X8_Y5_N46
\Reg1|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:28:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(28));

-- Location: FF_X9_Y5_N28
\reg3|gen_reg:28:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:28:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N24
\reg3|data_out[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[28]~feeder_combout\ = ( \reg3|gen_reg:28:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:28:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[28]~feeder_combout\);

-- Location: FF_X11_Y5_N26
\reg3|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[28]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(28));

-- Location: LABCELL_X13_Y5_N48
\Reg2|gen_reg:27:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:27:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	combout => \Reg2|gen_reg:27:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N50
\Reg2|gen_reg:27:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:27:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:27:U1|Q~q\);

-- Location: FF_X13_Y5_N28
\Reg2|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:27:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(27));

-- Location: FF_X15_Y5_N43
\reg4|gen_reg:27:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:27:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(27),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:27:U1|Q~q\);

-- Location: LABCELL_X7_Y5_N24
\reg4|data_out[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[27]~feeder_combout\ = ( \reg4|gen_reg:27:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:27:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[27]~feeder_combout\);

-- Location: FF_X7_Y5_N25
\reg4|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[27]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(27));

-- Location: FF_X9_Y5_N25
\reg3|gen_reg:27:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:27:U1|Q~q\);

-- Location: FF_X15_Y5_N55
\reg3|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:27:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(27));

-- Location: MLABCELL_X8_Y5_N21
\Reg1|gen_reg:26:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:26:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \Reg1|gen_reg:26:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N23
\Reg1|gen_reg:26:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:26:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:26:U1|Q~q\);

-- Location: FF_X8_Y5_N16
\Reg1|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:26:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(26));

-- Location: FF_X9_Y5_N23
\reg3|gen_reg:26:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:26:U1|Q~q\);

-- Location: FF_X15_Y5_N4
\reg3|data_out[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:26:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[26]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y5_N18
\Reg1|gen_reg:25:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:25:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \Reg1|gen_reg:25:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N20
\Reg1|gen_reg:25:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:25:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:25:U1|Q~q\);

-- Location: FF_X8_Y5_N13
\Reg1|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:25:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(25));

-- Location: FF_X9_Y5_N19
\reg3|gen_reg:25:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:25:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N48
\reg3|data_out[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[25]~feeder_combout\ = ( \reg3|gen_reg:25:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:25:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[25]~feeder_combout\);

-- Location: FF_X15_Y5_N49
\reg3|data_out[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[25]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[25]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y5_N27
\Reg1|gen_reg:24:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:24:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	combout => \Reg1|gen_reg:24:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N28
\Reg1|gen_reg:24:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:24:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:24:U1|Q~q\);

-- Location: FF_X8_Y5_N10
\Reg1|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:24:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(24));

-- Location: FF_X9_Y5_N16
\reg3|gen_reg:24:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:24:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N51
\reg3|data_out[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[24]~feeder_combout\ = ( \reg3|gen_reg:24:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:24:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[24]~feeder_combout\);

-- Location: FF_X15_Y5_N52
\reg3|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[24]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(24));

-- Location: FF_X8_Y5_N26
\Reg1|gen_reg:23:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(23),
	sclr => \FFSelectDemux|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:23:U1|Q~q\);

-- Location: FF_X8_Y5_N7
\Reg1|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:23:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(23));

-- Location: FF_X9_Y5_N13
\reg3|gen_reg:23:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:23:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N54
\reg3|data_out[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[23]~feeder_combout\ = ( \reg3|gen_reg:23:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:23:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[23]~feeder_combout\);

-- Location: FF_X11_Y5_N55
\reg3|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[23]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(23));

-- Location: LABCELL_X13_Y5_N42
\Reg2|gen_reg:22:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:22:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	combout => \Reg2|gen_reg:22:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N43
\Reg2|gen_reg:22:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:22:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:22:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N30
\Reg2|data_out[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[22]~feeder_combout\ = ( \Reg2|gen_reg:22:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:22:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[22]~feeder_combout\);

-- Location: FF_X15_Y5_N32
\Reg2|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[22]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(22));

-- Location: FF_X15_Y5_N20
\reg4|gen_reg:22:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:22:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(22),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:22:U1|Q~q\);

-- Location: FF_X9_Y5_N59
\reg4|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:22:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(22));

-- Location: FF_X9_Y5_N10
\reg3|gen_reg:22:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:22:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N6
\reg3|data_out[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[22]~feeder_combout\ = ( \reg3|gen_reg:22:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:22:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[22]~feeder_combout\);

-- Location: FF_X15_Y5_N8
\reg3|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[22]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(22));

-- Location: MLABCELL_X8_Y5_N30
\Reg1|gen_reg:21:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:21:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \Reg1|gen_reg:21:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N32
\Reg1|gen_reg:21:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:21:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:21:U1|Q~q\);

-- Location: FF_X8_Y5_N37
\Reg1|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:21:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(21));

-- Location: FF_X9_Y5_N7
\reg3|gen_reg:21:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:21:U1|Q~q\);

-- Location: FF_X11_Y5_N25
\reg3|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:21:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(21));

-- Location: MLABCELL_X8_Y5_N3
\Reg1|gen_reg:20:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:20:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	combout => \Reg1|gen_reg:20:U1|Q~feeder_combout\);

-- Location: FF_X8_Y5_N5
\Reg1|gen_reg:20:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:20:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:20:U1|Q~q\);

-- Location: FF_X8_Y5_N58
\Reg1|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:20:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(20));

-- Location: FF_X9_Y5_N4
\reg3|gen_reg:20:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:20:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N9
\reg3|data_out[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[20]~feeder_combout\ = ( \reg3|gen_reg:20:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:20:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[20]~feeder_combout\);

-- Location: FF_X15_Y5_N10
\reg3|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[20]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(20));

-- Location: LABCELL_X12_Y5_N51
\Reg2|gen_reg:19:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:19:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \Reg2|gen_reg:19:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N53
\Reg2|gen_reg:19:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:19:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:19:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N21
\Reg2|data_out[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[19]~feeder_combout\ = ( \Reg2|gen_reg:19:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:19:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[19]~feeder_combout\);

-- Location: FF_X11_Y5_N23
\Reg2|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[19]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(19));

-- Location: FF_X11_Y5_N40
\reg4|gen_reg:19:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:19:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(19),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:19:U1|Q~q\);

-- Location: FF_X9_Y5_N50
\reg4|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:19:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(19));

-- Location: FF_X9_Y5_N1
\reg3|gen_reg:19:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:19:U1|Q~q\);

-- Location: FF_X11_Y5_N52
\reg3|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:19:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(19));

-- Location: FF_X13_Y5_N4
\Reg2|gen_reg:18:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(18),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:18:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N57
\Reg2|data_out[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[18]~feeder_combout\ = ( \Reg2|gen_reg:18:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:18:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[18]~feeder_combout\);

-- Location: FF_X15_Y6_N59
\Reg2|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[18]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(18));

-- Location: FF_X15_Y6_N46
\reg4|gen_reg:18:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:18:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(18),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:18:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N54
\reg4|data_out[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[18]~feeder_combout\ = ( \reg4|gen_reg:18:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:18:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[18]~feeder_combout\);

-- Location: FF_X10_Y6_N55
\reg4|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[18]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(18));

-- Location: FF_X9_Y6_N58
\reg3|gen_reg:18:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:18:U1|Q~q\);

-- Location: FF_X15_Y6_N52
\reg3|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:18:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(18));

-- Location: LABCELL_X12_Y5_N45
\Reg2|gen_reg:17:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:17:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \Reg2|gen_reg:17:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N47
\Reg2|gen_reg:17:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:17:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:17:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N15
\Reg2|data_out[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[17]~feeder_combout\ = ( \Reg2|gen_reg:17:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:17:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[17]~feeder_combout\);

-- Location: FF_X11_Y5_N16
\Reg2|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[17]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(17));

-- Location: FF_X12_Y6_N28
\reg4|gen_reg:17:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:17:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(17),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:17:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N36
\reg4|data_out[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[17]~feeder_combout\ = ( \reg4|gen_reg:17:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:17:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[17]~feeder_combout\);

-- Location: FF_X10_Y6_N37
\reg4|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[17]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(17));

-- Location: FF_X9_Y6_N55
\reg3|gen_reg:17:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:17:U1|Q~q\);

-- Location: FF_X12_Y6_N43
\reg3|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:17:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(17));

-- Location: FF_X13_Y5_N13
\Reg2|gen_reg:16:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(16),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:16:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N54
\Reg2|data_out[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[16]~feeder_combout\ = ( \Reg2|gen_reg:16:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:16:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[16]~feeder_combout\);

-- Location: FF_X15_Y6_N56
\Reg2|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[16]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(16));

-- Location: FF_X15_Y6_N44
\reg4|gen_reg:16:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:16:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(16),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:16:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N51
\reg4|data_out[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[16]~feeder_combout\ = ( \reg4|gen_reg:16:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:16:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[16]~feeder_combout\);

-- Location: FF_X10_Y6_N52
\reg4|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[16]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(16));

-- Location: FF_X9_Y6_N52
\reg3|gen_reg:16:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:16:U1|Q~q\);

-- Location: FF_X15_Y6_N49
\reg3|data_out[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:16:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[16]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N30
\Reg1|gen_reg:15:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:15:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \Reg1|gen_reg:15:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N32
\Reg1|gen_reg:15:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:15:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:15:U1|Q~q\);

-- Location: FF_X10_Y5_N56
\Reg1|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:15:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(15));

-- Location: FF_X9_Y6_N49
\reg3|gen_reg:15:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:15:U1|Q~q\);

-- Location: FF_X15_Y6_N10
\reg3|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:15:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(15));

-- Location: LABCELL_X10_Y5_N21
\Reg1|gen_reg:14:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:14:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \Reg1|gen_reg:14:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N23
\Reg1|gen_reg:14:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:14:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:14:U1|Q~q\);

-- Location: FF_X10_Y5_N11
\Reg1|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:14:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(14));

-- Location: FF_X9_Y6_N46
\reg3|gen_reg:14:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:14:U1|Q~q\);

-- Location: LABCELL_X12_Y6_N39
\reg3|data_out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[14]~feeder_combout\ = ( \reg3|gen_reg:14:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:14:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[14]~feeder_combout\);

-- Location: FF_X12_Y6_N40
\reg3|data_out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[14]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[14]~DUPLICATE_q\);

-- Location: FF_X13_Y5_N40
\Reg2|gen_reg:13:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(13),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:13:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N12
\Reg2|data_out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[13]~feeder_combout\ = ( \Reg2|gen_reg:13:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:13:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[13]~feeder_combout\);

-- Location: FF_X15_Y6_N14
\Reg2|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[13]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(13));

-- Location: FF_X15_Y6_N31
\reg4|gen_reg:13:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:13:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(13),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:13:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N45
\reg4|data_out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[13]~feeder_combout\ = ( \reg4|gen_reg:13:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:13:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[13]~feeder_combout\);

-- Location: FF_X10_Y6_N47
\reg4|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[13]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(13));

-- Location: FF_X9_Y6_N43
\reg3|gen_reg:13:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:13:U1|Q~q\);

-- Location: FF_X15_Y6_N8
\reg3|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:13:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(13));

-- Location: LABCELL_X11_Y6_N51
\Reg1|gen_reg:12:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:12:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \Reg1|gen_reg:12:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N53
\Reg1|gen_reg:12:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:12:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:12:U1|Q~q\);

-- Location: FF_X11_Y6_N7
\Reg1|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:12:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(12));

-- Location: FF_X9_Y6_N40
\reg3|gen_reg:12:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:12:U1|Q~q\);

-- Location: LABCELL_X12_Y6_N36
\reg3|data_out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[12]~feeder_combout\ = ( \reg3|gen_reg:12:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:12:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[12]~feeder_combout\);

-- Location: FF_X12_Y6_N37
\reg3|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[12]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(12));

-- Location: LABCELL_X12_Y5_N18
\Reg2|gen_reg:11:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:11:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \Reg2|gen_reg:11:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N20
\Reg2|gen_reg:11:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:11:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:11:U1|Q~q\);

-- Location: FF_X12_Y5_N56
\Reg2|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:11:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(11));

-- Location: FF_X12_Y6_N13
\reg4|gen_reg:11:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:11:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(11),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:11:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N33
\reg4|data_out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[11]~feeder_combout\ = ( \reg4|gen_reg:11:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:11:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[11]~feeder_combout\);

-- Location: FF_X10_Y6_N35
\reg4|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[11]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(11));

-- Location: FF_X9_Y6_N37
\reg3|gen_reg:11:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:11:U1|Q~q\);

-- Location: LABCELL_X12_Y6_N45
\reg3|data_out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[11]~feeder_combout\ = ( \reg3|gen_reg:11:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:11:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[11]~feeder_combout\);

-- Location: FF_X12_Y6_N46
\reg3|data_out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[11]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[11]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N42
\Reg1|gen_reg:30:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:30:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \Reg1|gen_reg:30:U1|Q~feeder_combout\);

-- Location: FF_X10_Y5_N44
\Reg1|gen_reg:30:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:30:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:30:U1|Q~q\);

-- Location: FF_X10_Y5_N26
\Reg1|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:30:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(30));

-- Location: LABCELL_X9_Y5_N36
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(31) = SUM(( \Reg1|data_out\(31) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(31)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ ))
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~COUT\ = CARRY(( \Reg1|data_out\(31) ) + ( !\FFAddSub|Q~q\ $ (\reg4|data_out\(31)) ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFAddSub|ALT_INV_Q~q\,
	datac => \reg4|ALT_INV_data_out\(31),
	datad => \Reg1|ALT_INV_data_out\(31),
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[30]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(31),
	cout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~COUT\);

-- Location: FF_X9_Y5_N37
\reg3|gen_reg:31:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:31:U1|Q~q\);

-- Location: FF_X12_Y6_N52
\reg3|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:31:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(31));

-- Location: LABCELL_X12_Y5_N24
\Reg2|gen_reg:10:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:10:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \Reg2|gen_reg:10:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N26
\Reg2|gen_reg:10:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:10:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:10:U1|Q~q\);

-- Location: FF_X12_Y5_N4
\Reg2|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:10:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(10));

-- Location: FF_X8_Y6_N23
\reg4|gen_reg:10:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:10:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(10),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:10:U1|Q~q\);

-- Location: FF_X8_Y6_N4
\reg4|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:10:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(10));

-- Location: FF_X9_Y6_N34
\reg3|gen_reg:10:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:10:U1|Q~q\);

-- Location: MLABCELL_X8_Y6_N39
\reg3|data_out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[10]~feeder_combout\ = ( \reg3|gen_reg:10:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:10:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[10]~feeder_combout\);

-- Location: FF_X8_Y6_N40
\reg3|data_out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[10]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[10]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y5_N30
\Reg2|gen_reg:9:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:9:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \Reg2|gen_reg:9:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N32
\Reg2|gen_reg:9:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:9:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:9:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N18
\Reg2|data_out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[9]~feeder_combout\ = ( \Reg2|gen_reg:9:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:9:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[9]~feeder_combout\);

-- Location: FF_X11_Y5_N20
\Reg2|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[9]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(9));

-- Location: FF_X11_Y5_N34
\reg4|gen_reg:9:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:9:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(9),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:9:U1|Q~q\);

-- Location: FF_X10_Y6_N53
\reg4|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:9:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(9));

-- Location: FF_X9_Y6_N31
\reg3|gen_reg:9:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:9:U1|Q~q\);

-- Location: LABCELL_X11_Y5_N57
\reg3|data_out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[9]~feeder_combout\ = ( \reg3|gen_reg:9:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:9:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[9]~feeder_combout\);

-- Location: FF_X11_Y5_N59
\reg3|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[9]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(9));

-- Location: LABCELL_X12_Y5_N15
\Reg2|gen_reg:8:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:8:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \Reg2|gen_reg:8:U1|Q~feeder_combout\);

-- Location: FF_X12_Y5_N17
\Reg2|gen_reg:8:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:8:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:8:U1|Q~q\);

-- Location: FF_X12_Y5_N2
\Reg2|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg2|gen_reg:8:U1|Q~q\,
	sload => VCC,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(8));

-- Location: FF_X11_Y5_N4
\reg4|gen_reg:8:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:8:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(8),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:8:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N12
\reg4|data_out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[8]~feeder_combout\ = ( \reg4|gen_reg:8:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg4|gen_reg:8:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[8]~feeder_combout\);

-- Location: FF_X10_Y6_N14
\reg4|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[8]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(8));

-- Location: FF_X9_Y6_N28
\reg3|gen_reg:8:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:8:U1|Q~q\);

-- Location: FF_X11_Y5_N29
\reg3|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:8:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(8));

-- Location: LABCELL_X11_Y6_N57
\Reg1|gen_reg:7:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:7:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \Reg1|gen_reg:7:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N59
\Reg1|gen_reg:7:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:7:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:7:U1|Q~q\);

-- Location: FF_X11_Y6_N43
\Reg1|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:7:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(7));

-- Location: FF_X9_Y6_N26
\reg3|gen_reg:7:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:7:U1|Q~q\);

-- Location: MLABCELL_X8_Y6_N36
\reg3|data_out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[7]~feeder_combout\ = ( \reg3|gen_reg:7:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:7:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[7]~feeder_combout\);

-- Location: FF_X8_Y6_N37
\reg3|data_out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[7]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[7]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y6_N12
\Reg2|gen_reg:6:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:6:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \Reg2|gen_reg:6:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N14
\Reg2|gen_reg:6:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:6:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:6:U1|Q~q\);

-- Location: LABCELL_X13_Y6_N48
\Reg2|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[6]~feeder_combout\ = \Reg2|gen_reg:6:U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Reg2|gen_reg:6:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[6]~feeder_combout\);

-- Location: FF_X13_Y6_N49
\Reg2|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[6]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(6));

-- Location: FF_X12_Y6_N1
\reg4|gen_reg:6:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:6:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(6),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:6:U1|Q~q\);

-- Location: FF_X10_Y6_N59
\reg4|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:6:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(6));

-- Location: FF_X9_Y6_N22
\reg3|gen_reg:6:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:6:U1|Q~q\);

-- Location: MLABCELL_X15_Y5_N0
\reg3|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[6]~feeder_combout\ = ( \reg3|gen_reg:6:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:6:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[6]~feeder_combout\);

-- Location: FF_X15_Y5_N1
\reg3|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[6]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(6));

-- Location: LABCELL_X10_Y6_N24
\Reg1|gen_reg:5:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:5:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \Reg1|gen_reg:5:U1|Q~feeder_combout\);

-- Location: FF_X10_Y6_N26
\Reg1|gen_reg:5:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:5:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:5:U1|Q~q\);

-- Location: FF_X10_Y6_N23
\Reg1|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:5:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(5));

-- Location: FF_X9_Y6_N19
\reg3|gen_reg:5:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:5:U1|Q~q\);

-- Location: MLABCELL_X8_Y6_N33
\reg3|data_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[5]~feeder_combout\ = ( \reg3|gen_reg:5:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:5:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[5]~feeder_combout\);

-- Location: FF_X8_Y6_N35
\reg3|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[5]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(5));

-- Location: LABCELL_X13_Y5_N18
\Reg2|gen_reg:4:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:4:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \Reg2|gen_reg:4:U1|Q~feeder_combout\);

-- Location: FF_X13_Y5_N19
\Reg2|gen_reg:4:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:4:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:4:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N15
\Reg2|data_out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[4]~feeder_combout\ = ( \Reg2|gen_reg:4:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:4:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[4]~feeder_combout\);

-- Location: FF_X15_Y6_N17
\Reg2|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[4]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(4));

-- Location: FF_X15_Y6_N29
\reg4|gen_reg:4:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:4:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(4),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:4:U1|Q~q\);

-- Location: FF_X10_Y6_N56
\reg4|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:4:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(4));

-- Location: FF_X9_Y6_N16
\reg3|gen_reg:4:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:4:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N3
\reg3|data_out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[4]~feeder_combout\ = ( \reg3|gen_reg:4:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:4:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[4]~feeder_combout\);

-- Location: FF_X15_Y6_N5
\reg3|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[4]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(4));

-- Location: LABCELL_X11_Y6_N24
\Reg1|gen_reg:3:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:3:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Reg1|gen_reg:3:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N25
\Reg1|gen_reg:3:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:3:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:3:U1|Q~q\);

-- Location: FF_X10_Y6_N8
\Reg1|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:3:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(3));

-- Location: FF_X9_Y6_N13
\reg3|gen_reg:3:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:3:U1|Q~q\);

-- Location: FF_X8_Y6_N31
\reg3|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg3|gen_reg:3:U1|Q~q\,
	sload => VCC,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(3));

-- Location: LABCELL_X11_Y6_N33
\Reg1|gen_reg:2:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg1|gen_reg:2:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \Reg1|gen_reg:2:U1|Q~feeder_combout\);

-- Location: FF_X11_Y6_N34
\Reg1|gen_reg:2:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg1|gen_reg:2:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|gen_reg:2:U1|Q~q\);

-- Location: FF_X10_Y6_N20
\Reg1|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Reg1|gen_reg:2:U1|Q~q\,
	sload => VCC,
	ena => \FFReg1|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg1|data_out\(2));

-- Location: FF_X9_Y6_N10
\reg3|gen_reg:2:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:2:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N6
\reg3|data_out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[2]~feeder_combout\ = ( \reg3|gen_reg:2:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:2:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[2]~feeder_combout\);

-- Location: FF_X15_Y6_N7
\reg3|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[2]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(2));

-- Location: LABCELL_X13_Y6_N45
\Reg2|gen_reg:1:U1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|gen_reg:1:U1|Q~feeder_combout\ = ( \Ram|altsyncram_component|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Ram|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \Reg2|gen_reg:1:U1|Q~feeder_combout\);

-- Location: FF_X13_Y6_N46
\Reg2|gen_reg:1:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|gen_reg:1:U1|Q~feeder_combout\,
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:1:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N18
\Reg2|data_out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[1]~feeder_combout\ = ( \Reg2|gen_reg:1:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:1:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[1]~feeder_combout\);

-- Location: FF_X15_Y6_N20
\Reg2|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[1]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(1));

-- Location: FF_X15_Y6_N25
\reg4|gen_reg:1:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:1:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(1),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:1:U1|Q~q\);

-- Location: FF_X10_Y6_N32
\reg4|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \reg4|gen_reg:1:U1|Q~q\,
	sload => VCC,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(1));

-- Location: FF_X9_Y6_N7
\reg3|gen_reg:1:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:1:U1|Q~q\);

-- Location: MLABCELL_X15_Y6_N0
\reg3|data_out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[1]~feeder_combout\ = ( \reg3|gen_reg:1:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:1:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[1]~feeder_combout\);

-- Location: FF_X15_Y6_N1
\reg3|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[1]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out\(1));

-- Location: FF_X13_Y6_N25
\Reg2|gen_reg:0:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Ram|altsyncram_component|auto_generated|q_a\(0),
	sclr => \FFSelectDemux|ALT_INV_Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|gen_reg:0:U1|Q~q\);

-- Location: LABCELL_X13_Y6_N18
\Reg2|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg2|data_out[0]~feeder_combout\ = ( \Reg2|gen_reg:0:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Reg2|gen_reg:0:U1|ALT_INV_Q~q\,
	combout => \Reg2|data_out[0]~feeder_combout\);

-- Location: FF_X13_Y6_N19
\Reg2|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Reg2|data_out[0]~feeder_combout\,
	ena => \FFReg2|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg2|data_out\(0));

-- Location: FF_X12_Y6_N19
\reg4|gen_reg:0:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|gen_reg:0:U1|Q~feeder_combout\,
	asdata => \Reg2|data_out\(0),
	sload => \FFSelectMux|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_reg:0:U1|Q~q\);

-- Location: LABCELL_X10_Y6_N42
\reg4|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|data_out[0]~feeder_combout\ = \reg4|gen_reg:0:U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg4|gen_reg:0:U1|ALT_INV_Q~q\,
	combout => \reg4|data_out[0]~feeder_combout\);

-- Location: FF_X10_Y6_N44
\reg4|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg4|data_out[0]~feeder_combout\,
	ena => \FFReg4|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|data_out\(0));

-- Location: FF_X9_Y6_N4
\reg3|gen_reg:0:U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add_Sub|LPM_ADD_SUB_component|auto_generated|result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_reg:0:U1|Q~q\);

-- Location: LABCELL_X12_Y6_N48
\reg3|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|data_out[0]~feeder_combout\ = ( \reg3|gen_reg:0:U1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg3|gen_reg:0:U1|ALT_INV_Q~q\,
	combout => \reg3|data_out[0]~feeder_combout\);

-- Location: FF_X12_Y6_N49
\reg3|data_out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[0]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[0]~DUPLICATE_q\);

-- Location: FF_X15_Y6_N4
\reg3|data_out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[4]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[4]~DUPLICATE_q\);

-- Location: FF_X15_Y5_N7
\reg3|data_out[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg3|data_out[22]~feeder_combout\,
	ena => \FFReg3|Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|data_out[22]~DUPLICATE_q\);

-- Location: LABCELL_X9_Y5_N39
\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~COUT\,
	sumout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1_sumout\);

-- Location: LABCELL_X9_Y5_N42
\Add_Sub|LPM_ADD_SUB_component|auto_generated|overflow_wire[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add_Sub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0) = !\Add_Sub|LPM_ADD_SUB_component|auto_generated|add_sub_cella[31]~1_sumout\ $ (!\FFAddSub|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add_Sub|LPM_ADD_SUB_component|auto_generated|ALT_INV_add_sub_cella[31]~1_sumout\,
	datac => \FFAddSub|ALT_INV_Q~q\,
	combout => \Add_Sub|LPM_ADD_SUB_component|auto_generated|overflow_wire\(0));

-- Location: LABCELL_X7_Y48_N3
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


