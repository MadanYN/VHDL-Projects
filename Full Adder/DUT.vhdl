-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component vowel is
     port(A1,A2,A3,A4: in std_logic;
         	S: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: vowel 
			port map (
					-- order of inputs Cin B A 
					A1 => input_vector(3),
					A2   => input_vector(2),
					A3   => input_vector(1),
					A4   => input_vector(0),
                                        -- order of outputs S Cout
					S => output_vector(0));

end DutWrap;

