
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2 is port (
a: in std_logic;
b: in std_logic;
c: in std_logic;
o1: out std_logic;
o2: out std_logic;
o3: out std_logic
); end I2;

architecture Bh2 of I2 is

begin
   o1 <= a or b;
   o2 <= b or c;
   o3 <= c or a;
end Bh2;
