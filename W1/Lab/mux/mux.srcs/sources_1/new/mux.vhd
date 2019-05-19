----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 04:30:44 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
    Port (sel: in std_logic_vector(1 downto 0);
        x: in std_logic_vector(3 downto 0);
        z: out std_logic;
        z_L: out std_logic);
end mux;

architecture Behavioral of mux is
begin

process(sel, x)
begin
    case sel is
        when "00" =>
            z <= x(0);
            z_L <= not x(0);
        when "01" =>
            z <= x(1);
            z_L <= not x(1);
        when "10" =>
            z <= x(2);
            z_L <= not x(2);
        when "11" =>
            z <= x(3);
            z_L <= not x(3);
        when others =>
            z <= '1';
            z_L <= '1';
    end case;
end process;
end Behavioral;