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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/24/2023 00:26:28"
                                                            
-- Vhdl Test Bench template for design  :  g44_ARCCOS
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

ENTITY g44_ARCCOS_vhd_tst IS
END g44_ARCCOS_vhd_tst;
ARCHITECTURE g44_ARCCOS_arch OF g44_ARCCOS_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ANGLE : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC := '0';
SIGNAL X : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT g44_ARCCOS
	PORT (
	ANGLE : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	CLOCK : IN STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g44_ARCCOS
	PORT MAP (
-- list connections between master ports and signals
	ANGLE => ANGLE,
	CLOCK => CLOCK,
	X => X
	);

	                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
			X <= x"80";
			
			WAIT FOR 100 ns;
			
			X <= x"00";
			
			WAIT FOR 100 ns;
			
			X <= x"B5";
			
			WAIT;                                                        
END PROCESS always;   

Clock2: PROCESS
BEGIN
			wait for 5 ns;
			CLOCK <= not CLOCK;
			
END PROCESS Clock2;
END g44_ARCCOS_arch;
