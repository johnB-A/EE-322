library ieee;
use ieee.std_logic_1164.all;

entity ha is
	port(
		a, b : in std_logic;
		c, s : out std_logic
		);
end ha;

architecture ha_arch of ha is
begin
	s <= a xor b;
	c <= a and b;
end ha_arch;