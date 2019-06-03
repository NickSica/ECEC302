----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2019 12:24:06 PM
-- Design Name: 
-- Module Name: radixR_adder - beh
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity radixR_adder is
    generic(r: natural := 2;
            n: natural := 1);
    port(x, y: in std_logic_vector(n-1 downto 0);
         clk, reset: in std_logic;
         z: out std_logic_vector(n-1 downto 0));
end radixR_adder;

architecture beh of radixR_adder is
    signal temp_x, temp_y: std_logic_vector(n downto 0);
begin
    temp_x <= '0' & x;
    temp_y <= '0' & y;
process(clk)
    type state is (no_carry, carry);
    variable n_s: state;
    variable temp: std_logic_vector(n downto 0);
begin
    if(rising_edge(clk)) then
        if(reset = '1') then 
            n_s := no_carry;
        else
            case n_s is
            when no_carry =>
                temp := temp_x + temp_y;
                if(unsigned(temp) > r-1) then
                    n_s := carry;
                    temp := temp - r;
                    z <= temp(n-1 downto 0);
                end if;
            when carry =>
                temp := temp_x + temp_y + 1;
                if(unsigned(temp) < r) then
                    n_s := no_carry;
                    z <= temp(n-1 downto 0);
                end if;
            end case;
        end if;
    end if;
end process;
end beh;
