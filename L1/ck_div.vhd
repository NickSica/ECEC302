----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 04:53:16 PM
-- Design Name: 
-- Module Name: ck_div - Behavioral
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

entity ck_div is
    Port (ck, reset: in std_logic;
        z: out std_logic);
end ck_div;

architecture beh of ck_div is
signal ck1: std_logic;
begin

process(ck)
variable count: integer;
begin
    if ck = '1' and ck'event then
        if reset = '1' then
          count := 0;
            ck1 <= '0';
        else
            if count = 9999999 then
                ck1 <= not ck1;
                count := 0;
            else
                count := count + 1;
            end if;
        end if;
end process;

process(ck1)
begin
    if ck1 = '1' then z <= '1';
    elsif ck1 = '0' then z <= '0';
    else null;
    end if;
end process;

end beh;
