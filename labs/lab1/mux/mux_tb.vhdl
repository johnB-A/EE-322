--  used https://allaboutfpga.com/vhdl-4-to-1-mux-multiplexer/ to edit to my own version

library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture tb of mux_tb is
	component mux
    PORT(
         data_i : in std_logic_vector(3 downto 0);
         sel_i  : in std_logic_vector(1 downto 0);
         mux_o  : out std_logic;
		 ce     : in std_logic
        );
    end component;
 
   --Inputs
	signal data_i : std_logic_vector(3 downto 0) := "0000";
	signal sel_i : std_logic_vector(1 downto 0) := "00";
	signal ce    : std_logic := '0';
 
    --Outputs
   signal mux_o : std_logic;
begin
 -- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          data_i => data_i,
          sel_i => sel_i,
		  ce  => ce,
          mux_o => mux_o
        );
 
   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns; 
 
	ce    <= '1';
	data_i <= "0101";
 
      wait for 100 ns; 
 
    sel_i <= "01";
 
      wait for 100 ns; 
 
    sel_i <= "10";
 
        wait for 100 ns;   
 
    sel_i <= "11";
 
        wait for 100 ns;   
	 assert false report "End of simulation" severity note;
    wait;
 
    end process;
 
END tb;


	