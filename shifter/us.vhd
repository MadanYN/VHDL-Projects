library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity us is 
  port(	A: in std_logic_vector(7 downto 0);
       	B: in std_logic_vector(2 downto 0);
			L: in std_logic;
			S: out std_logic_vector(7 downto 0)
			);
end entity;
architecture Str of us is
   component right_1 is
     port(
	  B0: in STD_LOGIc;
	  A1: in STD_LOGIC_VECTOR (7 downto 0);
	  S1: out STD_LOGIC_VECTOR (7 downto 0));
   end component;
	
   component right_2 is
     port(
	  B1: in STD_LOGIc;
	  A2: in STD_LOGIC_VECTOR (7 downto 0);
	  S2: out STD_LOGIC_VECTOR (7 downto 0));
   end component;
	
	component right_4 is
     port(
	  B2: in STD_LOGIc;
	  A4: in STD_LOGIC_VECTOR (7 downto 0);
	  S4: out STD_LOGIC_VECTOR (7 downto 0));
   end component;

	component bitreversal is
   port (
	  L: in std_logic;
	  X: in STD_LOGIC_VECTOR (7 downto 0);
	  Z: out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal P0,P1,P2,P3: STD_LOGIC_vector(7 downto 0);
	  
begin

   part1: bitreversal port map(L,A,P0);
	
	part2: right_4 port map(B(2),P0,P1);
	
	part3: right_2 port map(B(1),P1,P2);
	
	part4: right_1 port map(B(0),P2,P3);
	
	part5: bitreversal port map(L,P3,S);
end Str;	
