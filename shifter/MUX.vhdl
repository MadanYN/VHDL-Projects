 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX is
port(
	  S0: in STD_LOGIC;
	  S1: in STD_LOGIC;
	  I0: in STD_LOGIC_VECTOR (5 downto 0);
	  I1: in STD_LOGIC_VECTOR (5 downto 0);
	  I2: in STD_LOGIC_VECTOR (5 downto 0);
	  I3: in STD_LOGIC_VECTOR (5 downto 0);
	  Y: out STD_LOGIC_VECTOR (5 downto 0));
end entity MUX;

architecture Str of MUX is
signal P0, P1: STD_LOGIC;
signal Q0, Q1, Q2, Q3: STD_LOGIC_VECTOR (5 downto 0);

	component AND_3 is
     port (A, B, C: in std_logic; Y: out std_logic);
   end component AND_3;
	
	component OR_4 is
		port (A, B, C, D: in std_logic; Y: out std_logic);
	end component OR_4;

begin
  -- component instances
INV1: INVERTER port map(S0,P0);
INV2: INVERTER port map(S1,P1);

A11: AND_3 port map(P0, P1, I0(0), Q0(0));
A12: AND_3 port map(P0, P1, I0(1), Q0(1));
A13: AND_3 port map(P0, P1, I0(2), Q0(2));
A14: AND_3 port map(P0, P1, I0(3), Q0(3));
A15: AND_3 port map(P0, P1, I0(4), Q0(4));
A16: AND_3 port map(P0, P1, I0(5), Q0(5));

A21: AND_3 port map(S0, P1, I1(0), Q1(0));
A22: AND_3 port map(S0, P1, I1(1), Q1(1));
A23: AND_3 port map(S0, P1, I1(2), Q1(2));
A24: AND_3 port map(S0, P1, I1(3), Q1(3));
A25: AND_3 port map(S0, P1, I1(4), Q1(4));
A26: AND_3 port map(S0, P1, I1(5), Q1(5));

A31: AND_3 port map(P0, S1, I2(0), Q2(0));
A32: AND_3 port map(P0, S1, I2(1), Q2(1));
A33: AND_3 port map(P0, S1, I2(2), Q2(2));
A34: AND_3 port map(P0, S1, I2(3), Q2(3));
A35: AND_3 port map(P0, S1, I2(4), Q2(4));
A36: AND_3 port map(P0, S1, I2(5), Q2(5));

A41: AND_3 port map(S0, S1, I3(0), Q3(0));
A42: AND_3 port map(S0, S1, I3(1), Q3(1));
A43: AND_3 port map(S0, S1, I3(2), Q3(2));
A44: AND_3 port map(S0, S1, I3(3), Q3(3));
A45: AND_3 port map(S0, S1, I3(4), Q3(4));
A46: AND_3 port map(S0, S1, I3(5), Q3(5));

O1: OR_4 port map(Q1(0), Q2(0), Q3(0), Q0(0), Y(0));
O2: OR_4 port map(Q1(1), Q2(1), Q3(1), Q0(1), Y(1));
O3: OR_4 port map(Q1(2), Q2(2), Q3(2), Q0(2), Y(2));
O4: OR_4 port map(Q1(3), Q2(3), Q3(3), Q0(3), Y(3));
O5: OR_4 port map(Q1(4), Q2(4), Q3(4), Q0(4), Y(4));
O6: OR_4 port map(Q1(5), Q2(5), Q3(5), Q0(5), Y(5));


 
end Str;