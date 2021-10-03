library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component decoder_2 is
     port(A1,A0,E: in std_logic;
         	D0,D1,D2,D3 : out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Decoder_2 
			port map (
					-- order of inputs Cin B A 
					A1  => input_vector(2),
					A0   => input_vector(1),
					E   => input_vector(0),
                                        -- order of outputs S Cout
					D3 => output_vector(3),
					D2 => output_vector(2),
					D1 => output_vector(1),
					D0 => output_vector(0));

end DutWrap;