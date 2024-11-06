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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Tue Nov 05 19:28:45 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Contador7bits IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clk : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        fin_dir : OUT STD_LOGIC
    );
END Contador7bits;

ARCHITECTURE BEHAVIOR OF Contador7bits IS
    TYPE type_fstate IS (state7,state2,state1,state4,state5,state6,state3);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clk,reg_fstate)
    BEGIN
        IF (clk='1' AND clk'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            fin_dir <= '0';
        ELSE
            fin_dir <= '0';
            CASE fstate IS
                WHEN state7 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state1;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state7;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state7;
                    END IF;

                    fin_dir <= '0';
                WHEN state2 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state3;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    fin_dir <= '0';
                WHEN state1 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    fin_dir <= '1';
                WHEN state4 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state5;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state4;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state4;
                    END IF;

                    fin_dir <= '0';
                WHEN state5 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state6;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state5;
                    END IF;

                    fin_dir <= '0';
                WHEN state6 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state7;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state6;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state6;
                    END IF;

                    fin_dir <= '0';
                WHEN state3 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    fin_dir <= '0';
                WHEN OTHERS => 
                    fin_dir <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;