----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2019 04:39:42 PM
-- Design Name: 
-- Module Name: test_adder - Behavioral
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
use IEEE.STD_LOGIC_1164.all, work.p1_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_adder is
  port(go, clk, reset, btn0, btn1: in std_logic;
       a, b: in std_logic_vector(3 downto 0);
       c: out std_logic_vector(3 downto 0);
       c_out: out std_logic);
end test_adder;

architecture beh of test_adder is
  component adder
    generic(k: natural := 2);
    port(go, reset, clk: in std_logic;
         a, b: in std_logic_vector(k-1 downto 0);
         c: out std_logic_vector(k-1 downto 0);
         c_out: out std_logic);
  end component;
  signal en: std_logic;
begin
  u2: adder
    generic map(4)
    port map(go, reset, en, a, b, c, c_out);

  process(clk)
    type db_state is (rdy, not_rdy, pulse);
    variable db_ns: db_state := not_rdy;
  begin
    case db_ns is
      when not_rdy =>
        en <= '0';
        if(btn1 = '1') then
          db_ns := rdy;
        end if;
      when rdy =>
        en <= '0';
        if(btn0 = '1') then
          db_ns := pulse;
        end if;
      when pulse =>
        en <= '1';
        db_ns := not_rdy;
      when others => null;
    end case;  
  end process;
end beh;
