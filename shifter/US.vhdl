library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.shifter4.all;
library work;
use work.shifter2.all;
library work;
use work.shifter1.all;
library work;
use work.bitreverse.all;


entity US is
  port(L:in std_logic; B: in std_logic_vector(2 downto 0); 
  A: in std_logic_vector(7 downto 0);
  S: out std_logic_vector(7 downto 0));
end entity US;



architecture design of US is
signal Q,P,W,T :std_logic_vector(7 downto 0);
begin
--bitreversal 1
	   b1: bitreversal port map(L,A, Q);
--rightshifter4
      r4:rightshifter4 port map(B(2),Q,P);
--rightshifter2
      r2:rightshifter2 port map(B(1),P,W);
--rightshifter1
      r1:rightshifter1 port map(B(0),W,T);
--bitreversal 2
	   b2: bitreversal port map(L,T,S);		
  
end design ;