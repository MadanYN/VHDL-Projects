library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
library work;
use work.MUX_2x1.all;
entity right_4  is
  port (B2: in std_logic;
        A4: in std_logic_vector(7 downto 0);
        S4: out std_logic_vector(7 downto 0));
end entity right_4;
architecture Struct of right_4 is
begin

      n1_bit : for i in 0 to 7 generate

        lsb: if i < 4 generate
            m2: mux port map(A4(i),A4(i+4),B2,S4(i));
        end generate lsb;

        msb: if i > 3 generate
            m2: mux port map(A4(i),'0',B2,S4(i));
        end generate msb;

    end generate ; -- 4_bit
end Struct;