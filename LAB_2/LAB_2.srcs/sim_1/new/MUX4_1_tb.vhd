----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 02:24:40 PM
-- Design Name: 
-- Module Name: MUX4_1_tb - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX4_1_tb is
--  Port ( );
end MUX4_1_tb;

architecture Behavioral of MUX4_1_tb is
signal D: std_logic_vector(3 downto 0);
signal SEL: std_logic_vector(1 downto 0);
signal Q: std_logic;
begin
uut: entity work.MUX4_1
port map(
D => D,
SEL => SEL,
Q => Q);
stim:process
begin

D(0)<='0';
D(1)<='1';
D(2)<='0';
D(3)<='1';
wait for 1ns;
for s_val in 0 to 3 loop
    SEL <= std_logic_vector(TO_UNSIGNED(s_val,2));
    wait for 5ns;
end loop;
wait;
end process;
end Behavioral;
