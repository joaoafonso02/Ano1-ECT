-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/19/2021 15:25:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Maquina_bebida IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Maquina_bebida;

-- Design Ports Information
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina_bebida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Registo|out_Gelo~0_combout\ : std_logic;
SIGNAL \Registo|out_Gelo~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~27_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \debuncerKEY2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_dirtyIn~q\ : std_logic;
SIGNAL \debuncerKEY2|s_previousIn~q\ : std_logic;
SIGNAL \debuncerKEY2|Add0~0_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~1\ : std_logic;
SIGNAL \debuncerKEY2|Add0~2_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~3\ : std_logic;
SIGNAL \debuncerKEY2|Add0~4_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~5\ : std_logic;
SIGNAL \debuncerKEY2|Add0~6_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~7\ : std_logic;
SIGNAL \debuncerKEY2|Add0~8_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~9\ : std_logic;
SIGNAL \debuncerKEY2|Add0~11\ : std_logic;
SIGNAL \debuncerKEY2|Add0~12_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~13\ : std_logic;
SIGNAL \debuncerKEY2|Add0~14_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~15\ : std_logic;
SIGNAL \debuncerKEY2|Add0~16_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~17\ : std_logic;
SIGNAL \debuncerKEY2|Add0~18_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~19\ : std_logic;
SIGNAL \debuncerKEY2|Add0~20_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~21\ : std_logic;
SIGNAL \debuncerKEY2|Add0~22_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~23\ : std_logic;
SIGNAL \debuncerKEY2|Add0~24_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~25\ : std_logic;
SIGNAL \debuncerKEY2|Add0~26_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~27\ : std_logic;
SIGNAL \debuncerKEY2|Add0~28_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~29\ : std_logic;
SIGNAL \debuncerKEY2|Add0~30_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~31\ : std_logic;
SIGNAL \debuncerKEY2|Add0~32_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~33\ : std_logic;
SIGNAL \debuncerKEY2|Add0~34_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~35\ : std_logic;
SIGNAL \debuncerKEY2|Add0~36_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~37\ : std_logic;
SIGNAL \debuncerKEY2|Add0~38_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~39\ : std_logic;
SIGNAL \debuncerKEY2|Add0~40_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[16]~2_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[16]~3_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~41\ : std_logic;
SIGNAL \debuncerKEY2|Add0~42_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~4_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~5_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~6_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~0_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~1_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~2_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~3_combout\ : std_logic;
SIGNAL \debuncerKEY2|LessThan0~7_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[16]~0_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~43\ : std_logic;
SIGNAL \debuncerKEY2|Add0~44_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt[16]~4_combout\ : std_logic;
SIGNAL \debuncerKEY2|Add0~10_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debuncerKEY2|s_pulsedOut~q\ : std_logic;
SIGNAL \debuncerKEY1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debuncerKEY1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \debuncerKEY1|Add0~5\ : std_logic;
SIGNAL \debuncerKEY1|Add0~6_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_previousIn~q\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[11]~3_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~7\ : std_logic;
SIGNAL \debuncerKEY1|Add0~8_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~9\ : std_logic;
SIGNAL \debuncerKEY1|Add0~10_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~11\ : std_logic;
SIGNAL \debuncerKEY1|Add0~12_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~27\ : std_logic;
SIGNAL \debuncerKEY1|Add0~28_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~29\ : std_logic;
SIGNAL \debuncerKEY1|Add0~30_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~31\ : std_logic;
SIGNAL \debuncerKEY1|Add0~32_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~33\ : std_logic;
SIGNAL \debuncerKEY1|Add0~34_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~35\ : std_logic;
SIGNAL \debuncerKEY1|Add0~36_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~37\ : std_logic;
SIGNAL \debuncerKEY1|Add0~38_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~39\ : std_logic;
SIGNAL \debuncerKEY1|Add0~40_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~41\ : std_logic;
SIGNAL \debuncerKEY1|Add0~42_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~6_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \debuncerKEY1|LessThan0~7_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[11]~0_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~13\ : std_logic;
SIGNAL \debuncerKEY1|Add0~14_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~15\ : std_logic;
SIGNAL \debuncerKEY1|Add0~16_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~17\ : std_logic;
SIGNAL \debuncerKEY1|Add0~18_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~19\ : std_logic;
SIGNAL \debuncerKEY1|Add0~20_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~21\ : std_logic;
SIGNAL \debuncerKEY1|Add0~22_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~23\ : std_logic;
SIGNAL \debuncerKEY1|Add0~24_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~25\ : std_logic;
SIGNAL \debuncerKEY1|Add0~26_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~43\ : std_logic;
SIGNAL \debuncerKEY1|Add0~44_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt[11]~4_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~1\ : std_logic;
SIGNAL \debuncerKEY1|Add0~2_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debuncerKEY1|Add0~3\ : std_logic;
SIGNAL \debuncerKEY1|Add0~4_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debuncerKEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \debuncerKEY0|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debuncerKEY0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debuncerKEY0|s_previousIn~q\ : std_logic;
SIGNAL \debuncerKEY0|Add0~1\ : std_logic;
SIGNAL \debuncerKEY0|Add0~2_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~3\ : std_logic;
SIGNAL \debuncerKEY0|Add0~4_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~5\ : std_logic;
SIGNAL \debuncerKEY0|Add0~6_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~7\ : std_logic;
SIGNAL \debuncerKEY0|Add0~8_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~9\ : std_logic;
SIGNAL \debuncerKEY0|Add0~10_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~11\ : std_logic;
SIGNAL \debuncerKEY0|Add0~12_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~13\ : std_logic;
SIGNAL \debuncerKEY0|Add0~14_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~15\ : std_logic;
SIGNAL \debuncerKEY0|Add0~16_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~17\ : std_logic;
SIGNAL \debuncerKEY0|Add0~18_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~19\ : std_logic;
SIGNAL \debuncerKEY0|Add0~20_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~21\ : std_logic;
SIGNAL \debuncerKEY0|Add0~22_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~23\ : std_logic;
SIGNAL \debuncerKEY0|Add0~24_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~25\ : std_logic;
SIGNAL \debuncerKEY0|Add0~26_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~27\ : std_logic;
SIGNAL \debuncerKEY0|Add0~28_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~29\ : std_logic;
SIGNAL \debuncerKEY0|Add0~30_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~31\ : std_logic;
SIGNAL \debuncerKEY0|Add0~32_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~33\ : std_logic;
SIGNAL \debuncerKEY0|Add0~34_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~35\ : std_logic;
SIGNAL \debuncerKEY0|Add0~36_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~37\ : std_logic;
SIGNAL \debuncerKEY0|Add0~38_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~39\ : std_logic;
SIGNAL \debuncerKEY0|Add0~40_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~41\ : std_logic;
SIGNAL \debuncerKEY0|Add0~42_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debuncerKEY0|LessThan0~7_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debuncerKEY0|Add0~43\ : std_logic;
SIGNAL \debuncerKEY0|Add0~44_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt[20]~4_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debuncerKEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|T_timeVal[2]~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~62_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~63_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.st_progFan~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~51_combout\ : std_logic;
SIGNAL \Timer|count[0]~32_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector41~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.St_Spes~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~50_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~52_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.St_Spes~q\ : std_logic;
SIGNAL \GeloSel_FSM|s_nextState~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector40~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.St_Soli~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~48_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~49_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.St_Soli~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|WideOr2~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector6~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector6~2_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|T_start~q\ : std_logic;
SIGNAL \Timer|count[30]~36_combout\ : std_logic;
SIGNAL \Timer|count[0]~33\ : std_logic;
SIGNAL \Timer|count[1]~34_combout\ : std_logic;
SIGNAL \Timer|count[1]~35\ : std_logic;
SIGNAL \Timer|count[2]~37_combout\ : std_logic;
SIGNAL \Timer|count[2]~38\ : std_logic;
SIGNAL \Timer|count[3]~39_combout\ : std_logic;
SIGNAL \Timer|count[3]~40\ : std_logic;
SIGNAL \Timer|count[4]~41_combout\ : std_logic;
SIGNAL \Timer|count[4]~42\ : std_logic;
SIGNAL \Timer|count[5]~43_combout\ : std_logic;
SIGNAL \Timer|count[5]~44\ : std_logic;
SIGNAL \Timer|count[6]~45_combout\ : std_logic;
SIGNAL \Timer|count[6]~46\ : std_logic;
SIGNAL \Timer|count[7]~47_combout\ : std_logic;
SIGNAL \Timer|count[7]~48\ : std_logic;
SIGNAL \Timer|count[8]~49_combout\ : std_logic;
SIGNAL \Timer|count[8]~50\ : std_logic;
SIGNAL \Timer|count[9]~51_combout\ : std_logic;
SIGNAL \Timer|count[9]~52\ : std_logic;
SIGNAL \Timer|count[10]~53_combout\ : std_logic;
SIGNAL \Timer|count[10]~54\ : std_logic;
SIGNAL \Timer|count[11]~55_combout\ : std_logic;
SIGNAL \Timer|count[11]~56\ : std_logic;
SIGNAL \Timer|count[12]~57_combout\ : std_logic;
SIGNAL \Timer|count[12]~58\ : std_logic;
SIGNAL \Timer|count[13]~59_combout\ : std_logic;
SIGNAL \Timer|count[13]~60\ : std_logic;
SIGNAL \Timer|count[14]~61_combout\ : std_logic;
SIGNAL \Timer|count[14]~62\ : std_logic;
SIGNAL \Timer|count[15]~63_combout\ : std_logic;
SIGNAL \Timer|count[15]~64\ : std_logic;
SIGNAL \Timer|count[16]~65_combout\ : std_logic;
SIGNAL \Timer|count[16]~66\ : std_logic;
SIGNAL \Timer|count[17]~67_combout\ : std_logic;
SIGNAL \Timer|count[17]~68\ : std_logic;
SIGNAL \Timer|count[18]~69_combout\ : std_logic;
SIGNAL \Timer|count[18]~70\ : std_logic;
SIGNAL \Timer|count[19]~71_combout\ : std_logic;
SIGNAL \Timer|count[19]~72\ : std_logic;
SIGNAL \Timer|count[20]~73_combout\ : std_logic;
SIGNAL \Timer|count[20]~74\ : std_logic;
SIGNAL \Timer|count[21]~75_combout\ : std_logic;
SIGNAL \Timer|count[21]~76\ : std_logic;
SIGNAL \Timer|count[22]~77_combout\ : std_logic;
SIGNAL \Timer|count[22]~78\ : std_logic;
SIGNAL \Timer|count[23]~79_combout\ : std_logic;
SIGNAL \Timer|Equal0~6_combout\ : std_logic;
SIGNAL \Timer|Equal0~5_combout\ : std_logic;
SIGNAL \Timer|Equal0~7_combout\ : std_logic;
SIGNAL \Timer|count[23]~80\ : std_logic;
SIGNAL \Timer|count[24]~81_combout\ : std_logic;
SIGNAL \Timer|count[24]~82\ : std_logic;
SIGNAL \Timer|count[25]~83_combout\ : std_logic;
SIGNAL \Timer|count[25]~84\ : std_logic;
SIGNAL \Timer|count[26]~85_combout\ : std_logic;
SIGNAL \Timer|count[26]~86\ : std_logic;
SIGNAL \Timer|count[27]~87_combout\ : std_logic;
SIGNAL \Timer|Equal0~8_combout\ : std_logic;
SIGNAL \Timer|count[27]~88\ : std_logic;
SIGNAL \Timer|count[28]~89_combout\ : std_logic;
SIGNAL \Timer|count[28]~90\ : std_logic;
SIGNAL \Timer|count[29]~91_combout\ : std_logic;
SIGNAL \Timer|count[29]~92\ : std_logic;
SIGNAL \Timer|count[30]~93_combout\ : std_logic;
SIGNAL \Timer|count[30]~94\ : std_logic;
SIGNAL \Timer|count[31]~95_combout\ : std_logic;
SIGNAL \Timer|Equal0~9_combout\ : std_logic;
SIGNAL \Timer|Equal0~0_combout\ : std_logic;
SIGNAL \Timer|Equal0~2_combout\ : std_logic;
SIGNAL \Timer|Equal0~3_combout\ : std_logic;
SIGNAL \Timer|Equal0~1_combout\ : std_logic;
SIGNAL \Timer|Equal0~4_combout\ : std_logic;
SIGNAL \Timer|Equal0~10_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|WideOr31~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector36~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.Boot~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~53_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~54_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Boot~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.Init~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector39~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.St_Fan~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~60_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~61_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.St_Fan~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~34_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~40_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~64_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~65_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.st_progSpes~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~66_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.st_progSoli~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~29_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~36_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~35_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~37_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~38_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~43_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~44_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Done~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~28_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~30_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~31_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~32_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~33_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector37~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.Option~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~39_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~42_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Option~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~55_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~56_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~57_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~58_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~59_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.prog~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~41_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~45_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~46_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~47_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Gelo~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.Init~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|current_state.Init~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|state~26_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Init~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|l_Done~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|sel_gelo~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|sel_gelo~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~1_cout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~2_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~3\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~5\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add2~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME[3]~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME[0]~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~1_cout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~2_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~3\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~5\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add4~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME[3]~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME[0]~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector5~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~1_cout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~2_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~3\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~4_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~5\ : std_logic;
SIGNAL \Esc_Prod_FSM|Add0~6_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[3]~7_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[0]~5_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|T_timeVal[0]~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|T_timeVal[0]~2_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector4~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector3~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|state.Init~_wirecell_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME[3]~_wirecell_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector1~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Msg_blink~q\ : std_logic;
SIGNAL \FreqDiv|Add0~0_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~1\ : std_logic;
SIGNAL \FreqDiv|Add0~2_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~10_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~3\ : std_logic;
SIGNAL \FreqDiv|Add0~4_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~11_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~5\ : std_logic;
SIGNAL \FreqDiv|Add0~6_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~7\ : std_logic;
SIGNAL \FreqDiv|Add0~8_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~9_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~9\ : std_logic;
SIGNAL \FreqDiv|Add0~10_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~11\ : std_logic;
SIGNAL \FreqDiv|Add0~12_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~13\ : std_logic;
SIGNAL \FreqDiv|Add0~14_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~15\ : std_logic;
SIGNAL \FreqDiv|Add0~16_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~17\ : std_logic;
SIGNAL \FreqDiv|Add0~18_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~19\ : std_logic;
SIGNAL \FreqDiv|Add0~20_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~21\ : std_logic;
SIGNAL \FreqDiv|Add0~22_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~8_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~23\ : std_logic;
SIGNAL \FreqDiv|Add0~24_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~25\ : std_logic;
SIGNAL \FreqDiv|Add0~26_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~7_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~27\ : std_logic;
SIGNAL \FreqDiv|Add0~28_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~29\ : std_logic;
SIGNAL \FreqDiv|Add0~30_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~31\ : std_logic;
SIGNAL \FreqDiv|Add0~32_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~5_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~33\ : std_logic;
SIGNAL \FreqDiv|Add0~34_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~4_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~35\ : std_logic;
SIGNAL \FreqDiv|Add0~36_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~3_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~37\ : std_logic;
SIGNAL \FreqDiv|Add0~38_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~2_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~39\ : std_logic;
SIGNAL \FreqDiv|Add0~40_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~1_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~41\ : std_logic;
SIGNAL \FreqDiv|Add0~42_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~0_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~43\ : std_logic;
SIGNAL \FreqDiv|Add0~44_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter~6_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~45\ : std_logic;
SIGNAL \FreqDiv|Add0~46_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~47\ : std_logic;
SIGNAL \FreqDiv|Add0~48_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~49\ : std_logic;
SIGNAL \FreqDiv|Add0~50_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~51\ : std_logic;
SIGNAL \FreqDiv|Add0~52_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~53\ : std_logic;
SIGNAL \FreqDiv|Add0~54_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~55\ : std_logic;
SIGNAL \FreqDiv|Add0~56_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~57\ : std_logic;
SIGNAL \FreqDiv|Add0~58_combout\ : std_logic;
SIGNAL \FreqDiv|Add0~59\ : std_logic;
SIGNAL \FreqDiv|Add0~60_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~10_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~4_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|WideOr24~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector19~2_combout\ : std_logic;
SIGNAL \msg_display[3]~6_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~13_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~12_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~15_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~17_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~21_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState.S0~q\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~16_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState.S1~q\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~18_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~19_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState.S2~q\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~14_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState.S3~q\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~11_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState~20_combout\ : std_logic;
SIGNAL \GeloSel_FSM|s_currentState.S4~q\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector17~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector22~0_combout\ : std_logic;
SIGNAL \msg_display~7_combout\ : std_logic;
SIGNAL \msg_display[0]~9_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector21~0_combout\ : std_logic;
SIGNAL \msg_display[1]~8_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector10~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector12~0_combout\ : std_logic;
SIGNAL \msg_display[2]~4_combout\ : std_logic;
SIGNAL \msg_display[2]~5_combout\ : std_logic;
SIGNAL \display0|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \msg_display[0]~11_combout\ : std_logic;
SIGNAL \msg_display[1]~10_combout\ : std_logic;
SIGNAL \display0|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \display0|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \display0|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \display0|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \display0|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \display0|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \display0|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \display0|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \display0|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \display0|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \display0|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector15~0_combout\ : std_logic;
SIGNAL \msg_display[7]~14_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector9~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector17~1_combout\ : std_logic;
SIGNAL \msg_display[5]~17_combout\ : std_logic;
SIGNAL \msg_display[4]~12_combout\ : std_logic;
SIGNAL \msg_display[5]~15_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector18~2_combout\ : std_logic;
SIGNAL \msg_display[4]~18_combout\ : std_logic;
SIGNAL \display1|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \msg_display[4]~16_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|WideOr22~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector8~0_combout\ : std_logic;
SIGNAL \msg_display[6]~13_combout\ : std_logic;
SIGNAL \display1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \display1|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \display1|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \display1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \display1|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \display1|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \display1|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \display1|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \display1|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \display1|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \display1|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector9~1_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector11~0_combout\ : std_logic;
SIGNAL \msg_display[11]~20_combout\ : std_logic;
SIGNAL \msg_display[10]~19_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector13~0_combout\ : std_logic;
SIGNAL \msg_display[9]~21_combout\ : std_logic;
SIGNAL \msg_display[9]~29_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector14~0_combout\ : std_logic;
SIGNAL \msg_display[8]~22_combout\ : std_logic;
SIGNAL \msg_display[8]~30_combout\ : std_logic;
SIGNAL \display2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \display2|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \display2|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \display2|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \display2|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \display2|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \display2|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \display2|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \display2|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \display2|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \display2|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \display2|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector10~1_combout\ : std_logic;
SIGNAL \msg_display[12]~28_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector7~2_combout\ : std_logic;
SIGNAL \msg_display[15]~24_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|Selector9~2_combout\ : std_logic;
SIGNAL \msg_display[13]~27_combout\ : std_logic;
SIGNAL \msg_display[13]~25_combout\ : std_logic;
SIGNAL \display3|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \msg_display[14]~23_combout\ : std_logic;
SIGNAL \msg_display[12]~26_combout\ : std_logic;
SIGNAL \display3|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \display3|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \display3|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \display3|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \display3|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \display3|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \display3|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \display3|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \display3|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \display3|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \display3|decOut_n[6]~11_combout\ : std_logic;
SIGNAL \display4|decOut_n[0]~27_combout\ : std_logic;
SIGNAL \display4|decOut_n[0]~35_combout\ : std_logic;
SIGNAL \display4|decOut_n[1]~10_combout\ : std_logic;
SIGNAL \display4|decOut_n[1]~31_combout\ : std_logic;
SIGNAL \display4|decOut_n[2]~16_combout\ : std_logic;
SIGNAL \display4|decOut_n[2]~32_combout\ : std_logic;
SIGNAL \display4|decOut_n[3]~21_combout\ : std_logic;
SIGNAL \display4|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \display4|decOut_n[4]~28_combout\ : std_logic;
SIGNAL \display4|decOut_n[4]~29_combout\ : std_logic;
SIGNAL \display4|decOut_n[5]~6_combout\ : std_logic;
SIGNAL \display4|decOut_n[5]~30_combout\ : std_logic;
SIGNAL \display4|decOut_n[6]~24_combout\ : std_logic;
SIGNAL \display4|decOut_n[6]~34_combout\ : std_logic;
SIGNAL \display5|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \display5|Equal3~0_combout\ : std_logic;
SIGNAL \Esc_Prod_FSM|T_timeVal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Timer|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FreqDiv|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Esc_Prod_FSM|bin_Msg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debuncerKEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Esc_Prod_FSM|SOLI_PREP_TIME\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Esc_Prod_FSM|SPES_PREP_TIME\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debuncerKEY1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Esc_Prod_FSM|FAN_PREP_TIME\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debuncerKEY2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Esc_Prod_FSM|ALT_INV_state.Option~q\ : std_logic;
SIGNAL \ALT_INV_SW[17]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Esc_Prod_FSM|ALT_INV_state.Option~q\ <= NOT \Esc_Prod_FSM|state.Option~q\;
\ALT_INV_SW[17]~input_o\ <= NOT \SW[17]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|l_Done~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|sel_gelo~q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|T_timeVal\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|T_timeVal\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|T_timeVal\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Esc_Prod_FSM|T_timeVal\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|decOut_n[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|decOut_n[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[0]~35_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[1]~31_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[2]~32_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[3]~33_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[4]~29_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[5]~30_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|decOut_n[6]~34_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X107_Y25_N30
\Registo|out_Gelo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registo|out_Gelo~0_combout\ = (!\SW[17]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Registo|out_Gelo~0_combout\);

-- Location: FF_X107_Y25_N31
\Registo|out_Gelo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Registo|out_Gelo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registo|out_Gelo~q\);

-- Location: LCCOMB_X108_Y25_N14
\Esc_Prod_FSM|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~27_combout\ = (\Registo|out_Gelo~q\) # (!\Esc_Prod_FSM|state.Gelo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.Gelo~q\,
	datac => \Registo|out_Gelo~q\,
	combout => \Esc_Prod_FSM|state~27_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X108_Y32_N22
\debuncerKEY2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \debuncerKEY2|s_dirtyIn~0_combout\);

-- Location: FF_X108_Y32_N23
\debuncerKEY2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_dirtyIn~q\);

-- Location: FF_X108_Y32_N13
\debuncerKEY2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debuncerKEY2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_previousIn~q\);

-- Location: LCCOMB_X106_Y33_N10
\debuncerKEY2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~0_combout\ = \debuncerKEY2|s_debounceCnt\(0) $ (VCC)
-- \debuncerKEY2|Add0~1\ = CARRY(\debuncerKEY2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(0),
	datad => VCC,
	combout => \debuncerKEY2|Add0~0_combout\,
	cout => \debuncerKEY2|Add0~1\);

-- Location: LCCOMB_X105_Y32_N18
\debuncerKEY2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~24_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~24_combout\);

-- Location: FF_X105_Y32_N19
\debuncerKEY2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~24_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(0));

