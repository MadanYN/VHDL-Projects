 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder_2  is
  port (A1,A0,E: in std_logic; D3,D2,D1,D0: out std_logic);
end entity Decoder_2;
architecture Struct of Decoder_2 is
  signal i1,i2: std_logic;
begin

  n1: INVERTER port map (A => A0,Y=> i1);
  n2: INVERTER port map (A => A1, Y=> i2);

  b1: AND_3 port map (A => A1, B => A0, C => E, Y => D3);
  b2: AND_3 port map (A => A1, B => i1, C => E, Y => D2);
  b3: AND_3 port map (A => i2, B => A0, C => E, Y => D1);
  b4: AND_3 port map (A => i2, B => i1, C => E, Y => D0);

end Struct;
