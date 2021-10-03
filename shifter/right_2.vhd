library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.MUX_2x1.all;
entity right_2  is
  port (B1: in std_logic;
        A2: in std_logic_vector(7 downto 0);
        S2: out std_logic_vector(7 downto 0));
end entity right_2;
architecture Struct of right_2 is
begin

      n2_bit : for i in 0 to 7 generate

        lsb: if i < 6 generate
            m2: mux port map(A2(i),A2(i+2),B1,S2(i));
        end generate lsb;

        msb: if i > 5 generate
            m2: mux port map(A2(i),'0',B1,S2(i));
        end generate msb;

    end generate ; -- 4_bit
end Struct;