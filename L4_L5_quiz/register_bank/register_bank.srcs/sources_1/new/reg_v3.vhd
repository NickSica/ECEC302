----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 09:22:28 AM
-- Design Name: 
-- Module Name: reg_v3 - beh
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

entity reg_v3 is
  port(sw: in std_logic_vector(3 downto 0);
       clk, reset: in std_logic;
       z: out std_logic_vector(7 downto 0);
       disp_en: out std_logic_vector(3 downto 0));
end reg_v3;

architecture beh of reg_v3 is
  type my_state is (s0, s1, s2, s3);
  signal n_s: my_state;
  signal clk_div: std_logic;
  signal sw_sel: std_logic_vector(0 to 3);
begin
  process(sw_sel)
    variable temp: std_logic_vector(1 downto 0);
    signal r0, r1, r2, r3: std_logic_vector(3 downto 0);
  begin
    case sw_sel is
      when "1000" =>
        r0 <= sw(3 downto 0);
        temp := r0;
      when "0100" =>
        r1 <= sw(3 downto 0);
        temp := r1;
      when "0010" =>
        r2 <= sw(3 downto 0);
        temp := r2;
      when "0001" =>
        r3 <= sw(3 downto 0);
        temp := r3;
      when others => temp := "00";
    end case;

    case temp is
      when "00" => z <= "00000011";
      when "01" => z <= "10011111";
      when "10" => z <= "00100101";
      when "11" => z <= "00001101";
      when others => null;
    end case;
  end process;

  process(clk_div)
  begin
    if(rising_edge(clk_div)) then
      case n_s is
        when s0 =>
          sw_sel <= "1000";
          disp_en <= "0111";
          n_s <= s1;
        when s1 =>
          sw_sel <= "0100";
          disp_en <= "1011";
          n_s <= s2;
        when s2 =>
          sw_sel <= "0010";
          disp_en <= "1101";
          n_s <= s3;
        when s3 =>
          sw_sel <= "0001";
          disp_en <= "1110";
          n_s <= s0;
      end case;
    end if;
  end process;

  process(clk)
    variable count: integer;
  begin
    if(rising_edge(clk)) then
      if(reset = '1') then
        count := 0;
        clk_div <= '0';
      elsif(reset = '0') then
        if(count = 99999) then
          clk_div <= not clk_div;
          count := 0;
        else
          count := count + 1;
        end if;
    end if;
  end process;
end beh;



