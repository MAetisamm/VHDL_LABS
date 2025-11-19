----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2025 03:21:05 PM
-- Design Name: 
-- Module Name: up_counter_state_mach_tb - Behavioral
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

entity up_counter_state_mach_tb is
--  Port ( );
end up_counter_state_mach_tb;

architecture Behavioral of up_counter_state_mach_tb is
constant N : integer := 2;
signal en: std_logic := '0';
signal rst: std_logic := '0';
signal clk: std_logic := '0';
signal counter_output: std_logic_vector(N-1 downto 0);

begin
uut: entity work.up_counter_state_mach generic map(N=>N)
port map(clk=>clk,en=>en,rst=>rst,counter_output=>counter_output);
clock_stim:process
begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
end process;

stim:process
begin
en <= '0'; rst <= '0';
wait for 20ns;
en <= '1'; rst <= '0';
wait for 30ns;
en <= '1'; rst <='1';
wait for 20ns;
en <= '1'; rst <= '0';
wait for 10ns;
en <= '0'; rst <= '1';
wait;
end process;

end Behavioral;
