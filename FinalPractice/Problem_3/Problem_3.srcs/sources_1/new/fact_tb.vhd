----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2019 10:19:44 AM
-- Design Name: 
-- Module Name: fact_tb - Behavioral
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
use ieee. std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fact_tb is
end fact_tb;


architecture beh of fact_tb is
component fact
generic(K: natural := 32);
port(clk, reset: in std_logic;
    LED: out std_logic_vector(K-1 downto 0));
end component;

signal z: std_logic_vector(31 downto 0);
signal n, n_factorial: integer := 1;
signal clk: std_logic := '1';
type my_state is (init, run_test, done);
signal n_s : my_state := init;
signal reset: std_logic := '1';
begin
clk <= not clk after 5 ns;
dut: fact generic map(32) port map (clk, reset, z);

process(ck)
variable n, n_factorial : integer := 0;
begin
if clk = '1' then
    case n_s is
    when init => reset <= '1';
        n := 1;
        n_factorial := 1;
        n_s <= run_test;
    when run_test => reset <= '0';
        n_factorial := n*n_factorial;
        n := n+1;
        assert conv_integer(unsigned(z)) = n_factorial
            report "incorrect" severity ERROR;
        if n > 11 then
            n_s <= done;
        end if;
    when done => assert FALSE
        report "test completed" severity FAILURE;
    end case;
end if;
end process;


end beh;