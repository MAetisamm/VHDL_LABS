----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 03:30:42 PM
-- Design Name: 
-- Module Name: Serial_register - Behavioral
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

entity Serial_register is 
generic(
    N: integer:= 4
);
Port (
    D: in std_logic;
    Q: out std_logic;
    EN: in std_logic;
    CLK: in std_logic
);
end Serial_register;

architecture Behavioral of Serial_register is
signal shift_reg: std_logic_vector(N-1 downto 0) := (others => '0');
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
          if EN = '1' then
            Q <= shift_reg(N-1);
            shift_reg(N-1 downto 1) <= shift_reg(N-2 downto 0);   --arr[3-1]=arr[2-0]
            shift_reg(0) <= D;
          else
            null;
          end if;
        end if;
    end process;
end Behavioral;
