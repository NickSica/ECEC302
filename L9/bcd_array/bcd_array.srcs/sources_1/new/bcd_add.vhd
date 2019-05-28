----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2019 12:56:43 PM
-- Design Name: 
-- Module Name: bcd_add - beh
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_add is
    port(a, b: in std_logic_vector(3 downto 0);
         c_in: in std_logic;
         c: out std_logic_vector(3 downto 0);
         c_out: out std_logic);
end bcd_add;

architecture beh of bcd_add is
begin
process(a, b, c_in)
    variable temp, temp_a, temp_b: std_logic_vector(4 downto 0);
begin
    temp_a := '0' & a;
    temp_b := '0' & b;
    temp := temp_a + temp_b;
    
    if(c_in = '1') then
        temp := temp + "00001";
    end if;
    
    if(temp > "01001") then
        temp := temp + "00110";
        c_out <= '1';
    else
        c_out <= '0';
    end if;
    c <= temp(3 downto 0);
end process;
end beh;
