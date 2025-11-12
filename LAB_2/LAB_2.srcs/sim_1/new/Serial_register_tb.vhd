----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 03:31:24 PM
-- Design Name: 
-- Module Name: Serial_register_tb - Behavioral
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

entity Serial_register_tb is
--  Port ( );
end Serial_register_tb;

architecture Behavioral of Serial_register_tb is
constant N : integer := 4;
signal CLK, EN, D, Q : std_logic := '0';
constant CLOCK_PERIOD : time := 10 ns;

begin
uut: entity work.Serial_register generic map (N=>N)
port map(D=>D, Q=>Q, EN=>EN, CLK=>CLK);

clk_process:process
begin
CLK <= '0';
wait for 5ns;
ClK <= '1';
wait for 5ns;
end process;
stim:process
begin
    EN <= '0'; D <= '0';
    wait for 12 ns;     -- spans at least one rising edge
    
    for i in 3 downto 1 loop
        EN  <= '1';
        wait until falling_edge(CLK); D <= '1';
        wait until rising_edge(CLK);  -- Q outputs old MSB (0 after reset)
    
        wait until falling_edge(CLK); D <= '0';
        wait until rising_edge(CLK);
    
        wait until falling_edge(CLK); D <= '1';
        wait until rising_edge(CLK);
    
        wait until falling_edge(CLK); D <= '1';
        wait until rising_edge(CLK);
        
        wait for CLOCK_PERIOD * 10;
        EN <= '0';
    end loop;
    wait;
end process;
end Behavioral;
