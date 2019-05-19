----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 12:55:52 PM
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
    generic(n: natural := 3);
    port(a, b, clk, reset: in std_logic;
        s: out std_logic_vector(n-1 downto 0);
        c_out, done: out std_logic);
end serial_adder;

architecture beh of serial_adder is
signal state: std_logic;
signal temp: std_logic_vector(n-1 downto 0);
signal carry, sum: std_logic;

component add3bits
    port(x: in std_logic_vector(2 downto 0);
        z: out std_logic_vector(1 downto 0));
end component;

begin
process(clk)
subtype my_int is integer range 0 to n;
variable count: my_int;
begin
    if clk = '1' and clk'event then
        if reset = '1' then
            state <= '0';
            count := 0;
            temp <= (others => '0');
            done <= '0';
        else
            if count < n then
                state <= carry;
                temp(n-1) <= sum;
                for i in n-2 downto 0 loop
                    temp(i) <= temp(i+1);
                end loop;
                count := count + 1;
                
                if count < n then
                    done <= '0';
                else
                    done <= '1';
                end if;
            end if;
        end if;
    end if;
end process;

    c_out <= state;
    s <= temp;
    ADD3b: add3bits port map(
            z(1) => carry, z(0) => sum,
            x(2) => a, x(1) => b, x(0) => state);
end beh;
