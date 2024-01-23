library ieee;
use ieee.std_logic_1164.all;

entity ha_tb is
end ha_tb;

architecture tb of ha_tb is
	component ha
    PORT(
         a : in std_logic;
         b  : in std_logic;
         c  : out std_logic;
		 s     :  out std_logic
        );
    end component;
 
   --Inputs
	signal a : std_logic := '0';
	signal b : std_logic := '0'; 
    --Outputs
   signal c : std_logic;
   signal s : std_logic;
begin
 -- Instantiate the Unit Under Test (UUT)
   uut: ha PORT MAP (
          a => a,
          b => b,
		  c => c,
          s => s
        );
 
   -- Stimulus process
   stim_proc: process
   begin
      wait for 100 ns; 
 
	a <= '0';
	b <= '1';
 
      wait for 100 ns; 
 
    a <= '0';
	b <= '1';
 
      wait for 100 ns; 
 
    a <= '1';
	b <= '1';
 
        wait for 100 ns;   
	 assert false report "End of simulation" severity note;
    wait;
 
    end process;
 
END tb;
