library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit_reversal_reg is
    generic(n: natural);
    port(clk, en: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end bit_reversal_reg;

architecture beh of bit_reversal_reg is
signal temp: std_logic_vector(n-1 downto 0);
begin
    process(clk)
    begin
        if clk = '1' and clk'event then
            if en = '1' then
                for i in 0 to n-1 loop
                    temp(i) <= x(n-1 - i);
                end loop;
            end if;
        end if;
    end process;
    z <= temp;
end beh;