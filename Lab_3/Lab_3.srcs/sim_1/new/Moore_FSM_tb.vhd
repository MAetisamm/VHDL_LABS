----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2025 02:57:16 PM
-- Design Name: 
-- Module Name: Moore_FSM_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Moore_FSM_tb is
--  Port ( );
end Moore_FSM_tb;

architecture Behavioral of Moore_FSM_tb is
signal clk: std_logic := '0';
signal rst: std_logic := '0';
signal switch : std_logic := '0';
signal output: std_logic;
begin
uut: entity work.Moore_FSM port map(
clk => clk,
rst => rst,
switch => switch,
output => output
);
clock_sim:process
begin
    clk <='0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
end process;

stim: process
begin
   rst <= '1';
   switch <= '0';
   wait for 20ns;
   switch <= '1';
   rst <= '0';
   wait for 50ns;
   rst <= '1';
   switch <= '0';
   wait for 20ns;
   
end process;
end Behavioral;
