library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.MUX_2x1.all;
entity right_1  is
  port (B0: in std_logic;
        A1: in std_logic_vector(7 downto 0);
        S1: out std_logic_vector(7 downto 0));
end entity right_1;
architecture Struct of right_1 is
begin

      n1_bit : for i in 0 to 7 generate

        lsb: if i<7 generate
            m2: mux port map(A1(i),A1(i+1),B0,S1(i));
        end generate lsb;

        msb: if i>6 generate
            m2: mux port map(A1(i),'0',B0,S1(i));
        end generate msb;

    end generate ; -- 4_bit
end Struct;