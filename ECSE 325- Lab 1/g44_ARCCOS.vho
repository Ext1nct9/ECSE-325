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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/24/2023 17:34:21"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	g44_ARCCOS IS
    PORT (
	X : IN std_logic_vector(7 DOWNTO 0);
	CLOCK : IN std_logic;
	ANGLE : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END g44_ARCCOS;

-- Design Ports Information
-- ANGLE[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ANGLE[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g44_ARCCOS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_ANGLE : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult3~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult3~8_AY_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mult1~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~8_resulta\ : std_logic;
SIGNAL \Mult3~9\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult3~12\ : std_logic;
SIGNAL \Mult3~13\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult3~16\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult3~28\ : std_logic;
SIGNAL \Mult3~29\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult3~32\ : std_logic;
SIGNAL \Mult3~33\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~36\ : std_logic;
SIGNAL \Mult3~37\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult3~40\ : std_logic;
SIGNAL \Mult3~41\ : std_logic;
SIGNAL \Mult3~42\ : std_logic;
SIGNAL \Mult3~43\ : std_logic;
SIGNAL \Mult3~44\ : std_logic;
SIGNAL \Mult3~45\ : std_logic;
SIGNAL \Mult3~46\ : std_logic;
SIGNAL \Mult3~47\ : std_logic;
SIGNAL \Mult3~48\ : std_logic;
SIGNAL \Mult3~49\ : std_logic;
SIGNAL \Mult3~50\ : std_logic;
SIGNAL \Mult3~51\ : std_logic;
SIGNAL \Mult3~52\ : std_logic;
SIGNAL \Mult3~53\ : std_logic;
SIGNAL \Mult3~54\ : std_logic;
SIGNAL \Mult3~55\ : std_logic;
SIGNAL \Mult3~56\ : std_logic;
SIGNAL \Mult3~57\ : std_logic;
SIGNAL \Mult3~58\ : std_logic;
SIGNAL \Mult3~59\ : std_logic;
SIGNAL \Mult3~60\ : std_logic;
SIGNAL \Mult3~61\ : std_logic;
SIGNAL \Mult3~62\ : std_logic;
SIGNAL \Mult3~63\ : std_logic;
SIGNAL \Mult3~64\ : std_logic;
SIGNAL \Mult3~65\ : std_logic;
SIGNAL \Mult3~66\ : std_logic;
SIGNAL \Mult3~67\ : std_logic;
SIGNAL \Mult3~68\ : std_logic;
SIGNAL \Mult3~69\ : std_logic;
SIGNAL \Mult3~70\ : std_logic;
SIGNAL \Mult3~71\ : std_logic;
SIGNAL \Mult2~8_resulta\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Mult2~40\ : std_logic;
SIGNAL \Mult2~41\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~43\ : std_logic;
SIGNAL \Mult2~44\ : std_logic;
SIGNAL \Mult2~45\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~47\ : std_logic;
SIGNAL \Mult2~48\ : std_logic;
SIGNAL \Mult2~49\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~51\ : std_logic;
SIGNAL \Mult2~52\ : std_logic;
SIGNAL \Mult2~53\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~55\ : std_logic;
SIGNAL \Mult2~56\ : std_logic;
SIGNAL \Mult2~57\ : std_logic;
SIGNAL \Mult2~58\ : std_logic;
SIGNAL \Mult2~59\ : std_logic;
SIGNAL \Mult2~60\ : std_logic;
SIGNAL \Mult2~61\ : std_logic;
SIGNAL \Mult2~62\ : std_logic;
SIGNAL \Mult2~63\ : std_logic;
SIGNAL \Mult2~64\ : std_logic;
SIGNAL \Mult2~65\ : std_logic;
SIGNAL \Mult2~66\ : std_logic;
SIGNAL \Mult2~67\ : std_logic;
SIGNAL \Mult2~68\ : std_logic;
SIGNAL \Mult2~69\ : std_logic;
SIGNAL \Mult2~70\ : std_logic;
SIGNAL \Mult2~71\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \Mult1~8_resulta\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult1~37\ : std_logic;
SIGNAL \Mult1~38\ : std_logic;
SIGNAL \Mult1~39\ : std_logic;
SIGNAL \Mult1~40\ : std_logic;
SIGNAL \Mult1~41\ : std_logic;
SIGNAL \Mult1~42\ : std_logic;
SIGNAL \Mult1~43\ : std_logic;
SIGNAL \Mult1~44\ : std_logic;
SIGNAL \Mult1~45\ : std_logic;
SIGNAL \Mult1~46\ : std_logic;
SIGNAL \Mult1~47\ : std_logic;
SIGNAL \Mult1~48\ : std_logic;
SIGNAL \Mult1~49\ : std_logic;
SIGNAL \Mult1~50\ : std_logic;
SIGNAL \Mult1~51\ : std_logic;
SIGNAL \Mult1~52\ : std_logic;
SIGNAL \Mult1~53\ : std_logic;
SIGNAL \Mult1~54\ : std_logic;
SIGNAL \Mult1~55\ : std_logic;
SIGNAL \Mult1~56\ : std_logic;
SIGNAL \Mult1~57\ : std_logic;
SIGNAL \Mult1~58\ : std_logic;
SIGNAL \Mult1~59\ : std_logic;
SIGNAL \Mult1~60\ : std_logic;
SIGNAL \Mult1~61\ : std_logic;
SIGNAL \Mult1~62\ : std_logic;
SIGNAL \Mult1~63\ : std_logic;
SIGNAL \Mult1~64\ : std_logic;
SIGNAL \Mult1~65\ : std_logic;
SIGNAL \Mult1~66\ : std_logic;
SIGNAL \Mult1~67\ : std_logic;
SIGNAL \Mult1~68\ : std_logic;
SIGNAL \Mult1~69\ : std_logic;
SIGNAL \Mult1~70\ : std_logic;
SIGNAL \Mult1~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \S1[0]~0_combout\ : std_logic;
SIGNAL \Add0~30_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \S2[0]~feeder_combout\ : std_logic;
SIGNAL \S2[1]~feeder_combout\ : std_logic;
SIGNAL \S2[2]~feeder_combout\ : std_logic;
SIGNAL \S2[3]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \ANGLE[0]~reg0_q\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \ANGLE[1]~reg0_q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \ANGLE[2]~reg0_q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \ANGLE[3]~reg0_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \ANGLE[4]~reg0_q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \ANGLE[5]~reg0_q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \ANGLE[6]~reg0_q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \ANGLE[7]~reg0_q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \ANGLE[8]~reg0_q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \ANGLE[9]~reg0_q\ : std_logic;
SIGNAL P3 : std_logic_vector(18 DOWNTO 0);
SIGNAL P2 : std_logic_vector(24 DOWNTO 0);
SIGNAL P1 : std_logic_vector(31 DOWNTO 0);
SIGNAL S2 : std_logic_vector(10 DOWNTO 0);
SIGNAL S1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_S1 : std_logic_vector(8 DOWNTO 8);
SIGNAL ALT_INV_P1 : std_logic_vector(22 DOWNTO 16);
SIGNAL ALT_INV_P2 : std_logic_vector(24 DOWNTO 16);
SIGNAL ALT_INV_P3 : std_logic_vector(18 DOWNTO 9);

BEGIN

ww_X <= X;
ww_CLOCK <= CLOCK;
ANGLE <= ww_ANGLE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult3~8_ACLR_bus\ <= (gnd & gnd);

\Mult3~8_CLK_bus\ <= (gnd & gnd & \CLOCK~inputCLKENA0_outclk\);

\Mult3~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult3~8_AX_bus\ <= (\X[7]~input_o\ & \X[6]~input_o\ & \X[5]~input_o\ & \X[4]~input_o\ & \X[3]~input_o\ & \X[2]~input_o\ & \X[1]~input_o\ & \X[0]~input_o\);

\Mult3~8_AY_bus\ <= (vcc & S2(9) & S2(8) & S2(7) & S2(6) & S2(5) & S2(4) & S2(3) & S2(2) & S2(1) & S2(0));

\Mult3~8_resulta\ <= \Mult3~8_RESULTA_bus\(0);
\Mult3~9\ <= \Mult3~8_RESULTA_bus\(1);
\Mult3~10\ <= \Mult3~8_RESULTA_bus\(2);
\Mult3~11\ <= \Mult3~8_RESULTA_bus\(3);
\Mult3~12\ <= \Mult3~8_RESULTA_bus\(4);
\Mult3~13\ <= \Mult3~8_RESULTA_bus\(5);
\Mult3~14\ <= \Mult3~8_RESULTA_bus\(6);
\Mult3~15\ <= \Mult3~8_RESULTA_bus\(7);
\Mult3~16\ <= \Mult3~8_RESULTA_bus\(8);
P3(9) <= \Mult3~8_RESULTA_bus\(9);
P3(10) <= \Mult3~8_RESULTA_bus\(10);
P3(11) <= \Mult3~8_RESULTA_bus\(11);
P3(12) <= \Mult3~8_RESULTA_bus\(12);
P3(13) <= \Mult3~8_RESULTA_bus\(13);
P3(14) <= \Mult3~8_RESULTA_bus\(14);
P3(15) <= \Mult3~8_RESULTA_bus\(15);
P3(16) <= \Mult3~8_RESULTA_bus\(16);
P3(17) <= \Mult3~8_RESULTA_bus\(17);
P3(18) <= \Mult3~8_RESULTA_bus\(18);
\Mult3~27\ <= \Mult3~8_RESULTA_bus\(19);
\Mult3~28\ <= \Mult3~8_RESULTA_bus\(20);
\Mult3~29\ <= \Mult3~8_RESULTA_bus\(21);
\Mult3~30\ <= \Mult3~8_RESULTA_bus\(22);
\Mult3~31\ <= \Mult3~8_RESULTA_bus\(23);
\Mult3~32\ <= \Mult3~8_RESULTA_bus\(24);
\Mult3~33\ <= \Mult3~8_RESULTA_bus\(25);
\Mult3~34\ <= \Mult3~8_RESULTA_bus\(26);
\Mult3~35\ <= \Mult3~8_RESULTA_bus\(27);
\Mult3~36\ <= \Mult3~8_RESULTA_bus\(28);
\Mult3~37\ <= \Mult3~8_RESULTA_bus\(29);
\Mult3~38\ <= \Mult3~8_RESULTA_bus\(30);
\Mult3~39\ <= \Mult3~8_RESULTA_bus\(31);
\Mult3~40\ <= \Mult3~8_RESULTA_bus\(32);
\Mult3~41\ <= \Mult3~8_RESULTA_bus\(33);
\Mult3~42\ <= \Mult3~8_RESULTA_bus\(34);
\Mult3~43\ <= \Mult3~8_RESULTA_bus\(35);
\Mult3~44\ <= \Mult3~8_RESULTA_bus\(36);
\Mult3~45\ <= \Mult3~8_RESULTA_bus\(37);
\Mult3~46\ <= \Mult3~8_RESULTA_bus\(38);
\Mult3~47\ <= \Mult3~8_RESULTA_bus\(39);
\Mult3~48\ <= \Mult3~8_RESULTA_bus\(40);
\Mult3~49\ <= \Mult3~8_RESULTA_bus\(41);
\Mult3~50\ <= \Mult3~8_RESULTA_bus\(42);
\Mult3~51\ <= \Mult3~8_RESULTA_bus\(43);
\Mult3~52\ <= \Mult3~8_RESULTA_bus\(44);
\Mult3~53\ <= \Mult3~8_RESULTA_bus\(45);
\Mult3~54\ <= \Mult3~8_RESULTA_bus\(46);
\Mult3~55\ <= \Mult3~8_RESULTA_bus\(47);
\Mult3~56\ <= \Mult3~8_RESULTA_bus\(48);
\Mult3~57\ <= \Mult3~8_RESULTA_bus\(49);
\Mult3~58\ <= \Mult3~8_RESULTA_bus\(50);
\Mult3~59\ <= \Mult3~8_RESULTA_bus\(51);
\Mult3~60\ <= \Mult3~8_RESULTA_bus\(52);
\Mult3~61\ <= \Mult3~8_RESULTA_bus\(53);
\Mult3~62\ <= \Mult3~8_RESULTA_bus\(54);
\Mult3~63\ <= \Mult3~8_RESULTA_bus\(55);
\Mult3~64\ <= \Mult3~8_RESULTA_bus\(56);
\Mult3~65\ <= \Mult3~8_RESULTA_bus\(57);
\Mult3~66\ <= \Mult3~8_RESULTA_bus\(58);
\Mult3~67\ <= \Mult3~8_RESULTA_bus\(59);
\Mult3~68\ <= \Mult3~8_RESULTA_bus\(60);
\Mult3~69\ <= \Mult3~8_RESULTA_bus\(61);
\Mult3~70\ <= \Mult3~8_RESULTA_bus\(62);
\Mult3~71\ <= \Mult3~8_RESULTA_bus\(63);

\Mult2~8_ACLR_bus\ <= (gnd & gnd);

\Mult2~8_CLK_bus\ <= (gnd & gnd & \CLOCK~inputCLKENA0_outclk\);

\Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult2~8_AX_bus\ <= (S1(8) & NOT S1(8) & S1(6) & S1(5) & S1(4) & S1(3) & S1(2) & S1(1) & S1(0));

\Mult2~8_AY_bus\ <= (\Mult0~23\ & \Mult0~22\ & \Mult0~21\ & \Mult0~20\ & \Mult0~19\ & \Mult0~18\ & \Mult0~17\ & \Mult0~16\ & \Mult0~15\ & \Mult0~14\ & \Mult0~13\ & \Mult0~12\ & \Mult0~11\ & \Mult0~10\ & \Mult0~9\ & \Mult0~8_resulta\);

\Mult2~8_resulta\ <= \Mult2~8_RESULTA_bus\(0);
\Mult2~9\ <= \Mult2~8_RESULTA_bus\(1);
\Mult2~10\ <= \Mult2~8_RESULTA_bus\(2);
\Mult2~11\ <= \Mult2~8_RESULTA_bus\(3);
\Mult2~12\ <= \Mult2~8_RESULTA_bus\(4);
\Mult2~13\ <= \Mult2~8_RESULTA_bus\(5);
\Mult2~14\ <= \Mult2~8_RESULTA_bus\(6);
\Mult2~15\ <= \Mult2~8_RESULTA_bus\(7);
\Mult2~16\ <= \Mult2~8_RESULTA_bus\(8);
\Mult2~17\ <= \Mult2~8_RESULTA_bus\(9);
\Mult2~18\ <= \Mult2~8_RESULTA_bus\(10);
\Mult2~19\ <= \Mult2~8_RESULTA_bus\(11);
\Mult2~20\ <= \Mult2~8_RESULTA_bus\(12);
\Mult2~21\ <= \Mult2~8_RESULTA_bus\(13);
\Mult2~22\ <= \Mult2~8_RESULTA_bus\(14);
\Mult2~23\ <= \Mult2~8_RESULTA_bus\(15);
P2(16) <= \Mult2~8_RESULTA_bus\(16);
P2(17) <= \Mult2~8_RESULTA_bus\(17);
P2(18) <= \Mult2~8_RESULTA_bus\(18);
P2(19) <= \Mult2~8_RESULTA_bus\(19);
P2(20) <= \Mult2~8_RESULTA_bus\(20);
P2(21) <= \Mult2~8_RESULTA_bus\(21);
P2(22) <= \Mult2~8_RESULTA_bus\(22);
P2(23) <= \Mult2~8_RESULTA_bus\(23);
P2(24) <= \Mult2~8_RESULTA_bus\(24);
\Mult2~33\ <= \Mult2~8_RESULTA_bus\(25);
\Mult2~34\ <= \Mult2~8_RESULTA_bus\(26);
\Mult2~35\ <= \Mult2~8_RESULTA_bus\(27);
\Mult2~36\ <= \Mult2~8_RESULTA_bus\(28);
\Mult2~37\ <= \Mult2~8_RESULTA_bus\(29);
\Mult2~38\ <= \Mult2~8_RESULTA_bus\(30);
\Mult2~39\ <= \Mult2~8_RESULTA_bus\(31);
\Mult2~40\ <= \Mult2~8_RESULTA_bus\(32);
\Mult2~41\ <= \Mult2~8_RESULTA_bus\(33);
\Mult2~42\ <= \Mult2~8_RESULTA_bus\(34);
\Mult2~43\ <= \Mult2~8_RESULTA_bus\(35);
\Mult2~44\ <= \Mult2~8_RESULTA_bus\(36);
\Mult2~45\ <= \Mult2~8_RESULTA_bus\(37);
\Mult2~46\ <= \Mult2~8_RESULTA_bus\(38);
\Mult2~47\ <= \Mult2~8_RESULTA_bus\(39);
\Mult2~48\ <= \Mult2~8_RESULTA_bus\(40);
\Mult2~49\ <= \Mult2~8_RESULTA_bus\(41);
\Mult2~50\ <= \Mult2~8_RESULTA_bus\(42);
\Mult2~51\ <= \Mult2~8_RESULTA_bus\(43);
\Mult2~52\ <= \Mult2~8_RESULTA_bus\(44);
\Mult2~53\ <= \Mult2~8_RESULTA_bus\(45);
\Mult2~54\ <= \Mult2~8_RESULTA_bus\(46);
\Mult2~55\ <= \Mult2~8_RESULTA_bus\(47);
\Mult2~56\ <= \Mult2~8_RESULTA_bus\(48);
\Mult2~57\ <= \Mult2~8_RESULTA_bus\(49);
\Mult2~58\ <= \Mult2~8_RESULTA_bus\(50);
\Mult2~59\ <= \Mult2~8_RESULTA_bus\(51);
\Mult2~60\ <= \Mult2~8_RESULTA_bus\(52);
\Mult2~61\ <= \Mult2~8_RESULTA_bus\(53);
\Mult2~62\ <= \Mult2~8_RESULTA_bus\(54);
\Mult2~63\ <= \Mult2~8_RESULTA_bus\(55);
\Mult2~64\ <= \Mult2~8_RESULTA_bus\(56);
\Mult2~65\ <= \Mult2~8_RESULTA_bus\(57);
\Mult2~66\ <= \Mult2~8_RESULTA_bus\(58);
\Mult2~67\ <= \Mult2~8_RESULTA_bus\(59);
\Mult2~68\ <= \Mult2~8_RESULTA_bus\(60);
\Mult2~69\ <= \Mult2~8_RESULTA_bus\(61);
\Mult2~70\ <= \Mult2~8_RESULTA_bus\(62);
\Mult2~71\ <= \Mult2~8_RESULTA_bus\(63);

\Mult0~8_AX_bus\ <= (\X[7]~input_o\ & \X[6]~input_o\ & \X[5]~input_o\ & \X[4]~input_o\ & \X[3]~input_o\ & \X[2]~input_o\ & \X[1]~input_o\ & \X[0]~input_o\);

\Mult0~8_AY_bus\ <= (\X[7]~input_o\ & \X[6]~input_o\ & \X[5]~input_o\ & \X[4]~input_o\ & \X[3]~input_o\ & \X[2]~input_o\ & \X[1]~input_o\ & \X[0]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);

\Mult1~8_ACLR_bus\ <= (gnd & gnd);

\Mult1~8_CLK_bus\ <= (gnd & gnd & \CLOCK~inputCLKENA0_outclk\);

\Mult1~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult1~8_AX_bus\ <= (vcc & gnd & vcc & gnd & vcc & vcc & gnd);

\Mult1~8_AY_bus\ <= (\Mult0~23\ & \Mult0~22\ & \Mult0~21\ & \Mult0~20\ & \Mult0~19\ & \Mult0~18\ & \Mult0~17\ & \Mult0~16\ & \Mult0~15\ & \Mult0~14\ & \Mult0~13\ & \Mult0~12\ & \Mult0~11\ & \Mult0~10\ & \Mult0~9\ & \Mult0~8_resulta\);

\Mult1~8_resulta\ <= \Mult1~8_RESULTA_bus\(0);
\Mult1~9\ <= \Mult1~8_RESULTA_bus\(1);
\Mult1~10\ <= \Mult1~8_RESULTA_bus\(2);
\Mult1~11\ <= \Mult1~8_RESULTA_bus\(3);
\Mult1~12\ <= \Mult1~8_RESULTA_bus\(4);
\Mult1~13\ <= \Mult1~8_RESULTA_bus\(5);
\Mult1~14\ <= \Mult1~8_RESULTA_bus\(6);
\Mult1~15\ <= \Mult1~8_RESULTA_bus\(7);
\Mult1~16\ <= \Mult1~8_RESULTA_bus\(8);
\Mult1~17\ <= \Mult1~8_RESULTA_bus\(9);
\Mult1~18\ <= \Mult1~8_RESULTA_bus\(10);
\Mult1~19\ <= \Mult1~8_RESULTA_bus\(11);
\Mult1~20\ <= \Mult1~8_RESULTA_bus\(12);
\Mult1~21\ <= \Mult1~8_RESULTA_bus\(13);
\Mult1~22\ <= \Mult1~8_RESULTA_bus\(14);
\Mult1~23\ <= \Mult1~8_RESULTA_bus\(15);
P1(16) <= \Mult1~8_RESULTA_bus\(16);
P1(17) <= \Mult1~8_RESULTA_bus\(17);
P1(18) <= \Mult1~8_RESULTA_bus\(18);
P1(19) <= \Mult1~8_RESULTA_bus\(19);
P1(20) <= \Mult1~8_RESULTA_bus\(20);
P1(21) <= \Mult1~8_RESULTA_bus\(21);
P1(22) <= \Mult1~8_RESULTA_bus\(22);
\Mult1~31\ <= \Mult1~8_RESULTA_bus\(23);
\Mult1~32\ <= \Mult1~8_RESULTA_bus\(24);
\Mult1~33\ <= \Mult1~8_RESULTA_bus\(25);
\Mult1~34\ <= \Mult1~8_RESULTA_bus\(26);
\Mult1~35\ <= \Mult1~8_RESULTA_bus\(27);
\Mult1~36\ <= \Mult1~8_RESULTA_bus\(28);
\Mult1~37\ <= \Mult1~8_RESULTA_bus\(29);
\Mult1~38\ <= \Mult1~8_RESULTA_bus\(30);
\Mult1~39\ <= \Mult1~8_RESULTA_bus\(31);
\Mult1~40\ <= \Mult1~8_RESULTA_bus\(32);
\Mult1~41\ <= \Mult1~8_RESULTA_bus\(33);
\Mult1~42\ <= \Mult1~8_RESULTA_bus\(34);
\Mult1~43\ <= \Mult1~8_RESULTA_bus\(35);
\Mult1~44\ <= \Mult1~8_RESULTA_bus\(36);
\Mult1~45\ <= \Mult1~8_RESULTA_bus\(37);
\Mult1~46\ <= \Mult1~8_RESULTA_bus\(38);
\Mult1~47\ <= \Mult1~8_RESULTA_bus\(39);
\Mult1~48\ <= \Mult1~8_RESULTA_bus\(40);
\Mult1~49\ <= \Mult1~8_RESULTA_bus\(41);
\Mult1~50\ <= \Mult1~8_RESULTA_bus\(42);
\Mult1~51\ <= \Mult1~8_RESULTA_bus\(43);
\Mult1~52\ <= \Mult1~8_RESULTA_bus\(44);
\Mult1~53\ <= \Mult1~8_RESULTA_bus\(45);
\Mult1~54\ <= \Mult1~8_RESULTA_bus\(46);
\Mult1~55\ <= \Mult1~8_RESULTA_bus\(47);
\Mult1~56\ <= \Mult1~8_RESULTA_bus\(48);
\Mult1~57\ <= \Mult1~8_RESULTA_bus\(49);
\Mult1~58\ <= \Mult1~8_RESULTA_bus\(50);
\Mult1~59\ <= \Mult1~8_RESULTA_bus\(51);
\Mult1~60\ <= \Mult1~8_RESULTA_bus\(52);
\Mult1~61\ <= \Mult1~8_RESULTA_bus\(53);
\Mult1~62\ <= \Mult1~8_RESULTA_bus\(54);
\Mult1~63\ <= \Mult1~8_RESULTA_bus\(55);
\Mult1~64\ <= \Mult1~8_RESULTA_bus\(56);
\Mult1~65\ <= \Mult1~8_RESULTA_bus\(57);
\Mult1~66\ <= \Mult1~8_RESULTA_bus\(58);
\Mult1~67\ <= \Mult1~8_RESULTA_bus\(59);
\Mult1~68\ <= \Mult1~8_RESULTA_bus\(60);
\Mult1~69\ <= \Mult1~8_RESULTA_bus\(61);
\Mult1~70\ <= \Mult1~8_RESULTA_bus\(62);
\Mult1~71\ <= \Mult1~8_RESULTA_bus\(63);
ALT_INV_S1(8) <= NOT S1(8);
ALT_INV_P1(22) <= NOT P1(22);
ALT_INV_P1(21) <= NOT P1(21);
ALT_INV_P1(20) <= NOT P1(20);
ALT_INV_P1(19) <= NOT P1(19);
ALT_INV_P1(18) <= NOT P1(18);
ALT_INV_P1(17) <= NOT P1(17);
ALT_INV_P1(16) <= NOT P1(16);
ALT_INV_P2(24) <= NOT P2(24);
ALT_INV_P2(23) <= NOT P2(23);
ALT_INV_P2(22) <= NOT P2(22);
ALT_INV_P2(21) <= NOT P2(21);
ALT_INV_P2(20) <= NOT P2(20);
ALT_INV_P2(19) <= NOT P2(19);
ALT_INV_P2(18) <= NOT P2(18);
ALT_INV_P2(17) <= NOT P2(17);
ALT_INV_P2(16) <= NOT P2(16);
ALT_INV_P3(18) <= NOT P3(18);
ALT_INV_P3(17) <= NOT P3(17);
ALT_INV_P3(16) <= NOT P3(16);
ALT_INV_P3(15) <= NOT P3(15);
ALT_INV_P3(14) <= NOT P3(14);
ALT_INV_P3(13) <= NOT P3(13);
ALT_INV_P3(12) <= NOT P3(12);
ALT_INV_P3(11) <= NOT P3(11);
ALT_INV_P3(10) <= NOT P3(10);
ALT_INV_P3(9) <= NOT P3(9);

-- Location: IOOBUF_X89_Y8_N56
\ANGLE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(0));

-- Location: IOOBUF_X89_Y8_N39
\ANGLE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(1));

-- Location: IOOBUF_X89_Y9_N22
\ANGLE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(2));

