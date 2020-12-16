-------------------------------------------------------------------------------
--
-- Title       : main
-- Design      : lab1
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\labs\lab1\src\main.vhd
-- Generated   : Sat Dec 12 21:30:11 2020
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
--{entity {main} architecture {main}}

library IEEE;
use IEEE.std_logic_1164.all;

entity main is
	 port(
		 A : in STD_LOGIC_VECTOR(0 to 1);
		 B : in STD_LOGIC_VECTOR(0 to 1);
		 C : out STD_LOGIC_VECTOR(0 to 1)
	     );
end main;

--}} End of automatically maintained section

architecture main of main is
begin

	-- enter your statements here -- 
		  C <= A or B;

end main;
