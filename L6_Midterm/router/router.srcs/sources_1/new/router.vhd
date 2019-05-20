----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:37:26 PM
-- Design Name: 
-- Module Name: router - beh
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity router is
    generic(n: natural := 1;
        m: natural := 1);
    port(clk: in std_logic;
        x: in std_logic_vector(2**n - 1 downto 0);
        in_sel: std_logic_vector(n-1 downto 0);
        out_sel: std_logic_vector(m-1 downto 0);
        z: out std_logic_vector(2**m - 1 downto 0));
end router;

architecture beh of router is
begin
process(clk)
    variable inCount, inFinal: integer := 0;
    variable outCount, outFinal: integer := 0;
begin
if(rising_edge(clk)) then
    for i in 0 to n loop
        if(i = n) then
            inFinal := inCount;
            inCount := 0;
        elsif(in_sel(i) = '1') then
            inCount := inCount + 2**i;        
        end if;
    end loop;
    
    for i in 0 to m loop
        if(i = m) then
            outFinal := outCount;
            outCount := 0;
        elsif(out_sel(i) = '1') then
            outCount := outCount + 2**i;
        end if;
    end loop;
    z <= (others => '0');
    z(outFinal) <= x(inFinal);
end if;
    
end process;
end beh;
