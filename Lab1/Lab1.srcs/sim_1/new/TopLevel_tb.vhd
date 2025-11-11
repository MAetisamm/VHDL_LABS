library ieee;
use ieee.std_logic_1164.all;

entity TopLevel_tb is
end entity;

architecture Behavioral of TopLevel_tb is
  signal a, b, c : std_logic;
  signal o1, o2, o3 : std_logic;
begin

  -- Direct entity instantiation (simplest & correct)
  uut1 : entity work.TopLevel
    port map (
      a  => a,
      b  => b,
      c  => c,
      o1 => o1,
      o2 => o2,
      o3 => o3
    );

  stim : process
  begin
    a <= '0'; b <= '0'; c <= '0';
    wait for 10 ns;

    a <= '0'; b <= '0'; c <= '1';
    wait for 10 ns;

    a <= '0'; b <= '1'; c <= '0';
    wait for 10 ns;

    a <= '0'; b <= '1'; c <= '1';
    wait for 10 ns;

    a <= '1'; b <= '0'; c <= '0';
    wait for 10 ns;

    a <= '1'; b <= '0'; c <= '1';
    wait for 10 ns;

    wait; -- stop simulation
  end process;

end architecture Behavioral;
