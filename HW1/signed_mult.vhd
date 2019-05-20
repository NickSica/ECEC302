library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

package reg_mult_pack is
  constant n: nature := 3;
end reg_mult_pack

entity signed_mult is
  Port(clk: in std_logic,
       x, y: in std_logic_vector(n-1 downto 0),
       rx, ry: in std_logic_vector(n-1 downto 0),
       en: in std_logic,
       z: out signed std_logic_vector(2*n-1 downto 0))
end signed_mult;

architecture beh of signed_mult is
    signal temp_x, temp_y: std_logic_vector(n-1 downto 0);
    signal temp_z: std_logic_vector(2*n-1 downto 0);
  begin
    process(clk)
    begin
      if ck = '1' and ck'event then
        if en = '1' then
          temp_x <= x;
          temp_y <= y;
          temp_z <= signed(temp_x) * signed(temp_y);
        end if;
      end if;
    end process;
    rx <= temp_x;
    ry <= temp_y;
    z <= temp_z;
end beh;
