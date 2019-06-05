----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2019 07:49:09 PM
-- Design Name: 
-- Module Name: adder_test_bench - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL,
ieee.std_logic_arith.all,
ieee.std_logic_unsigned.all;

entity adder_test_bench is
--  Port ( );
constant number_of_test : natural := 3;
constant n : natural := 4;
end adder_test_bench;

architecture beh of adder_test_bench is
signal go, reset, cout : std_logic;
signal ck : std_logic := '0';
signal a, b, c : std_logic_vector(n-1 downto 0);

type test_array is array (natural range <>) of std_logic_vector(n-1 downto 0);
signal A_test : test_array(0 to number_of_test - 1) := ("1101", "1100", "0110");
signal B_test : test_array(0 to number_of_test -1) := ("0101", "1001", "0111");

type tester_state is (init, test, check);
signal n_s : tester_state;

component adder
generic (k: natural := 4);
port(
    a, b : in std_logic_vector(k-1 downto 0);
    c : out std_logic_vector(k-1 downto 0);
    c_out : out std_logic;
    Go, reset, ck : in std_logic);
end component;

begin
dut: adder generic map(n)
    port map(a, b, c, cout, go, reset, ck);
ck <= not ck after 50 ns;

process(ck)
    variable count_vector : integer := 0;
    variable count_cycle : integer;
    begin
    if ck'event and ck = '1' then
        case n_s is
            when init =>
                count_cycle := 0;
                a <= A_test(count_vector);
                b <= B_test(count_vector);
                n_s <= test;
                go <= '1'; reset <= '0';
            when test =>
                count_cycle := count_cycle + 1;
                if count_cycle = n + 2 then
                    n_s <= check;
                    go <= '0'; reset <= '0';
                end if;
            when check =>
                assert
                (conv_integer(unsigned(cout&c))
                = conv_integer(unsigned(a)) + conv_integer(unsigned(b)))
                report "INCORRECT RESULT" severity ERROR;
                
                count_vector := count_vector + 1;
                
                report "Test Completed"
                severity FAILURE;
                go <= '0'; reset <= '1'; n_s <= init;
        end case;
    end if;
end process;
        

end beh;
