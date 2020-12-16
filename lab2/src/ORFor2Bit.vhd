-------------------------------------------------------------------------------
--
-- Title       : Fub4
-- Design      : lab2
-- Author      : Oleksandr
-- Company     : Lviv Polytechnic National University
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/lab2/src/ORFor2Bit.vhd
-- Generated   : Sat Dec 12 23:16:49 2020
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
--{entity {Fub4} architecture {ORFor2Bit}}
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR2Bit is 
	port(
	A : in STD_logic_vector(0 to 1);
	B : in STD_logic_vector(0 to 1);
	C : out STD_logic_vector(0 to 1)
	);
end OR2Bit;

--}} End of automatically maintained section

architecture ORFor2Bit of OR2Bit is
begin
	-- enter your statements here -- 
	C <= A or B;
end ORFor2Bit;
