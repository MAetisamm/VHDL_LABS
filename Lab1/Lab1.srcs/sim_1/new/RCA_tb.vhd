library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RCA_tb is 
generic(
N: integer:=8
);
end RCA_tb;

architecture Behavioral of RCA_tb is
signal A,B: std_logic_vector(N-1 downto 0);
signal Cin: std_logic;
signal sum: std_logic_vector(N-1 downto 0);
signal Cout: std_logic;
begin
DUT: entity work.RCA 
generic map(N=>N)port map(
A=>A, B=>B, Cin=>Cin, SUM=>sum, Cout=>Cout);
stim:process
begin
for ia in 0 to (2**N-1) loop
  for ib in 0 to (2**N-1) loop
    for ic in 0 to 1 loop
      A <= std_logic_vector(TO_UNSIGNED(ia, N));
      B <= std_logic_vector(TO_UNSIGNED(ib, N));
      if ic = 0 then
        Cin <= '0';
      else
        Cin <= '1';
      end if;
      wait for 5ns;
    end loop;
  end loop;
end loop;
wait;
end process;
end Behavioral;
