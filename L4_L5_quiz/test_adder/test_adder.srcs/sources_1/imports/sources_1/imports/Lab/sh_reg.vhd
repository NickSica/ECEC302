library ieee;
use ieee.std_logic_1164.all, work.p1_pack.all;

entity sh_reg is
  generic(n: natural := 4);
  port(x: in std_logic_vector(n-1 downto 0);
       sel: in sh_reg_sel;
       clk: in std_logic;
       z: out std_logic);
end sh_reg;

architecture beh of sh_reg is
  signal temp: std_logic_vector(n-1 downto 0);
begin
  process(clk)
  begin
    if(rising_edge(clk)) then
      case sel is
        when no_op => null;
        when load =>
          temp <= x;
        when shift =>
          for i in n-2 downto 0 loop
            temp(i) <= temp(i + 1);
          end loop;
      end case;
    end if;
  end process;
  z <= temp(0);
end beh;
  
