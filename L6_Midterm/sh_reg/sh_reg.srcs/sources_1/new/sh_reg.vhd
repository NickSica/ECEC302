----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:01:00 PM
-- Design Name: 
-- Module Name: sh_reg - beh
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

entity sh_reg is
    generic(n: natural := 2);
    port(x, clk, reset: in std_logic;
        z: out std_logic_vector(n-1 downto 0)); 
end sh_reg;

architecture beh of sh_reg is
    signal temp: std_logic_vector(n-1 downto 0);
begin
process(clk)
begin
if(rising_edge(clk)) then
    if(reset = '1') then
        temp <= (others => '0');
    else
        for i in 0 to n - 1 loop
            if(i = (n-1)) then
                temp(i) <= x;
            else
                temp(i) <= temp(i + 1);
            end if;
        end loop;
    end if;
end if;
end process;
z <= temp;

end beh;
