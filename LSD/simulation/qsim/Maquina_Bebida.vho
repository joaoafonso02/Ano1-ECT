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

-- DATE "06/19/2021 23:10:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	NewTime : IN std_logic;
	reset : IN std_logic;
	TimerEnable : IN std_logic;
	clk : IN std_logic;
	TimeVal : IN std_logic_vector(3 DOWNTO 0);
	Timeexp : OUT std_logic
	);
END Timer;

ARCHITECTURE structure OF Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NewTime : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_TimerEnable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_TimeVal : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Timeexp : std_logic;
SIGNAL \TimeVal[0]~input_o\ : std_logic;
SIGNAL \TimeVal[1]~input_o\ : std_logic;
SIGNAL \TimeVal[2]~input_o\ : std_logic;
SIGNAL \TimeVal[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \NewTime~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count[1]~34_combout\ : std_logic;
SIGNAL \TimerEnable~input_o\ : std_logic;
SIGNAL \count[1]~35_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~36_combout\ : std_logic;
SIGNAL \count[1]~37\ : std_logic;
SIGNAL \count[2]~38_combout\ : std_logic;
SIGNAL \reset~_wirecell_combout\ : std_logic;
SIGNAL \count[2]~39\ : std_logic;
SIGNAL \count[3]~40_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[3]~41\ : std_logic;
SIGNAL \count[4]~42_combout\ : std_logic;
SIGNAL \count[4]~43\ : std_logic;
SIGNAL \count[5]~44_combout\ : std_logic;
SIGNAL \count[5]~45\ : std_logic;
SIGNAL \count[6]~46_combout\ : std_logic;
SIGNAL \count[6]~47\ : std_logic;
SIGNAL \count[7]~48_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count[7]~49\ : std_logic;
SIGNAL \count[8]~50_combout\ : std_logic;
SIGNAL \count[8]~51\ : std_logic;
SIGNAL \count[9]~52_combout\ : std_logic;
SIGNAL \count[9]~53\ : std_logic;
SIGNAL \count[10]~54_combout\ : std_logic;
SIGNAL \count[10]~55\ : std_logic;
SIGNAL \count[11]~56_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \count[11]~57\ : std_logic;
SIGNAL \count[12]~58_combout\ : std_logic;
SIGNAL \count[12]~59\ : std_logic;
SIGNAL \count[13]~60_combout\ : std_logic;
SIGNAL \count[13]~61\ : std_logic;
SIGNAL \count[14]~62_combout\ : std_logic;
SIGNAL \count[14]~63\ : std_logic;
SIGNAL \count[15]~64_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count[15]~65\ : std_logic;
SIGNAL \count[16]~66_combout\ : std_logic;
SIGNAL \count[16]~67\ : std_logic;
SIGNAL \count[17]~68_combout\ : std_logic;
SIGNAL \count[17]~69\ : std_logic;
SIGNAL \count[18]~70_combout\ : std_logic;
SIGNAL \count[18]~71\ : std_logic;
SIGNAL \count[19]~72_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \count[19]~73\ : std_logic;
SIGNAL \count[20]~74_combout\ : std_logic;
SIGNAL \count[20]~75\ : std_logic;
SIGNAL \count[21]~76_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \count[21]~77\ : std_logic;
SIGNAL \count[22]~78_combout\ : std_logic;
SIGNAL \count[22]~79\ : std_logic;
SIGNAL \count[23]~80_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \count[23]~81\ : std_logic;
SIGNAL \count[24]~82_combout\ : std_logic;
SIGNAL \count[24]~83\ : std_logic;
SIGNAL \count[25]~84_combout\ : std_logic;
SIGNAL \count[25]~85\ : std_logic;
SIGNAL \count[26]~86_combout\ : std_logic;
SIGNAL \count[26]~87\ : std_logic;
SIGNAL \count[27]~88_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count[27]~89\ : std_logic;
SIGNAL \count[28]~90_combout\ : std_logic;
SIGNAL \count[28]~91\ : std_logic;
SIGNAL \count[29]~92_combout\ : std_logic;
SIGNAL \count[29]~93\ : std_logic;
SIGNAL \count[30]~94_combout\ : std_logic;
SIGNAL \count[30]~95\ : std_logic;
SIGNAL \count[31]~96_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_NewTime <= NewTime;
ww_reset <= reset;
ww_TimerEnable <= TimerEnable;
ww_clk <= clk;
ww_TimeVal <= TimeVal;
Timeexp <= ww_Timeexp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Timeexp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => ww_Timeexp);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\NewTime~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NewTime,
	o => \NewTime~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~34_combout\ = (\NewTime~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NewTime~input_o\,
	datab => \reset~input_o\,
	combout => \count[1]~34_combout\);

