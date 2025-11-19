----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2025 01:04:11 PM
-- Design Name: 
-- Module Name: up_down_counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_counter is
generic(
    N : positive := 8
);
Port (
clk: in std_logic;
rst: in std_logic;
up: in std_logic;
count: out std_logic_vector(N-1 downto 0)
 );
end up_down_counter;

architecture Behavioral of up_down_counter is
signal cnt_reg: unsigned(N-1 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
    if rst = '1' then 
        cnt_reg <= (others => '0');
    elsif rising_edge(clk) then
        if up = '1' then
            cnt_reg <= cnt_reg + 1;
         else 
            cnt_reg <= cnt_reg - 1;
         end if;
    end if;
    end process;
    count <= std_logic_vector(cnt_reg);
end Behavioral;
