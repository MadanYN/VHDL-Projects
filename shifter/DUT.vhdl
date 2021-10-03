-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the US.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component US is
     port(L:in std_logic; B: in std_logic_vector(2 downto 0); 
  A: in std_logic_vector(7 downto 0);
  S: out std_logic_vector(7 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: US 
			port map (input_vector(11), input_vector(10 downto 8),
			input_vector(7 downto 0), output_vector(7 downto 0));
					

end DutWrap;

