----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2019 06:03:55 PM
-- Design Name: 
-- Module Name: pe - beh
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

entity pe is
    port(inv_in, x: in std_logic;
         inv_out, z: out std_logic);
end pe;

architecture beh of pe is
begin
process(inv_in, x)
begin
    if(x = '1' or inv_in = '1') then
        inv_out <= '1';
    else
        inv_out <= '0';
    end if;
    
    if(inv_in = '0') then
        z <= x;
    else
        z <= not x;
    end if;
end process;
end beh;
