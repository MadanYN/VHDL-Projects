library ieee;
use ieee.std_logic_1164.all;

package shifter1 is
  component rightshifter1 is
    port(B2: in std_logic;  A: in std_logic_vector(7 downto 0);
	 Y: out std_logic_vector(7 downto 0));
  end component rightshifter1;
end package shifter1;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity rightshifter1 is
  port(B2: in std_logic;  A: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end entity rightshifter1;

architecture shift of rightshifter1 is
begin
  n1_bit: for i in 0 to 7 generate
    lsb: if i<7 generate
	   s4: mux port map(A(i),A(i+1), B2, Y(i));
    end generate lsb;
	 msb: if i>6 generate
	   s4: mux port map( A(i),'0' ,B2, Y(i));
    end generate msb;
  end generate;
end shift;
