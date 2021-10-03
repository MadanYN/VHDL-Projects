library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity add_sub4 is 
  port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; S3,S2,S1,S0,Cout2: out std_logic);
end entity add_sub4
architecture operation of add-sub4 is 
  signal fac1,fac2,fac3,fac4,y1,y2,y3,y4: std_logic;
begin
    x1:XOR_2 port map (A => B0,B => M,Y => y1);
	 x2:XOR_2 port map (A => B1,B => M,Y => y2);
	 x3:XOR_2 port map (A => B2,B => M,Y => y3);
	 x4:XOR_2 port map (A => B3,B => M,Y => y4);
	 
	 fa1:Full_Adder port map (A => A0,B => y1,Cin => M,S => S0,Cout => fac1);
	 fa2:Full_Adder port map (A => A1,B => y2,Cin => fac1,S => S1,Cout => fac2);
	 fa3:Full_Adder port map (A => A2,B => y3,Cin => fac2,S => S2,Cout => fac3);
	 fa4:Full_Adder port map (A => A3,B => y4,Cin => fac3,S => S3,Cout => Cout2);
end operation;	 