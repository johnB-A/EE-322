library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port(
		data_i : in std_logic_vector(3 downto 0);
		sel_i  : in std_logic_vector(1 downto 0);
		ce     : in std_logic;
		mux_o  : out std_logic
		);
end mux;

architecture mux_arch of mux is
begin
	my_mux :process(data_i, sel_i, ce)
	begin
		if(ce = '0') then
			mux_o <= '0';
		else
			case(sel_i) is
				when "00" => mux_o <= data_i(0);
				when "01" => mux_o <= data_i(1);
				when "10" => mux_o <= data_i(2);
				when "11" => mux_o <= data_i(3);
				when others => mux_o <= '0';
			end case;
		end if;
	end process my_mux;
end mux_arch;
	