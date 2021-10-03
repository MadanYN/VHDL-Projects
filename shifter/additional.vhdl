library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_3 is
   port (A, B, C: in std_logic; Y: out std_logic);
end entity AND_3;

architecture Equations of AND_3 is
signal P1: std_logic;

begin
A1: AND_2 port map(A=> A, B=>B, Y => P1);
A2: AND_2 port map(A=> C, B=>P1, Y => Y);
end Equations;


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity AND_4 is
   port (A, B, C, D: in std_logic; Y: out std_logic);
end entity AND_4;

architecture Equations of AND_4 is
signal P1, P2: std_logic;

begin
A1: AND_2 port map(A=> A, B=>B, Y => P1);
A2: AND_2 port map(A=> C, B=>D, Y => P2);
A3: AND_2 port map(A=> P1, B=>P2, Y => Y);
end Equations;



library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_4 is
   port (A, B, C, D: in std_logic; Y: out std_logic);
end entity OR_4;

architecture Equations of OR_4 is
signal P1, P2: std_logic;

begin
A1: OR_2 port map(A=> A, B=>B, Y => P1);
A2: OR_2 port map(A=> C, B=>D, Y => P2);
A3: OR_2 port map(A=> P1, B=>P2, Y => Y);
end Equations;
