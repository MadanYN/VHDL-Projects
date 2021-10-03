 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Top is
   port(	A: in std_logic_vector(3 downto 0);
       	B: in std_logic_vector(3 downto 0);
			Y: out std_logic_vector(5 downto 0)
			);
end entity;

architecture Str of Top is
   component MUX is
     port(
	  S0: in STD_LOGIC;
	  S1: in STD_LOGIC;
	  I0: in STD_LOGIC_VECTOR (5 downto 0);
	  I1: in STD_LOGIC_VECTOR (5 downto 0);
	  I2: in STD_LOGIC_VECTOR (5 downto 0);
	  I3: in STD_LOGIC_VECTOR (5 downto 0);
	  Y: out STD_LOGIC_VECTOR (5 downto 0));
   end component;
	
	component SQRR5 is
   port (
	  A: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component INVB is
   port (
	  B: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component XNOR_AB is
   port (
	  A: in STD_LOGIC_VECTOR (3 downto 0);
	  B: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	
	component COUNT1 is
		port(A : in STD_LOGIC_VECTOR (3 downto 0);
				O : out STD_LOGIC_VECTOR (2 downto 0));
	end component;

signal P0,P1,P2: STD_LOGIC_VECTOR (3 downto 0);
signal P3: STD_LOGIC_VECTOR (2 downto 0);
	  
begin

   part1: SQRR5
			port map (	A => A,
							Y => P0
					);
	part2: INVB
			port map (	B => B,
							Y => P1
					);

	part3:  XNOR_AB
	port map (	A => A,
					B => B,
					Y => P2
			);
			
	part4: COUNT1
			port map (	A => A,
							O => P3
					);
					
	final: MUX
	port map (
	S0 => B(2),
	S1 => B(3),
	I0(5 downto 4) => "00",
	I0(3 downto 0)=>P0,
	
	I1(5 downto 4) => "00",
	I1(3 downto 0)=>P1,
	
	I2(5 downto 4) => "00",
	I2(3 downto 0)=>P2,
	
	I3(5 downto 3) => "000",
	I3(2 downto 0)=>P3,
	
	Y => Y
	);
	
end Str;

