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
-- Created on Tue Nov 05 14:52:08 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MaquinaDeEstados IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        X : IN STD_LOGIC := '0';
        Z : OUT STD_LOGIC
    );
END MaquinaDeEstados;

ARCHITECTURE BEHAVIOR OF MaquinaDeEstados IS
    TYPE type_fstate IS (state1,state3,state2);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,X)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            Z <= '0';
        ELSE
            Z <= '0';
            CASE fstate IS
                WHEN state1 =>
                    IF ((X = '0')) THEN
                        reg_fstate <= state1;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    IF ((X = '1')) THEN
                        Z <= '1';
                    ELSIF ((X = '0')) THEN
                        Z <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        Z <= '0';
                    END IF;
                WHEN state3 =>
                    IF ((X = '0')) THEN
                        reg_fstate <= state3;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= state1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    IF ((X = '1')) THEN
                        Z <= '1';
                    ELSIF ((X = '0')) THEN
                        Z <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        Z <= '0';
                    END IF;
                WHEN state2 =>
                    IF ((X = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    IF ((X = '0')) THEN
                        Z <= '0';
                    ELSIF ((X = '1')) THEN
                        Z <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        Z <= '0';
                    END IF;
                WHEN OTHERS => 
                    Z <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
