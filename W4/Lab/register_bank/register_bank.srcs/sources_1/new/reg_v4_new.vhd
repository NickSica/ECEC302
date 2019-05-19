----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 09:22:28 AM
-- Design Name: 
-- Module Name: reg_v4 - beh
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

entity reg_v4 is
  port(clk, reset: in std_logic;
       sw, btns: in std_logic_vector(3 downto 0);
       z: out std_logic_vector(7 downto 0);
       disp_en: out std_logic_vector(3 downto 0));
end reg_v4;

architecture beh of reg_v4 is
  type my_state is (s0, s1, s2, s3);
  signal n_s: my_state;
  signal clk_div: std_logic;
  signal temp: std_logic_vector(3 downto 0);
  signal r0, r1, r2, r3: std_logic_vector(3 downto 0);
begin
  process(btns)
  begin
  if(reset = '1') then
    r0 <= "0000";
    r1 <= "0000";
    r2 <= "0000";
    r3 <= "0000";
  else 
    case btns is
      when "1000" =>
        r0 <= sw;
      when "0100" =>
        r1 <= sw;
      when "0010" =>
        r2 <= sw;
      when "0001" =>
        r3 <= sw;
      when others => null;
    end case;
end if;
    case temp is
      when "0000" => z <= "00000011"; -- "0"     
      when "0001" => z <= "10011111"; -- "1" 
      when "0010" => z <= "00100101"; -- "2" 
      when "0011" => z <= "00001101"; -- "3" 
      when "0100" => z <= "10011001"; -- "4" 
      when "0101" => z <= "01001001"; -- "5" 
      when "0110" => z <= "01000001"; -- "6" 
      when "0111" => z <= "00011111"; -- "7" 
      when "1000" => z <= "00000001"; -- "8"     
      when "1001" => z <= "00001001"; -- "9" 
      when "1010" => z <= "00000101"; -- a
      when "1011" => z <= "11000001"; -- b
      when "1100" => z <= "01100011"; -- C
      when "1101" => z <= "10000101"; -- d
      when "1110" => z <= "01100001"; -- E
      when "1111" => z <= "01110001"; -- F
      when others => null;
    end case;
  end process;

  process(clk_div)
  begin
    if(rising_edge(clk_div)) then
      case n_s is
        when s0 =>
          disp_en <= "0111";
          temp <= r1;
          n_s <= s1;
        when s1 =>
          temp <= r2;
          disp_en <= "1011";
          n_s <= s2;
        when s2 =>
          temp <= r3;
          disp_en <= "1101";
          n_s <= s3;
        when s3 =>
          temp <= r0;
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
    end if;
  end process;
end beh;

