----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2019 08:25:16 PM
-- Design Name: 
-- Module Name: fact - beh
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fact is
    generic(n: natural := 5);
    port(clk, reset: in std_logic;
         led: out std_logic_vector(n-1 downto 0));
end fact;

architecture beh of fact is
    signal temp: std_logic_vector(2*n - 1 downto 0);
    signal i: std_logic_vector(n-1 downto 0);
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset = '1') then
                temp <= (0 => '1', others => '0');
                i    <= (0 => '1', others => '0');
            else
                temp <= i * temp(n-1 downto 0);
                i <= i + 1;
            end if;
        end if;
    end process;
    led <= temp;
end beh;
