library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- define entity
entity myLogicFunction_tb is
end entity;

architecture ben of myLogicFunction_tb is
-- define component
component myLogicFunction is port(
    a,b,c,d,e     : in  std_logic;
    o         : out std_logic);
end component;
-- These are the internal wires

signal a,b,c,e,d,o : std_logic;
constant N: natural:=5;

begin
-- uut is the instance name 
    uut : myLogicFunction port map(a => a, b => b, c => c,d =>d, e=>e, o => o);
    stim : process
    variable vec : unsigned(N-1 downto 0);
    begin
    for i in 0 to 2**N - 1 loop
    vec := to_unsigned(i,N);
    a <= vec(0);
    b <= vec(1);
    c <= vec(2);
    d <= vec(3);
    e <= vec(4);
    wait for 10ns;
    end loop;
    wait;
    end process;
end ben;
