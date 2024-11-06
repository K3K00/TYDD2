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
-- Created on Wed Nov 06 14:27:42 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comparador IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        Regs : IN STD_LOGIC := '0';
        Dir : IN STD_LOGIC := '0';
        Soy : OUT STD_LOGIC
    );
END Comparador;

ARCHITECTURE BEHAVIOR OF Comparador IS
    TYPE type_fstate IS (sisoy,oscioso,nosoy);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,Regs,Dir)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= oscioso;
            Soy <= '0';
        ELSE
            Soy <= '0';
            CASE fstate IS
                WHEN sisoy =>
                    IF ((Regs /= Dir)) THEN
                        reg_fstate <= nosoy;
                    ELSIF ((Regs = Dir)) THEN
                        reg_fstate <= sisoy;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= sisoy;
                    END IF;

                    Soy <= '1';
                WHEN oscioso =>
                    IF ((Regs = Dir)) THEN
                        reg_fstate <= sisoy;
                    ELSIF ((Regs /= Dir)) THEN
                        reg_fstate <= nosoy;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= oscioso;
                    END IF;
                WHEN nosoy =>
                    IF ((Regs /= Dir)) THEN
                        reg_fstate <= nosoy;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= nosoy;
                    END IF;

                    Soy <= '0';
                WHEN OTHERS => 
                    Soy <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;