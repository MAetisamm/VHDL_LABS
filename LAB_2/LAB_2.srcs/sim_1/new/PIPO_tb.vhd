----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 05:18:56 PM
-- Design Name: 
-- Module Name: PIPO_tb - Behavioral
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

entity PIPO_tb is
--  Port ( );
end PIPO_tb;

architecture Behavioral of PIPO_tb is
constant N : integer := 4;
signal CLK  :  std_logic;
signal LOAD : std_logic;
signal D    : std_logic_vector(N-1 downto 0);
signal Q    : std_logic_vector(N-1 downto 0)
begin
uut: entity work.PIPO generic map(N=>N)
port map(
    CLK => CLK,
    LOAD => LOAD,
    D => D,
    Q => Q
);

clk: process



end Behavioral;
