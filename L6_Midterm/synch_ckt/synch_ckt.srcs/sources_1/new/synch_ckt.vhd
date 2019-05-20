----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:12:57 PM
-- Design Name: 
-- Module Name: synch_ckt - beh
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

entity synch_ckt is
    generic(n: natural := 5);
    port(clk, reset: in std_logic;
        x, y: in std_logic_vector(n-1 downto 0);
        z: out std_logic);
end synch_ckt;

architecture beh of synch_ckt is
    signal temp: std_logic := '1';
begin
process(clk)
    variable count: integer := 0;
begin
    if(rising_edge(clk)) then
        if(reset = '1') then
            count := 0;
            temp <= '1';
            z <= '0';
        else
            if(x(count) = y(n - 1 - count)) then
                temp <= temp and '1';
            else
                temp <= '0';
            end if;
            
            if(count = (n - 1)) then
                z <= temp;
                count := 0;
            else
                count := count + 1;
            end if;
        end if;
    end if;
end process;

end beh;
