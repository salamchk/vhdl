-------------------------------------------------------------------------------
--
-- Title       : Fub6
-- Design      : lab2
-- Author      : Oleksandr
-- Company     : Lviv Polytechnic National University
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/lab2/src/commutator3.vhd
-- Generated   : Sun Dec 13 15:21:53 2020
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
--{entity {Fub6} architecture {commutator3}}
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity commutator3 is	 
	port(
	CLK : in STD_LOGIC;
		 inData : in STD_LOGIC_VECTOR(0 to 5); 
		 outData : out STD_LOGIC_VECTOR(0 to 1);	
		 outA : out STD_LOGIC_VECTOR(0 to 1);
		 outB : out STD_LOGIC_VECTOR(0 to 1);
		 inC : in STD_LOGIC_VECTOR(0 to 1) 
		 );
end commutator3;

--}} End of automatically maintained section

architecture commutator3 of commutator3 is
begin

	-- enter your statements here --	
	comutator_process : process(CLK) 
		variable check : boolean := false;
	begin			
		if rising_edge(CLK) then	   
				check := ((inData(0) and '1') and (inData(1) and '1'))  = '1';	  
				if(check = true) then
				outA <= inData(2 to 3);		
				outB <= inData(4 to 5);
				outData <= inC;
				else
				outA <= "UU";		
				outB <= "UU";	
				outData <= inData(4 to 5);
			end if;
		end if;
		
		
	end process;

end commutator3;
