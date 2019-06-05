----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cameron J Calv
-- 
-- Create Date: 04/16/2019 09:56:47 AM
-- Design Name: 
-- Module Name: adder - struc
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
use IEEE.STD_LOGIC_1164.ALL, work.pl_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
--  Port ( );
generic(k: natural := 4);
port( a, b : in std_logic_vector(k-1 downto 0);
    C : out std_logic_vector(k-1 downto 0);
    C_out : out std_logic;
    Go, reset, ck : in std_logic);
end adder;

architecture struc of adder is
component serial_adder
    generic(n : natural :=2);
port( a, b, ck, reset: in std_logic;
    s: out std_logic_vector(n-1 downto 0);
    c_out, done: out std_logic);
end component;

component sh_reg
Generic ( n: natural := 4);
Port( x : in std_logic_vector(n-1 downto 0);
    z : out std_logic;
    sel : in sh_reg_sel;
    ck : in std_logic);
End component;

component control
port (go, ck, reset, done : in std_logic;
    sel : out sh_reg_sel;
    reset_sadder : out std_logic);
end component;

signal sel : sh_reg_sel;
signal a_bit, b_bit, done, reset_sadder : std_logic;

begin

s_adder: serial_adder
generic map(k)
port map(a_bit, b_bit, ck, reset_sadder, c, c_out, done);
reg_A: sh_reg
generic map(k)
port map(a, a_bit, sel, ck);
reg_B: sh_reg
generic map(k)
port map(b, b_bit, sel, ck);
ctrl: control
port map(Go, ck, reset, done, sel, reset_sadder);

end struc;
