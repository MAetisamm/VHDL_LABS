----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2025 02:38:21 PM
-- Design Name: 
-- Module Name: Moore_FSM - Behavioral
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

entity Moore_FSM is
Port (
clk: in std_logic;
rst: in std_logic;
switch: in std_logic;
output: out std_logic
);
end Moore_FSM;

architecture Behavioral of Moore_FSM is
type state_type is (ON1, OFF1);
signal current_state: state_type:=OFF1;
signal next_state: state_type:=ON1;
begin
update: process(current_state, switch)
begin
next_state <= current_state;
case current_state is
    when OFF1 => 
    if switch = '1' then 
        next_state <= ON1;
        else
        next_state <= OFF1;
    end if;
    when ON1 => 
    if switch = '1' then 
        next_state <= OFF1;
        else
        next_state <= ON1;
    end if;
  end case;
end process update;

assigning: process(rst, clk)
begin
if rst = '1' then 
    current_state <= OFF1;
elsif rising_edge(clk) then 
    current_state <= next_state;
else
    null;
end if;    
end process assigning;

output <= '1' when current_state = ON1 else '0';
end Behavioral;
