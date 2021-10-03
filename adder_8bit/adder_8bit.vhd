library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Fulladder.all;

library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Adder_8bit  is
  port (A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0: in std_logic; S7,S6,S5,S4,S3,S2,S1,S0, C: out std_logic);
end entity Adder_8bit;
architecture Struct of Adder_8bit is
  signal q1,q2,q3,q4,q5,q6,q7: std_logic;
begin

  ha: Half_Adder 
       port map (A =>A0, B => B0, S => S0,Cout1=>q1);
  fa1: Full_Adder 
       port map (A =>A1, B => B1, Cin => q1, Cout => q2,S=>S1);
  fa2: Full_Adder 
       port map (A =>A2, B => B2, Cin => q2, Cout => q3,S=>S2);
  fa3: Full_Adder 
       port map (A =>A3, B => B3, Cin => q3, Cout => q4,S=>S3);
	  fa4: Full_Adder 
       port map (A =>A4, B => B4, Cin => q4, Cout => q5,S=>S4);
	  fa5: Full_Adder 
       port map (A =>A5, B => B5, Cin => q5, Cout => q6,S=>S5);
	  fa6: Full_Adder 
       port map (A =>A6, B => B6, Cin => q6, Cout => q7,S=>S6);
	  fa7: Full_Adder 
       port map (A =>A7, B => B7, Cin => q7, Cout => C,S=>S7);	 

end Struct;
