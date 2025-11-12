----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 02:24:05 PM
-- Design Name: 
-- Module Name: MUX4_1 - Behavioral
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

entity MUX4_1 is
Port ( 
D: in std_logic_vector(3 downto 0);
SEL: in std_logic_vector(1 downto 0);
Q: out std_logic
);
end MUX4_1;

architecture Behavioral of MUX4_1 is
begin 
process (D, SEL) is
 begin
    case SEL is
        when "00" => Q<=D(0);
        when "01" => Q<=D(1);
        when "10" => Q<=D(2);
        when "11" => Q<=D(3);
        when others => Q<='X';
    end case;
  end process;
end Behavioral;
