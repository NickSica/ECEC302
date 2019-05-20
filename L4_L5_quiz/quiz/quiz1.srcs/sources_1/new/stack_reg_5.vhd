----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2019 04:09:03 PM
-- Design Name: 
-- Module Name: stack_reg_5 - Behavioral
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

entity stack_reg_5 is
    generic(n: natural := 1);
    port(clk, sel: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end stack_reg_5;

architecture beh of stack_reg_5 is
signal temp4, temp3, temp2, temp1, temp0: std_logic_vector(n-1 downto 0);
begin
process(clk)
    type state is (descending, ascending);
    variable reg_state: state;
begin
    if(rising_edge(clk)) then
        if(sel = '0') then
            reg_state := ascending;
        else
            reg_state := descending;
        end if;
        
        case reg_state is
        when ascending =>
            z <= temp4;
            temp4 <= temp3;
            temp3 <= temp2;
            temp2 <= temp1;
            temp1 <= temp0;
        when descending =>
            temp0 <= temp1;
            temp1 <= temp2;
            temp2 <= temp3;
            temp3 <= temp4;
            temp4 <= x;
            z <= temp4;
        when others => null;
        end case;
        
    end if;
end process;

end beh;
