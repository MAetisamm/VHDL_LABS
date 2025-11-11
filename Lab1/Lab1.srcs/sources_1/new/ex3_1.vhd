
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I1 is port (
a: in std_logic;
b: in std_logic;
c: in std_logic;
o1: out std_logic;
o2: out std_logic;
o3: out std_logic
); end I1;

architecture Bh1 of I1 is

begin
   o1 <= a and b;
   o2 <= b and c;
   o3 <= c and a;
end Bh1;
