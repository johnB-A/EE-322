Lab1 is about the basics of VHDL and simulation. The two designs implemented are shown below: half-adder and a 4 to 1 Mux. Notepad++ was used as the IDE while GHDL for simulation and GTKWAVE to display the wave. It was a straight forward process installing everything

Half-Adder
1. ![ha_terminal](https://github.com/johnB-A/EE-322/assets/156035355/a9516062-2d7c-4f1b-ad16-4d21b641d3e4)
The image above shows the command lines that were used. The ghdl -a command checks for syntax errors for VHDL files. ghdl -e command elaborates a testing unit, ghdl -r runs the simulation, the ghdl -r with --vcd shows above, is the same as ghdl -r except that it creates a vcd dump file which will allow the user to see the wave. Then once you open the vcd file the user can see the results.
3. ![ha_simulation](https://github.com/johnB-A/EE-322/assets/156035355/e2072a88-1264-4d79-9371-f7046149031f)
The image above shows the results of the simulation which are what we expect. The inputs a and b are defined at the beginning of the simulation so they are defined at '0', sum is just an xor operation between the inputs and carry out is an and operation.

4 to 1 Mux
![mux_terminal](https://github.com/johnB-A/EE-322/assets/156035355/1aab6bd5-d7c2-418b-922e-a86c09faed08)
The second design implemented is a relative simple 4 to 1 mux, to spice things up I added a CE signal that only allows the mux to output anything besides zero when it's high. As shown above the command lines used are the same commands from the half-adder. 
![mux_simulation](https://github.com/johnB-A/EE-322/assets/156035355/4958dd63-176d-45cb-8f59-6935a0b944ad)
Here it shows the results of the simulation. Everything is as expected. 


