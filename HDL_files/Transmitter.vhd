-- -------------------------------------------------------------
-- 
-- File Name: HDL_files/Transmitter.vhd
-- Created: 2021-06-02 20:48:26
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 10
-- Target subsystem base rate: 10
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        10
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- TX                            ce_out        10
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Transmitter
-- Source Path: copy/Transmitter
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Transmitter IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        TX                                :   OUT   std_logic_vector(63 DOWNTO 0)  -- double
        );
END Transmitter;


ARCHITECTURE rtl OF Transmitter IS

  -- Component Declarations
  COMPONENT Power_Calibration_to_85_dBm
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(63 DOWNTO 0);  -- double
          Out1                            :   OUT   std_logic_vector(63 DOWNTO 0)  -- double
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Power_Calibration_to_85_dBm
    USE ENTITY work.Power_Calibration_to_85_dBm(rtl);

  -- Signals
  SIGNAL Constant_out1                    : std_logic_vector(63 DOWNTO 0);  -- ufix64
  SIGNAL Power_Calibration_to_85_dBm_out1 : std_logic_vector(63 DOWNTO 0);  -- ufix64

BEGIN
  u_Power_Calibration_to_85_dBm : Power_Calibration_to_85_dBm
    PORT MAP( clk => clk,
              reset => reset,
              enb => clk_enable,
              In1 => Constant_out1,  -- double
              Out1 => Power_Calibration_to_85_dBm_out1  -- double
              );

  Constant_out1 <= X"3ff0000000000000";

  ce_out <= clk_enable;

  TX <= Power_Calibration_to_85_dBm_out1;

END rtl;

