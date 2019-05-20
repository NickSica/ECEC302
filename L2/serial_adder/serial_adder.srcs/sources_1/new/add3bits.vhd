----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 01:06:10 PM
-- Design Name: 
-- Module Name: add3bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity add3bits is
    port(x: in std_logic_vector(2 downto 0);
        z: out std_logic_vector(1 downto 0));
end add3bits;

architecture beh of add3bits is
begin
process(x)
subtype my_int is integer range 0 to 3;
variable count: my_int;
begin
    count := 0;
    for i in 2 downto 0 loop
        if x(i) = '1' then
            count := count + 1;
        end if;
    end loop;
    
    case count is
    when 0 => z <= "00";
    when 1 => z <= "01";
    when 2 => z <= "10";
    when 3 => z <= "11";
    when others => z <= "00";
    end case;
end process;

end beh;