-- Location: IOOBUF_X89_Y8_N22
\ANGLE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(3));

-- Location: IOOBUF_X89_Y11_N96
\ANGLE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(4));

-- Location: IOOBUF_X89_Y9_N5
\ANGLE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(5));

-- Location: IOOBUF_X89_Y6_N39
\ANGLE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(6));

-- Location: IOOBUF_X89_Y9_N56
\ANGLE[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(7));

-- Location: IOOBUF_X89_Y6_N56
\ANGLE[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(8));

-- Location: IOOBUF_X89_Y8_N5
\ANGLE[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ANGLE[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ANGLE(9));

-- Location: IOIBUF_X89_Y25_N21
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G10
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y4_N95
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\X[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\X[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\X[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\X[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: DSP_X86_Y2_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: DSP_X86_Y4_N0
\Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 7,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult1~8_ACLR_bus\,
	clk => \Mult1~8_CLK_bus\,
	ena => \Mult1~8_ENA_bus\,
	ax => \Mult1~8_AX_bus\,
	ay => \Mult1~8_AY_bus\,
	resulta => \Mult1~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y6_N24
\S1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1[0]~0_combout\ = ( !P1(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P1(16),
	combout => \S1[0]~0_combout\);

-- Location: FF_X85_Y6_N25
\S1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \S1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(0));

-- Location: LABCELL_X85_Y6_N30
\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_cout\ = CARRY(( P1(16) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P1(16),
	cin => GND,
	cout => \Add0~30_cout\);

-- Location: LABCELL_X85_Y6_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( P1(17) ) + ( VCC ) + ( \Add0~30_cout\ ))
-- \Add0~2\ = CARRY(( P1(17) ) + ( VCC ) + ( \Add0~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P1(17),
	cin => \Add0~30_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X85_Y6_N34
\S1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(1));

-- Location: LABCELL_X85_Y6_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( P1(18) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( P1(18) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P1(18),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X85_Y6_N38
\S1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(2));

-- Location: LABCELL_X85_Y6_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( P1(19) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( P1(19) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P1(19),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X85_Y6_N40
\S1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(3));

-- Location: LABCELL_X85_Y6_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( P1(20) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( P1(20) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P1(20),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X85_Y6_N43
\S1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(4));

-- Location: LABCELL_X85_Y6_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( P1(21) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( P1(21) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P1(21),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X85_Y6_N47
\S1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(5));

-- Location: LABCELL_X85_Y6_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( P1(22) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( P1(22) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P1(22),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X85_Y6_N49
\S1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(6));

-- Location: LABCELL_X85_Y6_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\);

-- Location: FF_X85_Y6_N52
\S1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S1(8));

-- Location: DSP_X86_Y6_N0
\Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult2~8_ACLR_bus\,
	clk => \Mult2~8_CLK_bus\,
	ena => \Mult2~8_ENA_bus\,
	ax => \Mult2~8_AX_bus\,
	ay => \Mult2~8_AY_bus\,
	resulta => \Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y8_N0
\S2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2[0]~feeder_combout\ = ( P2(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P2(16),
	combout => \S2[0]~feeder_combout\);

-- Location: FF_X85_Y8_N1
\S2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \S2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(0));

-- Location: LABCELL_X85_Y8_N27
\S2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2[1]~feeder_combout\ = ( P2(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P2(17),
	combout => \S2[1]~feeder_combout\);

-- Location: FF_X85_Y8_N28
\S2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \S2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(1));

-- Location: LABCELL_X85_Y8_N21
\S2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2[2]~feeder_combout\ = ( P2(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P2(18),
	combout => \S2[2]~feeder_combout\);

-- Location: FF_X85_Y8_N22
\S2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \S2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(2));

-- Location: LABCELL_X85_Y8_N15
\S2[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2[3]~0_combout\ = ( !P2(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P2(19),
	combout => \S2[3]~0_combout\);

-- Location: FF_X85_Y8_N16
\S2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \S2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(3));

-- Location: LABCELL_X85_Y8_N33
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( P2(20) & ( P2(19) ) ) # ( !P2(20) & ( !P2(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(19),
	combout => \Add1~0_combout\);

-- Location: FF_X85_Y8_N34
\S2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(4));

-- Location: LABCELL_X85_Y8_N6
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( P2(20) & ( P2(19) & ( P2(21) ) ) ) # ( !P2(20) & ( P2(19) & ( P2(21) ) ) ) # ( P2(20) & ( !P2(19) & ( P2(21) ) ) ) # ( !P2(20) & ( !P2(19) & ( !P2(21) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P2(21),
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(19),
	combout => \Add1~1_combout\);

-- Location: FF_X85_Y8_N7
\S2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(5));

-- Location: LABCELL_X85_Y8_N45
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( P2(20) & ( P2(21) & ( P2(22) ) ) ) # ( !P2(20) & ( P2(21) & ( P2(22) ) ) ) # ( P2(20) & ( !P2(21) & ( P2(22) ) ) ) # ( !P2(20) & ( !P2(21) & ( !P2(19) $ (P2(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P2(19),
	datac => ALT_INV_P2(22),
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(21),
	combout => \Add1~2_combout\);

-- Location: FF_X85_Y8_N46
\S2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(6));

-- Location: LABCELL_X85_Y8_N48
\Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = ( P2(20) & ( P2(19) & ( !P2(23) ) ) ) # ( !P2(20) & ( P2(19) & ( !P2(23) ) ) ) # ( P2(20) & ( !P2(19) & ( !P2(23) ) ) ) # ( !P2(20) & ( !P2(19) & ( !P2(23) $ (((!P2(21) & !P2(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P2(21),
	datac => ALT_INV_P2(23),
	datad => ALT_INV_P2(22),
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(19),
	combout => \Add1~3_combout\);

-- Location: FF_X85_Y8_N49
\S2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(7));

-- Location: LABCELL_X85_Y8_N54
\Add1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ( P2(20) & ( P2(24) & ( !P2(23) ) ) ) # ( !P2(20) & ( P2(24) & ( (!P2(23)) # ((!P2(19) & (!P2(21) & !P2(22)))) ) ) ) # ( P2(20) & ( !P2(24) & ( P2(23) ) ) ) # ( !P2(20) & ( !P2(24) & ( (P2(23) & (((P2(22)) # (P2(21))) # (P2(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010111101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P2(23),
	datab => ALT_INV_P2(19),
	datac => ALT_INV_P2(21),
	datad => ALT_INV_P2(22),
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(24),
	combout => \Add1~4_combout\);

-- Location: FF_X85_Y8_N55
\S2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(8));

