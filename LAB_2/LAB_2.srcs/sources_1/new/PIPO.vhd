----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 05:17:44 PM
-- Design Name: 
-- Module Name: PIPO - Behavioral
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

entity PIPO is
generic(
    N:integer := 4
);
Port (
    CLK  : in  std_logic;
    LOAD : in  std_logic;
    D    : in  std_logic_vector(N-1 downto 0);
    Q    : out std_logic_vector(N-1 downto 0)
);
end PIPO;

architecture Behavioral of PIPO is
begin
    process(CLK)
        begin
        if rising_edge(CLK) then
            if LOAD = '1' then 
                Q <= D;
            else
                null;
            end if;
        else
            null;
        end if;
    end process;
end Behavioral;
