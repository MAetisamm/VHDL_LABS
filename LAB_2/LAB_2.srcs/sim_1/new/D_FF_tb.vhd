----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 02:56:06 PM
-- Design Name: 
-- Module Name: D_FF_tb - Behavioral
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

entity D_FF_tb is
--  Port ( );
end D_FF_tb;

architecture Behavioral of D_FF_tb is
signal D: std_logic;
signal Q: std_logic;
signal clk: std_logic;
signal rst: std_logic;
begin
uut: entity work.D_FF port map
(
D=>D,
Q=>Q,
clk=>clk,
rst=>rst
);
clk_process: process
begin
CLK <= '0';
wait for 5 ns;
CLK <= '1';
wait for 5 ns;
end process;

stim:process
begin
rst<='1';
D<='1';
wait for 2ns;
rst<='0';
D<='1';
wait for 2ns;
D<='0';
wait for 2ns;
D<='1';
end process;
end Behavioral;
