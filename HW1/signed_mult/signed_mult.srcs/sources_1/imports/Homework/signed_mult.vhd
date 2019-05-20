package reg_mult_pack is
    constant n: natural := 3;
end reg_mult_pack;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use work.reg_mult_pack.all;

entity signed_mult is
  Port(clk: in std_logic;
       x, y: in std_logic_vector(n-1 downto 0);
       en: in std_logic;
       rx, ry: out std_logic_vector(n-1 downto 0);
       z: out std_logic_vector(2*n-1 downto 0));
end signed_mult;

architecture beh of signed_mult is
    signal temp_x, temp_y: std_logic_vector(n-1 downto 0);
    signal temp_z: std_logic_vector(2*n-1 downto 0);
  begin
    process(clk)
    begin
      if clk = '1' and clk'event then
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
