----------------------------------------------------------------------------------
-- Engineer: Muhammad Aetisam
-- Description: Generic Ripple Carry Adder built from full adders
-- 
-- Create Date: 11/11/2025 12:01:02 PM
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

entity RCA is 
generic(
  N: integer:=8
);
port (
 A, B: in std_logic_vector(N-1 downto 0);
 Cin: in std_logic:='0';
 SUM: out std_logic_vector(N-1 downto 0);
 Cout: out std_logic
 );
end RCA;


architecture Behavioral of RCA is
signal C: std_logic_vector(N downto 0);
begin
C(0) <= Cin;
gen_Adder: for i in 0 to N-1 generate
FA_inst: entity work.full_adder port map(
    a => A(i),
    b => B(i),
    ci => C(i),
    s => SUM(i),
    co => C(i+1)
  );
  end generate;
  Cout <= C(N);
end Behavioral;
