----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2019 01:58:59 PM
-- Design Name: 
-- Module Name: serial_adder - beh
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

entity serial_adder is
    port(clk, reset, x, y: in std_logic;
        z: out std_logic);
end serial_adder;

architecture beh of serial_adder is
    component adder
        port(x, y, c_in: in std_logic;
                z, c_out: out std_logic);
    end component;
    signal c_reg, c_out: std_logic := '0';
begin
    ADD: adder
        port map(x, y, c_reg, z, c_out);
process(clk)
begin
    if(rising_edge(clk)) then
        if(reset = '1') then
            c_reg <= '0';
        else
            c_reg <= c_out;
        end if;
    end if;
end process;
end beh;
