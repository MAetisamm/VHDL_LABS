library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TopLevel is port (
a: in std_logic;
b: in std_logic;
c: in std_logic;
o1: out std_logic;
o2: out std_logic;
o3: out std_logic
); end TopLevel;

architecture Bh3 of TopLevel is
signal t1, t2, t3: std_logic;

begin
m1: entity work.I1 port map(a=> a, b => b, c=>c, o1=>t1, o2=>t2, o3=>t3);
m2: entity work.I2 port map(a=>t1, b=>t2, c=>t3, o1=>o1, o2=>o2, o3=>o3);

end Bh3;
