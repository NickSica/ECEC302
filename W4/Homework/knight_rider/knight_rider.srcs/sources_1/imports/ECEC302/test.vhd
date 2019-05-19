----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2019 12:27:20 PM
-- Design Name: 
-- Module Name: test_count_00 - Behavioral
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

entity test is
    port(sel, clk: in std_logic;
        z: out std_logic_vector(15 downto 0));
end test;

architecture struc of test is
component knight_rider
    port(sel, clk: in std_logic;
        z: out std_logic_vector(15 downto 0));
end component;

signal en: std_logic;
begin
RDR: knight_rider
  port map(sel, en, z);

process(clk)
  subtype my_int is integer range 0 to 1000000;
  variable count: my_int := 0;
begin
  if(rising_edge(clk)) then
    if(count = 1000000) then
      en <= not en;
    end if;
    count := count + 1;
  end if;
end process;


end struc;




