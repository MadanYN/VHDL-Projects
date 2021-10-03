library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity SQRR5 is
   port (
	  A: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
end entity SQRR5;

architecture Str of SQRR5 is
signal F,P0,P1,P2,P3,P4,P5: std_logic;
signal B: std_logic_vector(3 downto 0);
	component AND_4 is
     port (A, B, C, D: in std_logic; Y: out std_logic);
   end component AND_4;
	
	component OR_4 is
		port (A, B, C, D: in std_logic; Y: out std_logic);
	end component OR_4;


begin
INV1: INVERTER port map(A(0),B(0));
INV2: INVERTER port map(A(1),B(1));
INV3: INVERTER port map(A(2),B(2));
INV4: INVERTER port map(A(3),B(3));

--Here I made a silly mistake in the handwritten part that has been corrected (That is, I missed 1 as a square number)
A1: AND_4 port map(B(3),'1',B(1),'1',P0);
A2: AND_4 port map(A(3),B(2),B(1),A(0),P1);
A4: AND_4 port map(A(3),B(2),A(1),B(0),P3);
A5: AND_4 port map(A(3),A(2),A(1),A(0),P4);

O1: OR_4  port map(P0,P1,P3,P4,F);

Out0: AND_2 port map (A(0), F, Y(0));
Out1: AND_2 port map (A(1), F, Y(1));
Out2: AND_2 port map (A(2), F, Y(2));
Out3: AND_2 port map (A(3), F, Y(3));

end Str;