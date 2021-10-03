library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.FA.all;

entity Mult4x3 is 
  port (A3,A2,A1,A0,B2,B1,B0: in std_logic; M6,M5,M4,M3,M2,M1,M0: out std_logic);
end entity Mult4x3;

architecture struct of Mult4x3 is 
  signal c1,c2,c3,c4,c5,c6,c7,x1,x2,x3,y1,y2,y3,y4,z1,z2,z3,q,d1,d2,d3,d4,d5,
  d6,d7,d8,d9,d10,d11: std_logic;
begin
    v:AND_2 port map (A => A0,B => B0,Y => M0);
	 v1:AND_2 port map (A => A1,B => B0,Y =>d1 );
	 v2:AND_2 port map (A => A0,B => B1,Y => d2);
	 v3:AND_2 port map (A => A2,B => B0,Y => d3);
	 v4:AND_2 port map (A => A1,B => B1,Y => d4);
	 v5:AND_2 port map (A => A0,B => B2,Y => d5);
	 v6:AND_2 port map (A => A3,B => B0,Y => d6);
	 v7:AND_2 port map (A => A2,B => B1,Y => d7);
	 v8:AND_2 port map (A => A1,B => B2,Y => d8);
	 v9:AND_2 port map (A => A3,B => B1,Y => d9);
	 v10:AND_2 port map (A => A2,B => B2,Y => d10);
	 v11:AND_2 port map (A => A3,B => B2,Y => d11);
	 ha1:HALF_ADDER port map (A => d1,B => d2,S => M1,C => c1);
	 fa1:Full_Adder port map (A => d3,B => d4,Cin => c1,S => x1,Cout =>y1 );
	 ha2:HALF_ADDER port map (A => x1,B => d5,S => M2,C => z1);
	 ha3:HALF_ADDER port map (A => z1,B => y1,S => c2,C => c3);

	 fa2:Full_Adder port map (A => d6,B => d7,Cin => c2,S => x2,Cout =>y2 );
	 ha4:HALF_ADDER port map (A => x2,B => d8,S => M3,C => z2);
	 ha5:HALF_ADDER port map (A => z2,B => y2,S => c4,C => c5);

	 fa3:Full_Adder port map (A => d9,B => c3,Cin => c4,S => x3,Cout =>y3 );
	 ha6:HALF_ADDER port map (A => x3,B => d10,S => M4,C => z3);
	 ha7:HALF_ADDER port map (A => z3,B => y3,S => c6,C => c7);

	 fa4:Full_Adder port map (A => d11,B => c5,Cin => c6,S => M5,Cout =>y4 );
	 ha8:HALF_ADDER port map (A => y4,B => c7,S => M6,C =>q);	 
	 

end struct;	 