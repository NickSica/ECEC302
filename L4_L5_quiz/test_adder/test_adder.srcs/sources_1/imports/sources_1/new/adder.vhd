library ieee;
use ieee.std_logic_1164.all, work.p1_pack.all;

entity adder is
  generic(k: natural := 4);
  port(a, b: in std_logic_vector(k-1 downto 0);
       go, reset, clk: in std_logic;
       c: out std_logic_vector(k-1 downto 0);
       c_out: out std_logic);
end adder;

architecture struc of adder is
  component serial_adder
    generic(n: natural := 2);
    port(a, b, clk, reset: in std_logic;
         s: out std_logic_vector(n-1 downto 0);
         c_out, done: out std_logic);
  end component;

  component sh_reg
    generic(n: natural := 4);
    port(x: in std_logic_vector(n-1 downto 0);
         sel: in sh_reg_sel;
         clk: in std_logic;
         z: out std_logic);
  end component;

  component control
    port(go, clk, reset, done: in std_logic;
         sel: out sh_reg_sel;
         reset_sadder: out std_logic);
  end component;

  signal sel: sh_reg_sel;
  signal a_bit, b_bit, done, reset_sadder: std_logic;

begin
  s_adder: serial_adder
    generic map(k)
    port map(a_bit, b_bit, clk, reset_sadder, c, c_out, done);
  reg_A: sh_reg
    generic map(k)
    port map(a, sel, clk, a_bit);
  reg_B: sh_reg
    generic map(k)
    port map(b, sel, clk, b_bit);
  ctrl: control
    port map(go, clk, reset, done, sel, reset_sadder);  
end struc;
