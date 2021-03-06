-- -------------------------------------------------------------
-- 
-- File Name: HDL_files/Transmitter_pkg.vhd
-- Created: 2021-06-02 20:48:26
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE Transmitter_pkg IS
  TYPE vector_of_unsigned106 IS ARRAY (NATURAL RANGE <>) OF unsigned(105 DOWNTO 0);
  TYPE vector_of_signed14 IS ARRAY (NATURAL RANGE <>) OF signed(13 DOWNTO 0);
  TYPE vector_of_unsigned52 IS ARRAY (NATURAL RANGE <>) OF unsigned(51 DOWNTO 0);
END Transmitter_pkg;

