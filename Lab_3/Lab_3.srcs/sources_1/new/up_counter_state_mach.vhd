----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2025 03:20:51 PM
-- Design Name: 
-- Module Name: up_counter_state_mach - Behavioral
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

entity up_counter_state_mach is 
generic(
N : positive := 2
);
Port ( 
en: in std_logic := '0';
rst: in std_logic := '0';
clk: in std_logic := '0';
counter_output: out std_logic_vector(N-1 downto 0)
);
end up_counter_state_mach;

architecture Behavioral of up_counter_state_mach is
type type_state is (S0, S1, S2, S3);
signal current_state: type_state:=S0;
signal next_state: type_state:=S0;
begin
next_state_logic: process(current_state, en)
begin
    next_state <= current_state;
    case current_state is
        when S0 => 
            if en = '1' then
                next_state <= S1;
            else
                null;
            end if;
        when S1 => 
            if en = '1' then
                next_state <= S2;
            else
                null;
            end if;
        when S2 =>
            if en = '1' then 
                next_state <= S3;
            else
                null;
            end if;
        when S3 =>
            if en = '1' then
                next_state <= S0;
            else
                null;
            end if;
    end case;
end process next_state_logic;

moving_logic:process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            current_state <= S0;
        else
            current_state <= next_state;
        end if;
    else
        null;
    end if;
end process moving_logic;

with current_state select
    counter_output <= "00" when S0,
                      "01" when S1,
                      "10" when S2,
                      "11" when S3;
end Behavioral;
