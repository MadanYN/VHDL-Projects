library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.MUX_2x1.all;
entity bitreversal is 
  port (L: in std_logic; X:in std_logic_vector(7 downto 0);
        Z :out std_logic_vector(7 downto 0));
end entity bitreversal; 

architecture Design of bitreversal is 
  
begin 
 
 bit_reverse: for i in 0 to 7 generate
	   m1: mux port map(X(i),X(7-i), L, Z(i));
	 end  generate;
end Design; 