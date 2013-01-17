library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity Lab1 is port(
      key   : in  std_logic_vector(2 downto 0);
      sw    : in  std_logic_vector(1 downto 0);
      ledr  : out std_logic_vector(1 downto 0); 
      ledg  : out std_logic_vector(1 downto 0)
);
end Lab1;

architecture SimpleCircuit of Lab1 is
begin
   ledg(0) <= not key(0) and key(1) and key(2) and not sw(0);
   ledr(0) <= not key(1) or sw(0);
end SimpleCircuit;