-- Location: LABCELL_X85_Y8_N36
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = ( P2(20) & ( P2(24) & ( P2(23) ) ) ) # ( !P2(20) & ( P2(24) & ( (P2(23) & (((P2(22)) # (P2(21))) # (P2(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P2(23),
	datab => ALT_INV_P2(19),
	datac => ALT_INV_P2(21),
	datad => ALT_INV_P2(22),
	datae => ALT_INV_P2(20),
	dataf => ALT_INV_P2(24),
	combout => \Add1~5_combout\);

-- Location: FF_X85_Y8_N37
\S2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S2(9));

-- Location: DSP_X86_Y8_N0
\Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 11,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult3~8_ACLR_bus\,
	clk => \Mult3~8_CLK_bus\,
	ena => \Mult3~8_ENA_bus\,
	ax => \Mult3~8_AX_bus\,
	ay => \Mult3~8_AY_bus\,
	resulta => \Mult3~8_RESULTA_bus\);

-- Location: FF_X88_Y8_N1
\ANGLE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => P3(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[0]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !P3(10) ) + ( !P3(9) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !P3(10) ) + ( !P3(9) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P3(9),
	datad => ALT_INV_P3(10),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X87_Y8_N31
\ANGLE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[1]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !P3(11) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !P3(11) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P3(11),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X87_Y8_N34
\ANGLE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[2]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !P3(12) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !P3(12) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P3(12),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X87_Y8_N37
\ANGLE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[3]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !P3(13) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !P3(13) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P3(13),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X87_Y8_N40
\ANGLE[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[4]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !P3(14) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !P3(14) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P3(14),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X87_Y8_N43
\ANGLE[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[5]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !P3(15) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !P3(15) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P3(15),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X87_Y8_N46
\ANGLE[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[6]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !P3(16) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !P3(16) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P3(16),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X87_Y8_N49
\ANGLE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[7]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !P3(17) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !P3(17) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P3(17),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X87_Y8_N52
\ANGLE[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[8]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !P3(18) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P3(18),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\);

-- Location: FF_X87_Y8_N55
\ANGLE[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ANGLE[9]~reg0_q\);

-- Location: LABCELL_X19_Y31_N0
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


