----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 09:22:28 AM
-- Design Name: 
-- Module Name: reg_v2 - beh
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

entity reg_v2 is
  port(sw: in std_logic_vector(7 downto 0);
       btns: in std_logic_vector(3 downto 0);
       z: out std_logic_vector(7 downto 0);
       disp_en: out std_logic_vector(3 downto 0));
end reg_v2;

architecture beh of reg_v2 is
begin
  process(sw, btns)
    variable temp: std_logic_vector(1 downto 0);
  begin
    case btns is
      when "1000" =>
        temp := sw(7 downto 6);
        disp_en <= "0111";
      when "0100" =>
        temp := sw(5 downto 4);
        disp_en <= "1011";
      when "0010" =>
        temp := sw(3 downto 2);
        disp_en <= "1101";
      when "0001" =>
        temp := sw(1 downto 0);
        disp_en <= "1110";
      when others =>
        temp := "00";
        disp_en <= "1111";
    end case;

    case temp is
      when "00" => z <= "00000011";
      when "01" => z <= "10011111";
      when "10" => z <= "00100101";
      when "11" => z <= "00001101";
      when others => null;
    end case;
  end process;
end beh;
