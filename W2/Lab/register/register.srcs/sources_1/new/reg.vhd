----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 09:24:55 AM
-- Design Name: 
-- Module Name: reg - Behavioral
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

entity reg is
    generic(n: natural);
    Port(clk, en: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end reg;

architecture beh of reg is
signal temp: std_logic_vector(n-1 downto 0);
begin
    process(clk)
    begin
        if clk = '1' and clk'event then
            if en = '1' then
                temp <= x;
            end if;
        end if;
    end process;
    z <= temp;
end beh;
