library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity updown_counter_tb is
end updown_counter_tb;

architecture tb of updown_counter_tb is

    constant N : integer := 8;

    signal clk   : std_logic := '0';
    signal rst   : std_logic := '1';
    signal up    : std_logic := '1';
    signal count : std_logic_vector(N-1 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: entity work.up_down_counter
        generic map (N => N)
        port map (
            clk   => clk,
            rst   => rst,
            up    => up,
            count => count
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    stim_process : process
    begin
        ------------ RESET -------------
        wait for 20 ns;
        rst <= '0';

        ------------ COUNT UP -----------
        up <= '1';
        wait for 80 ns;       -- ~8 cycles

        ------------ COUNT DOWN ---------
        up <= '0';
        wait for 80 ns;

        ------------ TOGGLE -------------
        up <= '1';
        wait for 40 ns;
        up <= '0';
        wait for 40 ns;

        ------------ FINISH -------------
        wait;
    end process;

end tb;
