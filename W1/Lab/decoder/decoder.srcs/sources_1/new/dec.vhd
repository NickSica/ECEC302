----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 04:09:58 PM
-- Design Name: 
-- Module Name: dec - Behavioral
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

entity decoder is
    Port (x: in std_logic_vector(1 downto 0);
        en: in std_logic; 
        z: out std_logic_vector(3 downto 0));
end decoder;

architecture Behavioral of decoder is
begin

process(x, en)
begin
if en = '0' then
    z(0) <= '0'; 
    z(1) <= '0';
    z(2) <= '0';
    z(3) <= '0';
else
    case x is
        when "00" =>
            z(0) <= '1';
            z(1) <= '0';
            z(2) <= '0';
            z(3) <= '0';
        when "01" =>
            z(0) <= '0';
            z(1) <= '1';
            z(2) <= '0';
            z(3) <= '0';
        when "10" =>
            z(0) <= '0';
            z(1) <= '0';
            z(2) <= '1';
            z(3) <= '0';
        when "11" =>
            z(0) <= '0';
            z(1) <= '0';
            z(2) <= '0';      
            z(3) <= '1';
    end case;
end if;
end process;

end Behavioral;
