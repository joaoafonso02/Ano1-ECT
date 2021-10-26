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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/19/2021 23:10:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Timer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Timer_vhd_vec_tst IS
END Timer_vhd_vec_tst;
ARCHITECTURE Timer_arch OF Timer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL NewTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Timeexp : STD_LOGIC;
SIGNAL TimerEnable : STD_LOGIC;
SIGNAL TimeVal : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Timer
	PORT (
	clk : IN STD_LOGIC;
	NewTime : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Timeexp : OUT STD_LOGIC;
	TimerEnable : IN STD_LOGIC;
	TimeVal : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Timer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	NewTime => NewTime,
	reset => reset,
	Timeexp => Timeexp,
	TimerEnable => TimerEnable,
	TimeVal => TimeVal
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- NewTime
t_prcs_NewTime: PROCESS
BEGIN
	NewTime <= '0';
	WAIT FOR 100000 ps;
	NewTime <= '1';
	WAIT FOR 40000 ps;
	NewTime <= '0';
WAIT;
END PROCESS t_prcs_NewTime;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- TimerEnable
t_prcs_TimerEnable: PROCESS
BEGIN
	TimerEnable <= '1';
WAIT;
END PROCESS t_prcs_TimerEnable;
-- TimeVal[3]
t_prcs_TimeVal_3: PROCESS
BEGIN
	TimeVal(3) <= '0';
WAIT;
END PROCESS t_prcs_TimeVal_3;
-- TimeVal[2]
t_prcs_TimeVal_2: PROCESS
BEGIN
	TimeVal(2) <= '0';
WAIT;
END PROCESS t_prcs_TimeVal_2;
-- TimeVal[1]
t_prcs_TimeVal_1: PROCESS
BEGIN
	TimeVal(1) <= '1';
	WAIT FOR 220000 ps;
	TimeVal(1) <= '0';
WAIT;
END PROCESS t_prcs_TimeVal_1;
-- TimeVal[0]
t_prcs_TimeVal_0: PROCESS
BEGIN
	TimeVal(0) <= '0';
WAIT;
END PROCESS t_prcs_TimeVal_0;
END Timer_arch;