-- Location: LCCOMB_X106_Y33_N12
\debuncerKEY2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~2_combout\ = (\debuncerKEY2|s_debounceCnt\(1) & (\debuncerKEY2|Add0~1\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(1) & (!\debuncerKEY2|Add0~1\))
-- \debuncerKEY2|Add0~3\ = CARRY((!\debuncerKEY2|s_debounceCnt\(1) & !\debuncerKEY2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(1),
	datad => VCC,
	cin => \debuncerKEY2|Add0~1\,
	combout => \debuncerKEY2|Add0~2_combout\,
	cout => \debuncerKEY2|Add0~3\);

-- Location: LCCOMB_X106_Y33_N4
\debuncerKEY2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~20_combout\ = (\debuncerKEY2|Add0~2_combout\ & \debuncerKEY2|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|Add0~2_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt~20_combout\);

-- Location: FF_X106_Y33_N5
\debuncerKEY2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~20_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(1));

-- Location: LCCOMB_X106_Y33_N14
\debuncerKEY2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~4_combout\ = (\debuncerKEY2|s_debounceCnt\(2) & ((GND) # (!\debuncerKEY2|Add0~3\))) # (!\debuncerKEY2|s_debounceCnt\(2) & (\debuncerKEY2|Add0~3\ $ (GND)))
-- \debuncerKEY2|Add0~5\ = CARRY((\debuncerKEY2|s_debounceCnt\(2)) # (!\debuncerKEY2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(2),
	datad => VCC,
	cin => \debuncerKEY2|Add0~3\,
	combout => \debuncerKEY2|Add0~4_combout\,
	cout => \debuncerKEY2|Add0~5\);

-- Location: LCCOMB_X106_Y33_N2
\debuncerKEY2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~21_combout\ = (\debuncerKEY2|Add0~4_combout\ & \debuncerKEY2|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|Add0~4_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt~21_combout\);

-- Location: FF_X106_Y33_N3
\debuncerKEY2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~21_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(2));

-- Location: LCCOMB_X106_Y33_N16
\debuncerKEY2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~6_combout\ = (\debuncerKEY2|s_debounceCnt\(3) & (\debuncerKEY2|Add0~5\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(3) & (!\debuncerKEY2|Add0~5\))
-- \debuncerKEY2|Add0~7\ = CARRY((!\debuncerKEY2|s_debounceCnt\(3) & !\debuncerKEY2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(3),
	datad => VCC,
	cin => \debuncerKEY2|Add0~5\,
	combout => \debuncerKEY2|Add0~6_combout\,
	cout => \debuncerKEY2|Add0~7\);

-- Location: LCCOMB_X106_Y33_N8
\debuncerKEY2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~22_combout\ = (\debuncerKEY2|Add0~6_combout\ & \debuncerKEY2|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|Add0~6_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt~22_combout\);

-- Location: FF_X106_Y33_N9
\debuncerKEY2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~22_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y33_N18
\debuncerKEY2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~8_combout\ = (\debuncerKEY2|s_debounceCnt\(4) & ((GND) # (!\debuncerKEY2|Add0~7\))) # (!\debuncerKEY2|s_debounceCnt\(4) & (\debuncerKEY2|Add0~7\ $ (GND)))
-- \debuncerKEY2|Add0~9\ = CARRY((\debuncerKEY2|s_debounceCnt\(4)) # (!\debuncerKEY2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(4),
	datad => VCC,
	cin => \debuncerKEY2|Add0~7\,
	combout => \debuncerKEY2|Add0~8_combout\,
	cout => \debuncerKEY2|Add0~9\);

-- Location: LCCOMB_X106_Y33_N6
\debuncerKEY2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~23_combout\ = (\debuncerKEY2|Add0~8_combout\ & \debuncerKEY2|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|Add0~8_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt~23_combout\);

-- Location: FF_X106_Y33_N7
\debuncerKEY2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~23_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(4));

-- Location: LCCOMB_X106_Y33_N0
\debuncerKEY2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~5_combout\ = (!\debuncerKEY2|s_debounceCnt\(4) & (!\debuncerKEY2|s_debounceCnt\(1) & (!\debuncerKEY2|s_debounceCnt\(3) & !\debuncerKEY2|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(4),
	datab => \debuncerKEY2|s_debounceCnt\(1),
	datac => \debuncerKEY2|s_debounceCnt\(3),
	datad => \debuncerKEY2|s_debounceCnt\(2),
	combout => \debuncerKEY2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X106_Y33_N20
\debuncerKEY2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~10_combout\ = (\debuncerKEY2|s_debounceCnt\(5) & (\debuncerKEY2|Add0~9\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(5) & (!\debuncerKEY2|Add0~9\))
-- \debuncerKEY2|Add0~11\ = CARRY((!\debuncerKEY2|s_debounceCnt\(5) & !\debuncerKEY2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(5),
	datad => VCC,
	cin => \debuncerKEY2|Add0~9\,
	combout => \debuncerKEY2|Add0~10_combout\,
	cout => \debuncerKEY2|Add0~11\);

-- Location: LCCOMB_X106_Y33_N22
\debuncerKEY2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~12_combout\ = (\debuncerKEY2|s_debounceCnt\(6) & ((GND) # (!\debuncerKEY2|Add0~11\))) # (!\debuncerKEY2|s_debounceCnt\(6) & (\debuncerKEY2|Add0~11\ $ (GND)))
-- \debuncerKEY2|Add0~13\ = CARRY((\debuncerKEY2|s_debounceCnt\(6)) # (!\debuncerKEY2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(6),
	datad => VCC,
	cin => \debuncerKEY2|Add0~11\,
	combout => \debuncerKEY2|Add0~12_combout\,
	cout => \debuncerKEY2|Add0~13\);

-- Location: LCCOMB_X107_Y32_N16
\debuncerKEY2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~1_combout\ = (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~12_combout\) # (!\debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|Add0~12_combout\,
	datac => \debuncerKEY2|s_previousIn~q\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~1_combout\);

-- Location: FF_X107_Y32_N17
\debuncerKEY2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~1_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(6));

-- Location: LCCOMB_X106_Y33_N24
\debuncerKEY2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~14_combout\ = (\debuncerKEY2|s_debounceCnt\(7) & (\debuncerKEY2|Add0~13\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(7) & (!\debuncerKEY2|Add0~13\))
-- \debuncerKEY2|Add0~15\ = CARRY((!\debuncerKEY2|s_debounceCnt\(7) & !\debuncerKEY2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(7),
	datad => VCC,
	cin => \debuncerKEY2|Add0~13\,
	combout => \debuncerKEY2|Add0~14_combout\,
	cout => \debuncerKEY2|Add0~15\);

-- Location: LCCOMB_X107_Y32_N2
\debuncerKEY2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~12_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~14_combout\,
	combout => \debuncerKEY2|s_debounceCnt~12_combout\);

-- Location: FF_X107_Y32_N3
\debuncerKEY2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~12_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(7));

-- Location: LCCOMB_X106_Y33_N26
\debuncerKEY2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~16_combout\ = (\debuncerKEY2|s_debounceCnt\(8) & ((GND) # (!\debuncerKEY2|Add0~15\))) # (!\debuncerKEY2|s_debounceCnt\(8) & (\debuncerKEY2|Add0~15\ $ (GND)))
-- \debuncerKEY2|Add0~17\ = CARRY((\debuncerKEY2|s_debounceCnt\(8)) # (!\debuncerKEY2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(8),
	datad => VCC,
	cin => \debuncerKEY2|Add0~15\,
	combout => \debuncerKEY2|Add0~16_combout\,
	cout => \debuncerKEY2|Add0~17\);

-- Location: LCCOMB_X107_Y32_N8
\debuncerKEY2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~13_combout\ = (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~16_combout\) # (!\debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_previousIn~q\,
	datac => \debuncerKEY2|Add0~16_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y32_N9
\debuncerKEY2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~13_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y33_N28
\debuncerKEY2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~18_combout\ = (\debuncerKEY2|s_debounceCnt\(9) & (\debuncerKEY2|Add0~17\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(9) & (!\debuncerKEY2|Add0~17\))
-- \debuncerKEY2|Add0~19\ = CARRY((!\debuncerKEY2|s_debounceCnt\(9) & !\debuncerKEY2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(9),
	datad => VCC,
	cin => \debuncerKEY2|Add0~17\,
	combout => \debuncerKEY2|Add0~18_combout\,
	cout => \debuncerKEY2|Add0~19\);

-- Location: LCCOMB_X107_Y32_N18
\debuncerKEY2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~14_combout\ = (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~18_combout\) # (!\debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_previousIn~q\,
	datac => \debuncerKEY2|Add0~18_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~14_combout\);

-- Location: FF_X107_Y32_N19
\debuncerKEY2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~14_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(9));

-- Location: LCCOMB_X106_Y33_N30
\debuncerKEY2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~20_combout\ = (\debuncerKEY2|s_debounceCnt\(10) & ((GND) # (!\debuncerKEY2|Add0~19\))) # (!\debuncerKEY2|s_debounceCnt\(10) & (\debuncerKEY2|Add0~19\ $ (GND)))
-- \debuncerKEY2|Add0~21\ = CARRY((\debuncerKEY2|s_debounceCnt\(10)) # (!\debuncerKEY2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(10),
	datad => VCC,
	cin => \debuncerKEY2|Add0~19\,
	combout => \debuncerKEY2|Add0~20_combout\,
	cout => \debuncerKEY2|Add0~21\);

-- Location: LCCOMB_X105_Y32_N22
\debuncerKEY2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~15_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~20_combout\,
	combout => \debuncerKEY2|s_debounceCnt~15_combout\);

-- Location: FF_X105_Y32_N23
\debuncerKEY2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~15_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(10));

-- Location: LCCOMB_X106_Y32_N0
\debuncerKEY2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~22_combout\ = (\debuncerKEY2|s_debounceCnt\(11) & (\debuncerKEY2|Add0~21\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(11) & (!\debuncerKEY2|Add0~21\))
-- \debuncerKEY2|Add0~23\ = CARRY((!\debuncerKEY2|s_debounceCnt\(11) & !\debuncerKEY2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(11),
	datad => VCC,
	cin => \debuncerKEY2|Add0~21\,
	combout => \debuncerKEY2|Add0~22_combout\,
	cout => \debuncerKEY2|Add0~23\);

-- Location: LCCOMB_X107_Y32_N10
\debuncerKEY2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~16_combout\ = (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~22_combout\) # (!\debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_previousIn~q\,
	datac => \debuncerKEY2|Add0~22_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~16_combout\);

-- Location: FF_X107_Y32_N11
\debuncerKEY2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~16_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(11));

-- Location: LCCOMB_X106_Y32_N2
\debuncerKEY2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~24_combout\ = (\debuncerKEY2|s_debounceCnt\(12) & ((GND) # (!\debuncerKEY2|Add0~23\))) # (!\debuncerKEY2|s_debounceCnt\(12) & (\debuncerKEY2|Add0~23\ $ (GND)))
-- \debuncerKEY2|Add0~25\ = CARRY((\debuncerKEY2|s_debounceCnt\(12)) # (!\debuncerKEY2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(12),
	datad => VCC,
	cin => \debuncerKEY2|Add0~23\,
	combout => \debuncerKEY2|Add0~24_combout\,
	cout => \debuncerKEY2|Add0~25\);

-- Location: LCCOMB_X107_Y32_N20
\debuncerKEY2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~8_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~24_combout\,
	combout => \debuncerKEY2|s_debounceCnt~8_combout\);

-- Location: FF_X107_Y32_N21
\debuncerKEY2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~8_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(12));

-- Location: LCCOMB_X106_Y32_N4
\debuncerKEY2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~26_combout\ = (\debuncerKEY2|s_debounceCnt\(13) & (\debuncerKEY2|Add0~25\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(13) & (!\debuncerKEY2|Add0~25\))
-- \debuncerKEY2|Add0~27\ = CARRY((!\debuncerKEY2|s_debounceCnt\(13) & !\debuncerKEY2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(13),
	datad => VCC,
	cin => \debuncerKEY2|Add0~25\,
	combout => \debuncerKEY2|Add0~26_combout\,
	cout => \debuncerKEY2|Add0~27\);

-- Location: LCCOMB_X107_Y32_N22
\debuncerKEY2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~9_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~26_combout\,
	combout => \debuncerKEY2|s_debounceCnt~9_combout\);

-- Location: FF_X107_Y32_N23
\debuncerKEY2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~9_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(13));

-- Location: LCCOMB_X106_Y32_N6
\debuncerKEY2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~28_combout\ = (\debuncerKEY2|s_debounceCnt\(14) & ((GND) # (!\debuncerKEY2|Add0~27\))) # (!\debuncerKEY2|s_debounceCnt\(14) & (\debuncerKEY2|Add0~27\ $ (GND)))
-- \debuncerKEY2|Add0~29\ = CARRY((\debuncerKEY2|s_debounceCnt\(14)) # (!\debuncerKEY2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(14),
	datad => VCC,
	cin => \debuncerKEY2|Add0~27\,
	combout => \debuncerKEY2|Add0~28_combout\,
	cout => \debuncerKEY2|Add0~29\);

-- Location: LCCOMB_X107_Y32_N0
\debuncerKEY2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~17_combout\ = (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~28_combout\) # (!\debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_previousIn~q\,
	datac => \debuncerKEY2|Add0~28_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt~17_combout\);

-- Location: FF_X107_Y32_N1
\debuncerKEY2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~17_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(14));

-- Location: LCCOMB_X106_Y32_N8
\debuncerKEY2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~30_combout\ = (\debuncerKEY2|s_debounceCnt\(15) & (\debuncerKEY2|Add0~29\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(15) & (!\debuncerKEY2|Add0~29\))
-- \debuncerKEY2|Add0~31\ = CARRY((!\debuncerKEY2|s_debounceCnt\(15) & !\debuncerKEY2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(15),
	datad => VCC,
	cin => \debuncerKEY2|Add0~29\,
	combout => \debuncerKEY2|Add0~30_combout\,
	cout => \debuncerKEY2|Add0~31\);

-- Location: LCCOMB_X106_Y32_N24
\debuncerKEY2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~5_combout\ = (\debuncerKEY2|Add0~30_combout\ & \debuncerKEY2|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|Add0~30_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt~5_combout\);

-- Location: FF_X106_Y32_N25
\debuncerKEY2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~5_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(15));

-- Location: LCCOMB_X106_Y32_N10
\debuncerKEY2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~32_combout\ = (\debuncerKEY2|s_debounceCnt\(16) & ((GND) # (!\debuncerKEY2|Add0~31\))) # (!\debuncerKEY2|s_debounceCnt\(16) & (\debuncerKEY2|Add0~31\ $ (GND)))
-- \debuncerKEY2|Add0~33\ = CARRY((\debuncerKEY2|s_debounceCnt\(16)) # (!\debuncerKEY2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(16),
	datad => VCC,
	cin => \debuncerKEY2|Add0~31\,
	combout => \debuncerKEY2|Add0~32_combout\,
	cout => \debuncerKEY2|Add0~33\);

-- Location: LCCOMB_X105_Y32_N12
\debuncerKEY2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~6_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datac => \debuncerKEY2|Add0~32_combout\,
	combout => \debuncerKEY2|s_debounceCnt~6_combout\);

-- Location: FF_X105_Y32_N13
\debuncerKEY2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~6_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(16));

-- Location: LCCOMB_X106_Y32_N12
\debuncerKEY2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~34_combout\ = (\debuncerKEY2|s_debounceCnt\(17) & (\debuncerKEY2|Add0~33\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(17) & (!\debuncerKEY2|Add0~33\))
-- \debuncerKEY2|Add0~35\ = CARRY((!\debuncerKEY2|s_debounceCnt\(17) & !\debuncerKEY2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(17),
	datad => VCC,
	cin => \debuncerKEY2|Add0~33\,
	combout => \debuncerKEY2|Add0~34_combout\,
	cout => \debuncerKEY2|Add0~35\);

-- Location: LCCOMB_X106_Y32_N26
\debuncerKEY2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~7_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~34_combout\,
	combout => \debuncerKEY2|s_debounceCnt~7_combout\);

-- Location: FF_X106_Y32_N27
\debuncerKEY2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~7_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(17));

-- Location: LCCOMB_X107_Y32_N30
\debuncerKEY2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~0_combout\ = (!\debuncerKEY2|s_debounceCnt\(17) & (!\debuncerKEY2|s_debounceCnt\(6) & (!\debuncerKEY2|s_debounceCnt\(16) & !\debuncerKEY2|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(17),
	datab => \debuncerKEY2|s_debounceCnt\(6),
	datac => \debuncerKEY2|s_debounceCnt\(16),
	datad => \debuncerKEY2|s_debounceCnt\(15),
	combout => \debuncerKEY2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X106_Y32_N14
\debuncerKEY2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~36_combout\ = (\debuncerKEY2|s_debounceCnt\(18) & ((GND) # (!\debuncerKEY2|Add0~35\))) # (!\debuncerKEY2|s_debounceCnt\(18) & (\debuncerKEY2|Add0~35\ $ (GND)))
-- \debuncerKEY2|Add0~37\ = CARRY((\debuncerKEY2|s_debounceCnt\(18)) # (!\debuncerKEY2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(18),
	datad => VCC,
	cin => \debuncerKEY2|Add0~35\,
	combout => \debuncerKEY2|Add0~36_combout\,
	cout => \debuncerKEY2|Add0~37\);

-- Location: LCCOMB_X105_Y32_N28
\debuncerKEY2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[18]~18_combout\ = (\debuncerKEY2|s_debounceCnt[16]~3_combout\ & (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~36_combout\) # (!\debuncerKEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_previousIn~q\,
	datab => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	datac => \debuncerKEY2|Add0~36_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X105_Y32_N29
\debuncerKEY2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(18));

-- Location: LCCOMB_X106_Y32_N16
\debuncerKEY2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~38_combout\ = (\debuncerKEY2|s_debounceCnt\(19) & (\debuncerKEY2|Add0~37\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(19) & (!\debuncerKEY2|Add0~37\))
-- \debuncerKEY2|Add0~39\ = CARRY((!\debuncerKEY2|s_debounceCnt\(19) & !\debuncerKEY2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(19),
	datad => VCC,
	cin => \debuncerKEY2|Add0~37\,
	combout => \debuncerKEY2|Add0~38_combout\,
	cout => \debuncerKEY2|Add0~39\);

-- Location: LCCOMB_X107_Y32_N26
\debuncerKEY2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[19]~19_combout\ = (\debuncerKEY2|s_debounceCnt[16]~3_combout\ & (\debuncerKEY2|s_debounceCnt[16]~0_combout\ & ((\debuncerKEY2|Add0~38_combout\) # (!\debuncerKEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	datab => \debuncerKEY2|s_previousIn~q\,
	datac => \debuncerKEY2|Add0~38_combout\,
	datad => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	combout => \debuncerKEY2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X107_Y32_N27
\debuncerKEY2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y32_N18
\debuncerKEY2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~40_combout\ = (\debuncerKEY2|s_debounceCnt\(20) & ((GND) # (!\debuncerKEY2|Add0~39\))) # (!\debuncerKEY2|s_debounceCnt\(20) & (\debuncerKEY2|Add0~39\ $ (GND)))
-- \debuncerKEY2|Add0~41\ = CARRY((\debuncerKEY2|s_debounceCnt\(20)) # (!\debuncerKEY2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(20),
	datad => VCC,
	cin => \debuncerKEY2|Add0~39\,
	combout => \debuncerKEY2|Add0~40_combout\,
	cout => \debuncerKEY2|Add0~41\);

-- Location: LCCOMB_X106_Y32_N28
\debuncerKEY2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[20]~10_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & (\debuncerKEY2|s_debounceCnt[16]~3_combout\ & \debuncerKEY2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datac => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	datad => \debuncerKEY2|Add0~40_combout\,
	combout => \debuncerKEY2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X106_Y32_N29
\debuncerKEY2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(20));

-- Location: LCCOMB_X107_Y32_N28
\debuncerKEY2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~1_combout\ = (!\debuncerKEY2|s_debounceCnt\(12) & (!\debuncerKEY2|s_debounceCnt\(21) & (!\debuncerKEY2|s_debounceCnt\(13) & !\debuncerKEY2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(12),
	datab => \debuncerKEY2|s_debounceCnt\(21),
	datac => \debuncerKEY2|s_debounceCnt\(13),
	datad => \debuncerKEY2|s_debounceCnt\(20),
	combout => \debuncerKEY2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y32_N4
\debuncerKEY2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~3_combout\ = (!\debuncerKEY2|s_debounceCnt\(19) & (!\debuncerKEY2|s_debounceCnt\(14) & (!\debuncerKEY2|s_debounceCnt\(18) & !\debuncerKEY2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(19),
	datab => \debuncerKEY2|s_debounceCnt\(14),
	datac => \debuncerKEY2|s_debounceCnt\(18),
	datad => \debuncerKEY2|s_debounceCnt\(11),
	combout => \debuncerKEY2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X107_Y32_N12
\debuncerKEY2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~2_combout\ = (!\debuncerKEY2|s_debounceCnt\(9) & (!\debuncerKEY2|s_debounceCnt\(7) & (!\debuncerKEY2|s_debounceCnt\(8) & !\debuncerKEY2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(9),
	datab => \debuncerKEY2|s_debounceCnt\(7),
	datac => \debuncerKEY2|s_debounceCnt\(8),
	datad => \debuncerKEY2|s_debounceCnt\(10),
	combout => \debuncerKEY2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X107_Y32_N14
\debuncerKEY2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~4_combout\ = (\debuncerKEY2|s_pulsedOut~0_combout\ & (\debuncerKEY2|s_pulsedOut~1_combout\ & (\debuncerKEY2|s_pulsedOut~3_combout\ & \debuncerKEY2|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_pulsedOut~0_combout\,
	datab => \debuncerKEY2|s_pulsedOut~1_combout\,
	datac => \debuncerKEY2|s_pulsedOut~3_combout\,
	datad => \debuncerKEY2|s_pulsedOut~2_combout\,
	combout => \debuncerKEY2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y32_N24
\debuncerKEY2|s_debounceCnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[16]~2_combout\ = (\debuncerKEY2|s_debounceCnt\(5)) # ((\debuncerKEY2|s_debounceCnt\(0)) # ((!\debuncerKEY2|s_pulsedOut~4_combout\) # (!\debuncerKEY2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(5),
	datab => \debuncerKEY2|s_debounceCnt\(0),
	datac => \debuncerKEY2|s_pulsedOut~5_combout\,
	datad => \debuncerKEY2|s_pulsedOut~4_combout\,
	combout => \debuncerKEY2|s_debounceCnt[16]~2_combout\);

-- Location: LCCOMB_X107_Y32_N6
\debuncerKEY2|s_debounceCnt[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[16]~3_combout\ = (((\debuncerKEY2|s_debounceCnt\(22)) # (\debuncerKEY2|s_debounceCnt[16]~2_combout\)) # (!\debuncerKEY2|s_dirtyIn~q\)) # (!\debuncerKEY2|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_previousIn~q\,
	datab => \debuncerKEY2|s_dirtyIn~q\,
	datac => \debuncerKEY2|s_debounceCnt\(22),
	datad => \debuncerKEY2|s_debounceCnt[16]~2_combout\,
	combout => \debuncerKEY2|s_debounceCnt[16]~3_combout\);

-- Location: LCCOMB_X106_Y32_N20
\debuncerKEY2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~42_combout\ = (\debuncerKEY2|s_debounceCnt\(21) & (\debuncerKEY2|Add0~41\ & VCC)) # (!\debuncerKEY2|s_debounceCnt\(21) & (!\debuncerKEY2|Add0~41\))
-- \debuncerKEY2|Add0~43\ = CARRY((!\debuncerKEY2|s_debounceCnt\(21) & !\debuncerKEY2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(21),
	datad => VCC,
	cin => \debuncerKEY2|Add0~41\,
	combout => \debuncerKEY2|Add0~42_combout\,
	cout => \debuncerKEY2|Add0~43\);

-- Location: LCCOMB_X106_Y32_N30
\debuncerKEY2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[21]~11_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & (\debuncerKEY2|s_debounceCnt[16]~3_combout\ & \debuncerKEY2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datac => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	datad => \debuncerKEY2|Add0~42_combout\,
	combout => \debuncerKEY2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X106_Y32_N31
\debuncerKEY2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(21));

-- Location: LCCOMB_X105_Y32_N10
\debuncerKEY2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~4_combout\ = (\debuncerKEY2|s_debounceCnt\(13)) # ((\debuncerKEY2|s_debounceCnt\(12)) # ((\debuncerKEY2|s_debounceCnt\(10) & \debuncerKEY2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(10),
	datab => \debuncerKEY2|s_debounceCnt\(11),
	datac => \debuncerKEY2|s_debounceCnt\(13),
	datad => \debuncerKEY2|s_debounceCnt\(12),
	combout => \debuncerKEY2|LessThan0~4_combout\);

-- Location: LCCOMB_X105_Y32_N16
\debuncerKEY2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~5_combout\ = (\debuncerKEY2|s_debounceCnt\(16)) # ((\debuncerKEY2|s_debounceCnt\(15)) # ((\debuncerKEY2|s_debounceCnt\(14) & \debuncerKEY2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(16),
	datab => \debuncerKEY2|s_debounceCnt\(15),
	datac => \debuncerKEY2|s_debounceCnt\(14),
	datad => \debuncerKEY2|LessThan0~4_combout\,
	combout => \debuncerKEY2|LessThan0~5_combout\);

-- Location: LCCOMB_X105_Y32_N26
\debuncerKEY2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~6_combout\ = (\debuncerKEY2|s_debounceCnt\(18) & (\debuncerKEY2|s_debounceCnt\(19) & ((\debuncerKEY2|s_debounceCnt\(17)) # (\debuncerKEY2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(17),
	datab => \debuncerKEY2|s_debounceCnt\(18),
	datac => \debuncerKEY2|s_debounceCnt\(19),
	datad => \debuncerKEY2|LessThan0~5_combout\,
	combout => \debuncerKEY2|LessThan0~6_combout\);

-- Location: LCCOMB_X105_Y32_N30
\debuncerKEY2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~0_combout\ = (\debuncerKEY2|s_debounceCnt\(19) & (\debuncerKEY2|s_debounceCnt\(18) & (\debuncerKEY2|s_debounceCnt\(14) & \debuncerKEY2|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(19),
	datab => \debuncerKEY2|s_debounceCnt\(18),
	datac => \debuncerKEY2|s_debounceCnt\(14),
	datad => \debuncerKEY2|s_debounceCnt\(8),
	combout => \debuncerKEY2|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y32_N4
\debuncerKEY2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~1_combout\ = (\debuncerKEY2|s_debounceCnt\(11) & \debuncerKEY2|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt\(11),
	datad => \debuncerKEY2|s_debounceCnt\(9),
	combout => \debuncerKEY2|LessThan0~1_combout\);

-- Location: LCCOMB_X105_Y32_N2
\debuncerKEY2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~2_combout\ = (\debuncerKEY2|s_debounceCnt\(6) & ((\debuncerKEY2|s_debounceCnt\(5)) # ((\debuncerKEY2|s_debounceCnt\(0)) # (!\debuncerKEY2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(5),
	datab => \debuncerKEY2|s_debounceCnt\(0),
	datac => \debuncerKEY2|s_debounceCnt\(6),
	datad => \debuncerKEY2|s_pulsedOut~5_combout\,
	combout => \debuncerKEY2|LessThan0~2_combout\);

-- Location: LCCOMB_X105_Y32_N20
\debuncerKEY2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~3_combout\ = (\debuncerKEY2|LessThan0~0_combout\ & (\debuncerKEY2|LessThan0~1_combout\ & ((\debuncerKEY2|s_debounceCnt\(7)) # (\debuncerKEY2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|LessThan0~0_combout\,
	datab => \debuncerKEY2|LessThan0~1_combout\,
	datac => \debuncerKEY2|s_debounceCnt\(7),
	datad => \debuncerKEY2|LessThan0~2_combout\,
	combout => \debuncerKEY2|LessThan0~3_combout\);

-- Location: LCCOMB_X105_Y32_N24
\debuncerKEY2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|LessThan0~7_combout\ = (\debuncerKEY2|s_debounceCnt\(21)) # ((\debuncerKEY2|s_debounceCnt\(20)) # ((\debuncerKEY2|LessThan0~6_combout\) # (\debuncerKEY2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(21),
	datab => \debuncerKEY2|s_debounceCnt\(20),
	datac => \debuncerKEY2|LessThan0~6_combout\,
	datad => \debuncerKEY2|LessThan0~3_combout\,
	combout => \debuncerKEY2|LessThan0~7_combout\);

-- Location: LCCOMB_X108_Y32_N28
\debuncerKEY2|s_debounceCnt[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[16]~0_combout\ = (\debuncerKEY2|s_dirtyIn~q\ & ((!\debuncerKEY2|LessThan0~7_combout\) # (!\debuncerKEY2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY2|s_debounceCnt\(22),
	datac => \debuncerKEY2|s_dirtyIn~q\,
	datad => \debuncerKEY2|LessThan0~7_combout\,
	combout => \debuncerKEY2|s_debounceCnt[16]~0_combout\);

-- Location: LCCOMB_X108_Y32_N30
\debuncerKEY2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[22]~25_combout\ = (\debuncerKEY2|s_dirtyIn~q\ & ((\debuncerKEY2|s_debounceCnt\(22) & ((!\debuncerKEY2|LessThan0~7_combout\))) # (!\debuncerKEY2|s_debounceCnt\(22) & (\debuncerKEY2|s_debounceCnt[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(22),
	datab => \debuncerKEY2|s_debounceCnt[16]~2_combout\,
	datac => \debuncerKEY2|s_dirtyIn~q\,
	datad => \debuncerKEY2|LessThan0~7_combout\,
	combout => \debuncerKEY2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X106_Y32_N22
\debuncerKEY2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|Add0~44_combout\ = \debuncerKEY2|Add0~43\ $ (\debuncerKEY2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debuncerKEY2|s_debounceCnt\(22),
	cin => \debuncerKEY2|Add0~43\,
	combout => \debuncerKEY2|Add0~44_combout\);

-- Location: LCCOMB_X108_Y32_N0
\debuncerKEY2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[22]~26_combout\ = (\debuncerKEY2|s_previousIn~q\ & (((\debuncerKEY2|s_debounceCnt[22]~25_combout\ & \debuncerKEY2|Add0~44_combout\)))) # (!\debuncerKEY2|s_previousIn~q\ & (\debuncerKEY2|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_previousIn~q\,
	datab => \debuncerKEY2|s_debounceCnt[16]~0_combout\,
	datac => \debuncerKEY2|s_debounceCnt[22]~25_combout\,
	datad => \debuncerKEY2|Add0~44_combout\,
	combout => \debuncerKEY2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X108_Y32_N1
\debuncerKEY2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(22));

-- Location: LCCOMB_X105_Y32_N14
\debuncerKEY2|s_debounceCnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt[16]~4_combout\ = (\debuncerKEY2|s_previousIn~q\ & (\debuncerKEY2|s_dirtyIn~q\ & ((!\debuncerKEY2|LessThan0~7_combout\) # (!\debuncerKEY2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_previousIn~q\,
	datab => \debuncerKEY2|s_dirtyIn~q\,
	datac => \debuncerKEY2|s_debounceCnt\(22),
	datad => \debuncerKEY2|LessThan0~7_combout\,
	combout => \debuncerKEY2|s_debounceCnt[16]~4_combout\);

-- Location: LCCOMB_X105_Y32_N0
\debuncerKEY2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_debounceCnt~27_combout\ = (\debuncerKEY2|s_debounceCnt[16]~4_combout\ & \debuncerKEY2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY2|s_debounceCnt[16]~4_combout\,
	datad => \debuncerKEY2|Add0~10_combout\,
	combout => \debuncerKEY2|s_debounceCnt~27_combout\);

-- Location: FF_X105_Y32_N1
\debuncerKEY2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_debounceCnt~27_combout\,
	ena => \debuncerKEY2|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_debounceCnt\(5));

-- Location: LCCOMB_X108_Y32_N18
\debuncerKEY2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~6_combout\ = (\debuncerKEY2|s_dirtyIn~q\ & (!\debuncerKEY2|s_debounceCnt\(22) & (\debuncerKEY2|s_debounceCnt\(0) & \debuncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_dirtyIn~q\,
	datab => \debuncerKEY2|s_debounceCnt\(22),
	datac => \debuncerKEY2|s_debounceCnt\(0),
	datad => \debuncerKEY2|s_previousIn~q\,
	combout => \debuncerKEY2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X108_Y27_N10
\debuncerKEY2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY2|s_pulsedOut~7_combout\ = (!\debuncerKEY2|s_debounceCnt\(5) & (\debuncerKEY2|s_pulsedOut~5_combout\ & (\debuncerKEY2|s_pulsedOut~4_combout\ & \debuncerKEY2|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_debounceCnt\(5),
	datab => \debuncerKEY2|s_pulsedOut~5_combout\,
	datac => \debuncerKEY2|s_pulsedOut~4_combout\,
	datad => \debuncerKEY2|s_pulsedOut~6_combout\,
	combout => \debuncerKEY2|s_pulsedOut~7_combout\);

-- Location: FF_X108_Y27_N11
\debuncerKEY2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY2|s_pulsedOut~q\);

-- Location: LCCOMB_X100_Y27_N10
\debuncerKEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~0_combout\ = \debuncerKEY1|s_debounceCnt\(0) $ (VCC)
-- \debuncerKEY1|Add0~1\ = CARRY(\debuncerKEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debuncerKEY1|Add0~0_combout\,
	cout => \debuncerKEY1|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X99_Y27_N8
\debuncerKEY1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \debuncerKEY1|s_dirtyIn~0_combout\);

-- Location: FF_X99_Y27_N9
\debuncerKEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_dirtyIn~q\);

-- Location: LCCOMB_X100_Y27_N14
\debuncerKEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~4_combout\ = (\debuncerKEY1|s_debounceCnt\(2) & ((GND) # (!\debuncerKEY1|Add0~3\))) # (!\debuncerKEY1|s_debounceCnt\(2) & (\debuncerKEY1|Add0~3\ $ (GND)))
-- \debuncerKEY1|Add0~5\ = CARRY((\debuncerKEY1|s_debounceCnt\(2)) # (!\debuncerKEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debuncerKEY1|Add0~3\,
	combout => \debuncerKEY1|Add0~4_combout\,
	cout => \debuncerKEY1|Add0~5\);

-- Location: LCCOMB_X100_Y27_N16
\debuncerKEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~6_combout\ = (\debuncerKEY1|s_debounceCnt\(3) & (\debuncerKEY1|Add0~5\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(3) & (!\debuncerKEY1|Add0~5\))
-- \debuncerKEY1|Add0~7\ = CARRY((!\debuncerKEY1|s_debounceCnt\(3) & !\debuncerKEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debuncerKEY1|Add0~5\,
	combout => \debuncerKEY1|Add0~6_combout\,
	cout => \debuncerKEY1|Add0~7\);

-- Location: LCCOMB_X100_Y27_N8
\debuncerKEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~22_combout\ = (\debuncerKEY1|Add0~6_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~6_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~22_combout\);

-- Location: FF_X100_Y27_N23
\debuncerKEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debuncerKEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_previousIn~q\);

-- Location: LCCOMB_X99_Y27_N14
\debuncerKEY1|s_debounceCnt[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[11]~3_combout\ = (((\debuncerKEY1|s_debounceCnt\(22)) # (\debuncerKEY1|s_debounceCnt[11]~2_combout\)) # (!\debuncerKEY1|s_dirtyIn~q\)) # (!\debuncerKEY1|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_previousIn~q\,
	datab => \debuncerKEY1|s_dirtyIn~q\,
	datac => \debuncerKEY1|s_debounceCnt\(22),
	datad => \debuncerKEY1|s_debounceCnt[11]~2_combout\,
	combout => \debuncerKEY1|s_debounceCnt[11]~3_combout\);

-- Location: FF_X100_Y27_N9
\debuncerKEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~22_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X100_Y27_N18
\debuncerKEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~8_combout\ = (\debuncerKEY1|s_debounceCnt\(4) & ((GND) # (!\debuncerKEY1|Add0~7\))) # (!\debuncerKEY1|s_debounceCnt\(4) & (\debuncerKEY1|Add0~7\ $ (GND)))
-- \debuncerKEY1|Add0~9\ = CARRY((\debuncerKEY1|s_debounceCnt\(4)) # (!\debuncerKEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debuncerKEY1|Add0~7\,
	combout => \debuncerKEY1|Add0~8_combout\,
	cout => \debuncerKEY1|Add0~9\);

-- Location: LCCOMB_X100_Y27_N2
\debuncerKEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~23_combout\ = (\debuncerKEY1|Add0~8_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~8_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~23_combout\);

-- Location: FF_X100_Y27_N3
\debuncerKEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~23_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X100_Y27_N20
\debuncerKEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~10_combout\ = (\debuncerKEY1|s_debounceCnt\(5) & (\debuncerKEY1|Add0~9\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(5) & (!\debuncerKEY1|Add0~9\))
-- \debuncerKEY1|Add0~11\ = CARRY((!\debuncerKEY1|s_debounceCnt\(5) & !\debuncerKEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debuncerKEY1|Add0~9\,
	combout => \debuncerKEY1|Add0~10_combout\,
	cout => \debuncerKEY1|Add0~11\);

-- Location: LCCOMB_X99_Y27_N6
\debuncerKEY1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~27_combout\ = (\debuncerKEY1|Add0~10_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|Add0~10_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~27_combout\);

-- Location: FF_X99_Y27_N7
\debuncerKEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~27_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X100_Y27_N22
\debuncerKEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~12_combout\ = (\debuncerKEY1|s_debounceCnt\(6) & ((GND) # (!\debuncerKEY1|Add0~11\))) # (!\debuncerKEY1|s_debounceCnt\(6) & (\debuncerKEY1|Add0~11\ $ (GND)))
-- \debuncerKEY1|Add0~13\ = CARRY((\debuncerKEY1|s_debounceCnt\(6)) # (!\debuncerKEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debuncerKEY1|Add0~11\,
	combout => \debuncerKEY1|Add0~12_combout\,
	cout => \debuncerKEY1|Add0~13\);

-- Location: LCCOMB_X100_Y26_N4
\debuncerKEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~26_combout\ = (\debuncerKEY1|s_debounceCnt\(13) & (\debuncerKEY1|Add0~25\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(13) & (!\debuncerKEY1|Add0~25\))
-- \debuncerKEY1|Add0~27\ = CARRY((!\debuncerKEY1|s_debounceCnt\(13) & !\debuncerKEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debuncerKEY1|Add0~25\,
	combout => \debuncerKEY1|Add0~26_combout\,
	cout => \debuncerKEY1|Add0~27\);

-- Location: LCCOMB_X100_Y26_N6
\debuncerKEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~28_combout\ = (\debuncerKEY1|s_debounceCnt\(14) & ((GND) # (!\debuncerKEY1|Add0~27\))) # (!\debuncerKEY1|s_debounceCnt\(14) & (\debuncerKEY1|Add0~27\ $ (GND)))
-- \debuncerKEY1|Add0~29\ = CARRY((\debuncerKEY1|s_debounceCnt\(14)) # (!\debuncerKEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debuncerKEY1|Add0~27\,
	combout => \debuncerKEY1|Add0~28_combout\,
	cout => \debuncerKEY1|Add0~29\);

-- Location: LCCOMB_X99_Y27_N22
\debuncerKEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~17_combout\ = (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~28_combout\) # (!\debuncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_previousIn~q\,
	datac => \debuncerKEY1|Add0~28_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt~17_combout\);

-- Location: FF_X99_Y27_N23
\debuncerKEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~17_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X100_Y26_N8
\debuncerKEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~30_combout\ = (\debuncerKEY1|s_debounceCnt\(15) & (\debuncerKEY1|Add0~29\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(15) & (!\debuncerKEY1|Add0~29\))
-- \debuncerKEY1|Add0~31\ = CARRY((!\debuncerKEY1|s_debounceCnt\(15) & !\debuncerKEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debuncerKEY1|Add0~29\,
	combout => \debuncerKEY1|Add0~30_combout\,
	cout => \debuncerKEY1|Add0~31\);

-- Location: LCCOMB_X99_Y27_N2
\debuncerKEY1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~5_combout\ = (\debuncerKEY1|s_debounceCnt[11]~4_combout\ & \debuncerKEY1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	datad => \debuncerKEY1|Add0~30_combout\,
	combout => \debuncerKEY1|s_debounceCnt~5_combout\);

-- Location: FF_X99_Y27_N3
\debuncerKEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~5_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X100_Y26_N10
\debuncerKEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~32_combout\ = (\debuncerKEY1|s_debounceCnt\(16) & ((GND) # (!\debuncerKEY1|Add0~31\))) # (!\debuncerKEY1|s_debounceCnt\(16) & (\debuncerKEY1|Add0~31\ $ (GND)))
-- \debuncerKEY1|Add0~33\ = CARRY((\debuncerKEY1|s_debounceCnt\(16)) # (!\debuncerKEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debuncerKEY1|Add0~31\,
	combout => \debuncerKEY1|Add0~32_combout\,
	cout => \debuncerKEY1|Add0~33\);

-- Location: LCCOMB_X100_Y26_N24
\debuncerKEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~6_combout\ = (\debuncerKEY1|Add0~32_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|Add0~32_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~6_combout\);

-- Location: FF_X100_Y26_N25
\debuncerKEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~6_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X100_Y26_N12
\debuncerKEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~34_combout\ = (\debuncerKEY1|s_debounceCnt\(17) & (\debuncerKEY1|Add0~33\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(17) & (!\debuncerKEY1|Add0~33\))
-- \debuncerKEY1|Add0~35\ = CARRY((!\debuncerKEY1|s_debounceCnt\(17) & !\debuncerKEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debuncerKEY1|Add0~33\,
	combout => \debuncerKEY1|Add0~34_combout\,
	cout => \debuncerKEY1|Add0~35\);

-- Location: LCCOMB_X99_Y27_N4
\debuncerKEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~7_combout\ = (\debuncerKEY1|s_debounceCnt[11]~4_combout\ & \debuncerKEY1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	datad => \debuncerKEY1|Add0~34_combout\,
	combout => \debuncerKEY1|s_debounceCnt~7_combout\);

-- Location: FF_X99_Y27_N5
\debuncerKEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~7_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X100_Y26_N14
\debuncerKEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~36_combout\ = (\debuncerKEY1|s_debounceCnt\(18) & ((GND) # (!\debuncerKEY1|Add0~35\))) # (!\debuncerKEY1|s_debounceCnt\(18) & (\debuncerKEY1|Add0~35\ $ (GND)))
-- \debuncerKEY1|Add0~37\ = CARRY((\debuncerKEY1|s_debounceCnt\(18)) # (!\debuncerKEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debuncerKEY1|Add0~35\,
	combout => \debuncerKEY1|Add0~36_combout\,
	cout => \debuncerKEY1|Add0~37\);

-- Location: LCCOMB_X100_Y26_N28
\debuncerKEY1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[18]~18_combout\ = (\debuncerKEY1|s_debounceCnt[11]~3_combout\ & (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~36_combout\) # (!\debuncerKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	datab => \debuncerKEY1|s_previousIn~q\,
	datac => \debuncerKEY1|Add0~36_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X100_Y26_N29
\debuncerKEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X100_Y26_N16
\debuncerKEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~38_combout\ = (\debuncerKEY1|s_debounceCnt\(19) & (\debuncerKEY1|Add0~37\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(19) & (!\debuncerKEY1|Add0~37\))
-- \debuncerKEY1|Add0~39\ = CARRY((!\debuncerKEY1|s_debounceCnt\(19) & !\debuncerKEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debuncerKEY1|Add0~37\,
	combout => \debuncerKEY1|Add0~38_combout\,
	cout => \debuncerKEY1|Add0~39\);

-- Location: LCCOMB_X100_Y26_N26
\debuncerKEY1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[19]~19_combout\ = (\debuncerKEY1|s_debounceCnt[11]~3_combout\ & (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~38_combout\) # (!\debuncerKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	datab => \debuncerKEY1|Add0~38_combout\,
	datac => \debuncerKEY1|s_previousIn~q\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X100_Y26_N27
\debuncerKEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X100_Y26_N18
\debuncerKEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~40_combout\ = (\debuncerKEY1|s_debounceCnt\(20) & ((GND) # (!\debuncerKEY1|Add0~39\))) # (!\debuncerKEY1|s_debounceCnt\(20) & (\debuncerKEY1|Add0~39\ $ (GND)))
-- \debuncerKEY1|Add0~41\ = CARRY((\debuncerKEY1|s_debounceCnt\(20)) # (!\debuncerKEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debuncerKEY1|Add0~39\,
	combout => \debuncerKEY1|Add0~40_combout\,
	cout => \debuncerKEY1|Add0~41\);

-- Location: LCCOMB_X100_Y26_N30
\debuncerKEY1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[20]~10_combout\ = (\debuncerKEY1|Add0~40_combout\ & (\debuncerKEY1|s_debounceCnt[11]~3_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~40_combout\,
	datac => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X100_Y26_N31
\debuncerKEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X100_Y26_N20
\debuncerKEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~42_combout\ = (\debuncerKEY1|s_debounceCnt\(21) & (\debuncerKEY1|Add0~41\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(21) & (!\debuncerKEY1|Add0~41\))
-- \debuncerKEY1|Add0~43\ = CARRY((!\debuncerKEY1|s_debounceCnt\(21) & !\debuncerKEY1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debuncerKEY1|Add0~41\,
	combout => \debuncerKEY1|Add0~42_combout\,
	cout => \debuncerKEY1|Add0~43\);

-- Location: LCCOMB_X99_Y27_N12
\debuncerKEY1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[21]~11_combout\ = (\debuncerKEY1|s_debounceCnt[11]~3_combout\ & (\debuncerKEY1|s_debounceCnt[11]~4_combout\ & \debuncerKEY1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	datac => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	datad => \debuncerKEY1|Add0~42_combout\,
	combout => \debuncerKEY1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X99_Y27_N13
\debuncerKEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X101_Y27_N18
\debuncerKEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~4_combout\ = (\debuncerKEY1|s_debounceCnt\(13)) # ((\debuncerKEY1|s_debounceCnt\(12)) # ((\debuncerKEY1|s_debounceCnt\(10) & \debuncerKEY1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(10),
	datab => \debuncerKEY1|s_debounceCnt\(13),
	datac => \debuncerKEY1|s_debounceCnt\(11),
	datad => \debuncerKEY1|s_debounceCnt\(12),
	combout => \debuncerKEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X101_Y27_N16
\debuncerKEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~5_combout\ = (\debuncerKEY1|s_debounceCnt\(15)) # ((\debuncerKEY1|s_debounceCnt\(16)) # ((\debuncerKEY1|s_debounceCnt\(14) & \debuncerKEY1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(15),
	datab => \debuncerKEY1|s_debounceCnt\(16),
	datac => \debuncerKEY1|s_debounceCnt\(14),
	datad => \debuncerKEY1|LessThan0~4_combout\,
	combout => \debuncerKEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X101_Y27_N6
\debuncerKEY1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~6_combout\ = (\debuncerKEY1|s_debounceCnt\(19) & (\debuncerKEY1|s_debounceCnt\(18) & ((\debuncerKEY1|s_debounceCnt\(17)) # (\debuncerKEY1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(19),
	datab => \debuncerKEY1|s_debounceCnt\(18),
	datac => \debuncerKEY1|s_debounceCnt\(17),
	datad => \debuncerKEY1|LessThan0~5_combout\,
	combout => \debuncerKEY1|LessThan0~6_combout\);

-- Location: LCCOMB_X101_Y27_N12
\debuncerKEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~1_combout\ = (\debuncerKEY1|s_debounceCnt\(9) & \debuncerKEY1|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|s_debounceCnt\(9),
	datad => \debuncerKEY1|s_debounceCnt\(11),
	combout => \debuncerKEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X101_Y27_N14
\debuncerKEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~0_combout\ = (\debuncerKEY1|s_debounceCnt\(14) & (\debuncerKEY1|s_debounceCnt\(8) & (\debuncerKEY1|s_debounceCnt\(18) & \debuncerKEY1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(14),
	datab => \debuncerKEY1|s_debounceCnt\(8),
	datac => \debuncerKEY1|s_debounceCnt\(18),
	datad => \debuncerKEY1|s_debounceCnt\(19),
	combout => \debuncerKEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X101_Y27_N10
\debuncerKEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~2_combout\ = (\debuncerKEY1|s_debounceCnt\(6) & ((\debuncerKEY1|s_debounceCnt\(0)) # ((\debuncerKEY1|s_debounceCnt\(5)) # (!\debuncerKEY1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(0),
	datab => \debuncerKEY1|s_debounceCnt\(5),
	datac => \debuncerKEY1|s_pulsedOut~5_combout\,
	datad => \debuncerKEY1|s_debounceCnt\(6),
	combout => \debuncerKEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X101_Y27_N28
\debuncerKEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~3_combout\ = (\debuncerKEY1|LessThan0~1_combout\ & (\debuncerKEY1|LessThan0~0_combout\ & ((\debuncerKEY1|s_debounceCnt\(7)) # (\debuncerKEY1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|LessThan0~1_combout\,
	datab => \debuncerKEY1|s_debounceCnt\(7),
	datac => \debuncerKEY1|LessThan0~0_combout\,
	datad => \debuncerKEY1|LessThan0~2_combout\,
	combout => \debuncerKEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X102_Y27_N18
\debuncerKEY1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|LessThan0~7_combout\ = (\debuncerKEY1|s_debounceCnt\(21)) # ((\debuncerKEY1|s_debounceCnt\(20)) # ((\debuncerKEY1|LessThan0~6_combout\) # (\debuncerKEY1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(21),
	datab => \debuncerKEY1|s_debounceCnt\(20),
	datac => \debuncerKEY1|LessThan0~6_combout\,
	datad => \debuncerKEY1|LessThan0~3_combout\,
	combout => \debuncerKEY1|LessThan0~7_combout\);

-- Location: LCCOMB_X101_Y27_N24
\debuncerKEY1|s_debounceCnt[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[11]~0_combout\ = (\debuncerKEY1|s_dirtyIn~q\ & ((!\debuncerKEY1|LessThan0~7_combout\) # (!\debuncerKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_dirtyIn~q\,
	datac => \debuncerKEY1|s_debounceCnt\(22),
	datad => \debuncerKEY1|LessThan0~7_combout\,
	combout => \debuncerKEY1|s_debounceCnt[11]~0_combout\);

-- Location: LCCOMB_X99_Y27_N0
\debuncerKEY1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~1_combout\ = (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~12_combout\) # (!\debuncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~12_combout\,
	datac => \debuncerKEY1|s_previousIn~q\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt~1_combout\);

-- Location: FF_X99_Y27_N1
\debuncerKEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~1_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X100_Y27_N24
\debuncerKEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~14_combout\ = (\debuncerKEY1|s_debounceCnt\(7) & (\debuncerKEY1|Add0~13\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(7) & (!\debuncerKEY1|Add0~13\))
-- \debuncerKEY1|Add0~15\ = CARRY((!\debuncerKEY1|s_debounceCnt\(7) & !\debuncerKEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debuncerKEY1|Add0~13\,
	combout => \debuncerKEY1|Add0~14_combout\,
	cout => \debuncerKEY1|Add0~15\);

-- Location: LCCOMB_X101_Y27_N20
\debuncerKEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~12_combout\ = (\debuncerKEY1|Add0~14_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~14_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~12_combout\);

-- Location: FF_X101_Y27_N21
\debuncerKEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~12_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X100_Y27_N26
\debuncerKEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~16_combout\ = (\debuncerKEY1|s_debounceCnt\(8) & ((GND) # (!\debuncerKEY1|Add0~15\))) # (!\debuncerKEY1|s_debounceCnt\(8) & (\debuncerKEY1|Add0~15\ $ (GND)))
-- \debuncerKEY1|Add0~17\ = CARRY((\debuncerKEY1|s_debounceCnt\(8)) # (!\debuncerKEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debuncerKEY1|Add0~15\,
	combout => \debuncerKEY1|Add0~16_combout\,
	cout => \debuncerKEY1|Add0~17\);

-- Location: LCCOMB_X101_Y27_N2
\debuncerKEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~13_combout\ = (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~16_combout\) # (!\debuncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_previousIn~q\,
	datac => \debuncerKEY1|Add0~16_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt~13_combout\);

-- Location: FF_X101_Y27_N3
\debuncerKEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~13_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X100_Y27_N28
\debuncerKEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~18_combout\ = (\debuncerKEY1|s_debounceCnt\(9) & (\debuncerKEY1|Add0~17\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(9) & (!\debuncerKEY1|Add0~17\))
-- \debuncerKEY1|Add0~19\ = CARRY((!\debuncerKEY1|s_debounceCnt\(9) & !\debuncerKEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debuncerKEY1|Add0~17\,
	combout => \debuncerKEY1|Add0~18_combout\,
	cout => \debuncerKEY1|Add0~19\);

-- Location: LCCOMB_X101_Y27_N4
\debuncerKEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~14_combout\ = (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~18_combout\) # (!\debuncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_previousIn~q\,
	datac => \debuncerKEY1|Add0~18_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt~14_combout\);

-- Location: FF_X101_Y27_N5
\debuncerKEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~14_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X100_Y27_N30
\debuncerKEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~20_combout\ = (\debuncerKEY1|s_debounceCnt\(10) & ((GND) # (!\debuncerKEY1|Add0~19\))) # (!\debuncerKEY1|s_debounceCnt\(10) & (\debuncerKEY1|Add0~19\ $ (GND)))
-- \debuncerKEY1|Add0~21\ = CARRY((\debuncerKEY1|s_debounceCnt\(10)) # (!\debuncerKEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debuncerKEY1|Add0~19\,
	combout => \debuncerKEY1|Add0~20_combout\,
	cout => \debuncerKEY1|Add0~21\);

-- Location: LCCOMB_X101_Y27_N26
\debuncerKEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~15_combout\ = (\debuncerKEY1|Add0~20_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|Add0~20_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~15_combout\);

-- Location: FF_X101_Y27_N27
\debuncerKEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~15_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X100_Y26_N0
\debuncerKEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~22_combout\ = (\debuncerKEY1|s_debounceCnt\(11) & (\debuncerKEY1|Add0~21\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(11) & (!\debuncerKEY1|Add0~21\))
-- \debuncerKEY1|Add0~23\ = CARRY((!\debuncerKEY1|s_debounceCnt\(11) & !\debuncerKEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debuncerKEY1|Add0~21\,
	combout => \debuncerKEY1|Add0~22_combout\,
	cout => \debuncerKEY1|Add0~23\);

-- Location: LCCOMB_X99_Y27_N24
\debuncerKEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~16_combout\ = (\debuncerKEY1|s_debounceCnt[11]~0_combout\ & ((\debuncerKEY1|Add0~22_combout\) # (!\debuncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|Add0~22_combout\,
	datac => \debuncerKEY1|s_previousIn~q\,
	datad => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	combout => \debuncerKEY1|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y27_N25
\debuncerKEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~16_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X100_Y26_N2
\debuncerKEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~24_combout\ = (\debuncerKEY1|s_debounceCnt\(12) & ((GND) # (!\debuncerKEY1|Add0~23\))) # (!\debuncerKEY1|s_debounceCnt\(12) & (\debuncerKEY1|Add0~23\ $ (GND)))
-- \debuncerKEY1|Add0~25\ = CARRY((\debuncerKEY1|s_debounceCnt\(12)) # (!\debuncerKEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debuncerKEY1|Add0~23\,
	combout => \debuncerKEY1|Add0~24_combout\,
	cout => \debuncerKEY1|Add0~25\);

-- Location: LCCOMB_X99_Y27_N20
\debuncerKEY1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~8_combout\ = (\debuncerKEY1|Add0~24_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|Add0~24_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~8_combout\);

-- Location: FF_X99_Y27_N21
\debuncerKEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~8_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X99_Y27_N10
\debuncerKEY1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~9_combout\ = (\debuncerKEY1|Add0~26_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|Add0~26_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~9_combout\);

-- Location: FF_X99_Y27_N11
\debuncerKEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~9_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X99_Y27_N26
\debuncerKEY1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~1_combout\ = (!\debuncerKEY1|s_debounceCnt\(13) & (!\debuncerKEY1|s_debounceCnt\(12) & (!\debuncerKEY1|s_debounceCnt\(20) & !\debuncerKEY1|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(13),
	datab => \debuncerKEY1|s_debounceCnt\(12),
	datac => \debuncerKEY1|s_debounceCnt\(20),
	datad => \debuncerKEY1|s_debounceCnt\(21),
	combout => \debuncerKEY1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X101_Y27_N0
\debuncerKEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~2_combout\ = (!\debuncerKEY1|s_debounceCnt\(10) & (!\debuncerKEY1|s_debounceCnt\(8) & (!\debuncerKEY1|s_debounceCnt\(9) & !\debuncerKEY1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(10),
	datab => \debuncerKEY1|s_debounceCnt\(8),
	datac => \debuncerKEY1|s_debounceCnt\(9),
	datad => \debuncerKEY1|s_debounceCnt\(7),
	combout => \debuncerKEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X99_Y27_N30
\debuncerKEY1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~0_combout\ = (!\debuncerKEY1|s_debounceCnt\(15) & (!\debuncerKEY1|s_debounceCnt\(6) & (!\debuncerKEY1|s_debounceCnt\(17) & !\debuncerKEY1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(15),
	datab => \debuncerKEY1|s_debounceCnt\(6),
	datac => \debuncerKEY1|s_debounceCnt\(17),
	datad => \debuncerKEY1|s_debounceCnt\(16),
	combout => \debuncerKEY1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X99_Y27_N16
\debuncerKEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~3_combout\ = (!\debuncerKEY1|s_debounceCnt\(14) & (!\debuncerKEY1|s_debounceCnt\(11) & (!\debuncerKEY1|s_debounceCnt\(19) & !\debuncerKEY1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(14),
	datab => \debuncerKEY1|s_debounceCnt\(11),
	datac => \debuncerKEY1|s_debounceCnt\(19),
	datad => \debuncerKEY1|s_debounceCnt\(18),
	combout => \debuncerKEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X99_Y27_N18
\debuncerKEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~4_combout\ = (\debuncerKEY1|s_pulsedOut~1_combout\ & (\debuncerKEY1|s_pulsedOut~2_combout\ & (\debuncerKEY1|s_pulsedOut~0_combout\ & \debuncerKEY1|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~1_combout\,
	datab => \debuncerKEY1|s_pulsedOut~2_combout\,
	datac => \debuncerKEY1|s_pulsedOut~0_combout\,
	datad => \debuncerKEY1|s_pulsedOut~3_combout\,
	combout => \debuncerKEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X99_Y27_N28
\debuncerKEY1|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[11]~2_combout\ = (\debuncerKEY1|s_debounceCnt\(5)) # ((\debuncerKEY1|s_debounceCnt\(0)) # ((!\debuncerKEY1|s_pulsedOut~4_combout\) # (!\debuncerKEY1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(5),
	datab => \debuncerKEY1|s_debounceCnt\(0),
	datac => \debuncerKEY1|s_pulsedOut~5_combout\,
	datad => \debuncerKEY1|s_pulsedOut~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X101_Y27_N22
\debuncerKEY1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[22]~25_combout\ = (\debuncerKEY1|s_dirtyIn~q\ & ((\debuncerKEY1|s_debounceCnt\(22) & ((!\debuncerKEY1|LessThan0~7_combout\))) # (!\debuncerKEY1|s_debounceCnt\(22) & (\debuncerKEY1|s_debounceCnt[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_dirtyIn~q\,
	datab => \debuncerKEY1|s_debounceCnt[11]~2_combout\,
	datac => \debuncerKEY1|s_debounceCnt\(22),
	datad => \debuncerKEY1|LessThan0~7_combout\,
	combout => \debuncerKEY1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X100_Y26_N22
\debuncerKEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~44_combout\ = \debuncerKEY1|Add0~43\ $ (\debuncerKEY1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debuncerKEY1|s_debounceCnt\(22),
	cin => \debuncerKEY1|Add0~43\,
	combout => \debuncerKEY1|Add0~44_combout\);

-- Location: LCCOMB_X101_Y27_N8
\debuncerKEY1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[22]~26_combout\ = (\debuncerKEY1|s_previousIn~q\ & (\debuncerKEY1|s_debounceCnt[22]~25_combout\ & ((\debuncerKEY1|Add0~44_combout\)))) # (!\debuncerKEY1|s_previousIn~q\ & (((\debuncerKEY1|s_debounceCnt[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt[22]~25_combout\,
	datab => \debuncerKEY1|s_previousIn~q\,
	datac => \debuncerKEY1|s_debounceCnt[11]~0_combout\,
	datad => \debuncerKEY1|Add0~44_combout\,
	combout => \debuncerKEY1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X101_Y27_N9
\debuncerKEY1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(22));

-- Location: LCCOMB_X102_Y27_N28
\debuncerKEY1|s_debounceCnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt[11]~4_combout\ = (\debuncerKEY1|s_dirtyIn~q\ & (\debuncerKEY1|s_previousIn~q\ & ((!\debuncerKEY1|LessThan0~7_combout\) # (!\debuncerKEY1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(22),
	datab => \debuncerKEY1|s_dirtyIn~q\,
	datac => \debuncerKEY1|s_previousIn~q\,
	datad => \debuncerKEY1|LessThan0~7_combout\,
	combout => \debuncerKEY1|s_debounceCnt[11]~4_combout\);

-- Location: LCCOMB_X101_Y27_N30
\debuncerKEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~24_combout\ = (\debuncerKEY1|Add0~0_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|Add0~0_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~24_combout\);

-- Location: FF_X101_Y27_N31
\debuncerKEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~24_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X100_Y27_N12
\debuncerKEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|Add0~2_combout\ = (\debuncerKEY1|s_debounceCnt\(1) & (\debuncerKEY1|Add0~1\ & VCC)) # (!\debuncerKEY1|s_debounceCnt\(1) & (!\debuncerKEY1|Add0~1\))
-- \debuncerKEY1|Add0~3\ = CARRY((!\debuncerKEY1|s_debounceCnt\(1) & !\debuncerKEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debuncerKEY1|Add0~1\,
	combout => \debuncerKEY1|Add0~2_combout\,
	cout => \debuncerKEY1|Add0~3\);

-- Location: LCCOMB_X100_Y27_N4
\debuncerKEY1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~20_combout\ = (\debuncerKEY1|Add0~2_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|Add0~2_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~20_combout\);

-- Location: FF_X100_Y27_N5
\debuncerKEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~20_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X100_Y27_N6
\debuncerKEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_debounceCnt~21_combout\ = (\debuncerKEY1|Add0~4_combout\ & \debuncerKEY1|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|Add0~4_combout\,
	datad => \debuncerKEY1|s_debounceCnt[11]~4_combout\,
	combout => \debuncerKEY1|s_debounceCnt~21_combout\);

-- Location: FF_X100_Y27_N7
\debuncerKEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_debounceCnt~21_combout\,
	ena => \debuncerKEY1|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X100_Y27_N0
\debuncerKEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~5_combout\ = (!\debuncerKEY1|s_debounceCnt\(2) & (!\debuncerKEY1|s_debounceCnt\(3) & (!\debuncerKEY1|s_debounceCnt\(1) & !\debuncerKEY1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(2),
	datab => \debuncerKEY1|s_debounceCnt\(3),
	datac => \debuncerKEY1|s_debounceCnt\(1),
	datad => \debuncerKEY1|s_debounceCnt\(4),
	combout => \debuncerKEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X102_Y27_N16
\debuncerKEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~6_combout\ = (!\debuncerKEY1|s_debounceCnt\(22) & (\debuncerKEY1|s_debounceCnt\(0) & (\debuncerKEY1|s_previousIn~q\ & \debuncerKEY1|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_debounceCnt\(22),
	datab => \debuncerKEY1|s_debounceCnt\(0),
	datac => \debuncerKEY1|s_previousIn~q\,
	datad => \debuncerKEY1|s_dirtyIn~q\,
	combout => \debuncerKEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X107_Y27_N16
\debuncerKEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY1|s_pulsedOut~7_combout\ = (\debuncerKEY1|s_pulsedOut~5_combout\ & (!\debuncerKEY1|s_debounceCnt\(5) & (\debuncerKEY1|s_pulsedOut~4_combout\ & \debuncerKEY1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~5_combout\,
	datab => \debuncerKEY1|s_debounceCnt\(5),
	datac => \debuncerKEY1|s_pulsedOut~4_combout\,
	datad => \debuncerKEY1|s_pulsedOut~6_combout\,
	combout => \debuncerKEY1|s_pulsedOut~7_combout\);

-- Location: FF_X107_Y27_N17
\debuncerKEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY1|s_pulsedOut~q\);

-- Location: LCCOMB_X107_Y24_N10
\debuncerKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~0_combout\ = \debuncerKEY0|s_debounceCnt\(0) $ (VCC)
-- \debuncerKEY0|Add0~1\ = CARRY(\debuncerKEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debuncerKEY0|Add0~0_combout\,
	cout => \debuncerKEY0|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X108_Y24_N20
\debuncerKEY0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debuncerKEY0|s_dirtyIn~0_combout\);

-- Location: FF_X108_Y24_N21
\debuncerKEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_dirtyIn~q\);

-- Location: FF_X108_Y23_N19
\debuncerKEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debuncerKEY0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_previousIn~q\);

-- Location: LCCOMB_X107_Y24_N12
\debuncerKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~2_combout\ = (\debuncerKEY0|s_debounceCnt\(1) & (\debuncerKEY0|Add0~1\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(1) & (!\debuncerKEY0|Add0~1\))
-- \debuncerKEY0|Add0~3\ = CARRY((!\debuncerKEY0|s_debounceCnt\(1) & !\debuncerKEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debuncerKEY0|Add0~1\,
	combout => \debuncerKEY0|Add0~2_combout\,
	cout => \debuncerKEY0|Add0~3\);

-- Location: LCCOMB_X107_Y24_N8
\debuncerKEY0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~20_combout\ = (\debuncerKEY0|Add0~2_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|Add0~2_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~20_combout\);

-- Location: FF_X107_Y24_N9
\debuncerKEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~20_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X107_Y24_N14
\debuncerKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~4_combout\ = (\debuncerKEY0|s_debounceCnt\(2) & ((GND) # (!\debuncerKEY0|Add0~3\))) # (!\debuncerKEY0|s_debounceCnt\(2) & (\debuncerKEY0|Add0~3\ $ (GND)))
-- \debuncerKEY0|Add0~5\ = CARRY((\debuncerKEY0|s_debounceCnt\(2)) # (!\debuncerKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debuncerKEY0|Add0~3\,
	combout => \debuncerKEY0|Add0~4_combout\,
	cout => \debuncerKEY0|Add0~5\);

-- Location: LCCOMB_X107_Y24_N6
\debuncerKEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~21_combout\ = (\debuncerKEY0|Add0~4_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|Add0~4_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~21_combout\);

-- Location: FF_X107_Y24_N7
\debuncerKEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~21_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X107_Y24_N16
\debuncerKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~6_combout\ = (\debuncerKEY0|s_debounceCnt\(3) & (\debuncerKEY0|Add0~5\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(3) & (!\debuncerKEY0|Add0~5\))
-- \debuncerKEY0|Add0~7\ = CARRY((!\debuncerKEY0|s_debounceCnt\(3) & !\debuncerKEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debuncerKEY0|Add0~5\,
	combout => \debuncerKEY0|Add0~6_combout\,
	cout => \debuncerKEY0|Add0~7\);

-- Location: LCCOMB_X107_Y24_N0
\debuncerKEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~22_combout\ = (\debuncerKEY0|Add0~6_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|Add0~6_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~22_combout\);

-- Location: FF_X107_Y24_N1
\debuncerKEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~22_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X107_Y24_N18
\debuncerKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~8_combout\ = (\debuncerKEY0|s_debounceCnt\(4) & ((GND) # (!\debuncerKEY0|Add0~7\))) # (!\debuncerKEY0|s_debounceCnt\(4) & (\debuncerKEY0|Add0~7\ $ (GND)))
-- \debuncerKEY0|Add0~9\ = CARRY((\debuncerKEY0|s_debounceCnt\(4)) # (!\debuncerKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debuncerKEY0|Add0~7\,
	combout => \debuncerKEY0|Add0~8_combout\,
	cout => \debuncerKEY0|Add0~9\);

-- Location: LCCOMB_X106_Y23_N18
\debuncerKEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~23_combout\ = (\debuncerKEY0|s_debounceCnt[20]~4_combout\ & \debuncerKEY0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	datad => \debuncerKEY0|Add0~8_combout\,
	combout => \debuncerKEY0|s_debounceCnt~23_combout\);

-- Location: FF_X106_Y23_N19
\debuncerKEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~23_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X107_Y24_N20
\debuncerKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~10_combout\ = (\debuncerKEY0|s_debounceCnt\(5) & (\debuncerKEY0|Add0~9\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(5) & (!\debuncerKEY0|Add0~9\))
-- \debuncerKEY0|Add0~11\ = CARRY((!\debuncerKEY0|s_debounceCnt\(5) & !\debuncerKEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debuncerKEY0|Add0~9\,
	combout => \debuncerKEY0|Add0~10_combout\,
	cout => \debuncerKEY0|Add0~11\);

-- Location: LCCOMB_X108_Y23_N2
\debuncerKEY0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~27_combout\ = (\debuncerKEY0|Add0~10_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|Add0~10_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y23_N3
\debuncerKEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~27_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X107_Y24_N2
\debuncerKEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~5_combout\ = (!\debuncerKEY0|s_debounceCnt\(2) & (!\debuncerKEY0|s_debounceCnt\(3) & (!\debuncerKEY0|s_debounceCnt\(1) & !\debuncerKEY0|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(2),
	datab => \debuncerKEY0|s_debounceCnt\(3),
	datac => \debuncerKEY0|s_debounceCnt\(1),
	datad => \debuncerKEY0|s_debounceCnt\(4),
	combout => \debuncerKEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X107_Y24_N22
\debuncerKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~12_combout\ = (\debuncerKEY0|s_debounceCnt\(6) & ((GND) # (!\debuncerKEY0|Add0~11\))) # (!\debuncerKEY0|s_debounceCnt\(6) & (\debuncerKEY0|Add0~11\ $ (GND)))
-- \debuncerKEY0|Add0~13\ = CARRY((\debuncerKEY0|s_debounceCnt\(6)) # (!\debuncerKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debuncerKEY0|Add0~11\,
	combout => \debuncerKEY0|Add0~12_combout\,
	cout => \debuncerKEY0|Add0~13\);

-- Location: LCCOMB_X106_Y23_N28
\debuncerKEY0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~1_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~12_combout\) # (!\debuncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datac => \debuncerKEY0|Add0~12_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt~1_combout\);

-- Location: FF_X106_Y23_N29
\debuncerKEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~1_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X107_Y24_N24
\debuncerKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~14_combout\ = (\debuncerKEY0|s_debounceCnt\(7) & (\debuncerKEY0|Add0~13\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(7) & (!\debuncerKEY0|Add0~13\))
-- \debuncerKEY0|Add0~15\ = CARRY((!\debuncerKEY0|s_debounceCnt\(7) & !\debuncerKEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debuncerKEY0|Add0~13\,
	combout => \debuncerKEY0|Add0~14_combout\,
	cout => \debuncerKEY0|Add0~15\);

-- Location: LCCOMB_X106_Y23_N0
\debuncerKEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~12_combout\ = (\debuncerKEY0|s_debounceCnt[20]~4_combout\ & \debuncerKEY0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	datad => \debuncerKEY0|Add0~14_combout\,
	combout => \debuncerKEY0|s_debounceCnt~12_combout\);

-- Location: FF_X106_Y23_N1
\debuncerKEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~12_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X107_Y24_N26
\debuncerKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~16_combout\ = (\debuncerKEY0|s_debounceCnt\(8) & ((GND) # (!\debuncerKEY0|Add0~15\))) # (!\debuncerKEY0|s_debounceCnt\(8) & (\debuncerKEY0|Add0~15\ $ (GND)))
-- \debuncerKEY0|Add0~17\ = CARRY((\debuncerKEY0|s_debounceCnt\(8)) # (!\debuncerKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debuncerKEY0|Add0~15\,
	combout => \debuncerKEY0|Add0~16_combout\,
	cout => \debuncerKEY0|Add0~17\);

-- Location: LCCOMB_X106_Y23_N26
\debuncerKEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~13_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~16_combout\) # (!\debuncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|Add0~16_combout\,
	datac => \debuncerKEY0|s_previousIn~q\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt~13_combout\);

-- Location: FF_X106_Y23_N27
\debuncerKEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~13_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X107_Y24_N28
\debuncerKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~18_combout\ = (\debuncerKEY0|s_debounceCnt\(9) & (\debuncerKEY0|Add0~17\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(9) & (!\debuncerKEY0|Add0~17\))
-- \debuncerKEY0|Add0~19\ = CARRY((!\debuncerKEY0|s_debounceCnt\(9) & !\debuncerKEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debuncerKEY0|Add0~17\,
	combout => \debuncerKEY0|Add0~18_combout\,
	cout => \debuncerKEY0|Add0~19\);

-- Location: LCCOMB_X106_Y23_N12
\debuncerKEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~14_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~18_combout\) # (!\debuncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datac => \debuncerKEY0|Add0~18_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt~14_combout\);

-- Location: FF_X106_Y23_N13
\debuncerKEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~14_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X107_Y24_N30
\debuncerKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~20_combout\ = (\debuncerKEY0|s_debounceCnt\(10) & ((GND) # (!\debuncerKEY0|Add0~19\))) # (!\debuncerKEY0|s_debounceCnt\(10) & (\debuncerKEY0|Add0~19\ $ (GND)))
-- \debuncerKEY0|Add0~21\ = CARRY((\debuncerKEY0|s_debounceCnt\(10)) # (!\debuncerKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debuncerKEY0|Add0~19\,
	combout => \debuncerKEY0|Add0~20_combout\,
	cout => \debuncerKEY0|Add0~21\);

-- Location: LCCOMB_X106_Y23_N10
\debuncerKEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~15_combout\ = (\debuncerKEY0|Add0~20_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|Add0~20_combout\,
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~15_combout\);

-- Location: FF_X106_Y23_N11
\debuncerKEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~15_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X107_Y23_N0
\debuncerKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~22_combout\ = (\debuncerKEY0|s_debounceCnt\(11) & (\debuncerKEY0|Add0~21\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(11) & (!\debuncerKEY0|Add0~21\))
-- \debuncerKEY0|Add0~23\ = CARRY((!\debuncerKEY0|s_debounceCnt\(11) & !\debuncerKEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debuncerKEY0|Add0~21\,
	combout => \debuncerKEY0|Add0~22_combout\,
	cout => \debuncerKEY0|Add0~23\);

-- Location: LCCOMB_X108_Y23_N4
\debuncerKEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~16_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~22_combout\) # (!\debuncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datac => \debuncerKEY0|Add0~22_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt~16_combout\);

-- Location: FF_X108_Y23_N5
\debuncerKEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~16_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X107_Y23_N2
\debuncerKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~24_combout\ = (\debuncerKEY0|s_debounceCnt\(12) & ((GND) # (!\debuncerKEY0|Add0~23\))) # (!\debuncerKEY0|s_debounceCnt\(12) & (\debuncerKEY0|Add0~23\ $ (GND)))
-- \debuncerKEY0|Add0~25\ = CARRY((\debuncerKEY0|s_debounceCnt\(12)) # (!\debuncerKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debuncerKEY0|Add0~23\,
	combout => \debuncerKEY0|Add0~24_combout\,
	cout => \debuncerKEY0|Add0~25\);

-- Location: LCCOMB_X106_Y23_N16
\debuncerKEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~8_combout\ = (\debuncerKEY0|Add0~24_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|Add0~24_combout\,
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~8_combout\);

-- Location: FF_X106_Y23_N17
\debuncerKEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~8_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X107_Y23_N4
\debuncerKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~26_combout\ = (\debuncerKEY0|s_debounceCnt\(13) & (\debuncerKEY0|Add0~25\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(13) & (!\debuncerKEY0|Add0~25\))
-- \debuncerKEY0|Add0~27\ = CARRY((!\debuncerKEY0|s_debounceCnt\(13) & !\debuncerKEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debuncerKEY0|Add0~25\,
	combout => \debuncerKEY0|Add0~26_combout\,
	cout => \debuncerKEY0|Add0~27\);

-- Location: LCCOMB_X107_Y23_N26
\debuncerKEY0|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~9_combout\ = (\debuncerKEY0|Add0~26_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|Add0~26_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~9_combout\);

-- Location: FF_X107_Y23_N27
\debuncerKEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~9_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X107_Y23_N6
\debuncerKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~28_combout\ = (\debuncerKEY0|s_debounceCnt\(14) & ((GND) # (!\debuncerKEY0|Add0~27\))) # (!\debuncerKEY0|s_debounceCnt\(14) & (\debuncerKEY0|Add0~27\ $ (GND)))
-- \debuncerKEY0|Add0~29\ = CARRY((\debuncerKEY0|s_debounceCnt\(14)) # (!\debuncerKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debuncerKEY0|Add0~27\,
	combout => \debuncerKEY0|Add0~28_combout\,
	cout => \debuncerKEY0|Add0~29\);

-- Location: LCCOMB_X106_Y23_N30
\debuncerKEY0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~17_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~28_combout\) # (!\debuncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|Add0~28_combout\,
	datac => \debuncerKEY0|s_previousIn~q\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt~17_combout\);

-- Location: FF_X106_Y23_N31
\debuncerKEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~17_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X107_Y23_N8
\debuncerKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~30_combout\ = (\debuncerKEY0|s_debounceCnt\(15) & (\debuncerKEY0|Add0~29\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(15) & (!\debuncerKEY0|Add0~29\))
-- \debuncerKEY0|Add0~31\ = CARRY((!\debuncerKEY0|s_debounceCnt\(15) & !\debuncerKEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debuncerKEY0|Add0~29\,
	combout => \debuncerKEY0|Add0~30_combout\,
	cout => \debuncerKEY0|Add0~31\);

-- Location: LCCOMB_X106_Y23_N6
\debuncerKEY0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~5_combout\ = (\debuncerKEY0|s_debounceCnt[20]~4_combout\ & \debuncerKEY0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	datad => \debuncerKEY0|Add0~30_combout\,
	combout => \debuncerKEY0|s_debounceCnt~5_combout\);

-- Location: FF_X106_Y23_N7
\debuncerKEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~5_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X107_Y23_N10
\debuncerKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~32_combout\ = (\debuncerKEY0|s_debounceCnt\(16) & ((GND) # (!\debuncerKEY0|Add0~31\))) # (!\debuncerKEY0|s_debounceCnt\(16) & (\debuncerKEY0|Add0~31\ $ (GND)))
-- \debuncerKEY0|Add0~33\ = CARRY((\debuncerKEY0|s_debounceCnt\(16)) # (!\debuncerKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debuncerKEY0|Add0~31\,
	combout => \debuncerKEY0|Add0~32_combout\,
	cout => \debuncerKEY0|Add0~33\);

-- Location: LCCOMB_X106_Y23_N4
\debuncerKEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~6_combout\ = (\debuncerKEY0|Add0~32_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|Add0~32_combout\,
	datac => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~6_combout\);

-- Location: FF_X106_Y23_N5
\debuncerKEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~6_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X107_Y23_N12
\debuncerKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~34_combout\ = (\debuncerKEY0|s_debounceCnt\(17) & (\debuncerKEY0|Add0~33\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(17) & (!\debuncerKEY0|Add0~33\))
-- \debuncerKEY0|Add0~35\ = CARRY((!\debuncerKEY0|s_debounceCnt\(17) & !\debuncerKEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debuncerKEY0|Add0~33\,
	combout => \debuncerKEY0|Add0~34_combout\,
	cout => \debuncerKEY0|Add0~35\);

-- Location: LCCOMB_X107_Y23_N28
\debuncerKEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~7_combout\ = (\debuncerKEY0|Add0~34_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|Add0~34_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~7_combout\);

-- Location: FF_X107_Y23_N29
\debuncerKEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~7_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X107_Y23_N14
\debuncerKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~36_combout\ = (\debuncerKEY0|s_debounceCnt\(18) & ((GND) # (!\debuncerKEY0|Add0~35\))) # (!\debuncerKEY0|s_debounceCnt\(18) & (\debuncerKEY0|Add0~35\ $ (GND)))
-- \debuncerKEY0|Add0~37\ = CARRY((\debuncerKEY0|s_debounceCnt\(18)) # (!\debuncerKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debuncerKEY0|Add0~35\,
	combout => \debuncerKEY0|Add0~36_combout\,
	cout => \debuncerKEY0|Add0~37\);

-- Location: LCCOMB_X108_Y23_N22
\debuncerKEY0|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[18]~18_combout\ = (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & (\debuncerKEY0|s_debounceCnt[20]~3_combout\ & ((\debuncerKEY0|Add0~36_combout\) # (!\debuncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	datab => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	datac => \debuncerKEY0|s_previousIn~q\,
	datad => \debuncerKEY0|Add0~36_combout\,
	combout => \debuncerKEY0|s_debounceCnt[18]~18_combout\);

-- Location: FF_X108_Y23_N23
\debuncerKEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X107_Y23_N16
\debuncerKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~38_combout\ = (\debuncerKEY0|s_debounceCnt\(19) & (\debuncerKEY0|Add0~37\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(19) & (!\debuncerKEY0|Add0~37\))
-- \debuncerKEY0|Add0~39\ = CARRY((!\debuncerKEY0|s_debounceCnt\(19) & !\debuncerKEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debuncerKEY0|Add0~37\,
	combout => \debuncerKEY0|Add0~38_combout\,
	cout => \debuncerKEY0|Add0~39\);

-- Location: LCCOMB_X108_Y23_N8
\debuncerKEY0|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[19]~19_combout\ = (\debuncerKEY0|s_debounceCnt[20]~3_combout\ & (\debuncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debuncerKEY0|Add0~38_combout\) # (!\debuncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datab => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	datac => \debuncerKEY0|Add0~38_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debuncerKEY0|s_debounceCnt[19]~19_combout\);

-- Location: FF_X108_Y23_N9
\debuncerKEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X107_Y23_N18
\debuncerKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~40_combout\ = (\debuncerKEY0|s_debounceCnt\(20) & ((GND) # (!\debuncerKEY0|Add0~39\))) # (!\debuncerKEY0|s_debounceCnt\(20) & (\debuncerKEY0|Add0~39\ $ (GND)))
-- \debuncerKEY0|Add0~41\ = CARRY((\debuncerKEY0|s_debounceCnt\(20)) # (!\debuncerKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debuncerKEY0|Add0~39\,
	combout => \debuncerKEY0|Add0~40_combout\,
	cout => \debuncerKEY0|Add0~41\);

-- Location: LCCOMB_X107_Y23_N24
\debuncerKEY0|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[20]~10_combout\ = (\debuncerKEY0|s_debounceCnt[20]~3_combout\ & (\debuncerKEY0|Add0~40_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	datab => \debuncerKEY0|Add0~40_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt[20]~10_combout\);

-- Location: FF_X107_Y23_N25
\debuncerKEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X106_Y23_N22
\debuncerKEY0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~1_combout\ = (!\debuncerKEY0|s_debounceCnt\(21) & (!\debuncerKEY0|s_debounceCnt\(12) & (!\debuncerKEY0|s_debounceCnt\(20) & !\debuncerKEY0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(21),
	datab => \debuncerKEY0|s_debounceCnt\(12),
	datac => \debuncerKEY0|s_debounceCnt\(20),
	datad => \debuncerKEY0|s_debounceCnt\(13),
	combout => \debuncerKEY0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X106_Y23_N2
\debuncerKEY0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~0_combout\ = (!\debuncerKEY0|s_debounceCnt\(15) & (!\debuncerKEY0|s_debounceCnt\(6) & (!\debuncerKEY0|s_debounceCnt\(16) & !\debuncerKEY0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(15),
	datab => \debuncerKEY0|s_debounceCnt\(6),
	datac => \debuncerKEY0|s_debounceCnt\(16),
	datad => \debuncerKEY0|s_debounceCnt\(17),
	combout => \debuncerKEY0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X106_Y23_N8
\debuncerKEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~2_combout\ = (!\debuncerKEY0|s_debounceCnt\(9) & (!\debuncerKEY0|s_debounceCnt\(7) & (!\debuncerKEY0|s_debounceCnt\(8) & !\debuncerKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(9),
	datab => \debuncerKEY0|s_debounceCnt\(7),
	datac => \debuncerKEY0|s_debounceCnt\(8),
	datad => \debuncerKEY0|s_debounceCnt\(10),
	combout => \debuncerKEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y23_N26
\debuncerKEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~3_combout\ = (!\debuncerKEY0|s_debounceCnt\(18) & (!\debuncerKEY0|s_debounceCnt\(19) & (!\debuncerKEY0|s_debounceCnt\(11) & !\debuncerKEY0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(18),
	datab => \debuncerKEY0|s_debounceCnt\(19),
	datac => \debuncerKEY0|s_debounceCnt\(11),
	datad => \debuncerKEY0|s_debounceCnt\(14),
	combout => \debuncerKEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X106_Y23_N20
\debuncerKEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~4_combout\ = (\debuncerKEY0|s_pulsedOut~1_combout\ & (\debuncerKEY0|s_pulsedOut~0_combout\ & (\debuncerKEY0|s_pulsedOut~2_combout\ & \debuncerKEY0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~1_combout\,
	datab => \debuncerKEY0|s_pulsedOut~0_combout\,
	datac => \debuncerKEY0|s_pulsedOut~2_combout\,
	datad => \debuncerKEY0|s_pulsedOut~3_combout\,
	combout => \debuncerKEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X106_Y23_N24
\debuncerKEY0|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[20]~2_combout\ = (\debuncerKEY0|s_debounceCnt\(5)) # (((\debuncerKEY0|s_debounceCnt\(0)) # (!\debuncerKEY0|s_pulsedOut~4_combout\)) # (!\debuncerKEY0|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(5),
	datab => \debuncerKEY0|s_pulsedOut~5_combout\,
	datac => \debuncerKEY0|s_debounceCnt\(0),
	datad => \debuncerKEY0|s_pulsedOut~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X106_Y23_N14
\debuncerKEY0|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[20]~3_combout\ = ((\debuncerKEY0|s_debounceCnt\(22)) # ((\debuncerKEY0|s_debounceCnt[20]~2_combout\) # (!\debuncerKEY0|s_dirtyIn~q\))) # (!\debuncerKEY0|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datab => \debuncerKEY0|s_debounceCnt\(22),
	datac => \debuncerKEY0|s_dirtyIn~q\,
	datad => \debuncerKEY0|s_debounceCnt[20]~2_combout\,
	combout => \debuncerKEY0|s_debounceCnt[20]~3_combout\);

-- Location: LCCOMB_X107_Y23_N20
\debuncerKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~42_combout\ = (\debuncerKEY0|s_debounceCnt\(21) & (\debuncerKEY0|Add0~41\ & VCC)) # (!\debuncerKEY0|s_debounceCnt\(21) & (!\debuncerKEY0|Add0~41\))
-- \debuncerKEY0|Add0~43\ = CARRY((!\debuncerKEY0|s_debounceCnt\(21) & !\debuncerKEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debuncerKEY0|Add0~41\,
	combout => \debuncerKEY0|Add0~42_combout\,
	cout => \debuncerKEY0|Add0~43\);

-- Location: LCCOMB_X107_Y23_N30
\debuncerKEY0|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[21]~11_combout\ = (\debuncerKEY0|s_debounceCnt[20]~3_combout\ & (\debuncerKEY0|Add0~42_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	datab => \debuncerKEY0|Add0~42_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt[21]~11_combout\);

-- Location: FF_X107_Y23_N31
\debuncerKEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X108_Y23_N10
\debuncerKEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~4_combout\ = (\debuncerKEY0|s_debounceCnt\(12)) # ((\debuncerKEY0|s_debounceCnt\(13)) # ((\debuncerKEY0|s_debounceCnt\(11) & \debuncerKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(12),
	datab => \debuncerKEY0|s_debounceCnt\(11),
	datac => \debuncerKEY0|s_debounceCnt\(10),
	datad => \debuncerKEY0|s_debounceCnt\(13),
	combout => \debuncerKEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X108_Y23_N20
\debuncerKEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~5_combout\ = (\debuncerKEY0|s_debounceCnt\(16)) # ((\debuncerKEY0|s_debounceCnt\(15)) # ((\debuncerKEY0|LessThan0~4_combout\ & \debuncerKEY0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|LessThan0~4_combout\,
	datab => \debuncerKEY0|s_debounceCnt\(16),
	datac => \debuncerKEY0|s_debounceCnt\(15),
	datad => \debuncerKEY0|s_debounceCnt\(14),
	combout => \debuncerKEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y23_N30
\debuncerKEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~6_combout\ = (\debuncerKEY0|s_debounceCnt\(18) & (\debuncerKEY0|s_debounceCnt\(19) & ((\debuncerKEY0|s_debounceCnt\(17)) # (\debuncerKEY0|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(18),
	datab => \debuncerKEY0|s_debounceCnt\(17),
	datac => \debuncerKEY0|s_debounceCnt\(19),
	datad => \debuncerKEY0|LessThan0~5_combout\,
	combout => \debuncerKEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X108_Y23_N18
\debuncerKEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~1_combout\ = (\debuncerKEY0|s_debounceCnt\(11) & \debuncerKEY0|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(11),
	datad => \debuncerKEY0|s_debounceCnt\(9),
	combout => \debuncerKEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X107_Y24_N4
\debuncerKEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~2_combout\ = (\debuncerKEY0|s_debounceCnt\(6) & ((\debuncerKEY0|s_debounceCnt\(5)) # ((\debuncerKEY0|s_debounceCnt\(0)) # (!\debuncerKEY0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(5),
	datab => \debuncerKEY0|s_debounceCnt\(0),
	datac => \debuncerKEY0|s_debounceCnt\(6),
	datad => \debuncerKEY0|s_pulsedOut~5_combout\,
	combout => \debuncerKEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y23_N24
\debuncerKEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~0_combout\ = (\debuncerKEY0|s_debounceCnt\(19) & (\debuncerKEY0|s_debounceCnt\(8) & (\debuncerKEY0|s_debounceCnt\(14) & \debuncerKEY0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(19),
	datab => \debuncerKEY0|s_debounceCnt\(8),
	datac => \debuncerKEY0|s_debounceCnt\(14),
	datad => \debuncerKEY0|s_debounceCnt\(18),
	combout => \debuncerKEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y23_N12
\debuncerKEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~3_combout\ = (\debuncerKEY0|LessThan0~1_combout\ & (\debuncerKEY0|LessThan0~0_combout\ & ((\debuncerKEY0|s_debounceCnt\(7)) # (\debuncerKEY0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(7),
	datab => \debuncerKEY0|LessThan0~1_combout\,
	datac => \debuncerKEY0|LessThan0~2_combout\,
	datad => \debuncerKEY0|LessThan0~0_combout\,
	combout => \debuncerKEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y23_N16
\debuncerKEY0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|LessThan0~7_combout\ = (\debuncerKEY0|s_debounceCnt\(21)) # ((\debuncerKEY0|s_debounceCnt\(20)) # ((\debuncerKEY0|LessThan0~6_combout\) # (\debuncerKEY0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(21),
	datab => \debuncerKEY0|s_debounceCnt\(20),
	datac => \debuncerKEY0|LessThan0~6_combout\,
	datad => \debuncerKEY0|LessThan0~3_combout\,
	combout => \debuncerKEY0|LessThan0~7_combout\);

-- Location: LCCOMB_X108_Y23_N6
\debuncerKEY0|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[20]~0_combout\ = (\debuncerKEY0|s_dirtyIn~q\ & ((!\debuncerKEY0|LessThan0~7_combout\) # (!\debuncerKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY0|s_debounceCnt\(22),
	datac => \debuncerKEY0|s_dirtyIn~q\,
	datad => \debuncerKEY0|LessThan0~7_combout\,
	combout => \debuncerKEY0|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X108_Y23_N14
\debuncerKEY0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[22]~25_combout\ = (\debuncerKEY0|s_dirtyIn~q\ & ((\debuncerKEY0|s_debounceCnt\(22) & ((!\debuncerKEY0|LessThan0~7_combout\))) # (!\debuncerKEY0|s_debounceCnt\(22) & (\debuncerKEY0|s_debounceCnt[20]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt[20]~2_combout\,
	datab => \debuncerKEY0|s_debounceCnt\(22),
	datac => \debuncerKEY0|s_dirtyIn~q\,
	datad => \debuncerKEY0|LessThan0~7_combout\,
	combout => \debuncerKEY0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X107_Y23_N22
\debuncerKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|Add0~44_combout\ = \debuncerKEY0|Add0~43\ $ (\debuncerKEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debuncerKEY0|s_debounceCnt\(22),
	cin => \debuncerKEY0|Add0~43\,
	combout => \debuncerKEY0|Add0~44_combout\);

-- Location: LCCOMB_X108_Y23_N28
\debuncerKEY0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[22]~26_combout\ = (\debuncerKEY0|s_previousIn~q\ & (((\debuncerKEY0|s_debounceCnt[22]~25_combout\ & \debuncerKEY0|Add0~44_combout\)))) # (!\debuncerKEY0|s_previousIn~q\ & (\debuncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt[20]~0_combout\,
	datab => \debuncerKEY0|s_previousIn~q\,
	datac => \debuncerKEY0|s_debounceCnt[22]~25_combout\,
	datad => \debuncerKEY0|Add0~44_combout\,
	combout => \debuncerKEY0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X108_Y23_N29
\debuncerKEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X108_Y23_N24
\debuncerKEY0|s_debounceCnt[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt[20]~4_combout\ = (\debuncerKEY0|s_previousIn~q\ & (\debuncerKEY0|s_dirtyIn~q\ & ((!\debuncerKEY0|LessThan0~7_combout\) # (!\debuncerKEY0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_previousIn~q\,
	datab => \debuncerKEY0|s_debounceCnt\(22),
	datac => \debuncerKEY0|s_dirtyIn~q\,
	datad => \debuncerKEY0|LessThan0~7_combout\,
	combout => \debuncerKEY0|s_debounceCnt[20]~4_combout\);

-- Location: LCCOMB_X108_Y23_N0
\debuncerKEY0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_debounceCnt~24_combout\ = (\debuncerKEY0|Add0~0_combout\ & \debuncerKEY0|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY0|Add0~0_combout\,
	datad => \debuncerKEY0|s_debounceCnt[20]~4_combout\,
	combout => \debuncerKEY0|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y23_N1
\debuncerKEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_debounceCnt~24_combout\,
	ena => \debuncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y24_N10
\debuncerKEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~6_combout\ = (\debuncerKEY0|s_debounceCnt\(0) & (\debuncerKEY0|s_previousIn~q\ & (!\debuncerKEY0|s_debounceCnt\(22) & \debuncerKEY0|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_debounceCnt\(0),
	datab => \debuncerKEY0|s_previousIn~q\,
	datac => \debuncerKEY0|s_debounceCnt\(22),
	datad => \debuncerKEY0|s_dirtyIn~q\,
	combout => \debuncerKEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X107_Y25_N16
\debuncerKEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debuncerKEY0|s_pulsedOut~7_combout\ = (\debuncerKEY0|s_pulsedOut~6_combout\ & (!\debuncerKEY0|s_debounceCnt\(5) & (\debuncerKEY0|s_pulsedOut~4_combout\ & \debuncerKEY0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~6_combout\,
	datab => \debuncerKEY0|s_debounceCnt\(5),
	datac => \debuncerKEY0|s_pulsedOut~4_combout\,
	datad => \debuncerKEY0|s_pulsedOut~5_combout\,
	combout => \debuncerKEY0|s_pulsedOut~7_combout\);

-- Location: FF_X107_Y25_N17
\debuncerKEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debuncerKEY0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debuncerKEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X108_Y27_N20
\Esc_Prod_FSM|T_timeVal[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|T_timeVal[2]~0_combout\ = (!\debuncerKEY2|s_pulsedOut~q\ & (!\debuncerKEY1|s_pulsedOut~q\ & !\debuncerKEY0|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_pulsedOut~q\,
	datac => \debuncerKEY1|s_pulsedOut~q\,
	datad => \debuncerKEY0|s_pulsedOut~q\,
	combout => \Esc_Prod_FSM|T_timeVal[2]~0_combout\);

-- Location: LCCOMB_X107_Y25_N10
\Esc_Prod_FSM|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~62_combout\ = (!\Esc_Prod_FSM|T_timeVal[2]~0_combout\ & (\debuncerKEY0|s_pulsedOut~q\ & (\Esc_Prod_FSM|state.prog~q\ & \Esc_Prod_FSM|state~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datab => \debuncerKEY0|s_pulsedOut~q\,
	datac => \Esc_Prod_FSM|state.prog~q\,
	datad => \Esc_Prod_FSM|state~27_combout\,
	combout => \Esc_Prod_FSM|state~62_combout\);

-- Location: LCCOMB_X107_Y25_N20
\Esc_Prod_FSM|state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~63_combout\ = (\Esc_Prod_FSM|state~62_combout\) # ((\Esc_Prod_FSM|state.st_progFan~q\ & \Esc_Prod_FSM|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~62_combout\,
	datac => \Esc_Prod_FSM|state.st_progFan~q\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~63_combout\);

-- Location: FF_X107_Y25_N21
\Esc_Prod_FSM|state.st_progFan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~63_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.st_progFan~q\);

-- Location: LCCOMB_X108_Y25_N22
\Esc_Prod_FSM|state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~51_combout\ = (!\debuncerKEY1|s_pulsedOut~q\ & (!\debuncerKEY0|s_pulsedOut~q\ & \debuncerKEY2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \debuncerKEY2|s_pulsedOut~q\,
	combout => \Esc_Prod_FSM|state~51_combout\);

-- Location: LCCOMB_X108_Y29_N0
\Timer|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[0]~32_combout\ = \Timer|count\(0) $ (VCC)
-- \Timer|count[0]~33\ = CARRY(\Timer|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(0),
	datad => VCC,
	combout => \Timer|count[0]~32_combout\,
	cout => \Timer|count[0]~33\);

-- Location: LCCOMB_X109_Y29_N22
\Esc_Prod_FSM|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector41~0_combout\ = (\Esc_Prod_FSM|state.St_Spes~q\) # ((\Esc_Prod_FSM|current_state.St_Spes~q\ & !\Esc_Prod_FSM|current_state.Init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.St_Spes~q\,
	datac => \Esc_Prod_FSM|current_state.St_Spes~q\,
	datad => \Esc_Prod_FSM|current_state.Init~0_combout\,
	combout => \Esc_Prod_FSM|Selector41~0_combout\);

-- Location: FF_X109_Y29_N23
\Esc_Prod_FSM|current_state.St_Spes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector41~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.St_Spes~q\);

-- Location: LCCOMB_X110_Y25_N26
\Esc_Prod_FSM|state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~50_combout\ = (\Esc_Prod_FSM|current_state.St_Spes~q\ & (((\Esc_Prod_FSM|state.St_Spes~q\ & \Esc_Prod_FSM|state~38_combout\)) # (!\Esc_Prod_FSM|state~27_combout\))) # (!\Esc_Prod_FSM|current_state.St_Spes~q\ & 
-- (\Esc_Prod_FSM|state.St_Spes~q\ & ((\Esc_Prod_FSM|state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|current_state.St_Spes~q\,
	datab => \Esc_Prod_FSM|state.St_Spes~q\,
	datac => \Esc_Prod_FSM|state~27_combout\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~50_combout\);

-- Location: LCCOMB_X109_Y25_N26
\Esc_Prod_FSM|state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~52_combout\ = (\Esc_Prod_FSM|state~50_combout\) # ((\Esc_Prod_FSM|state.Option~q\ & (\Esc_Prod_FSM|state~51_combout\ & \Esc_Prod_FSM|state~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Esc_Prod_FSM|state~51_combout\,
	datac => \Esc_Prod_FSM|state~41_combout\,
	datad => \Esc_Prod_FSM|state~50_combout\,
	combout => \Esc_Prod_FSM|state~52_combout\);

-- Location: FF_X109_Y25_N27
\Esc_Prod_FSM|state.St_Spes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~52_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.St_Spes~q\);

-- Location: LCCOMB_X107_Y25_N4
\GeloSel_FSM|s_nextState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_nextState~0_combout\ = (\debuncerKEY1|s_pulsedOut~q\ & !\debuncerKEY0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debuncerKEY1|s_pulsedOut~q\,
	datad => \debuncerKEY0|s_pulsedOut~q\,
	combout => \GeloSel_FSM|s_nextState~0_combout\);

-- Location: LCCOMB_X110_Y25_N30
\Esc_Prod_FSM|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector40~0_combout\ = (\Esc_Prod_FSM|state.St_Soli~q\) # ((\Esc_Prod_FSM|current_state.St_Soli~q\ & !\Esc_Prod_FSM|current_state.Init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.St_Soli~q\,
	datac => \Esc_Prod_FSM|current_state.St_Soli~q\,
	datad => \Esc_Prod_FSM|current_state.Init~0_combout\,
	combout => \Esc_Prod_FSM|Selector40~0_combout\);

-- Location: FF_X110_Y25_N31
\Esc_Prod_FSM|current_state.St_Soli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector40~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.St_Soli~q\);

-- Location: LCCOMB_X110_Y25_N4
\Esc_Prod_FSM|state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~48_combout\ = (\Esc_Prod_FSM|state.St_Soli~q\ & ((\Esc_Prod_FSM|state~38_combout\) # ((\Esc_Prod_FSM|current_state.St_Soli~q\ & !\Esc_Prod_FSM|state~27_combout\)))) # (!\Esc_Prod_FSM|state.St_Soli~q\ & 
-- (\Esc_Prod_FSM|current_state.St_Soli~q\ & (!\Esc_Prod_FSM|state~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.St_Soli~q\,
	datab => \Esc_Prod_FSM|current_state.St_Soli~q\,
	datac => \Esc_Prod_FSM|state~27_combout\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~48_combout\);

-- Location: LCCOMB_X110_Y25_N12
\Esc_Prod_FSM|state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~49_combout\ = (\Esc_Prod_FSM|state~48_combout\) # ((\Esc_Prod_FSM|state.Option~q\ & (\GeloSel_FSM|s_nextState~0_combout\ & \Esc_Prod_FSM|state~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \GeloSel_FSM|s_nextState~0_combout\,
	datac => \Esc_Prod_FSM|state~48_combout\,
	datad => \Esc_Prod_FSM|state~41_combout\,
	combout => \Esc_Prod_FSM|state~49_combout\);

-- Location: FF_X110_Y25_N13
\Esc_Prod_FSM|state.St_Soli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~49_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.St_Soli~q\);

-- Location: LCCOMB_X110_Y25_N28
\Esc_Prod_FSM|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|WideOr2~0_combout\ = (!\Esc_Prod_FSM|state.St_Spes~q\ & !\Esc_Prod_FSM|state.St_Soli~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Esc_Prod_FSM|state.St_Spes~q\,
	datad => \Esc_Prod_FSM|state.St_Soli~q\,
	combout => \Esc_Prod_FSM|WideOr2~0_combout\);

-- Location: LCCOMB_X107_Y25_N6
\Esc_Prod_FSM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector6~0_combout\ = (\Esc_Prod_FSM|state.Gelo~q\) # ((\Esc_Prod_FSM|state.prog~q\) # ((\Esc_Prod_FSM|state.Option~q\) # (!\Esc_Prod_FSM|state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Gelo~q\,
	datab => \Esc_Prod_FSM|state.prog~q\,
	datac => \Esc_Prod_FSM|state~29_combout\,
	datad => \Esc_Prod_FSM|state.Option~q\,
	combout => \Esc_Prod_FSM|Selector6~0_combout\);

-- Location: LCCOMB_X107_Y25_N24
\Esc_Prod_FSM|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector6~1_combout\ = (\Esc_Prod_FSM|Selector6~0_combout\ & ((\Esc_Prod_FSM|T_start~q\) # ((\Esc_Prod_FSM|state.Option~q\ & !\Esc_Prod_FSM|T_timeVal[2]~0_combout\)))) # (!\Esc_Prod_FSM|Selector6~0_combout\ & (\Esc_Prod_FSM|state.Option~q\ & 
-- (!\Esc_Prod_FSM|T_timeVal[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector6~0_combout\,
	datab => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datad => \Esc_Prod_FSM|T_start~q\,
	combout => \Esc_Prod_FSM|Selector6~1_combout\);

-- Location: LCCOMB_X108_Y25_N18
\Esc_Prod_FSM|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector6~2_combout\ = ((\Esc_Prod_FSM|Selector6~1_combout\) # ((!\Timer|Equal0~10_combout\ & !\Esc_Prod_FSM|WideOr2~0_combout\))) # (!\Esc_Prod_FSM|state.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Init~q\,
	datab => \Timer|Equal0~10_combout\,
	datac => \Esc_Prod_FSM|WideOr2~0_combout\,
	datad => \Esc_Prod_FSM|Selector6~1_combout\,
	combout => \Esc_Prod_FSM|Selector6~2_combout\);

-- Location: FF_X108_Y25_N19
\Esc_Prod_FSM|T_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector6~2_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|T_start~q\);

-- Location: LCCOMB_X107_Y25_N14
\Timer|count[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[30]~36_combout\ = (\SW[17]~input_o\) # ((!\Registo|out_Gelo~q\ & !\Esc_Prod_FSM|T_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \Registo|out_Gelo~q\,
	datad => \Esc_Prod_FSM|T_start~q\,
	combout => \Timer|count[30]~36_combout\);

-- Location: FF_X108_Y29_N1
\Timer|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[0]~32_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(0));

-- Location: LCCOMB_X108_Y29_N2
\Timer|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[1]~34_combout\ = (\Timer|count\(1) & (\Timer|count[0]~33\ & VCC)) # (!\Timer|count\(1) & (!\Timer|count[0]~33\))
-- \Timer|count[1]~35\ = CARRY((!\Timer|count\(1) & !\Timer|count[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(1),
	datad => VCC,
	cin => \Timer|count[0]~33\,
	combout => \Timer|count[1]~34_combout\,
	cout => \Timer|count[1]~35\);

-- Location: FF_X108_Y29_N3
\Timer|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[1]~34_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(1));

-- Location: LCCOMB_X108_Y29_N4
\Timer|count[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[2]~37_combout\ = (\Timer|count\(2) & ((GND) # (!\Timer|count[1]~35\))) # (!\Timer|count\(2) & (\Timer|count[1]~35\ $ (GND)))
-- \Timer|count[2]~38\ = CARRY((\Timer|count\(2)) # (!\Timer|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(2),
	datad => VCC,
	cin => \Timer|count[1]~35\,
	combout => \Timer|count[2]~37_combout\,
	cout => \Timer|count[2]~38\);

-- Location: FF_X108_Y29_N5
\Timer|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[2]~37_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(2));

-- Location: LCCOMB_X108_Y29_N6
\Timer|count[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[3]~39_combout\ = (\Timer|count\(3) & (\Timer|count[2]~38\ & VCC)) # (!\Timer|count\(3) & (!\Timer|count[2]~38\))
-- \Timer|count[3]~40\ = CARRY((!\Timer|count\(3) & !\Timer|count[2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(3),
	datad => VCC,
	cin => \Timer|count[2]~38\,
	combout => \Timer|count[3]~39_combout\,
	cout => \Timer|count[3]~40\);

-- Location: FF_X108_Y29_N7
\Timer|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[3]~39_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(3));

-- Location: LCCOMB_X108_Y29_N8
\Timer|count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[4]~41_combout\ = (\Timer|count\(4) & ((GND) # (!\Timer|count[3]~40\))) # (!\Timer|count\(4) & (\Timer|count[3]~40\ $ (GND)))
-- \Timer|count[4]~42\ = CARRY((\Timer|count\(4)) # (!\Timer|count[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(4),
	datad => VCC,
	cin => \Timer|count[3]~40\,
	combout => \Timer|count[4]~41_combout\,
	cout => \Timer|count[4]~42\);

-- Location: FF_X108_Y29_N9
\Timer|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[4]~41_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(4));

-- Location: LCCOMB_X108_Y29_N10
\Timer|count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[5]~43_combout\ = (\Timer|count\(5) & (\Timer|count[4]~42\ & VCC)) # (!\Timer|count\(5) & (!\Timer|count[4]~42\))
-- \Timer|count[5]~44\ = CARRY((!\Timer|count\(5) & !\Timer|count[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(5),
	datad => VCC,
	cin => \Timer|count[4]~42\,
	combout => \Timer|count[5]~43_combout\,
	cout => \Timer|count[5]~44\);

-- Location: FF_X108_Y29_N11
\Timer|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[5]~43_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(5));

-- Location: LCCOMB_X108_Y29_N12
\Timer|count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[6]~45_combout\ = (\Timer|count\(6) & ((GND) # (!\Timer|count[5]~44\))) # (!\Timer|count\(6) & (\Timer|count[5]~44\ $ (GND)))
-- \Timer|count[6]~46\ = CARRY((\Timer|count\(6)) # (!\Timer|count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(6),
	datad => VCC,
	cin => \Timer|count[5]~44\,
	combout => \Timer|count[6]~45_combout\,
	cout => \Timer|count[6]~46\);

-- Location: FF_X108_Y29_N13
\Timer|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[6]~45_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(6));

-- Location: LCCOMB_X108_Y29_N14
\Timer|count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[7]~47_combout\ = (\Timer|count\(7) & (\Timer|count[6]~46\ & VCC)) # (!\Timer|count\(7) & (!\Timer|count[6]~46\))
-- \Timer|count[7]~48\ = CARRY((!\Timer|count\(7) & !\Timer|count[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(7),
	datad => VCC,
	cin => \Timer|count[6]~46\,
	combout => \Timer|count[7]~47_combout\,
	cout => \Timer|count[7]~48\);

-- Location: FF_X108_Y29_N15
\Timer|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[7]~47_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(7));

-- Location: LCCOMB_X108_Y29_N16
\Timer|count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[8]~49_combout\ = (\Timer|count\(8) & ((GND) # (!\Timer|count[7]~48\))) # (!\Timer|count\(8) & (\Timer|count[7]~48\ $ (GND)))
-- \Timer|count[8]~50\ = CARRY((\Timer|count\(8)) # (!\Timer|count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(8),
	datad => VCC,
	cin => \Timer|count[7]~48\,
	combout => \Timer|count[8]~49_combout\,
	cout => \Timer|count[8]~50\);

-- Location: FF_X108_Y29_N17
\Timer|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[8]~49_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(8));

-- Location: LCCOMB_X108_Y29_N18
\Timer|count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[9]~51_combout\ = (\Timer|count\(9) & (\Timer|count[8]~50\ & VCC)) # (!\Timer|count\(9) & (!\Timer|count[8]~50\))
-- \Timer|count[9]~52\ = CARRY((!\Timer|count\(9) & !\Timer|count[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(9),
	datad => VCC,
	cin => \Timer|count[8]~50\,
	combout => \Timer|count[9]~51_combout\,
	cout => \Timer|count[9]~52\);

-- Location: FF_X108_Y29_N19
\Timer|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[9]~51_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(9));

-- Location: LCCOMB_X108_Y29_N20
\Timer|count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[10]~53_combout\ = (\Timer|count\(10) & ((GND) # (!\Timer|count[9]~52\))) # (!\Timer|count\(10) & (\Timer|count[9]~52\ $ (GND)))
-- \Timer|count[10]~54\ = CARRY((\Timer|count\(10)) # (!\Timer|count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(10),
	datad => VCC,
	cin => \Timer|count[9]~52\,
	combout => \Timer|count[10]~53_combout\,
	cout => \Timer|count[10]~54\);

-- Location: FF_X108_Y29_N21
\Timer|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[10]~53_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(10));

-- Location: LCCOMB_X108_Y29_N22
\Timer|count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[11]~55_combout\ = (\Timer|count\(11) & (\Timer|count[10]~54\ & VCC)) # (!\Timer|count\(11) & (!\Timer|count[10]~54\))
-- \Timer|count[11]~56\ = CARRY((!\Timer|count\(11) & !\Timer|count[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(11),
	datad => VCC,
	cin => \Timer|count[10]~54\,
	combout => \Timer|count[11]~55_combout\,
	cout => \Timer|count[11]~56\);

-- Location: FF_X108_Y29_N23
\Timer|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[11]~55_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(11));

-- Location: LCCOMB_X108_Y29_N24
\Timer|count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[12]~57_combout\ = (\Timer|count\(12) & ((GND) # (!\Timer|count[11]~56\))) # (!\Timer|count\(12) & (\Timer|count[11]~56\ $ (GND)))
-- \Timer|count[12]~58\ = CARRY((\Timer|count\(12)) # (!\Timer|count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(12),
	datad => VCC,
	cin => \Timer|count[11]~56\,
	combout => \Timer|count[12]~57_combout\,
	cout => \Timer|count[12]~58\);

-- Location: FF_X108_Y29_N25
\Timer|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[12]~57_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(12));

-- Location: LCCOMB_X108_Y29_N26
\Timer|count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[13]~59_combout\ = (\Timer|count\(13) & (\Timer|count[12]~58\ & VCC)) # (!\Timer|count\(13) & (!\Timer|count[12]~58\))
-- \Timer|count[13]~60\ = CARRY((!\Timer|count\(13) & !\Timer|count[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(13),
	datad => VCC,
	cin => \Timer|count[12]~58\,
	combout => \Timer|count[13]~59_combout\,
	cout => \Timer|count[13]~60\);

-- Location: FF_X108_Y29_N27
\Timer|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[13]~59_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(13));

-- Location: LCCOMB_X108_Y29_N28
\Timer|count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[14]~61_combout\ = (\Timer|count\(14) & ((GND) # (!\Timer|count[13]~60\))) # (!\Timer|count\(14) & (\Timer|count[13]~60\ $ (GND)))
-- \Timer|count[14]~62\ = CARRY((\Timer|count\(14)) # (!\Timer|count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(14),
	datad => VCC,
	cin => \Timer|count[13]~60\,
	combout => \Timer|count[14]~61_combout\,
	cout => \Timer|count[14]~62\);

-- Location: FF_X108_Y29_N29
\Timer|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[14]~61_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(14));

-- Location: LCCOMB_X108_Y29_N30
\Timer|count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[15]~63_combout\ = (\Timer|count\(15) & (\Timer|count[14]~62\ & VCC)) # (!\Timer|count\(15) & (!\Timer|count[14]~62\))
-- \Timer|count[15]~64\ = CARRY((!\Timer|count\(15) & !\Timer|count[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(15),
	datad => VCC,
	cin => \Timer|count[14]~62\,
	combout => \Timer|count[15]~63_combout\,
	cout => \Timer|count[15]~64\);

-- Location: FF_X108_Y29_N31
\Timer|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[15]~63_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(15));

-- Location: LCCOMB_X108_Y28_N0
\Timer|count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[16]~65_combout\ = (\Timer|count\(16) & ((GND) # (!\Timer|count[15]~64\))) # (!\Timer|count\(16) & (\Timer|count[15]~64\ $ (GND)))
-- \Timer|count[16]~66\ = CARRY((\Timer|count\(16)) # (!\Timer|count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(16),
	datad => VCC,
	cin => \Timer|count[15]~64\,
	combout => \Timer|count[16]~65_combout\,
	cout => \Timer|count[16]~66\);

-- Location: FF_X108_Y28_N1
\Timer|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[16]~65_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(16));

-- Location: LCCOMB_X108_Y28_N2
\Timer|count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[17]~67_combout\ = (\Timer|count\(17) & (\Timer|count[16]~66\ & VCC)) # (!\Timer|count\(17) & (!\Timer|count[16]~66\))
-- \Timer|count[17]~68\ = CARRY((!\Timer|count\(17) & !\Timer|count[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(17),
	datad => VCC,
	cin => \Timer|count[16]~66\,
	combout => \Timer|count[17]~67_combout\,
	cout => \Timer|count[17]~68\);

-- Location: FF_X108_Y28_N3
\Timer|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[17]~67_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(17));

-- Location: LCCOMB_X108_Y28_N4
\Timer|count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[18]~69_combout\ = (\Timer|count\(18) & ((GND) # (!\Timer|count[17]~68\))) # (!\Timer|count\(18) & (\Timer|count[17]~68\ $ (GND)))
-- \Timer|count[18]~70\ = CARRY((\Timer|count\(18)) # (!\Timer|count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(18),
	datad => VCC,
	cin => \Timer|count[17]~68\,
	combout => \Timer|count[18]~69_combout\,
	cout => \Timer|count[18]~70\);

-- Location: FF_X108_Y28_N5
\Timer|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[18]~69_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(18));

-- Location: LCCOMB_X108_Y28_N6
\Timer|count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[19]~71_combout\ = (\Timer|count\(19) & (\Timer|count[18]~70\ & VCC)) # (!\Timer|count\(19) & (!\Timer|count[18]~70\))
-- \Timer|count[19]~72\ = CARRY((!\Timer|count\(19) & !\Timer|count[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(19),
	datad => VCC,
	cin => \Timer|count[18]~70\,
	combout => \Timer|count[19]~71_combout\,
	cout => \Timer|count[19]~72\);

-- Location: FF_X108_Y28_N7
\Timer|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[19]~71_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(19));

-- Location: LCCOMB_X108_Y28_N8
\Timer|count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[20]~73_combout\ = (\Timer|count\(20) & ((GND) # (!\Timer|count[19]~72\))) # (!\Timer|count\(20) & (\Timer|count[19]~72\ $ (GND)))
-- \Timer|count[20]~74\ = CARRY((\Timer|count\(20)) # (!\Timer|count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(20),
	datad => VCC,
	cin => \Timer|count[19]~72\,
	combout => \Timer|count[20]~73_combout\,
	cout => \Timer|count[20]~74\);

-- Location: FF_X108_Y28_N9
\Timer|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[20]~73_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(20));

-- Location: LCCOMB_X108_Y28_N10
\Timer|count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[21]~75_combout\ = (\Timer|count\(21) & (\Timer|count[20]~74\ & VCC)) # (!\Timer|count\(21) & (!\Timer|count[20]~74\))
-- \Timer|count[21]~76\ = CARRY((!\Timer|count\(21) & !\Timer|count[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(21),
	datad => VCC,
	cin => \Timer|count[20]~74\,
	combout => \Timer|count[21]~75_combout\,
	cout => \Timer|count[21]~76\);

-- Location: FF_X108_Y28_N11
\Timer|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[21]~75_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(21));

-- Location: LCCOMB_X108_Y28_N12
\Timer|count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[22]~77_combout\ = (\Timer|count\(22) & ((GND) # (!\Timer|count[21]~76\))) # (!\Timer|count\(22) & (\Timer|count[21]~76\ $ (GND)))
-- \Timer|count[22]~78\ = CARRY((\Timer|count\(22)) # (!\Timer|count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(22),
	datad => VCC,
	cin => \Timer|count[21]~76\,
	combout => \Timer|count[22]~77_combout\,
	cout => \Timer|count[22]~78\);

-- Location: FF_X108_Y28_N13
\Timer|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[22]~77_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(22));

-- Location: LCCOMB_X108_Y28_N14
\Timer|count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[23]~79_combout\ = (\Timer|count\(23) & (\Timer|count[22]~78\ & VCC)) # (!\Timer|count\(23) & (!\Timer|count[22]~78\))
-- \Timer|count[23]~80\ = CARRY((!\Timer|count\(23) & !\Timer|count[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(23),
	datad => VCC,
	cin => \Timer|count[22]~78\,
	combout => \Timer|count[23]~79_combout\,
	cout => \Timer|count[23]~80\);

-- Location: FF_X108_Y28_N15
\Timer|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[23]~79_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(23));

-- Location: LCCOMB_X109_Y29_N4
\Timer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~6_combout\ = (\Timer|count\(21)) # (\Timer|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timer|count\(21),
	datad => \Timer|count\(20),
	combout => \Timer|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y29_N18
\Timer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~5_combout\ = (\Timer|count\(16)) # ((\Timer|count\(19)) # ((\Timer|count\(18)) # (\Timer|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(16),
	datab => \Timer|count\(19),
	datac => \Timer|count\(18),
	datad => \Timer|count\(17),
	combout => \Timer|Equal0~5_combout\);

-- Location: LCCOMB_X109_Y29_N6
\Timer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~7_combout\ = (\Timer|count\(23)) # ((\Timer|Equal0~6_combout\) # ((\Timer|count\(22)) # (\Timer|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(23),
	datab => \Timer|Equal0~6_combout\,
	datac => \Timer|count\(22),
	datad => \Timer|Equal0~5_combout\,
	combout => \Timer|Equal0~7_combout\);

-- Location: LCCOMB_X108_Y28_N16
\Timer|count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[24]~81_combout\ = (\Timer|count\(24) & ((GND) # (!\Timer|count[23]~80\))) # (!\Timer|count\(24) & (\Timer|count[23]~80\ $ (GND)))
-- \Timer|count[24]~82\ = CARRY((\Timer|count\(24)) # (!\Timer|count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(24),
	datad => VCC,
	cin => \Timer|count[23]~80\,
	combout => \Timer|count[24]~81_combout\,
	cout => \Timer|count[24]~82\);

-- Location: FF_X108_Y28_N17
\Timer|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[24]~81_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(24));

-- Location: LCCOMB_X108_Y28_N18
\Timer|count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[25]~83_combout\ = (\Timer|count\(25) & (\Timer|count[24]~82\ & VCC)) # (!\Timer|count\(25) & (!\Timer|count[24]~82\))
-- \Timer|count[25]~84\ = CARRY((!\Timer|count\(25) & !\Timer|count[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(25),
	datad => VCC,
	cin => \Timer|count[24]~82\,
	combout => \Timer|count[25]~83_combout\,
	cout => \Timer|count[25]~84\);

-- Location: FF_X108_Y28_N19
\Timer|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[25]~83_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(25));

-- Location: LCCOMB_X108_Y28_N20
\Timer|count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[26]~85_combout\ = (\Timer|count\(26) & ((GND) # (!\Timer|count[25]~84\))) # (!\Timer|count\(26) & (\Timer|count[25]~84\ $ (GND)))
-- \Timer|count[26]~86\ = CARRY((\Timer|count\(26)) # (!\Timer|count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(26),
	datad => VCC,
	cin => \Timer|count[25]~84\,
	combout => \Timer|count[26]~85_combout\,
	cout => \Timer|count[26]~86\);

-- Location: FF_X108_Y28_N21
\Timer|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[26]~85_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(26));

-- Location: LCCOMB_X108_Y28_N22
\Timer|count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[27]~87_combout\ = (\Timer|count\(27) & (\Timer|count[26]~86\ & VCC)) # (!\Timer|count\(27) & (!\Timer|count[26]~86\))
-- \Timer|count[27]~88\ = CARRY((!\Timer|count\(27) & !\Timer|count[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(27),
	datad => VCC,
	cin => \Timer|count[26]~86\,
	combout => \Timer|count[27]~87_combout\,
	cout => \Timer|count[27]~88\);

-- Location: FF_X108_Y28_N23
\Timer|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[27]~87_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(27));

-- Location: LCCOMB_X109_Y29_N8
\Timer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~8_combout\ = (\Timer|count\(27)) # ((\Timer|count\(25)) # ((\Timer|count\(24)) # (\Timer|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(27),
	datab => \Timer|count\(25),
	datac => \Timer|count\(24),
	datad => \Timer|count\(26),
	combout => \Timer|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y28_N24
\Timer|count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[28]~89_combout\ = (\Timer|count\(28) & ((GND) # (!\Timer|count[27]~88\))) # (!\Timer|count\(28) & (\Timer|count[27]~88\ $ (GND)))
-- \Timer|count[28]~90\ = CARRY((\Timer|count\(28)) # (!\Timer|count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(28),
	datad => VCC,
	cin => \Timer|count[27]~88\,
	combout => \Timer|count[28]~89_combout\,
	cout => \Timer|count[28]~90\);

-- Location: FF_X108_Y28_N25
\Timer|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[28]~89_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(28));

-- Location: LCCOMB_X108_Y28_N26
\Timer|count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[29]~91_combout\ = (\Timer|count\(29) & (\Timer|count[28]~90\ & VCC)) # (!\Timer|count\(29) & (!\Timer|count[28]~90\))
-- \Timer|count[29]~92\ = CARRY((!\Timer|count\(29) & !\Timer|count[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(29),
	datad => VCC,
	cin => \Timer|count[28]~90\,
	combout => \Timer|count[29]~91_combout\,
	cout => \Timer|count[29]~92\);

-- Location: FF_X108_Y28_N27
\Timer|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[29]~91_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(29));

-- Location: LCCOMB_X108_Y28_N28
\Timer|count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[30]~93_combout\ = (\Timer|count\(30) & ((GND) # (!\Timer|count[29]~92\))) # (!\Timer|count\(30) & (\Timer|count[29]~92\ $ (GND)))
-- \Timer|count[30]~94\ = CARRY((\Timer|count\(30)) # (!\Timer|count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Timer|count\(30),
	datad => VCC,
	cin => \Timer|count[29]~92\,
	combout => \Timer|count[30]~93_combout\,
	cout => \Timer|count[30]~94\);

-- Location: FF_X108_Y28_N29
\Timer|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[30]~93_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(30));

-- Location: LCCOMB_X108_Y28_N30
\Timer|count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|count[31]~95_combout\ = \Timer|count\(31) $ (!\Timer|count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(31),
	cin => \Timer|count[30]~94\,
	combout => \Timer|count[31]~95_combout\);

-- Location: FF_X108_Y28_N31
\Timer|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Timer|count[31]~95_combout\,
	sclr => \SW[17]~input_o\,
	ena => \Timer|count[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timer|count\(31));

-- Location: LCCOMB_X109_Y29_N30
\Timer|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~9_combout\ = (\Timer|count\(28)) # ((\Timer|count\(31)) # ((\Timer|count\(29)) # (\Timer|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(28),
	datab => \Timer|count\(31),
	datac => \Timer|count\(29),
	datad => \Timer|count\(30),
	combout => \Timer|Equal0~9_combout\);

-- Location: LCCOMB_X109_Y29_N12
\Timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~0_combout\ = ((\Timer|count\(2)) # ((\Timer|count\(3)) # (\Timer|count\(1)))) # (!\Timer|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(0),
	datab => \Timer|count\(2),
	datac => \Timer|count\(3),
	datad => \Timer|count\(1),
	combout => \Timer|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y29_N16
\Timer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~2_combout\ = (\Timer|count\(8)) # ((\Timer|count\(9)) # ((\Timer|count\(11)) # (\Timer|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(8),
	datab => \Timer|count\(9),
	datac => \Timer|count\(11),
	datad => \Timer|count\(10),
	combout => \Timer|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y29_N14
\Timer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~3_combout\ = (\Timer|count\(13)) # ((\Timer|count\(14)) # ((\Timer|count\(12)) # (\Timer|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(13),
	datab => \Timer|count\(14),
	datac => \Timer|count\(12),
	datad => \Timer|count\(15),
	combout => \Timer|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y29_N2
\Timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~1_combout\ = (\Timer|count\(6)) # ((\Timer|count\(7)) # ((\Timer|count\(5)) # (\Timer|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|count\(6),
	datab => \Timer|count\(7),
	datac => \Timer|count\(5),
	datad => \Timer|count\(4),
	combout => \Timer|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y29_N20
\Timer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~4_combout\ = (\Timer|Equal0~0_combout\) # ((\Timer|Equal0~2_combout\) # ((\Timer|Equal0~3_combout\) # (\Timer|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~0_combout\,
	datab => \Timer|Equal0~2_combout\,
	datac => \Timer|Equal0~3_combout\,
	datad => \Timer|Equal0~1_combout\,
	combout => \Timer|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y29_N28
\Timer|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Timer|Equal0~10_combout\ = (\Timer|Equal0~7_combout\) # ((\Timer|Equal0~8_combout\) # ((\Timer|Equal0~9_combout\) # (\Timer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timer|Equal0~7_combout\,
	datab => \Timer|Equal0~8_combout\,
	datac => \Timer|Equal0~9_combout\,
	datad => \Timer|Equal0~4_combout\,
	combout => \Timer|Equal0~10_combout\);

-- Location: LCCOMB_X108_Y25_N6
\Esc_Prod_FSM|WideOr31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|WideOr31~0_combout\ = (\Esc_Prod_FSM|state.Boot~q\) # ((\Esc_Prod_FSM|state.Option~q\) # ((\Esc_Prod_FSM|state.St_Fan~q\) # (!\Esc_Prod_FSM|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Boot~q\,
	datab => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|state.St_Fan~q\,
	datad => \Esc_Prod_FSM|WideOr2~0_combout\,
	combout => \Esc_Prod_FSM|WideOr31~0_combout\);

-- Location: LCCOMB_X108_Y25_N8
\Esc_Prod_FSM|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector36~0_combout\ = (\Esc_Prod_FSM|state.Boot~q\ & (((\Esc_Prod_FSM|current_state.Boot~q\) # (!\Timer|Equal0~10_combout\)))) # (!\Esc_Prod_FSM|state.Boot~q\ & (!\Esc_Prod_FSM|WideOr31~0_combout\ & (\Esc_Prod_FSM|current_state.Boot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|WideOr31~0_combout\,
	datab => \Esc_Prod_FSM|state.Boot~q\,
	datac => \Esc_Prod_FSM|current_state.Boot~q\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Esc_Prod_FSM|Selector36~0_combout\);

-- Location: FF_X108_Y25_N9
\Esc_Prod_FSM|current_state.Boot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector36~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.Boot~q\);

-- Location: LCCOMB_X108_Y25_N10
\Esc_Prod_FSM|state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~53_combout\ = (\Esc_Prod_FSM|current_state.Boot~q\ & (((\Esc_Prod_FSM|state.Boot~q\ & \Esc_Prod_FSM|state~38_combout\)) # (!\Esc_Prod_FSM|state~27_combout\))) # (!\Esc_Prod_FSM|current_state.Boot~q\ & (\Esc_Prod_FSM|state.Boot~q\ & 
-- ((\Esc_Prod_FSM|state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|current_state.Boot~q\,
	datab => \Esc_Prod_FSM|state.Boot~q\,
	datac => \Esc_Prod_FSM|state~27_combout\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~53_combout\);

-- Location: LCCOMB_X108_Y25_N2
\Esc_Prod_FSM|state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~54_combout\ = (\Esc_Prod_FSM|state~53_combout\) # ((!\Esc_Prod_FSM|state.Init~q\ & \Esc_Prod_FSM|state~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Init~q\,
	datac => \Esc_Prod_FSM|state~41_combout\,
	datad => \Esc_Prod_FSM|state~53_combout\,
	combout => \Esc_Prod_FSM|state~54_combout\);

-- Location: FF_X108_Y25_N3
\Esc_Prod_FSM|state.Boot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~54_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.Boot~q\);

-- Location: LCCOMB_X109_Y29_N24
\Esc_Prod_FSM|current_state.Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|current_state.Init~0_combout\ = (\Esc_Prod_FSM|WideOr31~0_combout\ & ((!\Esc_Prod_FSM|state.Boot~q\) # (!\Timer|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timer|Equal0~10_combout\,
	datac => \Esc_Prod_FSM|state.Boot~q\,
	datad => \Esc_Prod_FSM|WideOr31~0_combout\,
	combout => \Esc_Prod_FSM|current_state.Init~0_combout\);

-- Location: LCCOMB_X108_Y25_N12
\Esc_Prod_FSM|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector39~0_combout\ = (\Esc_Prod_FSM|state.St_Fan~q\) # ((\Esc_Prod_FSM|current_state.St_Fan~q\ & !\Esc_Prod_FSM|current_state.Init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.St_Fan~q\,
	datac => \Esc_Prod_FSM|current_state.St_Fan~q\,
	datad => \Esc_Prod_FSM|current_state.Init~0_combout\,
	combout => \Esc_Prod_FSM|Selector39~0_combout\);

-- Location: FF_X108_Y25_N13
\Esc_Prod_FSM|current_state.St_Fan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector39~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.St_Fan~q\);

-- Location: LCCOMB_X109_Y25_N6
\Esc_Prod_FSM|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~60_combout\ = (\Esc_Prod_FSM|state~27_combout\ & (\Esc_Prod_FSM|state.St_Fan~q\ & ((\Esc_Prod_FSM|state~38_combout\)))) # (!\Esc_Prod_FSM|state~27_combout\ & ((\Esc_Prod_FSM|current_state.St_Fan~q\) # ((\Esc_Prod_FSM|state.St_Fan~q\ & 
-- \Esc_Prod_FSM|state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~27_combout\,
	datab => \Esc_Prod_FSM|state.St_Fan~q\,
	datac => \Esc_Prod_FSM|current_state.St_Fan~q\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~60_combout\);

-- Location: LCCOMB_X109_Y25_N14
\Esc_Prod_FSM|state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~61_combout\ = (\Esc_Prod_FSM|state~60_combout\) # ((\debuncerKEY0|s_pulsedOut~q\ & (\Esc_Prod_FSM|state.Option~q\ & \Esc_Prod_FSM|state~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|state~41_combout\,
	datad => \Esc_Prod_FSM|state~60_combout\,
	combout => \Esc_Prod_FSM|state~61_combout\);

-- Location: FF_X109_Y25_N15
\Esc_Prod_FSM|state.St_Fan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~61_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.St_Fan~q\);

-- Location: LCCOMB_X109_Y25_N10
\Esc_Prod_FSM|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~34_combout\ = (\Registo|out_Gelo~q\ & ((\Esc_Prod_FSM|state.St_Fan~q\) # ((!\Esc_Prod_FSM|WideOr2~0_combout\)))) # (!\Registo|out_Gelo~q\ & (!\Timer|Equal0~10_combout\ & ((\Esc_Prod_FSM|state.St_Fan~q\) # 
-- (!\Esc_Prod_FSM|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registo|out_Gelo~q\,
	datab => \Esc_Prod_FSM|state.St_Fan~q\,
	datac => \Esc_Prod_FSM|WideOr2~0_combout\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Esc_Prod_FSM|state~34_combout\);

-- Location: LCCOMB_X109_Y25_N16
\Esc_Prod_FSM|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~40_combout\ = (\Esc_Prod_FSM|state~27_combout\ & ((\Esc_Prod_FSM|state~37_combout\) # ((\Esc_Prod_FSM|state~33_combout\) # (\Esc_Prod_FSM|state~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~27_combout\,
	datab => \Esc_Prod_FSM|state~37_combout\,
	datac => \Esc_Prod_FSM|state~33_combout\,
	datad => \Esc_Prod_FSM|state~34_combout\,
	combout => \Esc_Prod_FSM|state~40_combout\);

-- Location: LCCOMB_X107_Y25_N28
\Esc_Prod_FSM|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~64_combout\ = (\Esc_Prod_FSM|state.prog~q\ & \Esc_Prod_FSM|state~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.prog~q\,
	datad => \Esc_Prod_FSM|state~40_combout\,
	combout => \Esc_Prod_FSM|state~64_combout\);

-- Location: LCCOMB_X107_Y25_N22
\Esc_Prod_FSM|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~65_combout\ = (\Esc_Prod_FSM|state~38_combout\ & ((\Esc_Prod_FSM|state.st_progSpes~q\) # ((\Esc_Prod_FSM|state~51_combout\ & \Esc_Prod_FSM|state~64_combout\)))) # (!\Esc_Prod_FSM|state~38_combout\ & (\Esc_Prod_FSM|state~51_combout\ & 
-- ((\Esc_Prod_FSM|state~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~38_combout\,
	datab => \Esc_Prod_FSM|state~51_combout\,
	datac => \Esc_Prod_FSM|state.st_progSpes~q\,
	datad => \Esc_Prod_FSM|state~64_combout\,
	combout => \Esc_Prod_FSM|state~65_combout\);

-- Location: FF_X107_Y25_N23
\Esc_Prod_FSM|state.st_progSpes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~65_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.st_progSpes~q\);

-- Location: LCCOMB_X107_Y25_N0
\Esc_Prod_FSM|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~66_combout\ = (\Esc_Prod_FSM|state~38_combout\ & ((\Esc_Prod_FSM|state.st_progSoli~q\) # ((\GeloSel_FSM|s_nextState~0_combout\ & \Esc_Prod_FSM|state~64_combout\)))) # (!\Esc_Prod_FSM|state~38_combout\ & 
-- (\GeloSel_FSM|s_nextState~0_combout\ & ((\Esc_Prod_FSM|state~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~38_combout\,
	datab => \GeloSel_FSM|s_nextState~0_combout\,
	datac => \Esc_Prod_FSM|state.st_progSoli~q\,
	datad => \Esc_Prod_FSM|state~64_combout\,
	combout => \Esc_Prod_FSM|state~66_combout\);

-- Location: FF_X107_Y25_N1
\Esc_Prod_FSM|state.st_progSoli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~66_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.st_progSoli~q\);

-- Location: LCCOMB_X107_Y25_N8
\Esc_Prod_FSM|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~29_combout\ = (!\Esc_Prod_FSM|state.st_progFan~q\ & (!\Esc_Prod_FSM|state.st_progSpes~q\ & !\Esc_Prod_FSM|state.st_progSoli~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.st_progFan~q\,
	datac => \Esc_Prod_FSM|state.st_progSpes~q\,
	datad => \Esc_Prod_FSM|state.st_progSoli~q\,
	combout => \Esc_Prod_FSM|state~29_combout\);

-- Location: LCCOMB_X107_Y25_N18
\Esc_Prod_FSM|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~36_combout\ = ((\Registo|out_Gelo~q\ & !\Esc_Prod_FSM|state~29_combout\)) # (!\Esc_Prod_FSM|state.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registo|out_Gelo~q\,
	datac => \Esc_Prod_FSM|state~29_combout\,
	datad => \Esc_Prod_FSM|state.Init~q\,
	combout => \Esc_Prod_FSM|state~36_combout\);

-- Location: LCCOMB_X108_Y27_N26
\Esc_Prod_FSM|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~35_combout\ = (\Esc_Prod_FSM|state.Option~q\ & ((\KEY[1]~input_o\) # ((\Registo|out_Gelo~q\) # (!\Esc_Prod_FSM|T_timeVal[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \KEY[1]~input_o\,
	datac => \Registo|out_Gelo~q\,
	datad => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	combout => \Esc_Prod_FSM|state~35_combout\);

-- Location: LCCOMB_X109_Y25_N24
\Esc_Prod_FSM|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~37_combout\ = (\Esc_Prod_FSM|state~36_combout\) # ((\Esc_Prod_FSM|state~35_combout\) # ((\Esc_Prod_FSM|state.prog~q\ & !\Esc_Prod_FSM|T_timeVal[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.prog~q\,
	datab => \Esc_Prod_FSM|state~36_combout\,
	datac => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datad => \Esc_Prod_FSM|state~35_combout\,
	combout => \Esc_Prod_FSM|state~37_combout\);

-- Location: LCCOMB_X109_Y25_N18
\Esc_Prod_FSM|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~38_combout\ = (\Esc_Prod_FSM|state~27_combout\ & (!\Esc_Prod_FSM|state~37_combout\ & (!\Esc_Prod_FSM|state~33_combout\ & !\Esc_Prod_FSM|state~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~27_combout\,
	datab => \Esc_Prod_FSM|state~37_combout\,
	datac => \Esc_Prod_FSM|state~33_combout\,
	datad => \Esc_Prod_FSM|state~34_combout\,
	combout => \Esc_Prod_FSM|state~38_combout\);

-- Location: LCCOMB_X108_Y25_N16
\Esc_Prod_FSM|state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~43_combout\ = (\Esc_Prod_FSM|state.Init~q\ & (!\Timer|Equal0~10_combout\ & ((\Esc_Prod_FSM|state.St_Fan~q\) # (!\Esc_Prod_FSM|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Init~q\,
	datab => \Esc_Prod_FSM|WideOr2~0_combout\,
	datac => \Esc_Prod_FSM|state.St_Fan~q\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Esc_Prod_FSM|state~43_combout\);

-- Location: LCCOMB_X109_Y25_N2
\Esc_Prod_FSM|state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~44_combout\ = (\Esc_Prod_FSM|state~41_combout\ & ((\Esc_Prod_FSM|state~43_combout\) # ((\Esc_Prod_FSM|state~38_combout\ & \Esc_Prod_FSM|state.Done~q\)))) # (!\Esc_Prod_FSM|state~41_combout\ & (\Esc_Prod_FSM|state~38_combout\ & 
-- (\Esc_Prod_FSM|state.Done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~41_combout\,
	datab => \Esc_Prod_FSM|state~38_combout\,
	datac => \Esc_Prod_FSM|state.Done~q\,
	datad => \Esc_Prod_FSM|state~43_combout\,
	combout => \Esc_Prod_FSM|state~44_combout\);

-- Location: FF_X109_Y25_N3
\Esc_Prod_FSM|state.Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~44_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.Done~q\);

-- Location: LCCOMB_X108_Y25_N4
\Esc_Prod_FSM|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~28_combout\ = (\Esc_Prod_FSM|state.Done~q\) # (\Esc_Prod_FSM|state.Boot~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Done~q\,
	datad => \Esc_Prod_FSM|state.Boot~q\,
	combout => \Esc_Prod_FSM|state~28_combout\);

-- Location: LCCOMB_X108_Y25_N30
\Esc_Prod_FSM|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~30_combout\ = (!\KEY[1]~input_o\ & (\Esc_Prod_FSM|state~28_combout\ & ((\Esc_Prod_FSM|state.prog~q\) # (!\Esc_Prod_FSM|state~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Esc_Prod_FSM|state~28_combout\,
	datac => \Esc_Prod_FSM|state.prog~q\,
	datad => \Esc_Prod_FSM|state~29_combout\,
	combout => \Esc_Prod_FSM|state~30_combout\);

-- Location: LCCOMB_X108_Y25_N24
\Esc_Prod_FSM|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~31_combout\ = (\Esc_Prod_FSM|state.prog~q\ & (!\debuncerKEY1|s_pulsedOut~q\ & (!\debuncerKEY0|s_pulsedOut~q\ & !\debuncerKEY2|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.prog~q\,
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \debuncerKEY2|s_pulsedOut~q\,
	combout => \Esc_Prod_FSM|state~31_combout\);

-- Location: LCCOMB_X108_Y25_N26
\Esc_Prod_FSM|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~32_combout\ = (!\KEY[1]~input_o\ & ((\Esc_Prod_FSM|state~31_combout\) # ((!\Esc_Prod_FSM|state~29_combout\ & !\Registo|out_Gelo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~29_combout\,
	datab => \Registo|out_Gelo~q\,
	datac => \KEY[1]~input_o\,
	datad => \Esc_Prod_FSM|state~31_combout\,
	combout => \Esc_Prod_FSM|state~32_combout\);

-- Location: LCCOMB_X109_Y25_N4
\Esc_Prod_FSM|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~33_combout\ = (\Esc_Prod_FSM|state~30_combout\) # ((\Esc_Prod_FSM|state~32_combout\) # ((\Esc_Prod_FSM|state~28_combout\ & !\Timer|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~28_combout\,
	datab => \Esc_Prod_FSM|state~30_combout\,
	datac => \Esc_Prod_FSM|state~32_combout\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Esc_Prod_FSM|state~33_combout\);

-- Location: LCCOMB_X110_Y25_N18
\Esc_Prod_FSM|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector37~0_combout\ = (\Esc_Prod_FSM|state.Option~q\) # ((\Esc_Prod_FSM|current_state.Option~q\ & !\Esc_Prod_FSM|current_state.Init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|current_state.Option~q\,
	datad => \Esc_Prod_FSM|current_state.Init~0_combout\,
	combout => \Esc_Prod_FSM|Selector37~0_combout\);

-- Location: FF_X110_Y25_N19
\Esc_Prod_FSM|current_state.Option\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector37~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.Option~q\);

-- Location: LCCOMB_X110_Y25_N16
\Esc_Prod_FSM|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~39_combout\ = (\Esc_Prod_FSM|state.Option~q\ & ((\Esc_Prod_FSM|state~38_combout\) # ((\Esc_Prod_FSM|current_state.Option~q\ & !\Esc_Prod_FSM|state~27_combout\)))) # (!\Esc_Prod_FSM|state.Option~q\ & 
-- (\Esc_Prod_FSM|current_state.Option~q\ & (!\Esc_Prod_FSM|state~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Esc_Prod_FSM|current_state.Option~q\,
	datac => \Esc_Prod_FSM|state~27_combout\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~39_combout\);

-- Location: LCCOMB_X109_Y25_N12
\Esc_Prod_FSM|state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~42_combout\ = (\Esc_Prod_FSM|state~39_combout\) # ((\Esc_Prod_FSM|state~33_combout\ & \Esc_Prod_FSM|state~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state~33_combout\,
	datac => \Esc_Prod_FSM|state~41_combout\,
	datad => \Esc_Prod_FSM|state~39_combout\,
	combout => \Esc_Prod_FSM|state~42_combout\);

-- Location: FF_X109_Y25_N13
\Esc_Prod_FSM|state.Option\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~42_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.Option~q\);

-- Location: LCCOMB_X108_Y27_N28
\Esc_Prod_FSM|state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~55_combout\ = (\debuncerKEY2|s_pulsedOut~q\) # ((\Registo|out_Gelo~q\) # ((\debuncerKEY1|s_pulsedOut~q\) # (\debuncerKEY0|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY2|s_pulsedOut~q\,
	datab => \Registo|out_Gelo~q\,
	datac => \debuncerKEY1|s_pulsedOut~q\,
	datad => \debuncerKEY0|s_pulsedOut~q\,
	combout => \Esc_Prod_FSM|state~55_combout\);

-- Location: LCCOMB_X108_Y27_N6
\Esc_Prod_FSM|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~56_combout\ = (\Esc_Prod_FSM|state.Option~q\ & (!\Esc_Prod_FSM|state~55_combout\ & ((\Esc_Prod_FSM|state.Init~q\) # (\Esc_Prod_FSM|state~35_combout\)))) # (!\Esc_Prod_FSM|state.Option~q\ & ((\Esc_Prod_FSM|state.Init~q\) # 
-- ((\Esc_Prod_FSM|state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Esc_Prod_FSM|state.Init~q\,
	datac => \Esc_Prod_FSM|state~35_combout\,
	datad => \Esc_Prod_FSM|state~55_combout\,
	combout => \Esc_Prod_FSM|state~56_combout\);

-- Location: LCCOMB_X109_Y25_N22
\Esc_Prod_FSM|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~57_combout\ = (\Esc_Prod_FSM|state~35_combout\) # ((!\Esc_Prod_FSM|state~33_combout\ & !\Esc_Prod_FSM|state~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state~35_combout\,
	datac => \Esc_Prod_FSM|state~33_combout\,
	datad => \Esc_Prod_FSM|state~34_combout\,
	combout => \Esc_Prod_FSM|state~57_combout\);

-- Location: LCCOMB_X109_Y25_N0
\Esc_Prod_FSM|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~58_combout\ = (\Esc_Prod_FSM|state~57_combout\ & (\Esc_Prod_FSM|state~40_combout\ & ((\Esc_Prod_FSM|T_timeVal[2]~0_combout\) # (!\Esc_Prod_FSM|state.prog~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.prog~q\,
	datab => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datac => \Esc_Prod_FSM|state~57_combout\,
	datad => \Esc_Prod_FSM|state~40_combout\,
	combout => \Esc_Prod_FSM|state~58_combout\);

-- Location: LCCOMB_X109_Y25_N20
\Esc_Prod_FSM|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~59_combout\ = (\Esc_Prod_FSM|state~56_combout\ & ((\Esc_Prod_FSM|state~58_combout\) # ((\Esc_Prod_FSM|state~38_combout\ & \Esc_Prod_FSM|state.prog~q\)))) # (!\Esc_Prod_FSM|state~56_combout\ & (\Esc_Prod_FSM|state~38_combout\ & 
-- (\Esc_Prod_FSM|state.prog~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~56_combout\,
	datab => \Esc_Prod_FSM|state~38_combout\,
	datac => \Esc_Prod_FSM|state.prog~q\,
	datad => \Esc_Prod_FSM|state~58_combout\,
	combout => \Esc_Prod_FSM|state~59_combout\);

-- Location: FF_X109_Y25_N21
\Esc_Prod_FSM|state.prog\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~59_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.prog~q\);

-- Location: LCCOMB_X109_Y25_N30
\Esc_Prod_FSM|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~41_combout\ = (\Esc_Prod_FSM|state~40_combout\ & ((\Esc_Prod_FSM|T_timeVal[2]~0_combout\) # (!\Esc_Prod_FSM|state.prog~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.prog~q\,
	datac => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datad => \Esc_Prod_FSM|state~40_combout\,
	combout => \Esc_Prod_FSM|state~41_combout\);

-- Location: LCCOMB_X108_Y27_N0
\Esc_Prod_FSM|state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~45_combout\ = (\Esc_Prod_FSM|state.Option~q\ & (\Registo|out_Gelo~q\ & \Esc_Prod_FSM|T_timeVal[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Registo|out_Gelo~q\,
	datad => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	combout => \Esc_Prod_FSM|state~45_combout\);

-- Location: LCCOMB_X109_Y25_N28
\Esc_Prod_FSM|state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~46_combout\ = (\Esc_Prod_FSM|state~45_combout\) # ((\Timer|Equal0~10_combout\ & (!\Esc_Prod_FSM|state~35_combout\ & \Esc_Prod_FSM|state~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~45_combout\,
	datab => \Timer|Equal0~10_combout\,
	datac => \Esc_Prod_FSM|state~35_combout\,
	datad => \Esc_Prod_FSM|state~34_combout\,
	combout => \Esc_Prod_FSM|state~46_combout\);

-- Location: LCCOMB_X109_Y25_N8
\Esc_Prod_FSM|state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~47_combout\ = (\Esc_Prod_FSM|state~41_combout\ & ((\Esc_Prod_FSM|state~46_combout\) # ((\Esc_Prod_FSM|state.Gelo~q\ & \Esc_Prod_FSM|state~38_combout\)))) # (!\Esc_Prod_FSM|state~41_combout\ & (((\Esc_Prod_FSM|state.Gelo~q\ & 
-- \Esc_Prod_FSM|state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state~41_combout\,
	datab => \Esc_Prod_FSM|state~46_combout\,
	datac => \Esc_Prod_FSM|state.Gelo~q\,
	datad => \Esc_Prod_FSM|state~38_combout\,
	combout => \Esc_Prod_FSM|state~47_combout\);

-- Location: FF_X109_Y25_N9
\Esc_Prod_FSM|state.Gelo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~47_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.Gelo~q\);

-- Location: LCCOMB_X108_Y25_N28
\Esc_Prod_FSM|current_state.Init~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|current_state.Init~1_combout\ = (\Esc_Prod_FSM|current_state.Init~q\) # ((!\SW[17]~input_o\ & \Esc_Prod_FSM|current_state.Init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \Esc_Prod_FSM|current_state.Init~q\,
	datad => \Esc_Prod_FSM|current_state.Init~0_combout\,
	combout => \Esc_Prod_FSM|current_state.Init~1_combout\);

-- Location: FF_X108_Y25_N29
\Esc_Prod_FSM|current_state.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|current_state.Init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|current_state.Init~q\);

-- Location: LCCOMB_X107_Y25_N12
\Esc_Prod_FSM|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state~26_combout\ = (!\SW[17]~input_o\ & (((\Esc_Prod_FSM|current_state.Init~q\) # (\Registo|out_Gelo~q\)) # (!\Esc_Prod_FSM|state.Gelo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Gelo~q\,
	datab => \Esc_Prod_FSM|current_state.Init~q\,
	datac => \SW[17]~input_o\,
	datad => \Registo|out_Gelo~q\,
	combout => \Esc_Prod_FSM|state~26_combout\);

-- Location: FF_X107_Y25_N13
\Esc_Prod_FSM|state.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|state.Init~q\);

-- Location: LCCOMB_X108_Y27_N12
\Esc_Prod_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector1~0_combout\ = (\Esc_Prod_FSM|state.Init~q\ & !\Esc_Prod_FSM|state.Option~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Esc_Prod_FSM|state.Init~q\,
	datad => \Esc_Prod_FSM|state.Option~q\,
	combout => \Esc_Prod_FSM|Selector1~0_combout\);

-- Location: LCCOMB_X108_Y26_N28
\Esc_Prod_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector0~0_combout\ = (\Esc_Prod_FSM|state.Done~q\ & (((\Timer|Equal0~10_combout\)))) # (!\Esc_Prod_FSM|state.Done~q\ & (\Esc_Prod_FSM|Selector1~0_combout\ & (\Esc_Prod_FSM|l_Done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector1~0_combout\,
	datab => \Esc_Prod_FSM|state.Done~q\,
	datac => \Esc_Prod_FSM|l_Done~q\,
	datad => \Timer|Equal0~10_combout\,
	combout => \Esc_Prod_FSM|Selector0~0_combout\);

-- Location: FF_X108_Y26_N29
\Esc_Prod_FSM|l_Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector0~0_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|l_Done~q\);

-- Location: LCCOMB_X107_Y25_N2
\Esc_Prod_FSM|sel_gelo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|sel_gelo~0_combout\ = (\Esc_Prod_FSM|state.Gelo~q\ & ((\SW[17]~input_o\ & (\Esc_Prod_FSM|sel_gelo~q\)) # (!\SW[17]~input_o\ & ((\Registo|out_Gelo~q\))))) # (!\Esc_Prod_FSM|state.Gelo~q\ & (((\Esc_Prod_FSM|sel_gelo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Gelo~q\,
	datab => \SW[17]~input_o\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \Registo|out_Gelo~q\,
	combout => \Esc_Prod_FSM|sel_gelo~0_combout\);

-- Location: FF_X107_Y25_N3
\Esc_Prod_FSM|sel_gelo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|sel_gelo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|sel_gelo~q\);

-- Location: LCCOMB_X107_Y26_N12
\Esc_Prod_FSM|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add2~1_cout\ = CARRY(\Esc_Prod_FSM|SOLI_PREP_TIME\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|SOLI_PREP_TIME\(0),
	datad => VCC,
	cout => \Esc_Prod_FSM|Add2~1_cout\);

-- Location: LCCOMB_X107_Y26_N14
\Esc_Prod_FSM|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add2~2_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add2~1_cout\)) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(1) & ((\Esc_Prod_FSM|Add2~1_cout\) # (GND))))) # (!\debuncerKEY0|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|SOLI_PREP_TIME\(1) & (\Esc_Prod_FSM|Add2~1_cout\ & VCC)) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add2~1_cout\))))
-- \Esc_Prod_FSM|Add2~3\ = CARRY((\debuncerKEY0|s_pulsedOut~q\ & ((!\Esc_Prod_FSM|Add2~1_cout\) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(1)))) # (!\debuncerKEY0|s_pulsedOut~q\ & (!\Esc_Prod_FSM|SOLI_PREP_TIME\(1) & !\Esc_Prod_FSM|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|SOLI_PREP_TIME\(1),
	datad => VCC,
	cin => \Esc_Prod_FSM|Add2~1_cout\,
	combout => \Esc_Prod_FSM|Add2~2_combout\,
	cout => \Esc_Prod_FSM|Add2~3\);

-- Location: LCCOMB_X108_Y27_N30
\Esc_Prod_FSM|FAN_PREP_TIME[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ = (!\SW[17]~input_o\ & (!\Registo|out_Gelo~q\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \Registo|out_Gelo~q\,
	datad => \KEY[1]~input_o\,
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\);

-- Location: LCCOMB_X107_Y26_N20
\Esc_Prod_FSM|SOLI_PREP_TIME[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\ = (\Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\ & (\Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ & \Esc_Prod_FSM|state.st_progSoli~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\,
	datac => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	datad => \Esc_Prod_FSM|state.st_progSoli~q\,
	combout => \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\);

-- Location: FF_X107_Y26_N15
\Esc_Prod_FSM|SOLI_PREP_TIME[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add2~2_combout\,
	ena => \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SOLI_PREP_TIME\(1));

-- Location: LCCOMB_X107_Y26_N16
\Esc_Prod_FSM|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add2~4_combout\ = ((\debuncerKEY0|s_pulsedOut~q\ $ (\Esc_Prod_FSM|SOLI_PREP_TIME\(2) $ (\Esc_Prod_FSM|Add2~3\)))) # (GND)
-- \Esc_Prod_FSM|Add2~5\ = CARRY((\debuncerKEY0|s_pulsedOut~q\ & (\Esc_Prod_FSM|SOLI_PREP_TIME\(2) & !\Esc_Prod_FSM|Add2~3\)) # (!\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(2)) # (!\Esc_Prod_FSM|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|SOLI_PREP_TIME\(2),
	datad => VCC,
	cin => \Esc_Prod_FSM|Add2~3\,
	combout => \Esc_Prod_FSM|Add2~4_combout\,
	cout => \Esc_Prod_FSM|Add2~5\);

-- Location: FF_X107_Y26_N17
\Esc_Prod_FSM|SOLI_PREP_TIME[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add2~4_combout\,
	ena => \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SOLI_PREP_TIME\(2));

-- Location: LCCOMB_X107_Y26_N18
\Esc_Prod_FSM|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add2~6_combout\ = \debuncerKEY0|s_pulsedOut~q\ $ (\Esc_Prod_FSM|Add2~5\ $ (\Esc_Prod_FSM|SOLI_PREP_TIME\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME\(3),
	cin => \Esc_Prod_FSM|Add2~5\,
	combout => \Esc_Prod_FSM|Add2~6_combout\);

-- Location: LCCOMB_X107_Y26_N6
\Esc_Prod_FSM|SOLI_PREP_TIME[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SOLI_PREP_TIME[3]~6_combout\ = (\Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\ & (!\Esc_Prod_FSM|Add2~6_combout\)) # (!\Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|Add2~6_combout\,
	datac => \Esc_Prod_FSM|SOLI_PREP_TIME\(3),
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME[1]~5_combout\,
	combout => \Esc_Prod_FSM|SOLI_PREP_TIME[3]~6_combout\);

-- Location: FF_X107_Y26_N7
\Esc_Prod_FSM|SOLI_PREP_TIME[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|SOLI_PREP_TIME[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SOLI_PREP_TIME\(3));

-- Location: LCCOMB_X107_Y26_N24
\Esc_Prod_FSM|SOLI_PREP_TIME[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\ = (\Esc_Prod_FSM|SOLI_PREP_TIME\(3) & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(2)) # ((\Esc_Prod_FSM|SOLI_PREP_TIME\(1)) # (\Esc_Prod_FSM|SOLI_PREP_TIME\(0))))) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(3) & 
-- (((!\Esc_Prod_FSM|SOLI_PREP_TIME\(0)) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(1))) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME\(3),
	datab => \Esc_Prod_FSM|SOLI_PREP_TIME\(2),
	datac => \Esc_Prod_FSM|SOLI_PREP_TIME\(1),
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME\(0),
	combout => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\);

-- Location: LCCOMB_X107_Y26_N26
\Esc_Prod_FSM|SOLI_PREP_TIME[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(3)) # ((\Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\)))) # (!\debuncerKEY0|s_pulsedOut~q\ & (\debuncerKEY1|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\) # (!\Esc_Prod_FSM|SOLI_PREP_TIME\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME\(3),
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~7_combout\,
	combout => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\);

-- Location: LCCOMB_X107_Y26_N28
\Esc_Prod_FSM|SOLI_PREP_TIME[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SOLI_PREP_TIME[0]~4_combout\ = \Esc_Prod_FSM|SOLI_PREP_TIME\(0) $ (((\Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\ & (\Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ & \Esc_Prod_FSM|state.st_progSoli~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~8_combout\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	datac => \Esc_Prod_FSM|SOLI_PREP_TIME\(0),
	datad => \Esc_Prod_FSM|state.st_progSoli~q\,
	combout => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~4_combout\);

-- Location: FF_X107_Y26_N29
\Esc_Prod_FSM|SOLI_PREP_TIME[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|SOLI_PREP_TIME[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SOLI_PREP_TIME\(0));

-- Location: LCCOMB_X107_Y26_N30
\Esc_Prod_FSM|SPES_PREP_TIME[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\ = (\Esc_Prod_FSM|state.st_progSpes~q\ & (\Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ & \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.st_progSpes~q\,
	datac => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	datad => \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\,
	combout => \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\);

-- Location: LCCOMB_X108_Y26_N6
\Esc_Prod_FSM|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add4~1_cout\ = CARRY(\Esc_Prod_FSM|SPES_PREP_TIME\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SPES_PREP_TIME\(0),
	datad => VCC,
	cout => \Esc_Prod_FSM|Add4~1_cout\);

-- Location: LCCOMB_X108_Y26_N8
\Esc_Prod_FSM|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add4~2_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SPES_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add4~1_cout\)) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(1) & ((\Esc_Prod_FSM|Add4~1_cout\) # (GND))))) # (!\debuncerKEY0|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|SPES_PREP_TIME\(1) & (\Esc_Prod_FSM|Add4~1_cout\ & VCC)) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add4~1_cout\))))
-- \Esc_Prod_FSM|Add4~3\ = CARRY((\debuncerKEY0|s_pulsedOut~q\ & ((!\Esc_Prod_FSM|Add4~1_cout\) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(1)))) # (!\debuncerKEY0|s_pulsedOut~q\ & (!\Esc_Prod_FSM|SPES_PREP_TIME\(1) & !\Esc_Prod_FSM|Add4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|SPES_PREP_TIME\(1),
	datad => VCC,
	cin => \Esc_Prod_FSM|Add4~1_cout\,
	combout => \Esc_Prod_FSM|Add4~2_combout\,
	cout => \Esc_Prod_FSM|Add4~3\);

-- Location: FF_X108_Y26_N9
\Esc_Prod_FSM|SPES_PREP_TIME[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add4~2_combout\,
	ena => \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SPES_PREP_TIME\(1));

-- Location: LCCOMB_X108_Y26_N10
\Esc_Prod_FSM|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add4~4_combout\ = ((\Esc_Prod_FSM|SPES_PREP_TIME\(2) $ (\debuncerKEY0|s_pulsedOut~q\ $ (\Esc_Prod_FSM|Add4~3\)))) # (GND)
-- \Esc_Prod_FSM|Add4~5\ = CARRY((\Esc_Prod_FSM|SPES_PREP_TIME\(2) & ((!\Esc_Prod_FSM|Add4~3\) # (!\debuncerKEY0|s_pulsedOut~q\))) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(2) & (!\debuncerKEY0|s_pulsedOut~q\ & !\Esc_Prod_FSM|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SPES_PREP_TIME\(2),
	datab => \debuncerKEY0|s_pulsedOut~q\,
	datad => VCC,
	cin => \Esc_Prod_FSM|Add4~3\,
	combout => \Esc_Prod_FSM|Add4~4_combout\,
	cout => \Esc_Prod_FSM|Add4~5\);

-- Location: FF_X108_Y26_N11
\Esc_Prod_FSM|SPES_PREP_TIME[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add4~4_combout\,
	ena => \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SPES_PREP_TIME\(2));

-- Location: LCCOMB_X108_Y26_N12
\Esc_Prod_FSM|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add4~6_combout\ = \debuncerKEY0|s_pulsedOut~q\ $ (\Esc_Prod_FSM|SPES_PREP_TIME\(3) $ (\Esc_Prod_FSM|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|SPES_PREP_TIME\(3),
	cin => \Esc_Prod_FSM|Add4~5\,
	combout => \Esc_Prod_FSM|Add4~6_combout\);

-- Location: LCCOMB_X107_Y26_N0
\Esc_Prod_FSM|SPES_PREP_TIME[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SPES_PREP_TIME[3]~6_combout\ = (\Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\ & (!\Esc_Prod_FSM|Add4~6_combout\)) # (!\Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\ & ((\Esc_Prod_FSM|SPES_PREP_TIME\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SPES_PREP_TIME[1]~5_combout\,
	datab => \Esc_Prod_FSM|Add4~6_combout\,
	datac => \Esc_Prod_FSM|SPES_PREP_TIME\(3),
	combout => \Esc_Prod_FSM|SPES_PREP_TIME[3]~6_combout\);

-- Location: FF_X107_Y26_N1
\Esc_Prod_FSM|SPES_PREP_TIME[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|SPES_PREP_TIME[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SPES_PREP_TIME\(3));

-- Location: LCCOMB_X107_Y26_N4
\Esc_Prod_FSM|SPES_PREP_TIME[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\ = (\Esc_Prod_FSM|SPES_PREP_TIME\(3) & ((\Esc_Prod_FSM|SPES_PREP_TIME\(1)) # ((\Esc_Prod_FSM|SPES_PREP_TIME\(2)) # (\Esc_Prod_FSM|SPES_PREP_TIME\(0))))) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(3) & 
-- (((!\Esc_Prod_FSM|SPES_PREP_TIME\(0)) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(2))) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SPES_PREP_TIME\(3),
	datab => \Esc_Prod_FSM|SPES_PREP_TIME\(1),
	datac => \Esc_Prod_FSM|SPES_PREP_TIME\(2),
	datad => \Esc_Prod_FSM|SPES_PREP_TIME\(0),
	combout => \Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\);

-- Location: LCCOMB_X107_Y26_N10
\Esc_Prod_FSM|SPES_PREP_TIME[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & (((\Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\) # (\Esc_Prod_FSM|SPES_PREP_TIME\(3))))) # (!\debuncerKEY0|s_pulsedOut~q\ & (\debuncerKEY1|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\) # (!\Esc_Prod_FSM|SPES_PREP_TIME\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \Esc_Prod_FSM|SPES_PREP_TIME[0]~7_combout\,
	datad => \Esc_Prod_FSM|SPES_PREP_TIME\(3),
	combout => \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\);

-- Location: LCCOMB_X107_Y26_N2
\Esc_Prod_FSM|SPES_PREP_TIME[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|SPES_PREP_TIME[0]~4_combout\ = \Esc_Prod_FSM|SPES_PREP_TIME\(0) $ (((\Esc_Prod_FSM|state.st_progSpes~q\ & (\Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ & \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progSpes~q\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	datac => \Esc_Prod_FSM|SPES_PREP_TIME\(0),
	datad => \Esc_Prod_FSM|SPES_PREP_TIME[0]~8_combout\,
	combout => \Esc_Prod_FSM|SPES_PREP_TIME[0]~4_combout\);

-- Location: FF_X107_Y26_N3
\Esc_Prod_FSM|SPES_PREP_TIME[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|SPES_PREP_TIME[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|SPES_PREP_TIME\(0));

-- Location: LCCOMB_X107_Y27_N20
\Esc_Prod_FSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector5~0_combout\ = (\debuncerKEY1|s_pulsedOut~q\ & (\Esc_Prod_FSM|SOLI_PREP_TIME\(0))) # (!\debuncerKEY1|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SPES_PREP_TIME\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME\(0),
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datad => \Esc_Prod_FSM|SPES_PREP_TIME\(0),
	combout => \Esc_Prod_FSM|Selector5~0_combout\);

-- Location: LCCOMB_X106_Y27_N20
\Esc_Prod_FSM|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add0~1_cout\ = CARRY(\Esc_Prod_FSM|FAN_PREP_TIME\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(0),
	datad => VCC,
	cout => \Esc_Prod_FSM|Add0~1_cout\);

-- Location: LCCOMB_X106_Y27_N22
\Esc_Prod_FSM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add0~2_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|FAN_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add0~1_cout\)) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(1) & ((\Esc_Prod_FSM|Add0~1_cout\) # (GND))))) # (!\debuncerKEY0|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|FAN_PREP_TIME\(1) & (\Esc_Prod_FSM|Add0~1_cout\ & VCC)) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(1) & (!\Esc_Prod_FSM|Add0~1_cout\))))
-- \Esc_Prod_FSM|Add0~3\ = CARRY((\debuncerKEY0|s_pulsedOut~q\ & ((!\Esc_Prod_FSM|Add0~1_cout\) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(1)))) # (!\debuncerKEY0|s_pulsedOut~q\ & (!\Esc_Prod_FSM|FAN_PREP_TIME\(1) & !\Esc_Prod_FSM|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(1),
	datad => VCC,
	cin => \Esc_Prod_FSM|Add0~1_cout\,
	combout => \Esc_Prod_FSM|Add0~2_combout\,
	cout => \Esc_Prod_FSM|Add0~3\);

-- Location: LCCOMB_X106_Y27_N28
\Esc_Prod_FSM|FAN_PREP_TIME[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\ = (\Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\ & (\Esc_Prod_FSM|state.st_progFan~q\ & \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\,
	datac => \Esc_Prod_FSM|state.st_progFan~q\,
	datad => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\);

-- Location: FF_X106_Y27_N23
\Esc_Prod_FSM|FAN_PREP_TIME[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add0~2_combout\,
	ena => \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|FAN_PREP_TIME\(1));

-- Location: LCCOMB_X106_Y27_N24
\Esc_Prod_FSM|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add0~4_combout\ = ((\debuncerKEY0|s_pulsedOut~q\ $ (\Esc_Prod_FSM|FAN_PREP_TIME\(2) $ (\Esc_Prod_FSM|Add0~3\)))) # (GND)
-- \Esc_Prod_FSM|Add0~5\ = CARRY((\debuncerKEY0|s_pulsedOut~q\ & (\Esc_Prod_FSM|FAN_PREP_TIME\(2) & !\Esc_Prod_FSM|Add0~3\)) # (!\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|FAN_PREP_TIME\(2)) # (!\Esc_Prod_FSM|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(2),
	datad => VCC,
	cin => \Esc_Prod_FSM|Add0~3\,
	combout => \Esc_Prod_FSM|Add0~4_combout\,
	cout => \Esc_Prod_FSM|Add0~5\);

-- Location: FF_X106_Y27_N25
\Esc_Prod_FSM|FAN_PREP_TIME[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Add0~4_combout\,
	ena => \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|FAN_PREP_TIME\(2));

-- Location: LCCOMB_X106_Y27_N26
\Esc_Prod_FSM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Add0~6_combout\ = \Esc_Prod_FSM|FAN_PREP_TIME\(3) $ (\Esc_Prod_FSM|Add0~5\ $ (\debuncerKEY0|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|FAN_PREP_TIME\(3),
	datad => \debuncerKEY0|s_pulsedOut~q\,
	cin => \Esc_Prod_FSM|Add0~5\,
	combout => \Esc_Prod_FSM|Add0~6_combout\);

-- Location: LCCOMB_X106_Y27_N10
\Esc_Prod_FSM|FAN_PREP_TIME[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[3]~7_combout\ = (\Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\ & (!\Esc_Prod_FSM|Add0~6_combout\)) # (!\Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\ & ((\Esc_Prod_FSM|FAN_PREP_TIME\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Add0~6_combout\,
	datac => \Esc_Prod_FSM|FAN_PREP_TIME\(3),
	datad => \Esc_Prod_FSM|FAN_PREP_TIME[1]~6_combout\,
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[3]~7_combout\);

-- Location: FF_X106_Y27_N11
\Esc_Prod_FSM|FAN_PREP_TIME[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|FAN_PREP_TIME[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|FAN_PREP_TIME\(3));

-- Location: LCCOMB_X106_Y27_N14
\Esc_Prod_FSM|FAN_PREP_TIME[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\ = (\Esc_Prod_FSM|FAN_PREP_TIME\(3) & ((\Esc_Prod_FSM|FAN_PREP_TIME\(2)) # ((\Esc_Prod_FSM|FAN_PREP_TIME\(1)) # (\Esc_Prod_FSM|FAN_PREP_TIME\(0))))) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(3) & 
-- (((!\Esc_Prod_FSM|FAN_PREP_TIME\(0)) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(1))) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|FAN_PREP_TIME\(3),
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(2),
	datac => \Esc_Prod_FSM|FAN_PREP_TIME\(1),
	datad => \Esc_Prod_FSM|FAN_PREP_TIME\(0),
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\);

-- Location: LCCOMB_X107_Y27_N26
\Esc_Prod_FSM|FAN_PREP_TIME[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\ = (\debuncerKEY0|s_pulsedOut~q\ & ((\Esc_Prod_FSM|FAN_PREP_TIME\(3)) # ((\Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\)))) # (!\debuncerKEY0|s_pulsedOut~q\ & (\debuncerKEY1|s_pulsedOut~q\ & 
-- ((\Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\) # (!\Esc_Prod_FSM|FAN_PREP_TIME\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|FAN_PREP_TIME\(3),
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \Esc_Prod_FSM|FAN_PREP_TIME[0]~8_combout\,
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\);

-- Location: LCCOMB_X106_Y27_N16
\Esc_Prod_FSM|FAN_PREP_TIME[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[0]~5_combout\ = \Esc_Prod_FSM|FAN_PREP_TIME\(0) $ (((\Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\ & (\Esc_Prod_FSM|state.st_progFan~q\ & \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|FAN_PREP_TIME[0]~4_combout\,
	datab => \Esc_Prod_FSM|state.st_progFan~q\,
	datac => \Esc_Prod_FSM|FAN_PREP_TIME\(0),
	datad => \Esc_Prod_FSM|FAN_PREP_TIME[0]~9_combout\,
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[0]~5_combout\);

-- Location: FF_X106_Y27_N17
\Esc_Prod_FSM|FAN_PREP_TIME[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|FAN_PREP_TIME[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|FAN_PREP_TIME\(0));

-- Location: LCCOMB_X108_Y27_N18
\Esc_Prod_FSM|T_timeVal[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|T_timeVal[0]~1_combout\ = (\SW[17]~input_o\) # ((\Esc_Prod_FSM|T_timeVal[2]~0_combout\ & \Esc_Prod_FSM|state.Option~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|T_timeVal[2]~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \Esc_Prod_FSM|state.Option~q\,
	combout => \Esc_Prod_FSM|T_timeVal[0]~1_combout\);

-- Location: LCCOMB_X108_Y27_N4
\Esc_Prod_FSM|T_timeVal[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|T_timeVal[0]~2_combout\ = (!\Esc_Prod_FSM|T_timeVal[0]~1_combout\ & ((\Esc_Prod_FSM|WideOr2~0_combout\ & (!\Esc_Prod_FSM|Selector1~0_combout\)) # (!\Esc_Prod_FSM|WideOr2~0_combout\ & ((!\Timer|Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector1~0_combout\,
	datab => \Esc_Prod_FSM|T_timeVal[0]~1_combout\,
	datac => \Timer|Equal0~10_combout\,
	datad => \Esc_Prod_FSM|WideOr2~0_combout\,
	combout => \Esc_Prod_FSM|T_timeVal[0]~2_combout\);

-- Location: FF_X107_Y27_N21
\Esc_Prod_FSM|T_timeVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector5~0_combout\,
	asdata => \Esc_Prod_FSM|FAN_PREP_TIME\(0),
	sclr => \Esc_Prod_FSM|ALT_INV_state.Option~q\,
	sload => \debuncerKEY0|s_pulsedOut~q\,
	ena => \Esc_Prod_FSM|T_timeVal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|T_timeVal\(0));

-- Location: LCCOMB_X107_Y26_N8
\Esc_Prod_FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector4~0_combout\ = (!\debuncerKEY0|s_pulsedOut~q\ & ((\debuncerKEY1|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(1)))) # (!\debuncerKEY1|s_pulsedOut~q\ & (\Esc_Prod_FSM|SPES_PREP_TIME\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \Esc_Prod_FSM|SPES_PREP_TIME\(1),
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME\(1),
	combout => \Esc_Prod_FSM|Selector4~0_combout\);

-- Location: LCCOMB_X108_Y27_N24
\Esc_Prod_FSM|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector4~1_combout\ = (\Esc_Prod_FSM|Selector4~0_combout\) # ((\debuncerKEY0|s_pulsedOut~q\ & \Esc_Prod_FSM|FAN_PREP_TIME\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(1),
	datad => \Esc_Prod_FSM|Selector4~0_combout\,
	combout => \Esc_Prod_FSM|Selector4~1_combout\);

-- Location: FF_X108_Y27_N25
\Esc_Prod_FSM|T_timeVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector4~1_combout\,
	asdata => VCC,
	sload => \Esc_Prod_FSM|ALT_INV_state.Option~q\,
	ena => \Esc_Prod_FSM|T_timeVal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|T_timeVal\(1));

-- Location: LCCOMB_X107_Y26_N22
\Esc_Prod_FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector3~0_combout\ = (!\debuncerKEY0|s_pulsedOut~q\ & ((\debuncerKEY1|s_pulsedOut~q\ & ((\Esc_Prod_FSM|SOLI_PREP_TIME\(2)))) # (!\debuncerKEY1|s_pulsedOut~q\ & (\Esc_Prod_FSM|SPES_PREP_TIME\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \debuncerKEY1|s_pulsedOut~q\,
	datac => \Esc_Prod_FSM|SPES_PREP_TIME\(2),
	datad => \Esc_Prod_FSM|SOLI_PREP_TIME\(2),
	combout => \Esc_Prod_FSM|Selector3~0_combout\);

-- Location: LCCOMB_X108_Y27_N2
\Esc_Prod_FSM|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector3~1_combout\ = (\Esc_Prod_FSM|Selector3~0_combout\) # ((\debuncerKEY0|s_pulsedOut~q\ & \Esc_Prod_FSM|FAN_PREP_TIME\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \Esc_Prod_FSM|FAN_PREP_TIME\(2),
	datad => \Esc_Prod_FSM|Selector3~0_combout\,
	combout => \Esc_Prod_FSM|Selector3~1_combout\);

-- Location: LCCOMB_X108_Y27_N8
\Esc_Prod_FSM|state.Init~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|state.Init~_wirecell_combout\ = !\Esc_Prod_FSM|state.Init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Esc_Prod_FSM|state.Init~q\,
	combout => \Esc_Prod_FSM|state.Init~_wirecell_combout\);

-- Location: FF_X108_Y27_N3
\Esc_Prod_FSM|T_timeVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector3~1_combout\,
	asdata => \Esc_Prod_FSM|state.Init~_wirecell_combout\,
	sload => \Esc_Prod_FSM|ALT_INV_state.Option~q\,
	ena => \Esc_Prod_FSM|T_timeVal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|T_timeVal\(2));

-- Location: LCCOMB_X107_Y27_N22
\Esc_Prod_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector2~0_combout\ = (\debuncerKEY1|s_pulsedOut~q\ & (!\Esc_Prod_FSM|SOLI_PREP_TIME\(3))) # (!\debuncerKEY1|s_pulsedOut~q\ & ((!\Esc_Prod_FSM|SPES_PREP_TIME\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|SOLI_PREP_TIME\(3),
	datab => \Esc_Prod_FSM|SPES_PREP_TIME\(3),
	datad => \debuncerKEY1|s_pulsedOut~q\,
	combout => \Esc_Prod_FSM|Selector2~0_combout\);

-- Location: LCCOMB_X107_Y27_N4
\Esc_Prod_FSM|FAN_PREP_TIME[3]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|FAN_PREP_TIME[3]~_wirecell_combout\ = !\Esc_Prod_FSM|FAN_PREP_TIME\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Esc_Prod_FSM|FAN_PREP_TIME\(3),
	combout => \Esc_Prod_FSM|FAN_PREP_TIME[3]~_wirecell_combout\);

-- Location: FF_X107_Y27_N23
\Esc_Prod_FSM|T_timeVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector2~0_combout\,
	asdata => \Esc_Prod_FSM|FAN_PREP_TIME[3]~_wirecell_combout\,
	sclr => \Esc_Prod_FSM|ALT_INV_state.Option~q\,
	sload => \debuncerKEY0|s_pulsedOut~q\,
	ena => \Esc_Prod_FSM|T_timeVal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|T_timeVal\(3));

-- Location: LCCOMB_X108_Y25_N20
\Esc_Prod_FSM|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector1~1_combout\ = (\Esc_Prod_FSM|state.Boot~q\) # ((\Esc_Prod_FSM|state.Init~q\ & (!\Esc_Prod_FSM|state.Option~q\ & \Esc_Prod_FSM|Msg_blink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Init~q\,
	datab => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|Msg_blink~q\,
	datad => \Esc_Prod_FSM|state.Boot~q\,
	combout => \Esc_Prod_FSM|Selector1~1_combout\);

-- Location: FF_X108_Y25_N21
\Esc_Prod_FSM|Msg_blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector1~1_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|Msg_blink~q\);

-- Location: LCCOMB_X112_Y33_N2
\FreqDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~0_combout\ = \FreqDiv|s_divCounter\(0) $ (VCC)
-- \FreqDiv|Add0~1\ = CARRY(\FreqDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(0),
	datad => VCC,
	combout => \FreqDiv|Add0~0_combout\,
	cout => \FreqDiv|Add0~1\);

-- Location: FF_X112_Y33_N3
\FreqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(0));

-- Location: LCCOMB_X112_Y33_N4
\FreqDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~2_combout\ = (\FreqDiv|s_divCounter\(1) & (!\FreqDiv|Add0~1\)) # (!\FreqDiv|s_divCounter\(1) & ((\FreqDiv|Add0~1\) # (GND)))
-- \FreqDiv|Add0~3\ = CARRY((!\FreqDiv|Add0~1\) # (!\FreqDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(1),
	datad => VCC,
	cin => \FreqDiv|Add0~1\,
	combout => \FreqDiv|Add0~2_combout\,
	cout => \FreqDiv|Add0~3\);

-- Location: LCCOMB_X112_Y33_N0
\FreqDiv|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~10_combout\ = (\FreqDiv|Add0~2_combout\ & !\FreqDiv|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add0~2_combout\,
	datad => \FreqDiv|Equal0~10_combout\,
	combout => \FreqDiv|s_divCounter~10_combout\);

-- Location: FF_X112_Y33_N1
\FreqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(1));

-- Location: LCCOMB_X112_Y33_N6
\FreqDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~4_combout\ = (\FreqDiv|s_divCounter\(2) & (\FreqDiv|Add0~3\ $ (GND))) # (!\FreqDiv|s_divCounter\(2) & (!\FreqDiv|Add0~3\ & VCC))
-- \FreqDiv|Add0~5\ = CARRY((\FreqDiv|s_divCounter\(2) & !\FreqDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(2),
	datad => VCC,
	cin => \FreqDiv|Add0~3\,
	combout => \FreqDiv|Add0~4_combout\,
	cout => \FreqDiv|Add0~5\);

-- Location: LCCOMB_X111_Y33_N6
\FreqDiv|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~11_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~4_combout\,
	combout => \FreqDiv|s_divCounter~11_combout\);

-- Location: FF_X111_Y33_N7
\FreqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(2));

-- Location: LCCOMB_X112_Y33_N8
\FreqDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~6_combout\ = (\FreqDiv|s_divCounter\(3) & (!\FreqDiv|Add0~5\)) # (!\FreqDiv|s_divCounter\(3) & ((\FreqDiv|Add0~5\) # (GND)))
-- \FreqDiv|Add0~7\ = CARRY((!\FreqDiv|Add0~5\) # (!\FreqDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(3),
	datad => VCC,
	cin => \FreqDiv|Add0~5\,
	combout => \FreqDiv|Add0~6_combout\,
	cout => \FreqDiv|Add0~7\);

-- Location: FF_X112_Y33_N9
\FreqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(3));

-- Location: LCCOMB_X112_Y33_N10
\FreqDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~8_combout\ = (\FreqDiv|s_divCounter\(4) & (\FreqDiv|Add0~7\ $ (GND))) # (!\FreqDiv|s_divCounter\(4) & (!\FreqDiv|Add0~7\ & VCC))
-- \FreqDiv|Add0~9\ = CARRY((\FreqDiv|s_divCounter\(4) & !\FreqDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(4),
	datad => VCC,
	cin => \FreqDiv|Add0~7\,
	combout => \FreqDiv|Add0~8_combout\,
	cout => \FreqDiv|Add0~9\);

-- Location: LCCOMB_X111_Y33_N14
\FreqDiv|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~9_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~10_combout\,
	datac => \FreqDiv|Add0~8_combout\,
	combout => \FreqDiv|s_divCounter~9_combout\);

-- Location: FF_X111_Y33_N15
\FreqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(4));

-- Location: LCCOMB_X112_Y33_N12
\FreqDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~10_combout\ = (\FreqDiv|s_divCounter\(5) & (!\FreqDiv|Add0~9\)) # (!\FreqDiv|s_divCounter\(5) & ((\FreqDiv|Add0~9\) # (GND)))
-- \FreqDiv|Add0~11\ = CARRY((!\FreqDiv|Add0~9\) # (!\FreqDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(5),
	datad => VCC,
	cin => \FreqDiv|Add0~9\,
	combout => \FreqDiv|Add0~10_combout\,
	cout => \FreqDiv|Add0~11\);

-- Location: FF_X112_Y33_N13
\FreqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(5));

-- Location: LCCOMB_X112_Y33_N14
\FreqDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~12_combout\ = (\FreqDiv|s_divCounter\(6) & (\FreqDiv|Add0~11\ $ (GND))) # (!\FreqDiv|s_divCounter\(6) & (!\FreqDiv|Add0~11\ & VCC))
-- \FreqDiv|Add0~13\ = CARRY((\FreqDiv|s_divCounter\(6) & !\FreqDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(6),
	datad => VCC,
	cin => \FreqDiv|Add0~11\,
	combout => \FreqDiv|Add0~12_combout\,
	cout => \FreqDiv|Add0~13\);

-- Location: FF_X112_Y33_N15
\FreqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(6));

-- Location: LCCOMB_X112_Y33_N16
\FreqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~14_combout\ = (\FreqDiv|s_divCounter\(7) & (!\FreqDiv|Add0~13\)) # (!\FreqDiv|s_divCounter\(7) & ((\FreqDiv|Add0~13\) # (GND)))
-- \FreqDiv|Add0~15\ = CARRY((!\FreqDiv|Add0~13\) # (!\FreqDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(7),
	datad => VCC,
	cin => \FreqDiv|Add0~13\,
	combout => \FreqDiv|Add0~14_combout\,
	cout => \FreqDiv|Add0~15\);

-- Location: FF_X112_Y33_N17
\FreqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(7));

-- Location: LCCOMB_X112_Y33_N18
\FreqDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~16_combout\ = (\FreqDiv|s_divCounter\(8) & (\FreqDiv|Add0~15\ $ (GND))) # (!\FreqDiv|s_divCounter\(8) & (!\FreqDiv|Add0~15\ & VCC))
-- \FreqDiv|Add0~17\ = CARRY((\FreqDiv|s_divCounter\(8) & !\FreqDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(8),
	datad => VCC,
	cin => \FreqDiv|Add0~15\,
	combout => \FreqDiv|Add0~16_combout\,
	cout => \FreqDiv|Add0~17\);

-- Location: FF_X112_Y33_N19
\FreqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(8));

-- Location: LCCOMB_X112_Y33_N20
\FreqDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~18_combout\ = (\FreqDiv|s_divCounter\(9) & (!\FreqDiv|Add0~17\)) # (!\FreqDiv|s_divCounter\(9) & ((\FreqDiv|Add0~17\) # (GND)))
-- \FreqDiv|Add0~19\ = CARRY((!\FreqDiv|Add0~17\) # (!\FreqDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(9),
	datad => VCC,
	cin => \FreqDiv|Add0~17\,
	combout => \FreqDiv|Add0~18_combout\,
	cout => \FreqDiv|Add0~19\);

-- Location: FF_X112_Y33_N21
\FreqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(9));

-- Location: LCCOMB_X112_Y33_N22
\FreqDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~20_combout\ = (\FreqDiv|s_divCounter\(10) & (\FreqDiv|Add0~19\ $ (GND))) # (!\FreqDiv|s_divCounter\(10) & (!\FreqDiv|Add0~19\ & VCC))
-- \FreqDiv|Add0~21\ = CARRY((\FreqDiv|s_divCounter\(10) & !\FreqDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(10),
	datad => VCC,
	cin => \FreqDiv|Add0~19\,
	combout => \FreqDiv|Add0~20_combout\,
	cout => \FreqDiv|Add0~21\);

-- Location: FF_X112_Y33_N23
\FreqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(10));

-- Location: LCCOMB_X112_Y33_N24
\FreqDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~22_combout\ = (\FreqDiv|s_divCounter\(11) & (!\FreqDiv|Add0~21\)) # (!\FreqDiv|s_divCounter\(11) & ((\FreqDiv|Add0~21\) # (GND)))
-- \FreqDiv|Add0~23\ = CARRY((!\FreqDiv|Add0~21\) # (!\FreqDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(11),
	datad => VCC,
	cin => \FreqDiv|Add0~21\,
	combout => \FreqDiv|Add0~22_combout\,
	cout => \FreqDiv|Add0~23\);

-- Location: LCCOMB_X111_Y33_N12
\FreqDiv|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~8_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~22_combout\,
	combout => \FreqDiv|s_divCounter~8_combout\);

-- Location: FF_X111_Y33_N13
\FreqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(11));

-- Location: LCCOMB_X111_Y33_N10
\FreqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~8_combout\ = (\FreqDiv|s_divCounter\(11) & (\FreqDiv|s_divCounter\(4) & (!\FreqDiv|s_divCounter\(3) & !\FreqDiv|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(11),
	datab => \FreqDiv|s_divCounter\(4),
	datac => \FreqDiv|s_divCounter\(3),
	datad => \FreqDiv|s_divCounter\(10),
	combout => \FreqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y33_N20
\FreqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~9_combout\ = (\FreqDiv|s_divCounter\(2) & (!\FreqDiv|s_divCounter\(1) & \FreqDiv|s_divCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(2),
	datac => \FreqDiv|s_divCounter\(1),
	datad => \FreqDiv|s_divCounter\(0),
	combout => \FreqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y33_N26
\FreqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~24_combout\ = (\FreqDiv|s_divCounter\(12) & (\FreqDiv|Add0~23\ $ (GND))) # (!\FreqDiv|s_divCounter\(12) & (!\FreqDiv|Add0~23\ & VCC))
-- \FreqDiv|Add0~25\ = CARRY((\FreqDiv|s_divCounter\(12) & !\FreqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(12),
	datad => VCC,
	cin => \FreqDiv|Add0~23\,
	combout => \FreqDiv|Add0~24_combout\,
	cout => \FreqDiv|Add0~25\);

-- Location: FF_X112_Y33_N27
\FreqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(12));

-- Location: LCCOMB_X112_Y33_N28
\FreqDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~26_combout\ = (\FreqDiv|s_divCounter\(13) & (!\FreqDiv|Add0~25\)) # (!\FreqDiv|s_divCounter\(13) & ((\FreqDiv|Add0~25\) # (GND)))
-- \FreqDiv|Add0~27\ = CARRY((!\FreqDiv|Add0~25\) # (!\FreqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \FreqDiv|Add0~25\,
	combout => \FreqDiv|Add0~26_combout\,
	cout => \FreqDiv|Add0~27\);

-- Location: LCCOMB_X111_Y33_N16
\FreqDiv|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~7_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~26_combout\,
	combout => \FreqDiv|s_divCounter~7_combout\);

-- Location: FF_X111_Y33_N17
\FreqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(13));

-- Location: LCCOMB_X112_Y33_N30
\FreqDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~28_combout\ = (\FreqDiv|s_divCounter\(14) & (\FreqDiv|Add0~27\ $ (GND))) # (!\FreqDiv|s_divCounter\(14) & (!\FreqDiv|Add0~27\ & VCC))
-- \FreqDiv|Add0~29\ = CARRY((\FreqDiv|s_divCounter\(14) & !\FreqDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(14),
	datad => VCC,
	cin => \FreqDiv|Add0~27\,
	combout => \FreqDiv|Add0~28_combout\,
	cout => \FreqDiv|Add0~29\);

-- Location: FF_X112_Y33_N31
\FreqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(14));

-- Location: LCCOMB_X112_Y32_N0
\FreqDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~30_combout\ = (\FreqDiv|s_divCounter\(15) & (!\FreqDiv|Add0~29\)) # (!\FreqDiv|s_divCounter\(15) & ((\FreqDiv|Add0~29\) # (GND)))
-- \FreqDiv|Add0~31\ = CARRY((!\FreqDiv|Add0~29\) # (!\FreqDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(15),
	datad => VCC,
	cin => \FreqDiv|Add0~29\,
	combout => \FreqDiv|Add0~30_combout\,
	cout => \FreqDiv|Add0~31\);

-- Location: FF_X112_Y32_N1
\FreqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(15));

-- Location: LCCOMB_X112_Y32_N2
\FreqDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~32_combout\ = (\FreqDiv|s_divCounter\(16) & (\FreqDiv|Add0~31\ $ (GND))) # (!\FreqDiv|s_divCounter\(16) & (!\FreqDiv|Add0~31\ & VCC))
-- \FreqDiv|Add0~33\ = CARRY((\FreqDiv|s_divCounter\(16) & !\FreqDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \FreqDiv|Add0~31\,
	combout => \FreqDiv|Add0~32_combout\,
	cout => \FreqDiv|Add0~33\);

-- Location: LCCOMB_X111_Y32_N6
\FreqDiv|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~5_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~32_combout\,
	combout => \FreqDiv|s_divCounter~5_combout\);

-- Location: FF_X111_Y32_N7
\FreqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(16));

-- Location: LCCOMB_X112_Y32_N4
\FreqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~34_combout\ = (\FreqDiv|s_divCounter\(17) & (!\FreqDiv|Add0~33\)) # (!\FreqDiv|s_divCounter\(17) & ((\FreqDiv|Add0~33\) # (GND)))
-- \FreqDiv|Add0~35\ = CARRY((!\FreqDiv|Add0~33\) # (!\FreqDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(17),
	datad => VCC,
	cin => \FreqDiv|Add0~33\,
	combout => \FreqDiv|Add0~34_combout\,
	cout => \FreqDiv|Add0~35\);

-- Location: LCCOMB_X111_Y32_N4
\FreqDiv|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~4_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~34_combout\,
	combout => \FreqDiv|s_divCounter~4_combout\);

-- Location: FF_X111_Y32_N5
\FreqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(17));

-- Location: LCCOMB_X112_Y32_N6
\FreqDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~36_combout\ = (\FreqDiv|s_divCounter\(18) & (\FreqDiv|Add0~35\ $ (GND))) # (!\FreqDiv|s_divCounter\(18) & (!\FreqDiv|Add0~35\ & VCC))
-- \FreqDiv|Add0~37\ = CARRY((\FreqDiv|s_divCounter\(18) & !\FreqDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(18),
	datad => VCC,
	cin => \FreqDiv|Add0~35\,
	combout => \FreqDiv|Add0~36_combout\,
	cout => \FreqDiv|Add0~37\);

-- Location: LCCOMB_X111_Y32_N16
\FreqDiv|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~3_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~36_combout\,
	combout => \FreqDiv|s_divCounter~3_combout\);

-- Location: FF_X111_Y32_N17
\FreqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(18));

-- Location: LCCOMB_X112_Y32_N8
\FreqDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~38_combout\ = (\FreqDiv|s_divCounter\(19) & (!\FreqDiv|Add0~37\)) # (!\FreqDiv|s_divCounter\(19) & ((\FreqDiv|Add0~37\) # (GND)))
-- \FreqDiv|Add0~39\ = CARRY((!\FreqDiv|Add0~37\) # (!\FreqDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(19),
	datad => VCC,
	cin => \FreqDiv|Add0~37\,
	combout => \FreqDiv|Add0~38_combout\,
	cout => \FreqDiv|Add0~39\);

-- Location: LCCOMB_X111_Y32_N22
\FreqDiv|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~2_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~10_combout\,
	datac => \FreqDiv|Add0~38_combout\,
	combout => \FreqDiv|s_divCounter~2_combout\);

-- Location: FF_X111_Y32_N23
\FreqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(19));

-- Location: LCCOMB_X112_Y32_N10
\FreqDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~40_combout\ = (\FreqDiv|s_divCounter\(20) & (\FreqDiv|Add0~39\ $ (GND))) # (!\FreqDiv|s_divCounter\(20) & (!\FreqDiv|Add0~39\ & VCC))
-- \FreqDiv|Add0~41\ = CARRY((\FreqDiv|s_divCounter\(20) & !\FreqDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(20),
	datad => VCC,
	cin => \FreqDiv|Add0~39\,
	combout => \FreqDiv|Add0~40_combout\,
	cout => \FreqDiv|Add0~41\);

-- Location: LCCOMB_X111_Y32_N12
\FreqDiv|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~1_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~10_combout\,
	datac => \FreqDiv|Add0~40_combout\,
	combout => \FreqDiv|s_divCounter~1_combout\);

-- Location: FF_X111_Y32_N13
\FreqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(20));

-- Location: LCCOMB_X112_Y32_N12
\FreqDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~42_combout\ = (\FreqDiv|s_divCounter\(21) & (!\FreqDiv|Add0~41\)) # (!\FreqDiv|s_divCounter\(21) & ((\FreqDiv|Add0~41\) # (GND)))
-- \FreqDiv|Add0~43\ = CARRY((!\FreqDiv|Add0~41\) # (!\FreqDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(21),
	datad => VCC,
	cin => \FreqDiv|Add0~41\,
	combout => \FreqDiv|Add0~42_combout\,
	cout => \FreqDiv|Add0~43\);

-- Location: LCCOMB_X111_Y32_N18
\FreqDiv|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~0_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~10_combout\,
	datac => \FreqDiv|Add0~42_combout\,
	combout => \FreqDiv|s_divCounter~0_combout\);

-- Location: FF_X111_Y32_N19
\FreqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(21));

-- Location: LCCOMB_X112_Y32_N14
\FreqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~44_combout\ = (\FreqDiv|s_divCounter\(22) & (\FreqDiv|Add0~43\ $ (GND))) # (!\FreqDiv|s_divCounter\(22) & (!\FreqDiv|Add0~43\ & VCC))
-- \FreqDiv|Add0~45\ = CARRY((\FreqDiv|s_divCounter\(22) & !\FreqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(22),
	datad => VCC,
	cin => \FreqDiv|Add0~43\,
	combout => \FreqDiv|Add0~44_combout\,
	cout => \FreqDiv|Add0~45\);

-- Location: LCCOMB_X111_Y33_N26
\FreqDiv|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter~6_combout\ = (!\FreqDiv|Equal0~10_combout\ & \FreqDiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Equal0~10_combout\,
	datad => \FreqDiv|Add0~44_combout\,
	combout => \FreqDiv|s_divCounter~6_combout\);

-- Location: FF_X111_Y33_N27
\FreqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(22));

-- Location: LCCOMB_X111_Y33_N4
\FreqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~7_combout\ = (\FreqDiv|s_divCounter\(22) & (\FreqDiv|s_divCounter\(13) & (!\FreqDiv|s_divCounter\(15) & !\FreqDiv|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(22),
	datab => \FreqDiv|s_divCounter\(13),
	datac => \FreqDiv|s_divCounter\(15),
	datad => \FreqDiv|s_divCounter\(12),
	combout => \FreqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y32_N16
\FreqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~46_combout\ = (\FreqDiv|s_divCounter\(23) & (!\FreqDiv|Add0~45\)) # (!\FreqDiv|s_divCounter\(23) & ((\FreqDiv|Add0~45\) # (GND)))
-- \FreqDiv|Add0~47\ = CARRY((!\FreqDiv|Add0~45\) # (!\FreqDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(23),
	datad => VCC,
	cin => \FreqDiv|Add0~45\,
	combout => \FreqDiv|Add0~46_combout\,
	cout => \FreqDiv|Add0~47\);

-- Location: FF_X112_Y32_N17
\FreqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(23));

-- Location: LCCOMB_X112_Y32_N18
\FreqDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~48_combout\ = (\FreqDiv|s_divCounter\(24) & (\FreqDiv|Add0~47\ $ (GND))) # (!\FreqDiv|s_divCounter\(24) & (!\FreqDiv|Add0~47\ & VCC))
-- \FreqDiv|Add0~49\ = CARRY((\FreqDiv|s_divCounter\(24) & !\FreqDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(24),
	datad => VCC,
	cin => \FreqDiv|Add0~47\,
	combout => \FreqDiv|Add0~48_combout\,
	cout => \FreqDiv|Add0~49\);

-- Location: FF_X112_Y32_N19
\FreqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(24));

-- Location: LCCOMB_X112_Y32_N20
\FreqDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~50_combout\ = (\FreqDiv|s_divCounter\(25) & (!\FreqDiv|Add0~49\)) # (!\FreqDiv|s_divCounter\(25) & ((\FreqDiv|Add0~49\) # (GND)))
-- \FreqDiv|Add0~51\ = CARRY((!\FreqDiv|Add0~49\) # (!\FreqDiv|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(25),
	datad => VCC,
	cin => \FreqDiv|Add0~49\,
	combout => \FreqDiv|Add0~50_combout\,
	cout => \FreqDiv|Add0~51\);

-- Location: FF_X112_Y32_N21
\FreqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(25));

-- Location: LCCOMB_X112_Y32_N22
\FreqDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~52_combout\ = (\FreqDiv|s_divCounter\(26) & (\FreqDiv|Add0~51\ $ (GND))) # (!\FreqDiv|s_divCounter\(26) & (!\FreqDiv|Add0~51\ & VCC))
-- \FreqDiv|Add0~53\ = CARRY((\FreqDiv|s_divCounter\(26) & !\FreqDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(26),
	datad => VCC,
	cin => \FreqDiv|Add0~51\,
	combout => \FreqDiv|Add0~52_combout\,
	cout => \FreqDiv|Add0~53\);

-- Location: FF_X112_Y32_N23
\FreqDiv|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(26));

-- Location: LCCOMB_X111_Y32_N26
\FreqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~5_combout\ = (!\FreqDiv|s_divCounter\(23) & (!\FreqDiv|s_divCounter\(24) & (!\FreqDiv|s_divCounter\(25) & !\FreqDiv|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(23),
	datab => \FreqDiv|s_divCounter\(24),
	datac => \FreqDiv|s_divCounter\(25),
	datad => \FreqDiv|s_divCounter\(26),
	combout => \FreqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y32_N24
\FreqDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~54_combout\ = (\FreqDiv|s_divCounter\(27) & (!\FreqDiv|Add0~53\)) # (!\FreqDiv|s_divCounter\(27) & ((\FreqDiv|Add0~53\) # (GND)))
-- \FreqDiv|Add0~55\ = CARRY((!\FreqDiv|Add0~53\) # (!\FreqDiv|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(27),
	datad => VCC,
	cin => \FreqDiv|Add0~53\,
	combout => \FreqDiv|Add0~54_combout\,
	cout => \FreqDiv|Add0~55\);

-- Location: FF_X112_Y32_N25
\FreqDiv|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(27));

-- Location: LCCOMB_X112_Y32_N26
\FreqDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~56_combout\ = (\FreqDiv|s_divCounter\(28) & (\FreqDiv|Add0~55\ $ (GND))) # (!\FreqDiv|s_divCounter\(28) & (!\FreqDiv|Add0~55\ & VCC))
-- \FreqDiv|Add0~57\ = CARRY((\FreqDiv|s_divCounter\(28) & !\FreqDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(28),
	datad => VCC,
	cin => \FreqDiv|Add0~55\,
	combout => \FreqDiv|Add0~56_combout\,
	cout => \FreqDiv|Add0~57\);

-- Location: FF_X112_Y32_N27
\FreqDiv|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(28));

-- Location: LCCOMB_X112_Y32_N28
\FreqDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~58_combout\ = (\FreqDiv|s_divCounter\(29) & (!\FreqDiv|Add0~57\)) # (!\FreqDiv|s_divCounter\(29) & ((\FreqDiv|Add0~57\) # (GND)))
-- \FreqDiv|Add0~59\ = CARRY((!\FreqDiv|Add0~57\) # (!\FreqDiv|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(29),
	datad => VCC,
	cin => \FreqDiv|Add0~57\,
	combout => \FreqDiv|Add0~58_combout\,
	cout => \FreqDiv|Add0~59\);

-- Location: FF_X112_Y32_N29
\FreqDiv|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(29));

-- Location: LCCOMB_X112_Y32_N30
\FreqDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add0~60_combout\ = \FreqDiv|s_divCounter\(30) $ (!\FreqDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(30),
	cin => \FreqDiv|Add0~59\,
	combout => \FreqDiv|Add0~60_combout\);

-- Location: FF_X112_Y32_N31
\FreqDiv|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(30));

-- Location: LCCOMB_X111_Y32_N28
\FreqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~0_combout\ = (!\FreqDiv|s_divCounter\(30) & (!\FreqDiv|s_divCounter\(29) & (!\FreqDiv|s_divCounter\(28) & !\FreqDiv|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(30),
	datab => \FreqDiv|s_divCounter\(29),
	datac => \FreqDiv|s_divCounter\(28),
	datad => \FreqDiv|s_divCounter\(27),
	combout => \FreqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y32_N8
\FreqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~4_combout\ = (!\FreqDiv|s_divCounter\(5) & (!\FreqDiv|s_divCounter\(7) & (!\FreqDiv|s_divCounter\(6) & !\FreqDiv|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(5),
	datab => \FreqDiv|s_divCounter\(7),
	datac => \FreqDiv|s_divCounter\(6),
	datad => \FreqDiv|s_divCounter\(8),
	combout => \FreqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y32_N30
\FreqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~1_combout\ = (\FreqDiv|s_divCounter\(20) & (\FreqDiv|s_divCounter\(21) & (\FreqDiv|s_divCounter\(19) & \FreqDiv|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(20),
	datab => \FreqDiv|s_divCounter\(21),
	datac => \FreqDiv|s_divCounter\(19),
	datad => \FreqDiv|s_divCounter\(18),
	combout => \FreqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y32_N20
\FreqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~2_combout\ = (!\FreqDiv|s_divCounter\(14) & !\FreqDiv|s_divCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|s_divCounter\(14),
	datad => \FreqDiv|s_divCounter\(9),
	combout => \FreqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y32_N10
\FreqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~3_combout\ = (\FreqDiv|s_divCounter\(16) & (\FreqDiv|s_divCounter\(17) & (\FreqDiv|Equal0~1_combout\ & \FreqDiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(16),
	datab => \FreqDiv|s_divCounter\(17),
	datac => \FreqDiv|Equal0~1_combout\,
	datad => \FreqDiv|Equal0~2_combout\,
	combout => \FreqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y32_N0
\FreqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~6_combout\ = (\FreqDiv|Equal0~5_combout\ & (\FreqDiv|Equal0~0_combout\ & (\FreqDiv|Equal0~4_combout\ & \FreqDiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~5_combout\,
	datab => \FreqDiv|Equal0~0_combout\,
	datac => \FreqDiv|Equal0~4_combout\,
	datad => \FreqDiv|Equal0~3_combout\,
	combout => \FreqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y33_N30
\FreqDiv|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~10_combout\ = (\FreqDiv|Equal0~8_combout\ & (\FreqDiv|Equal0~9_combout\ & (\FreqDiv|Equal0~7_combout\ & \FreqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~8_combout\,
	datab => \FreqDiv|Equal0~9_combout\,
	datac => \FreqDiv|Equal0~7_combout\,
	datad => \FreqDiv|Equal0~6_combout\,
	combout => \FreqDiv|Equal0~10_combout\);

-- Location: LCCOMB_X111_Y33_N28
\FreqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~2_combout\ = (!\FreqDiv|s_divCounter\(2) & (\FreqDiv|s_divCounter\(1) & !\FreqDiv|s_divCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(2),
	datac => \FreqDiv|s_divCounter\(1),
	datad => \FreqDiv|s_divCounter\(0),
	combout => \FreqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X111_Y33_N8
\FreqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~1_combout\ = (!\FreqDiv|s_divCounter\(11) & (!\FreqDiv|s_divCounter\(4) & (\FreqDiv|s_divCounter\(3) & \FreqDiv|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(11),
	datab => \FreqDiv|s_divCounter\(4),
	datac => \FreqDiv|s_divCounter\(3),
	datad => \FreqDiv|s_divCounter\(10),
	combout => \FreqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X111_Y33_N18
\FreqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~0_combout\ = (!\FreqDiv|s_divCounter\(22) & (!\FreqDiv|s_divCounter\(13) & (\FreqDiv|s_divCounter\(15) & \FreqDiv|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(22),
	datab => \FreqDiv|s_divCounter\(13),
	datac => \FreqDiv|s_divCounter\(15),
	datad => \FreqDiv|s_divCounter\(12),
	combout => \FreqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X111_Y33_N22
\FreqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~3_combout\ = (\FreqDiv|clkOut~2_combout\ & (\FreqDiv|clkOut~1_combout\ & \FreqDiv|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|clkOut~2_combout\,
	datac => \FreqDiv|clkOut~1_combout\,
	datad => \FreqDiv|clkOut~0_combout\,
	combout => \FreqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X111_Y33_N24
\FreqDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~4_combout\ = (!\FreqDiv|Equal0~10_combout\ & ((\FreqDiv|clkOut~q\) # ((\FreqDiv|Equal0~6_combout\ & \FreqDiv|clkOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~10_combout\,
	datab => \FreqDiv|Equal0~6_combout\,
	datac => \FreqDiv|clkOut~q\,
	datad => \FreqDiv|clkOut~3_combout\,
	combout => \FreqDiv|clkOut~4_combout\);

-- Location: FF_X111_Y33_N25
\FreqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|clkOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|clkOut~q\);

-- Location: LCCOMB_X108_Y25_N0
\Esc_Prod_FSM|WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|WideOr24~0_combout\ = (!\Esc_Prod_FSM|state.Gelo~q\ & (!\Esc_Prod_FSM|state.prog~q\ & !\Esc_Prod_FSM|state.Boot~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.Gelo~q\,
	datac => \Esc_Prod_FSM|state.prog~q\,
	datad => \Esc_Prod_FSM|state.Boot~q\,
	combout => \Esc_Prod_FSM|WideOr24~0_combout\);

-- Location: LCCOMB_X110_Y25_N10
\Esc_Prod_FSM|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector19~2_combout\ = (\Esc_Prod_FSM|state.st_progSpes~q\) # ((\Esc_Prod_FSM|state.St_Spes~q\) # ((\Esc_Prod_FSM|bin_Msg\(3) & !\Esc_Prod_FSM|WideOr24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progSpes~q\,
	datab => \Esc_Prod_FSM|state.St_Spes~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(3),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector19~2_combout\);

-- Location: FF_X110_Y25_N11
\Esc_Prod_FSM|bin_Msg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector19~2_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(3));

-- Location: LCCOMB_X111_Y26_N24
\msg_display[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[3]~6_combout\ = (!\Esc_Prod_FSM|sel_gelo~q\ & (!\Esc_Prod_FSM|bin_Msg\(3) & ((!\FreqDiv|clkOut~q\) # (!\Esc_Prod_FSM|Msg_blink~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Msg_blink~q\,
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(3),
	combout => \msg_display[3]~6_combout\);

-- Location: LCCOMB_X108_Y26_N30
\GeloSel_FSM|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~13_combout\ = (\debuncerKEY1|s_pulsedOut~q\ & (((\GeloSel_FSM|s_currentState.S4~q\)))) # (!\debuncerKEY1|s_pulsedOut~q\ & (\GeloSel_FSM|s_currentState.S3~q\ & (!\debuncerKEY0|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState.S3~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \GeloSel_FSM|s_currentState.S4~q\,
	combout => \GeloSel_FSM|s_currentState~13_combout\);

-- Location: LCCOMB_X108_Y26_N20
\GeloSel_FSM|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~12_combout\ = (!\Esc_Prod_FSM|l_Done~q\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|l_Done~q\,
	datac => \SW[17]~input_o\,
	combout => \GeloSel_FSM|s_currentState~12_combout\);

-- Location: LCCOMB_X108_Y26_N22
\GeloSel_FSM|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~15_combout\ = (!\debuncerKEY0|s_pulsedOut~q\ & ((\debuncerKEY1|s_pulsedOut~q\ & (!\GeloSel_FSM|s_currentState.S2~q\)) # (!\debuncerKEY1|s_pulsedOut~q\ & ((\GeloSel_FSM|s_currentState.S1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState.S2~q\,
	datac => \GeloSel_FSM|s_currentState.S1~q\,
	datad => \debuncerKEY0|s_pulsedOut~q\,
	combout => \GeloSel_FSM|s_currentState~15_combout\);

-- Location: LCCOMB_X108_Y26_N4
\GeloSel_FSM|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~17_combout\ = (!\debuncerKEY0|s_pulsedOut~q\ & ((\GeloSel_FSM|s_currentState.S0~q\) # ((\debuncerKEY1|s_pulsedOut~q\ & \GeloSel_FSM|s_currentState.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \GeloSel_FSM|s_currentState.S1~q\,
	datad => \debuncerKEY0|s_pulsedOut~q\,
	combout => \GeloSel_FSM|s_currentState~17_combout\);

-- Location: LCCOMB_X108_Y26_N16
\GeloSel_FSM|s_currentState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~21_combout\ = (!\SW[17]~input_o\ & (\GeloSel_FSM|s_currentState~17_combout\ & !\Esc_Prod_FSM|l_Done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \GeloSel_FSM|s_currentState~17_combout\,
	datad => \Esc_Prod_FSM|l_Done~q\,
	combout => \GeloSel_FSM|s_currentState~21_combout\);

-- Location: FF_X108_Y26_N17
\GeloSel_FSM|s_currentState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GeloSel_FSM|s_currentState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GeloSel_FSM|s_currentState.S0~q\);

-- Location: LCCOMB_X108_Y26_N14
\GeloSel_FSM|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~16_combout\ = (\GeloSel_FSM|s_currentState~12_combout\ & ((\GeloSel_FSM|s_currentState~15_combout\) # ((\GeloSel_FSM|s_currentState.S0~q\ & \debuncerKEY0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState~15_combout\,
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \GeloSel_FSM|s_currentState~12_combout\,
	combout => \GeloSel_FSM|s_currentState~16_combout\);

-- Location: FF_X108_Y26_N15
\GeloSel_FSM|s_currentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GeloSel_FSM|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GeloSel_FSM|s_currentState.S1~q\);

-- Location: LCCOMB_X108_Y26_N18
\GeloSel_FSM|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~18_combout\ = (!\debuncerKEY0|s_pulsedOut~q\ & ((\debuncerKEY1|s_pulsedOut~q\ & ((\GeloSel_FSM|s_currentState.S3~q\))) # (!\debuncerKEY1|s_pulsedOut~q\ & (!\GeloSel_FSM|s_currentState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState.S2~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \GeloSel_FSM|s_currentState.S3~q\,
	combout => \GeloSel_FSM|s_currentState~18_combout\);

-- Location: LCCOMB_X108_Y26_N0
\GeloSel_FSM|s_currentState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~19_combout\ = (\GeloSel_FSM|s_currentState~12_combout\ & (!\GeloSel_FSM|s_currentState~18_combout\ & ((!\GeloSel_FSM|s_currentState.S1~q\) # (!\debuncerKEY0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY0|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState~12_combout\,
	datac => \GeloSel_FSM|s_currentState.S1~q\,
	datad => \GeloSel_FSM|s_currentState~18_combout\,
	combout => \GeloSel_FSM|s_currentState~19_combout\);

-- Location: FF_X108_Y26_N1
\GeloSel_FSM|s_currentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GeloSel_FSM|s_currentState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GeloSel_FSM|s_currentState.S2~q\);

-- Location: LCCOMB_X108_Y26_N24
\GeloSel_FSM|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~14_combout\ = (\GeloSel_FSM|s_currentState~12_combout\ & ((\GeloSel_FSM|s_currentState~13_combout\) # ((\debuncerKEY0|s_pulsedOut~q\ & !\GeloSel_FSM|s_currentState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState~13_combout\,
	datab => \GeloSel_FSM|s_currentState~12_combout\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \GeloSel_FSM|s_currentState.S2~q\,
	combout => \GeloSel_FSM|s_currentState~14_combout\);

-- Location: FF_X108_Y26_N25
\GeloSel_FSM|s_currentState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GeloSel_FSM|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GeloSel_FSM|s_currentState.S3~q\);

-- Location: LCCOMB_X108_Y26_N26
\GeloSel_FSM|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~11_combout\ = (\debuncerKEY1|s_pulsedOut~q\ & (\GeloSel_FSM|s_currentState.S3~q\ & (\debuncerKEY0|s_pulsedOut~q\))) # (!\debuncerKEY1|s_pulsedOut~q\ & ((\GeloSel_FSM|s_currentState.S4~q\) # ((\GeloSel_FSM|s_currentState.S3~q\ & 
-- \debuncerKEY0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debuncerKEY1|s_pulsedOut~q\,
	datab => \GeloSel_FSM|s_currentState.S3~q\,
	datac => \debuncerKEY0|s_pulsedOut~q\,
	datad => \GeloSel_FSM|s_currentState.S4~q\,
	combout => \GeloSel_FSM|s_currentState~11_combout\);

-- Location: LCCOMB_X108_Y26_N2
\GeloSel_FSM|s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \GeloSel_FSM|s_currentState~20_combout\ = (!\SW[17]~input_o\ & (\GeloSel_FSM|s_currentState~11_combout\ & !\Esc_Prod_FSM|l_Done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \GeloSel_FSM|s_currentState~11_combout\,
	datad => \Esc_Prod_FSM|l_Done~q\,
	combout => \GeloSel_FSM|s_currentState~20_combout\);

-- Location: FF_X108_Y26_N3
\GeloSel_FSM|s_currentState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GeloSel_FSM|s_currentState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GeloSel_FSM|s_currentState.S4~q\);

-- Location: LCCOMB_X110_Y26_N12
\Esc_Prod_FSM|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector17~0_combout\ = (!\Esc_Prod_FSM|state.st_progFan~q\ & (!\Esc_Prod_FSM|state.Done~q\ & (!\Esc_Prod_FSM|state.St_Fan~q\ & !\Esc_Prod_FSM|state.Option~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progFan~q\,
	datab => \Esc_Prod_FSM|state.Done~q\,
	datac => \Esc_Prod_FSM|state.St_Fan~q\,
	datad => \Esc_Prod_FSM|state.Option~q\,
	combout => \Esc_Prod_FSM|Selector17~0_combout\);

-- Location: LCCOMB_X110_Y26_N24
\Esc_Prod_FSM|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector22~0_combout\ = ((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(0))) # (!\Esc_Prod_FSM|Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|WideOr24~0_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(0),
	datad => \Esc_Prod_FSM|Selector17~0_combout\,
	combout => \Esc_Prod_FSM|Selector22~0_combout\);

-- Location: FF_X110_Y26_N25
\Esc_Prod_FSM|bin_Msg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector22~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(0));

-- Location: LCCOMB_X111_Y26_N2
\msg_display~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display~7_combout\ = (\FreqDiv|clkOut~q\ & \Esc_Prod_FSM|Msg_blink~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|Msg_blink~q\,
	combout => \msg_display~7_combout\);

-- Location: LCCOMB_X109_Y26_N18
\msg_display[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[0]~9_combout\ = (\msg_display~7_combout\) # ((\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S4~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\ & ((\Esc_Prod_FSM|bin_Msg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S4~q\,
	datab => \Esc_Prod_FSM|bin_Msg\(0),
	datac => \msg_display~7_combout\,
	datad => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[0]~9_combout\);

-- Location: LCCOMB_X110_Y26_N30
\Esc_Prod_FSM|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector21~0_combout\ = (\Esc_Prod_FSM|WideOr24~0_combout\ & (!\Esc_Prod_FSM|state.Option~q\)) # (!\Esc_Prod_FSM|WideOr24~0_combout\ & ((\Esc_Prod_FSM|bin_Msg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|state.Option~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(1),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector21~0_combout\);

-- Location: FF_X110_Y26_N31
\Esc_Prod_FSM|bin_Msg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector21~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(1));

-- Location: LCCOMB_X109_Y26_N16
\msg_display[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[1]~8_combout\ = (!\msg_display~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S4~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\ & ((\Esc_Prod_FSM|bin_Msg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S4~q\,
	datab => \msg_display~7_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(1),
	datad => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[1]~8_combout\);

-- Location: LCCOMB_X110_Y26_N10
\Esc_Prod_FSM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector10~0_combout\ = (!\Esc_Prod_FSM|state.st_progFan~q\ & (!\Esc_Prod_FSM|state.St_Fan~q\ & !\Esc_Prod_FSM|state.Option~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progFan~q\,
	datac => \Esc_Prod_FSM|state.St_Fan~q\,
	datad => \Esc_Prod_FSM|state.Option~q\,
	combout => \Esc_Prod_FSM|Selector10~0_combout\);

-- Location: LCCOMB_X110_Y26_N28
\Esc_Prod_FSM|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector12~0_combout\ = ((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(10))) # (!\Esc_Prod_FSM|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|WideOr24~0_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(10),
	datad => \Esc_Prod_FSM|Selector10~0_combout\,
	combout => \Esc_Prod_FSM|Selector12~0_combout\);

-- Location: FF_X110_Y26_N29
\Esc_Prod_FSM|bin_Msg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector12~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(10));

-- Location: LCCOMB_X111_Y26_N4
\msg_display[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[2]~4_combout\ = (\Esc_Prod_FSM|Msg_blink~q\ & (!\FreqDiv|clkOut~q\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(10))))) # (!\Esc_Prod_FSM|Msg_blink~q\ & ((\Esc_Prod_FSM|sel_gelo~q\) # ((!\Esc_Prod_FSM|bin_Msg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Msg_blink~q\,
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(10),
	combout => \msg_display[2]~4_combout\);

-- Location: LCCOMB_X111_Y26_N26
\msg_display[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[2]~5_combout\ = (\msg_display[2]~4_combout\ & ((\GeloSel_FSM|s_currentState.S4~q\) # (!\Esc_Prod_FSM|sel_gelo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|sel_gelo~q\,
	datab => \GeloSel_FSM|s_currentState.S4~q\,
	datad => \msg_display[2]~4_combout\,
	combout => \msg_display[2]~5_combout\);

-- Location: LCCOMB_X109_Y26_N24
\display0|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[0]~0_combout\ = (\msg_display[3]~6_combout\ & (!\msg_display[2]~5_combout\ & (\msg_display[0]~9_combout\ $ (!\msg_display[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[0]~9_combout\,
	datab => \msg_display[1]~8_combout\,
	datac => \msg_display[3]~6_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X109_Y26_N4
\msg_display[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[0]~11_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S4~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\ & ((\Esc_Prod_FSM|bin_Msg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S4~q\,
	datab => \Esc_Prod_FSM|bin_Msg\(0),
	datad => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[0]~11_combout\);

-- Location: LCCOMB_X109_Y26_N10
\msg_display[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[1]~10_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S4~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\ & ((\Esc_Prod_FSM|bin_Msg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S4~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(1),
	datad => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[1]~10_combout\);

-- Location: LCCOMB_X109_Y26_N26
\display0|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[0]~1_combout\ = (\msg_display[3]~6_combout\ & (((\msg_display[0]~11_combout\ & \msg_display[1]~10_combout\)))) # (!\msg_display[3]~6_combout\ & ((\msg_display[1]~10_combout\ & (!\msg_display[1]~8_combout\)) # 
-- (!\msg_display[1]~10_combout\ & ((\msg_display[0]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[1]~8_combout\,
	datac => \msg_display[0]~11_combout\,
	datad => \msg_display[1]~10_combout\,
	combout => \display0|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X109_Y26_N28
\display0|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[0]~2_combout\ = (\display0|decOut_n[0]~0_combout\) # (\msg_display[3]~6_combout\ $ (((\display0|decOut_n[0]~1_combout\) # (!\msg_display[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \display0|decOut_n[0]~0_combout\,
	datac => \display0|decOut_n[0]~1_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X109_Y30_N4
\display0|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[1]~3_combout\ = (\msg_display[0]~9_combout\ & ((\msg_display[3]~6_combout\ $ (!\msg_display[1]~8_combout\)) # (!\msg_display[2]~5_combout\))) # (!\msg_display[0]~9_combout\ & ((\msg_display[3]~6_combout\ & ((\msg_display[2]~5_combout\) 
-- # (!\msg_display[1]~8_combout\))) # (!\msg_display[3]~6_combout\ & (\msg_display[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[0]~9_combout\,
	datac => \msg_display[1]~8_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X109_Y30_N22
\display0|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[2]~4_combout\ = (\msg_display[0]~9_combout\ & ((\msg_display[1]~8_combout\ $ (!\msg_display[2]~5_combout\)) # (!\msg_display[3]~6_combout\))) # (!\msg_display[0]~9_combout\ & (\msg_display[3]~6_combout\ $ (((\msg_display[1]~8_combout\ & 
-- !\msg_display[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[0]~9_combout\,
	datac => \msg_display[1]~8_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X109_Y30_N12
\display0|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[3]~5_combout\ = (\msg_display[0]~9_combout\ & ((\msg_display[3]~6_combout\ $ (\msg_display[1]~8_combout\)) # (!\msg_display[2]~5_combout\))) # (!\msg_display[0]~9_combout\ & ((\msg_display[3]~6_combout\) # ((\msg_display[1]~8_combout\ & 
-- !\msg_display[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[0]~9_combout\,
	datac => \msg_display[1]~8_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X109_Y26_N0
\display0|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[4]~7_combout\ = (\msg_display[3]~6_combout\ & (!\msg_display[0]~11_combout\ & ((\msg_display~7_combout\) # (!\msg_display[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display~7_combout\,
	datac => \msg_display[0]~11_combout\,
	datad => \msg_display[1]~10_combout\,
	combout => \display0|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X109_Y26_N6
\display0|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[4]~6_combout\ = (!\msg_display[3]~6_combout\ & ((\msg_display[0]~9_combout\ & ((!\msg_display[2]~5_combout\))) # (!\msg_display[0]~9_combout\ & (\msg_display[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[0]~9_combout\,
	datab => \msg_display[1]~8_combout\,
	datac => \msg_display[3]~6_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X111_Y26_N20
\display0|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[4]~8_combout\ = (\display0|decOut_n[4]~6_combout\) # ((\display0|decOut_n[4]~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display0|decOut_n[4]~7_combout\,
	datab => \display0|decOut_n[4]~6_combout\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(10),
	combout => \display0|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X109_Y26_N22
\display0|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[5]~9_combout\ = (\msg_display[3]~6_combout\ & (!\msg_display[1]~8_combout\ & (!\msg_display[0]~11_combout\ & \msg_display[2]~5_combout\))) # (!\msg_display[3]~6_combout\ & (((!\msg_display[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[1]~8_combout\,
	datac => \msg_display[0]~11_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X109_Y26_N12
\display0|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[5]~10_combout\ = (\display0|decOut_n[5]~9_combout\) # (\display0|decOut_n[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display0|decOut_n[5]~9_combout\,
	datad => \display0|decOut_n[0]~0_combout\,
	combout => \display0|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X109_Y30_N10
\display0|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n[6]~11_combout\ = (\msg_display[0]~9_combout\ & (!\msg_display[3]~6_combout\ & (!\msg_display[1]~8_combout\))) # (!\msg_display[0]~9_combout\ & (\msg_display[2]~5_combout\ & (\msg_display[3]~6_combout\ $ (!\msg_display[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[3]~6_combout\,
	datab => \msg_display[0]~9_combout\,
	datac => \msg_display[1]~8_combout\,
	datad => \msg_display[2]~5_combout\,
	combout => \display0|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X110_Y25_N0
\Esc_Prod_FSM|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector15~0_combout\ = (\Esc_Prod_FSM|state.St_Soli~q\) # ((\Esc_Prod_FSM|state.st_progSoli~q\) # ((\Esc_Prod_FSM|bin_Msg\(7) & !\Esc_Prod_FSM|WideOr24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.St_Soli~q\,
	datab => \Esc_Prod_FSM|state.st_progSoli~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(7),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector15~0_combout\);

-- Location: FF_X110_Y25_N1
\Esc_Prod_FSM|bin_Msg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector15~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(7));

-- Location: LCCOMB_X111_Y26_N8
\msg_display[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[7]~14_combout\ = (!\Esc_Prod_FSM|bin_Msg\(7) & (!\Esc_Prod_FSM|sel_gelo~q\ & ((!\Esc_Prod_FSM|Msg_blink~q\) # (!\FreqDiv|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(7),
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|Msg_blink~q\,
	combout => \msg_display[7]~14_combout\);

-- Location: LCCOMB_X110_Y25_N22
\Esc_Prod_FSM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector9~0_combout\ = (!\Esc_Prod_FSM|state.St_Spes~q\ & !\Esc_Prod_FSM|state.st_progSpes~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Esc_Prod_FSM|state.St_Spes~q\,
	datad => \Esc_Prod_FSM|state.st_progSpes~q\,
	combout => \Esc_Prod_FSM|Selector9~0_combout\);

-- Location: LCCOMB_X110_Y26_N16
\Esc_Prod_FSM|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector17~1_combout\ = (((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(5))) # (!\Esc_Prod_FSM|Selector17~0_combout\)) # (!\Esc_Prod_FSM|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector9~0_combout\,
	datab => \Esc_Prod_FSM|WideOr24~0_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(5),
	datad => \Esc_Prod_FSM|Selector17~0_combout\,
	combout => \Esc_Prod_FSM|Selector17~1_combout\);

-- Location: FF_X110_Y26_N17
\Esc_Prod_FSM|bin_Msg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector17~1_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(5));

-- Location: LCCOMB_X111_Y26_N10
\msg_display[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[5]~17_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & (((!\GeloSel_FSM|s_currentState.S4~q\ & !\GeloSel_FSM|s_currentState.S3~q\)))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (\Esc_Prod_FSM|bin_Msg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(5),
	datab => \GeloSel_FSM|s_currentState.S4~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \GeloSel_FSM|s_currentState.S3~q\,
	combout => \msg_display[5]~17_combout\);

-- Location: LCCOMB_X111_Y26_N6
\msg_display[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[4]~12_combout\ = (!\GeloSel_FSM|s_currentState.S3~q\ & (!\GeloSel_FSM|s_currentState.S4~q\ & \Esc_Prod_FSM|sel_gelo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S3~q\,
	datab => \GeloSel_FSM|s_currentState.S4~q\,
	datad => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[4]~12_combout\);

-- Location: LCCOMB_X111_Y26_N22
\msg_display[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[5]~15_combout\ = (!\msg_display~7_combout\ & ((\msg_display[4]~12_combout\) # ((\Esc_Prod_FSM|bin_Msg\(5) & !\Esc_Prod_FSM|sel_gelo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(5),
	datab => \msg_display~7_combout\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \msg_display[4]~12_combout\,
	combout => \msg_display[5]~15_combout\);

-- Location: LCCOMB_X110_Y26_N14
\Esc_Prod_FSM|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector18~2_combout\ = (\Esc_Prod_FSM|WideOr24~0_combout\ & (!\Esc_Prod_FSM|state.st_progFan~q\ & (!\Esc_Prod_FSM|state.St_Fan~q\))) # (!\Esc_Prod_FSM|WideOr24~0_combout\ & (((\Esc_Prod_FSM|bin_Msg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progFan~q\,
	datab => \Esc_Prod_FSM|state.St_Fan~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(4),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector18~2_combout\);

-- Location: FF_X110_Y26_N15
\Esc_Prod_FSM|bin_Msg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector18~2_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(4));

-- Location: LCCOMB_X111_Y26_N16
\msg_display[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[4]~18_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S3~q\ & (!\GeloSel_FSM|s_currentState.S4~q\))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (((\Esc_Prod_FSM|bin_Msg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S3~q\,
	datab => \GeloSel_FSM|s_currentState.S4~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(4),
	combout => \msg_display[4]~18_combout\);

-- Location: LCCOMB_X112_Y26_N24
\display1|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[0]~1_combout\ = (\msg_display[5]~17_combout\ & ((\msg_display[7]~14_combout\ & ((\msg_display[4]~18_combout\))) # (!\msg_display[7]~14_combout\ & (!\msg_display[5]~15_combout\)))) # (!\msg_display[5]~17_combout\ & 
-- (((\msg_display[4]~18_combout\ & !\msg_display[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[5]~17_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~18_combout\,
	datad => \msg_display[7]~14_combout\,
	combout => \display1|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X111_Y26_N0
\msg_display[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[4]~16_combout\ = (\msg_display~7_combout\) # ((\msg_display[4]~12_combout\) # ((\Esc_Prod_FSM|bin_Msg\(4) & !\Esc_Prod_FSM|sel_gelo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(4),
	datab => \msg_display~7_combout\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \msg_display[4]~12_combout\,
	combout => \msg_display[4]~16_combout\);

-- Location: LCCOMB_X110_Y26_N18
\Esc_Prod_FSM|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|WideOr22~0_combout\ = (!\Esc_Prod_FSM|state.St_Fan~q\ & !\Esc_Prod_FSM|state.st_progFan~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.St_Fan~q\,
	datac => \Esc_Prod_FSM|state.st_progFan~q\,
	combout => \Esc_Prod_FSM|WideOr22~0_combout\);

-- Location: LCCOMB_X110_Y26_N2
\Esc_Prod_FSM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector8~0_combout\ = (\Esc_Prod_FSM|state.Done~q\) # (((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(14))) # (!\Esc_Prod_FSM|WideOr22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|WideOr24~0_combout\,
	datab => \Esc_Prod_FSM|state.Done~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(14),
	datad => \Esc_Prod_FSM|WideOr22~0_combout\,
	combout => \Esc_Prod_FSM|Selector8~0_combout\);

-- Location: FF_X110_Y26_N3
\Esc_Prod_FSM|bin_Msg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector8~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(14));

-- Location: LCCOMB_X112_Y26_N20
\msg_display[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[6]~13_combout\ = (!\msg_display[4]~12_combout\ & (!\msg_display~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|sel_gelo~q\,
	datab => \msg_display[4]~12_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(14),
	datad => \msg_display~7_combout\,
	combout => \msg_display[6]~13_combout\);

-- Location: LCCOMB_X112_Y26_N26
\display1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[0]~0_combout\ = (\msg_display[7]~14_combout\ & (!\msg_display[6]~13_combout\ & (\msg_display[5]~15_combout\ $ (!\msg_display[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X112_Y26_N18
\display1|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[0]~2_combout\ = (\display1|decOut_n[0]~0_combout\) # (\msg_display[7]~14_combout\ $ (((\display1|decOut_n[0]~1_combout\) # (!\msg_display[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \display1|decOut_n[0]~1_combout\,
	datac => \display1|decOut_n[0]~0_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X112_Y26_N28
\display1|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[1]~3_combout\ = (\msg_display[4]~16_combout\ & ((\msg_display[7]~14_combout\ $ (!\msg_display[5]~15_combout\)) # (!\msg_display[6]~13_combout\))) # (!\msg_display[4]~16_combout\ & ((\msg_display[7]~14_combout\ & 
-- ((\msg_display[6]~13_combout\) # (!\msg_display[5]~15_combout\))) # (!\msg_display[7]~14_combout\ & (\msg_display[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X112_Y26_N30
\display1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[2]~4_combout\ = (\msg_display[4]~16_combout\ & ((\msg_display[5]~15_combout\ $ (!\msg_display[6]~13_combout\)) # (!\msg_display[7]~14_combout\))) # (!\msg_display[4]~16_combout\ & (\msg_display[7]~14_combout\ $ 
-- (((\msg_display[5]~15_combout\ & !\msg_display[6]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X112_Y26_N4
\display1|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[3]~5_combout\ = (\msg_display[5]~15_combout\ & ((\msg_display[7]~14_combout\ $ (\msg_display[4]~16_combout\)) # (!\msg_display[6]~13_combout\))) # (!\msg_display[5]~15_combout\ & ((\msg_display[7]~14_combout\) # 
-- ((\msg_display[4]~16_combout\ & !\msg_display[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X112_Y26_N16
\display1|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[4]~7_combout\ = (!\msg_display[4]~18_combout\ & (\msg_display[7]~14_combout\ & ((\msg_display~7_combout\) # (!\msg_display[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display~7_combout\,
	datab => \msg_display[5]~17_combout\,
	datac => \msg_display[4]~18_combout\,
	datad => \msg_display[7]~14_combout\,
	combout => \display1|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X112_Y26_N10
\display1|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[4]~6_combout\ = (!\msg_display[7]~14_combout\ & ((\msg_display[4]~16_combout\ & ((!\msg_display[6]~13_combout\))) # (!\msg_display[4]~16_combout\ & (\msg_display[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X112_Y26_N2
\display1|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[4]~8_combout\ = (\display1|decOut_n[4]~6_combout\) # ((\display1|decOut_n[4]~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|sel_gelo~q\,
	datab => \display1|decOut_n[4]~7_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(14),
	datad => \display1|decOut_n[4]~6_combout\,
	combout => \display1|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X112_Y26_N0
\display1|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[5]~9_combout\ = (\msg_display[7]~14_combout\ & (!\msg_display[5]~15_combout\ & (!\msg_display[4]~18_combout\ & \msg_display[6]~13_combout\))) # (!\msg_display[7]~14_combout\ & (((!\msg_display[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~18_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X112_Y26_N6
\display1|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[5]~10_combout\ = (\display1|decOut_n[0]~0_combout\) # (\display1|decOut_n[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|decOut_n[0]~0_combout\,
	datad => \display1|decOut_n[5]~9_combout\,
	combout => \display1|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X112_Y26_N12
\display1|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n[6]~11_combout\ = (\msg_display[4]~16_combout\ & (!\msg_display[7]~14_combout\ & (!\msg_display[5]~15_combout\))) # (!\msg_display[4]~16_combout\ & (\msg_display[6]~13_combout\ & (\msg_display[7]~14_combout\ $ 
-- (!\msg_display[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[7]~14_combout\,
	datab => \msg_display[5]~15_combout\,
	datac => \msg_display[4]~16_combout\,
	datad => \msg_display[6]~13_combout\,
	combout => \display1|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X110_Y25_N20
\Esc_Prod_FSM|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector9~1_combout\ = (!\Esc_Prod_FSM|state.st_progSpes~q\ & (!\Esc_Prod_FSM|state.st_progSoli~q\ & (!\Esc_Prod_FSM|state.St_Spes~q\ & !\Esc_Prod_FSM|state.St_Soli~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.st_progSpes~q\,
	datab => \Esc_Prod_FSM|state.st_progSoli~q\,
	datac => \Esc_Prod_FSM|state.St_Spes~q\,
	datad => \Esc_Prod_FSM|state.St_Soli~q\,
	combout => \Esc_Prod_FSM|Selector9~1_combout\);

-- Location: LCCOMB_X110_Y25_N14
\Esc_Prod_FSM|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector11~0_combout\ = (\Esc_Prod_FSM|state.Done~q\) # (((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(11))) # (!\Esc_Prod_FSM|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|WideOr24~0_combout\,
	datab => \Esc_Prod_FSM|state.Done~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(11),
	datad => \Esc_Prod_FSM|Selector9~1_combout\,
	combout => \Esc_Prod_FSM|Selector11~0_combout\);

-- Location: FF_X110_Y25_N15
\Esc_Prod_FSM|bin_Msg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector11~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(11));

-- Location: LCCOMB_X111_Y22_N10
\msg_display[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[11]~20_combout\ = (!\Esc_Prod_FSM|sel_gelo~q\ & (!\Esc_Prod_FSM|bin_Msg\(11) & ((!\FreqDiv|clkOut~q\) # (!\Esc_Prod_FSM|Msg_blink~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|sel_gelo~q\,
	datab => \Esc_Prod_FSM|Msg_blink~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(11),
	combout => \msg_display[11]~20_combout\);

-- Location: LCCOMB_X111_Y22_N20
\msg_display[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[10]~19_combout\ = (\msg_display[2]~4_combout\ & (((!\GeloSel_FSM|s_currentState.S1~q\ & !\GeloSel_FSM|s_currentState.S0~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S1~q\,
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \msg_display[2]~4_combout\,
	combout => \msg_display[10]~19_combout\);

-- Location: LCCOMB_X110_Y25_N8
\Esc_Prod_FSM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector13~0_combout\ = (((\Esc_Prod_FSM|bin_Msg\(9) & !\Esc_Prod_FSM|WideOr24~0_combout\)) # (!\Esc_Prod_FSM|state.Init~q\)) # (!\Esc_Prod_FSM|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector9~0_combout\,
	datab => \Esc_Prod_FSM|state.Init~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(9),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector13~0_combout\);

-- Location: FF_X110_Y25_N9
\Esc_Prod_FSM|bin_Msg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector13~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(9));

-- Location: LCCOMB_X111_Y22_N28
\msg_display[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[9]~21_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S1~q\) # ((\GeloSel_FSM|s_currentState.S0~q\)))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (((\Esc_Prod_FSM|bin_Msg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S1~q\,
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(9),
	combout => \msg_display[9]~21_combout\);

-- Location: LCCOMB_X111_Y22_N0
\msg_display[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[9]~29_combout\ = (\msg_display[9]~21_combout\ & ((!\Esc_Prod_FSM|Msg_blink~q\) # (!\FreqDiv|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~q\,
	datac => \Esc_Prod_FSM|Msg_blink~q\,
	datad => \msg_display[9]~21_combout\,
	combout => \msg_display[9]~29_combout\);

-- Location: LCCOMB_X110_Y26_N4
\Esc_Prod_FSM|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector14~0_combout\ = (((!\Esc_Prod_FSM|WideOr24~0_combout\ & \Esc_Prod_FSM|bin_Msg\(8))) # (!\Esc_Prod_FSM|WideOr22~0_combout\)) # (!\Esc_Prod_FSM|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector9~0_combout\,
	datab => \Esc_Prod_FSM|WideOr24~0_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(8),
	datad => \Esc_Prod_FSM|WideOr22~0_combout\,
	combout => \Esc_Prod_FSM|Selector14~0_combout\);

-- Location: FF_X110_Y26_N5
\Esc_Prod_FSM|bin_Msg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector14~0_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(8));

-- Location: LCCOMB_X111_Y26_N18
\msg_display[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[8]~22_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S1~q\) # ((\GeloSel_FSM|s_currentState.S0~q\)))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (((\Esc_Prod_FSM|bin_Msg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GeloSel_FSM|s_currentState.S1~q\,
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(8),
	datad => \GeloSel_FSM|s_currentState.S0~q\,
	combout => \msg_display[8]~22_combout\);

-- Location: LCCOMB_X111_Y22_N26
\msg_display[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[8]~30_combout\ = (\msg_display[8]~22_combout\) # ((\Esc_Prod_FSM|Msg_blink~q\ & \FreqDiv|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|Msg_blink~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \msg_display[8]~22_combout\,
	combout => \msg_display[8]~30_combout\);

-- Location: LCCOMB_X111_Y22_N14
\display2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[0]~0_combout\ = (\msg_display[11]~20_combout\ & (!\msg_display[10]~19_combout\ & (\msg_display[9]~29_combout\ $ (!\msg_display[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X111_Y22_N16
\display2|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[0]~1_combout\ = (\msg_display[11]~20_combout\ & (((\msg_display[8]~22_combout\ & \msg_display[9]~21_combout\)))) # (!\msg_display[11]~20_combout\ & ((\msg_display[9]~21_combout\ & (!\msg_display[9]~29_combout\)) # 
-- (!\msg_display[9]~21_combout\ & ((\msg_display[8]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~22_combout\,
	datad => \msg_display[9]~21_combout\,
	combout => \display2|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X111_Y22_N30
\display2|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[0]~2_combout\ = (\display2|decOut_n[0]~0_combout\) # (\msg_display[11]~20_combout\ $ (((\display2|decOut_n[0]~1_combout\) # (!\msg_display[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[10]~19_combout\,
	datac => \display2|decOut_n[0]~0_combout\,
	datad => \display2|decOut_n[0]~1_combout\,
	combout => \display2|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X111_Y22_N4
\display2|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[1]~3_combout\ = (\msg_display[8]~30_combout\ & ((\msg_display[11]~20_combout\ $ (!\msg_display[9]~29_combout\)) # (!\msg_display[10]~19_combout\))) # (!\msg_display[8]~30_combout\ & ((\msg_display[11]~20_combout\ & 
-- ((\msg_display[10]~19_combout\) # (!\msg_display[9]~29_combout\))) # (!\msg_display[11]~20_combout\ & (\msg_display[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X111_Y22_N18
\display2|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[2]~4_combout\ = (\msg_display[8]~30_combout\ & ((\msg_display[9]~29_combout\ $ (!\msg_display[10]~19_combout\)) # (!\msg_display[11]~20_combout\))) # (!\msg_display[8]~30_combout\ & (\msg_display[11]~20_combout\ $ 
-- (((\msg_display[9]~29_combout\ & !\msg_display[10]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X111_Y22_N8
\display2|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[3]~5_combout\ = (\msg_display[9]~29_combout\ & ((\msg_display[11]~20_combout\ $ (\msg_display[8]~30_combout\)) # (!\msg_display[10]~19_combout\))) # (!\msg_display[9]~29_combout\ & ((\msg_display[11]~20_combout\) # 
-- ((\msg_display[8]~30_combout\ & !\msg_display[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X111_Y22_N12
\display2|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[4]~7_combout\ = (\msg_display[11]~20_combout\ & (!\msg_display[8]~22_combout\ & ((\msg_display~7_combout\) # (!\msg_display[9]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display~7_combout\,
	datac => \msg_display[8]~22_combout\,
	datad => \msg_display[9]~21_combout\,
	combout => \display2|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X111_Y22_N2
\display2|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[4]~6_combout\ = (!\msg_display[11]~20_combout\ & ((\msg_display[8]~30_combout\ & ((!\msg_display[10]~19_combout\))) # (!\msg_display[8]~30_combout\ & (\msg_display[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X111_Y22_N6
\display2|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[4]~8_combout\ = (\display2|decOut_n[4]~6_combout\) # ((\display2|decOut_n[4]~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display2|decOut_n[4]~7_combout\,
	datab => \Esc_Prod_FSM|bin_Msg\(10),
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	datad => \display2|decOut_n[4]~6_combout\,
	combout => \display2|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X111_Y22_N24
\display2|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[5]~9_combout\ = (\msg_display[11]~20_combout\ & (!\msg_display[9]~29_combout\ & (!\msg_display[8]~22_combout\ & \msg_display[10]~19_combout\))) # (!\msg_display[11]~20_combout\ & (((!\msg_display[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~22_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X112_Y22_N24
\display2|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[5]~10_combout\ = (\display2|decOut_n[5]~9_combout\) # (\display2|decOut_n[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display2|decOut_n[5]~9_combout\,
	datad => \display2|decOut_n[0]~0_combout\,
	combout => \display2|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X111_Y22_N22
\display2|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|decOut_n[6]~11_combout\ = (\msg_display[8]~30_combout\ & (!\msg_display[11]~20_combout\ & (!\msg_display[9]~29_combout\))) # (!\msg_display[8]~30_combout\ & (\msg_display[10]~19_combout\ & (\msg_display[11]~20_combout\ $ 
-- (!\msg_display[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[11]~20_combout\,
	datab => \msg_display[9]~29_combout\,
	datac => \msg_display[8]~30_combout\,
	datad => \msg_display[10]~19_combout\,
	combout => \display2|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X110_Y26_N20
\Esc_Prod_FSM|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector10~1_combout\ = (((\Esc_Prod_FSM|bin_Msg\(12) & !\Esc_Prod_FSM|WideOr24~0_combout\)) # (!\Esc_Prod_FSM|state.Init~q\)) # (!\Esc_Prod_FSM|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Selector10~0_combout\,
	datab => \Esc_Prod_FSM|state.Init~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(12),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector10~1_combout\);

-- Location: FF_X110_Y26_N21
\Esc_Prod_FSM|bin_Msg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector10~1_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(12));

-- Location: LCCOMB_X111_Y23_N12
\msg_display[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[12]~28_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S0~q\))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (\Esc_Prod_FSM|bin_Msg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(12),
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[12]~28_combout\);

-- Location: LCCOMB_X110_Y26_N22
\Esc_Prod_FSM|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector7~2_combout\ = (\Esc_Prod_FSM|WideOr24~0_combout\ & (!\Esc_Prod_FSM|state.Option~q\ & (\Esc_Prod_FSM|state.Init~q\))) # (!\Esc_Prod_FSM|WideOr24~0_combout\ & (((\Esc_Prod_FSM|bin_Msg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Esc_Prod_FSM|state.Init~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(15),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector7~2_combout\);

-- Location: FF_X110_Y26_N23
\Esc_Prod_FSM|bin_Msg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector7~2_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(15));

-- Location: LCCOMB_X111_Y26_N28
\msg_display[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[15]~24_combout\ = (!\Esc_Prod_FSM|sel_gelo~q\ & (!\Esc_Prod_FSM|bin_Msg\(15) & ((!\FreqDiv|clkOut~q\) # (!\Esc_Prod_FSM|Msg_blink~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|Msg_blink~q\,
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \FreqDiv|clkOut~q\,
	datad => \Esc_Prod_FSM|bin_Msg\(15),
	combout => \msg_display[15]~24_combout\);

-- Location: LCCOMB_X110_Y25_N2
\Esc_Prod_FSM|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Esc_Prod_FSM|Selector9~2_combout\ = (\Esc_Prod_FSM|state.Option~q\) # (((\Esc_Prod_FSM|bin_Msg\(13) & !\Esc_Prod_FSM|WideOr24~0_combout\)) # (!\Esc_Prod_FSM|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|state.Option~q\,
	datab => \Esc_Prod_FSM|Selector9~1_combout\,
	datac => \Esc_Prod_FSM|bin_Msg\(13),
	datad => \Esc_Prod_FSM|WideOr24~0_combout\,
	combout => \Esc_Prod_FSM|Selector9~2_combout\);

-- Location: FF_X110_Y25_N3
\Esc_Prod_FSM|bin_Msg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Esc_Prod_FSM|Selector9~2_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Esc_Prod_FSM|bin_Msg\(13));

-- Location: LCCOMB_X111_Y23_N18
\msg_display[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[13]~27_combout\ = (\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S0~q\))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (\Esc_Prod_FSM|bin_Msg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(13),
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \Esc_Prod_FSM|sel_gelo~q\,
	combout => \msg_display[13]~27_combout\);

-- Location: LCCOMB_X111_Y23_N28
\msg_display[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[13]~25_combout\ = (!\msg_display~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S0~q\))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (\Esc_Prod_FSM|bin_Msg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(13),
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \msg_display~7_combout\,
	datad => \GeloSel_FSM|s_currentState.S0~q\,
	combout => \msg_display[13]~25_combout\);

-- Location: LCCOMB_X111_Y23_N26
\display3|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[0]~1_combout\ = (\msg_display[15]~24_combout\ & (\msg_display[12]~28_combout\ & (\msg_display[13]~27_combout\))) # (!\msg_display[15]~24_combout\ & ((\msg_display[13]~27_combout\ & ((!\msg_display[13]~25_combout\))) # 
-- (!\msg_display[13]~27_combout\ & (\msg_display[12]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~28_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[13]~27_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X112_Y26_N14
\msg_display[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[14]~23_combout\ = (!\msg_display~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\ & (!\GeloSel_FSM|s_currentState.S0~q\)) # (!\Esc_Prod_FSM|sel_gelo~q\ & ((!\Esc_Prod_FSM|bin_Msg\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|sel_gelo~q\,
	datab => \GeloSel_FSM|s_currentState.S0~q\,
	datac => \Esc_Prod_FSM|bin_Msg\(14),
	datad => \msg_display~7_combout\,
	combout => \msg_display[14]~23_combout\);

-- Location: LCCOMB_X111_Y23_N10
\msg_display[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \msg_display[12]~26_combout\ = (\msg_display~7_combout\) # ((\Esc_Prod_FSM|sel_gelo~q\ & ((\GeloSel_FSM|s_currentState.S0~q\))) # (!\Esc_Prod_FSM|sel_gelo~q\ & (\Esc_Prod_FSM|bin_Msg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(12),
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \msg_display~7_combout\,
	datad => \GeloSel_FSM|s_currentState.S0~q\,
	combout => \msg_display[12]~26_combout\);

-- Location: LCCOMB_X111_Y23_N20
\display3|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[0]~0_combout\ = (\msg_display[15]~24_combout\ & (!\msg_display[14]~23_combout\ & (\msg_display[12]~26_combout\ $ (!\msg_display[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X111_Y23_N24
\display3|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[0]~2_combout\ = (\display3|decOut_n[0]~0_combout\) # (\msg_display[15]~24_combout\ $ (((\display3|decOut_n[0]~1_combout\) # (!\msg_display[14]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display3|decOut_n[0]~1_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \display3|decOut_n[0]~0_combout\,
	combout => \display3|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X111_Y23_N22
\display3|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[1]~3_combout\ = (\msg_display[12]~26_combout\ & ((\msg_display[15]~24_combout\ $ (!\msg_display[13]~25_combout\)) # (!\msg_display[14]~23_combout\))) # (!\msg_display[12]~26_combout\ & ((\msg_display[15]~24_combout\ & 
-- ((\msg_display[14]~23_combout\) # (!\msg_display[13]~25_combout\))) # (!\msg_display[15]~24_combout\ & ((\msg_display[13]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X111_Y23_N16
\display3|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[2]~4_combout\ = (\msg_display[12]~26_combout\ & ((\msg_display[14]~23_combout\ $ (!\msg_display[13]~25_combout\)) # (!\msg_display[15]~24_combout\))) # (!\msg_display[12]~26_combout\ & (\msg_display[15]~24_combout\ $ 
-- (((!\msg_display[14]~23_combout\ & \msg_display[13]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X111_Y23_N30
\display3|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[3]~5_combout\ = (\msg_display[12]~26_combout\ & ((\msg_display[15]~24_combout\ $ (\msg_display[13]~25_combout\)) # (!\msg_display[14]~23_combout\))) # (!\msg_display[12]~26_combout\ & ((\msg_display[15]~24_combout\) # 
-- ((!\msg_display[14]~23_combout\ & \msg_display[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X111_Y23_N8
\display3|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[4]~6_combout\ = (!\msg_display[15]~24_combout\ & ((\msg_display[12]~26_combout\ & (!\msg_display[14]~23_combout\)) # (!\msg_display[12]~26_combout\ & ((\msg_display[13]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X111_Y23_N2
\display3|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[4]~7_combout\ = (!\msg_display[12]~28_combout\ & (\msg_display[15]~24_combout\ & ((\msg_display~7_combout\) # (!\msg_display[13]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~28_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display~7_combout\,
	datad => \msg_display[13]~27_combout\,
	combout => \display3|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X111_Y23_N0
\display3|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[4]~8_combout\ = (\display3|decOut_n[4]~6_combout\) # ((\display3|decOut_n[4]~7_combout\ & ((\Esc_Prod_FSM|sel_gelo~q\) # (!\Esc_Prod_FSM|bin_Msg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|bin_Msg\(14),
	datab => \Esc_Prod_FSM|sel_gelo~q\,
	datac => \display3|decOut_n[4]~6_combout\,
	datad => \display3|decOut_n[4]~7_combout\,
	combout => \display3|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X111_Y23_N14
\display3|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[5]~9_combout\ = (\msg_display[15]~24_combout\ & (!\msg_display[12]~28_combout\ & (\msg_display[14]~23_combout\ & !\msg_display[13]~25_combout\))) # (!\msg_display[15]~24_combout\ & (((!\msg_display[14]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~28_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X111_Y23_N4
\display3|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[5]~10_combout\ = (\display3|decOut_n[5]~9_combout\) # (\display3|decOut_n[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display3|decOut_n[5]~9_combout\,
	datad => \display3|decOut_n[0]~0_combout\,
	combout => \display3|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X111_Y23_N6
\display3|decOut_n[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|decOut_n[6]~11_combout\ = (\msg_display[12]~26_combout\ & (!\msg_display[15]~24_combout\ & ((!\msg_display[13]~25_combout\)))) # (!\msg_display[12]~26_combout\ & (\msg_display[14]~23_combout\ & (\msg_display[15]~24_combout\ $ 
-- (!\msg_display[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msg_display[12]~26_combout\,
	datab => \msg_display[15]~24_combout\,
	datac => \msg_display[14]~23_combout\,
	datad => \msg_display[13]~25_combout\,
	combout => \display3|decOut_n[6]~11_combout\);

-- Location: LCCOMB_X79_Y4_N24
\display4|decOut_n[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[0]~27_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & (!\Esc_Prod_FSM|T_timeVal\(0) & (\Esc_Prod_FSM|T_timeVal\(3) $ (!\Esc_Prod_FSM|T_timeVal\(1))))) # (!\Esc_Prod_FSM|T_timeVal\(2) & (\Esc_Prod_FSM|T_timeVal\(0) & 
-- (\Esc_Prod_FSM|T_timeVal\(3) $ (!\Esc_Prod_FSM|T_timeVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(0),
	combout => \display4|decOut_n[0]~27_combout\);

-- Location: LCCOMB_X79_Y4_N18
\display4|decOut_n[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[0]~35_combout\ = (\display4|decOut_n[0]~27_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \display4|decOut_n[0]~27_combout\,
	combout => \display4|decOut_n[0]~35_combout\);

-- Location: LCCOMB_X79_Y4_N12
\display4|decOut_n[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[1]~10_combout\ = (\Esc_Prod_FSM|T_timeVal\(0) & (\Esc_Prod_FSM|T_timeVal\(1) $ (!\Esc_Prod_FSM|T_timeVal\(3)))) # (!\Esc_Prod_FSM|T_timeVal\(0) & (\Esc_Prod_FSM|T_timeVal\(1) & !\Esc_Prod_FSM|T_timeVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Esc_Prod_FSM|T_timeVal\(0),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(3),
	combout => \display4|decOut_n[1]~10_combout\);

-- Location: LCCOMB_X79_Y4_N2
\display4|decOut_n[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[1]~31_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & (\KEY[1]~input_o\ & \display4|decOut_n[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datac => \KEY[1]~input_o\,
	datad => \display4|decOut_n[1]~10_combout\,
	combout => \display4|decOut_n[1]~31_combout\);

-- Location: LCCOMB_X79_Y4_N8
\display4|decOut_n[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[2]~16_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & (!\Esc_Prod_FSM|T_timeVal\(1) & \Esc_Prod_FSM|T_timeVal\(3))) # (!\Esc_Prod_FSM|T_timeVal\(2) & (\Esc_Prod_FSM|T_timeVal\(1) & !\Esc_Prod_FSM|T_timeVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(3),
	combout => \display4|decOut_n[2]~16_combout\);

-- Location: LCCOMB_X79_Y4_N6
\display4|decOut_n[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[2]~32_combout\ = (\KEY[1]~input_o\ & (!\Esc_Prod_FSM|T_timeVal\(0) & \display4|decOut_n[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Esc_Prod_FSM|T_timeVal\(0),
	datac => \display4|decOut_n[2]~16_combout\,
	combout => \display4|decOut_n[2]~32_combout\);

-- Location: LCCOMB_X79_Y4_N20
\display4|decOut_n[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[3]~21_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & ((\Esc_Prod_FSM|T_timeVal\(3) & (\Esc_Prod_FSM|T_timeVal\(1) & !\Esc_Prod_FSM|T_timeVal\(0))) # (!\Esc_Prod_FSM|T_timeVal\(3) & (\Esc_Prod_FSM|T_timeVal\(1) $ 
-- (!\Esc_Prod_FSM|T_timeVal\(0)))))) # (!\Esc_Prod_FSM|T_timeVal\(2) & (\Esc_Prod_FSM|T_timeVal\(0) & (\Esc_Prod_FSM|T_timeVal\(3) $ (!\Esc_Prod_FSM|T_timeVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(0),
	combout => \display4|decOut_n[3]~21_combout\);

-- Location: LCCOMB_X79_Y4_N22
\display4|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[3]~33_combout\ = (\KEY[1]~input_o\ & \display4|decOut_n[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \display4|decOut_n[3]~21_combout\,
	combout => \display4|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X79_Y4_N28
\display4|decOut_n[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[4]~28_combout\ = (\Esc_Prod_FSM|T_timeVal\(0)) # ((\Esc_Prod_FSM|T_timeVal\(2) & (\Esc_Prod_FSM|T_timeVal\(3) $ (!\Esc_Prod_FSM|T_timeVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(0),
	combout => \display4|decOut_n[4]~28_combout\);

-- Location: LCCOMB_X79_Y4_N10
\display4|decOut_n[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[4]~29_combout\ = (\KEY[1]~input_o\ & \display4|decOut_n[4]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \display4|decOut_n[4]~28_combout\,
	combout => \display4|decOut_n[4]~29_combout\);

-- Location: LCCOMB_X79_Y4_N4
\display4|decOut_n[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[5]~6_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & ((\Esc_Prod_FSM|T_timeVal\(3) & (!\Esc_Prod_FSM|T_timeVal\(1))) # (!\Esc_Prod_FSM|T_timeVal\(3) & (\Esc_Prod_FSM|T_timeVal\(1) & \Esc_Prod_FSM|T_timeVal\(0))))) # 
-- (!\Esc_Prod_FSM|T_timeVal\(2) & ((\Esc_Prod_FSM|T_timeVal\(3) & (\Esc_Prod_FSM|T_timeVal\(1) & \Esc_Prod_FSM|T_timeVal\(0))) # (!\Esc_Prod_FSM|T_timeVal\(3) & ((\Esc_Prod_FSM|T_timeVal\(1)) # (\Esc_Prod_FSM|T_timeVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(0),
	combout => \display4|decOut_n[5]~6_combout\);

-- Location: LCCOMB_X79_Y4_N30
\display4|decOut_n[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[5]~30_combout\ = (\display4|decOut_n[5]~6_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display4|decOut_n[5]~6_combout\,
	datac => \KEY[1]~input_o\,
	combout => \display4|decOut_n[5]~30_combout\);

-- Location: LCCOMB_X79_Y4_N16
\display4|decOut_n[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[6]~24_combout\ = (\Esc_Prod_FSM|T_timeVal\(2) & (!\Esc_Prod_FSM|T_timeVal\(3) & (\Esc_Prod_FSM|T_timeVal\(1) & \Esc_Prod_FSM|T_timeVal\(0)))) # (!\Esc_Prod_FSM|T_timeVal\(2) & (\Esc_Prod_FSM|T_timeVal\(3) $ 
-- ((!\Esc_Prod_FSM|T_timeVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Esc_Prod_FSM|T_timeVal\(2),
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(0),
	combout => \display4|decOut_n[6]~24_combout\);

-- Location: LCCOMB_X79_Y4_N26
\display4|decOut_n[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|decOut_n[6]~34_combout\ = (\KEY[1]~input_o\ & \display4|decOut_n[6]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \display4|decOut_n[6]~24_combout\,
	combout => \display4|decOut_n[6]~34_combout\);

-- Location: LCCOMB_X79_Y4_N0
\display5|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|decOut_n[0]~0_combout\ = ((\Esc_Prod_FSM|T_timeVal\(3) & ((\Esc_Prod_FSM|T_timeVal\(1)) # (\Esc_Prod_FSM|T_timeVal\(2))))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(2),
	combout => \display5|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X79_Y4_N14
\display5|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|Equal3~0_combout\ = (\KEY[1]~input_o\ & (\Esc_Prod_FSM|T_timeVal\(3) & ((\Esc_Prod_FSM|T_timeVal\(1)) # (\Esc_Prod_FSM|T_timeVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Esc_Prod_FSM|T_timeVal\(3),
	datac => \Esc_Prod_FSM|T_timeVal\(1),
	datad => \Esc_Prod_FSM|T_timeVal\(2),
	combout => \display5|Equal3~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


