----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2019 02:07:19 PM
-- Design Name: 
-- Module Name: twos_c_system - beh
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

entity twos_c_system is
    generic(n: natural := 2);
    port(clk, reset, go: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end twos_c_system;

architecture beh of twos_c_system is
    signal inputReg, outputReg: std_logic_vector(n-1 downto 0);
    type my_state is (idle, load, copy, invert);
    signal n_s: my_state;
begin
process(clk)
    variable count: integer := 0;
begin
    if(rising_edge(clk)) then
        if(reset = '1') then
            inputReg <= (others => '0');
            outputReg <= (others => '0');
            n_s <= idle;
        else
            case n_s is
            when idle =>
                if(go = '1') then
                    n_s <= load;
                end if;
            when load =>
                inputReg <= x;
                n_s <= copy;
            when copy => 
                if(inputReg(count) = '0') then
                    outputReg(count) <= '0';
                    count := count + 1;
                else
                    outputReg(count) <= '1';
                    count := count + 1;
                    n_s <= invert;
                end if;
            when invert =>
                if(count = n) then
                    n_s <= idle;
                    count := 0;
                else
                    outputReg(count) <= not inputReg(count);
                    count := count + 1;
                end if;
            end case;
        end if;
    end if;
    z <= outputReg;
end process;
end beh;