\TimerEnable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TimerEnable,
	o => \TimerEnable~input_o\);

\count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~35_combout\ = (\reset~input_o\) # (\TimerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \TimerEnable~input_o\,
	combout => \count[1]~35_combout\);

\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[0]~32_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

\count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~36_combout\ = (count(1) & (\count[0]~33\ & VCC)) # (!count(1) & (!\count[0]~33\))
-- \count[1]~37\ = CARRY((!count(1) & !\count[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~36_combout\,
	cout => \count[1]~37\);

\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[1]~36_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

\count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~38_combout\ = (count(2) & ((GND) # (!\count[1]~37\))) # (!count(2) & (\count[1]~37\ $ (GND)))
-- \count[2]~39\ = CARRY((count(2)) # (!\count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~37\,
	combout => \count[2]~38_combout\,
	cout => \count[2]~39\);

\reset~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~_wirecell_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	combout => \reset~_wirecell_combout\);

\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[2]~38_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

\count[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~40_combout\ = (count(3) & (\count[2]~39\ & VCC)) # (!count(3) & (!\count[2]~39\))
-- \count[3]~41\ = CARRY((!count(3) & !\count[2]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~39\,
	combout => \count[3]~40_combout\,
	cout => \count[3]~41\);

\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[3]~40_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(0) & (!count(1) & (!count(2) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => count(3),
	combout => \Equal0~0_combout\);

\count[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~42_combout\ = (count(4) & ((GND) # (!\count[3]~41\))) # (!count(4) & (\count[3]~41\ $ (GND)))
-- \count[4]~43\ = CARRY((count(4)) # (!\count[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~41\,
	combout => \count[4]~42_combout\,
	cout => \count[4]~43\);

\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[4]~42_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

\count[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~44_combout\ = (count(5) & (\count[4]~43\ & VCC)) # (!count(5) & (!\count[4]~43\))
-- \count[5]~45\ = CARRY((!count(5) & !\count[4]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~43\,
	combout => \count[5]~44_combout\,
	cout => \count[5]~45\);

\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[5]~44_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

\count[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~46_combout\ = (count(6) & ((GND) # (!\count[5]~45\))) # (!count(6) & (\count[5]~45\ $ (GND)))
-- \count[6]~47\ = CARRY((count(6)) # (!\count[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~45\,
	combout => \count[6]~46_combout\,
	cout => \count[6]~47\);

\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[6]~46_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

\count[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~48_combout\ = (count(7) & (\count[6]~47\ & VCC)) # (!count(7) & (!\count[6]~47\))
-- \count[7]~49\ = CARRY((!count(7) & !\count[6]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~47\,
	combout => \count[7]~48_combout\,
	cout => \count[7]~49\);

\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[7]~48_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(4) & (!count(5) & (!count(6) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(5),
	datac => count(6),
	datad => count(7),
	combout => \Equal0~1_combout\);

\count[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~50_combout\ = (count(8) & ((GND) # (!\count[7]~49\))) # (!count(8) & (\count[7]~49\ $ (GND)))
-- \count[8]~51\ = CARRY((count(8)) # (!\count[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~49\,
	combout => \count[8]~50_combout\,
	cout => \count[8]~51\);

\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[8]~50_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

\count[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~52_combout\ = (count(9) & (\count[8]~51\ & VCC)) # (!count(9) & (!\count[8]~51\))
-- \count[9]~53\ = CARRY((!count(9) & !\count[8]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~51\,
	combout => \count[9]~52_combout\,
	cout => \count[9]~53\);

\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[9]~52_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

\count[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~54_combout\ = (count(10) & ((GND) # (!\count[9]~53\))) # (!count(10) & (\count[9]~53\ $ (GND)))
-- \count[10]~55\ = CARRY((count(10)) # (!\count[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~53\,
	combout => \count[10]~54_combout\,
	cout => \count[10]~55\);

\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[10]~54_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

\count[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~56_combout\ = (count(11) & (\count[10]~55\ & VCC)) # (!count(11) & (!\count[10]~55\))
-- \count[11]~57\ = CARRY((!count(11) & !\count[10]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~55\,
	combout => \count[11]~56_combout\,
	cout => \count[11]~57\);

\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[11]~56_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(8) & (!count(9) & (!count(10) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(11),
	combout => \Equal0~2_combout\);

\count[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~58_combout\ = (count(12) & ((GND) # (!\count[11]~57\))) # (!count(12) & (\count[11]~57\ $ (GND)))
-- \count[12]~59\ = CARRY((count(12)) # (!\count[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~57\,
	combout => \count[12]~58_combout\,
	cout => \count[12]~59\);

\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[12]~58_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

\count[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~60_combout\ = (count(13) & (\count[12]~59\ & VCC)) # (!count(13) & (!\count[12]~59\))
-- \count[13]~61\ = CARRY((!count(13) & !\count[12]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~59\,
	combout => \count[13]~60_combout\,
	cout => \count[13]~61\);

\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[13]~60_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

\count[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~62_combout\ = (count(14) & ((GND) # (!\count[13]~61\))) # (!count(14) & (\count[13]~61\ $ (GND)))
-- \count[14]~63\ = CARRY((count(14)) # (!\count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~61\,
	combout => \count[14]~62_combout\,
	cout => \count[14]~63\);

\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[14]~62_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

\count[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~64_combout\ = (count(15) & (\count[14]~63\ & VCC)) # (!count(15) & (!\count[14]~63\))
-- \count[15]~65\ = CARRY((!count(15) & !\count[14]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~63\,
	combout => \count[15]~64_combout\,
	cout => \count[15]~65\);

\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[15]~64_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(12) & (!count(13) & (!count(14) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(13),
	datac => count(14),
	datad => count(15),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\count[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~66_combout\ = (count(16) & ((GND) # (!\count[15]~65\))) # (!count(16) & (\count[15]~65\ $ (GND)))
-- \count[16]~67\ = CARRY((count(16)) # (!\count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~65\,
	combout => \count[16]~66_combout\,
	cout => \count[16]~67\);

\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[16]~66_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

\count[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~68_combout\ = (count(17) & (\count[16]~67\ & VCC)) # (!count(17) & (!\count[16]~67\))
-- \count[17]~69\ = CARRY((!count(17) & !\count[16]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~67\,
	combout => \count[17]~68_combout\,
	cout => \count[17]~69\);

\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[17]~68_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

\count[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~70_combout\ = (count(18) & ((GND) # (!\count[17]~69\))) # (!count(18) & (\count[17]~69\ $ (GND)))
-- \count[18]~71\ = CARRY((count(18)) # (!\count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~69\,
	combout => \count[18]~70_combout\,
	cout => \count[18]~71\);

\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[18]~70_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

\count[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~72_combout\ = (count(19) & (\count[18]~71\ & VCC)) # (!count(19) & (!\count[18]~71\))
-- \count[19]~73\ = CARRY((!count(19) & !\count[18]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~71\,
	combout => \count[19]~72_combout\,
	cout => \count[19]~73\);

\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[19]~72_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(16) & (!count(17) & (!count(18) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(18),
	datad => count(19),
	combout => \Equal0~5_combout\);

\count[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~74_combout\ = (count(20) & ((GND) # (!\count[19]~73\))) # (!count(20) & (\count[19]~73\ $ (GND)))
-- \count[20]~75\ = CARRY((count(20)) # (!\count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~73\,
	combout => \count[20]~74_combout\,
	cout => \count[20]~75\);

\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[20]~74_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

\count[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~76_combout\ = (count(21) & (\count[20]~75\ & VCC)) # (!count(21) & (!\count[20]~75\))
-- \count[21]~77\ = CARRY((!count(21) & !\count[20]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~75\,
	combout => \count[21]~76_combout\,
	cout => \count[21]~77\);

\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[21]~76_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(20) & !count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(20),
	datad => count(21),
	combout => \Equal0~6_combout\);

\count[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~78_combout\ = (count(22) & ((GND) # (!\count[21]~77\))) # (!count(22) & (\count[21]~77\ $ (GND)))
-- \count[22]~79\ = CARRY((count(22)) # (!\count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~77\,
	combout => \count[22]~78_combout\,
	cout => \count[22]~79\);

\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[22]~78_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

\count[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~80_combout\ = (count(23) & (\count[22]~79\ & VCC)) # (!count(23) & (!\count[22]~79\))
-- \count[23]~81\ = CARRY((!count(23) & !\count[22]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \count[22]~79\,
	combout => \count[23]~80_combout\,
	cout => \count[23]~81\);

\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[23]~80_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (!count(22) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => count(22),
	datad => count(23),
	combout => \Equal0~7_combout\);

\count[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~82_combout\ = (count(24) & ((GND) # (!\count[23]~81\))) # (!count(24) & (\count[23]~81\ $ (GND)))
-- \count[24]~83\ = CARRY((count(24)) # (!\count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \count[23]~81\,
	combout => \count[24]~82_combout\,
	cout => \count[24]~83\);

\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[24]~82_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

\count[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~84_combout\ = (count(25) & (\count[24]~83\ & VCC)) # (!count(25) & (!\count[24]~83\))
-- \count[25]~85\ = CARRY((!count(25) & !\count[24]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \count[24]~83\,
	combout => \count[25]~84_combout\,
	cout => \count[25]~85\);

\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[25]~84_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

\count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~86_combout\ = (count(26) & ((GND) # (!\count[25]~85\))) # (!count(26) & (\count[25]~85\ $ (GND)))
-- \count[26]~87\ = CARRY((count(26)) # (!\count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \count[25]~85\,
	combout => \count[26]~86_combout\,
	cout => \count[26]~87\);

\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[26]~86_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

\count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~88_combout\ = (count(27) & (\count[26]~87\ & VCC)) # (!count(27) & (!\count[26]~87\))
-- \count[27]~89\ = CARRY((!count(27) & !\count[26]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~87\,
	combout => \count[27]~88_combout\,
	cout => \count[27]~89\);

\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[27]~88_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(24) & (!count(25) & (!count(26) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(25),
	datac => count(26),
	datad => count(27),
	combout => \Equal0~8_combout\);

\count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~90_combout\ = (count(28) & ((GND) # (!\count[27]~89\))) # (!count(28) & (\count[27]~89\ $ (GND)))
-- \count[28]~91\ = CARRY((count(28)) # (!\count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \count[27]~89\,
	combout => \count[28]~90_combout\,
	cout => \count[28]~91\);

\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[28]~90_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

\count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~92_combout\ = (count(29) & (\count[28]~91\ & VCC)) # (!count(29) & (!\count[28]~91\))
-- \count[29]~93\ = CARRY((!count(29) & !\count[28]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~91\,
	combout => \count[29]~92_combout\,
	cout => \count[29]~93\);

\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[29]~92_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

\count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~94_combout\ = (count(30) & ((GND) # (!\count[29]~93\))) # (!count(30) & (\count[29]~93\ $ (GND)))
-- \count[30]~95\ = CARRY((count(30)) # (!\count[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \count[29]~93\,
	combout => \count[30]~94_combout\,
	cout => \count[30]~95\);

\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[30]~94_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

\count[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~96_combout\ = count(31) $ (!\count[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~95\,
	combout => \count[31]~96_combout\);

\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[31]~96_combout\,
	asdata => \~GND~combout\,
	sload => \count[1]~34_combout\,
	ena => \count[1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(28) & (!count(29) & (!count(30) & !count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => count(29),
	datac => count(30),
	datad => count(31),
	combout => \Equal0~9_combout\);

\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

\TimeVal[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TimeVal(0),
	o => \TimeVal[0]~input_o\);

\TimeVal[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TimeVal(1),
	o => \TimeVal[1]~input_o\);

\TimeVal[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TimeVal(2),
	o => \TimeVal[2]~input_o\);

\TimeVal[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TimeVal(3),
	o => \TimeVal[3]~input_o\);
END structure;


