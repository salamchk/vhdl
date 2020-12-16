-------------------------------------------------------------------------------
--
-- Title       : Fub2
-- Design      : lab2
-- Author      : Oleksandr
-- Company     : Lviv Polytechnic National University
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/lab2/src/commutator.vhd
-- Generated   : Sat Dec 12 22:49:44 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Fub2} architecture {commutator}}
	 	  library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity comutator is
	port(
		 CLK : in STD_LOGIC;
		 inData : in STD_LOGIC_VECTOR(0 to 5); 
		 outData : out STD_LOGIC_VECTOR(0 to 5);	
		 outA : out STD_LOGIC_VECTOR(0 to 1);
		 outB : out STD_LOGIC_VECTOR(0 to 1);
		 inC : in STD_LOGIC_VECTOR(0 to 1)
		 	  );
end comutator;

--}} End of automatically maintained section

architecture commutator of comutator is	   	
signal nextData : STD_logic_vector(0 to 5) := "000000";
begin

	-- enter your statements here -- 

	comutator_process : process(CLK) 
		variable check : boolean := false;
	begin			
		if rising_edge(CLK) then	   
				check := ((inData(0) nand '1') and (inData(1) and '1'))  = '1';	  
				if(check = true) then
				outA <= inData(2 to 3);		
				outB <= inData(4 to 5);		 
				outData <= "000000";
				outData(4 to 5) <= inC;
				else
				outA <= "UU";		
				outB <= "UU";	
				outData <= inData;
			end if;
		end if;
		
		
	end process;

end commutator;
