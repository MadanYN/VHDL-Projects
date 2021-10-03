library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX_2x1  is
  port (I1,I0,S: in std_logic; Y: out std_logic);
end entity MUX_2x1;
architecture Struct of MUX_2x1 is
  signal b1,c1,c2: std_logic;
begin

  n1: INVERTER port map (A=> S, Y=> b1);

  a1: AND_2 port map (A => I0, B => b1, Y => c1);
  a2: AND_2  port map (A => I1, B => S, Y => c2);

  O1: OR_2 port map (A =>c1 , B => c2, Y => Y);
end Struct;