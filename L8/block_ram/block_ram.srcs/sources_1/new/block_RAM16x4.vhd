----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2019 10:00:10 PM
-- Design Name: 
-- Module Name: block_RAM16x4 - beh
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

entity block_RAM16x4 is
    port(clk, output_en: in std_logic;
         w_en: in std_logic_vector(0 downto 0);
         addr, d_in: in std_logic_vector(3 downto 0);
         d_out, d_out2: out std_logic_vector(3 downto 0));
end block_RAM16x4;

architecture beh of block_RAM16x4 is
    component blk_mem_gen_0
        port(clka: in STD_LOGIC;
             ena: in STD_LOGIC;
             wea: in STD_LOGIC_VECTOR(0 DOWNTO 0);
             addra: in STD_LOGIC_VECTOR(3 DOWNTO 0);
             dina: in STD_LOGIC_VECTOR(3 DOWNTO 0);
             douta: out STD_LOGIC_VECTOR(3 DOWNTO 0));
    end component;
begin
    U2: blk_mem_gen_0
        port map(clk, output_en, w_en, addr, d_in, d_out);
    U3: blk_mem_gen_0
        port map(clk, output_en, w_en, addr, d_in, d_out2); 

end beh;
