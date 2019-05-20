library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

package reg_mult_pack is
  constant n: nature := 3;
end reg_mult_pack

entity unsigned_mult is
  Port(x,y: in std_logic_vector(n-1 downto 0),
       z: out std_logic_vector(2*n-1 downto 0))
end unsinged_mult;

architecture beh of unsinged_mult is
begin
  process(x, y)
    z <= unsigned(x) * unsigned(y);
  end process;
end beh;


