library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

--package reg_mult_pack is
--  constant n: nature := 3;
--end reg_mult_pack

entity unsigned_mult is
  Port(x,y: in std_logic_vector(2 downto 0);
       z: out std_logic_vector(5 downto 0));
end unsigned_mult;

architecture beh of unsigned_mult is
begin
  process(x, y)
  begin
    z <= unsigned(x) * unsigned(y);
  end process;
end beh;


