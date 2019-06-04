----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2019 02:40:18 PM
-- Design Name: 
-- Module Name: twos_c_test - Behavioral
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

entity twos_c_test is
    port(clk, reset, go, btn0, btn1: in std_logic;
        x: in std_logic_vector(3 downto 0);
        z: out std_logic_vector(3 downto 0));
end twos_c_test;

architecture struc of twos_c_test is
    component twos_c_system
        generic(n: natural := 2);
        port(clk, reset, go: in std_logic;
            x: in std_logic_vector(n-1 downto 0);
            z: out std_logic_vector(n-1 downto 0));
    end component;
    signal en: std_logic;
begin
    U1: twos_c_system
        generic map(4)
        port map(en, reset, go, x, z);
process(clk)
    type state is (not_rdy, rdy, pulse);
    variable ns: state;
begin
    if(rising_edge(clk)) then
        case ns is
        when not_rdy =>
            en <= '0';
            if(btn1 = '1') then
                ns := rdy;
            end if;        
        when rdy =>
            en <= '0';
            if(btn0 = '1') then
                ns := pulse;
            end if;
        when pulse =>
            en <= '1';
            ns := not_rdy;
        when others => null;
        end case;
    end if;

end process;

end struc;
