-------------------------------------------------------------------------------
--
-- Title       : Fub1
-- Design      : lab3
-- Author      : Oleksandr
-- Company     : Lviv Polytechnic National University
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/lab3/src/example.vhd
-- Generated   : Sun Dec 13 16:46:51 2020
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
--{entity {Fub1} architecture {example}}
library IEEE;	  
USE ieee.numeric_std.ALL; 
use IEEE.STD_LOGIC_1164.all; 


entity Fub1 is	
	port(
	CLK : in std_logic;									
	INDEX : in std_logic_vector(0 to 4);
	left_in : in std_logic_vector(0 to 8):="UUUUUUUUU";
	right_in : in std_logic_vector(0 to 8):="UUUUUUUUU";
	top_in : in std_logic_vector(0 to 8):="UUUUUUUUU";
	bottom_in : in std_logic_vector(0 to 8):="UUUUUUUUU";	   
	left_out : out std_logic_vector(0 to 8):="UUUUUUUUU";
	right_out : out std_logic_vector(0 to 8):="UUUUUUUUU";
	top_out : out std_logic_vector(0 to 8):="UUUUUUUUU";		   
	bottom_out : out std_logic_vector(0 to 8):="UUUUUUUUU"		
			   );
end Fub1;

--}} End of automatically maintained section

architecture example of Fub1 is				  

begin	  
	main: process(CLK)
	variable current_number : integer;	
	variable next_step : integer; 
	variable or_2_bit : std_logic_vector(0 to 1);
	variable outData : std_logic_vector(0 to 8);
	begin		   	
if(rising_edge(CLK)) then		  
	if(left_in /= "UUUUUUUUU" and left_in /= "ZZZZZZZZZ") then	
		outData := left_in;
		current_number := to_integer(unsigned(INDEX));
		next_step := to_integer(unsigned(left_in(0 to 4)));	
			 
		if(current_number = next_step) then
			or_2_bit := (left_in(5 to 6)) or (left_in(7 to 8));
			outData(0 to 6) := "1100000";
			outData(7 to 8) := or_2_bit;
			next_step := 24;
		end if;
		if(current_number = 24) then
			outData(0 to 4):="00000";
			right_out <=outData	 ;
		elsif((next_step - current_number)>= 5) then
			bottom_out<= outData;	
		elsif((next_step - current_number)>= 1) then
			right_out<= outData;		  
		elsif((next_step - current_number)<= -5) then
			top_out<= outData;
		else
			left_out<= outData;
		end if;
		  
	
	elsif(right_in /= "UUUUUUUUU" and right_in /= "ZZZZZZZZZ") then	
		outData := right_in;
		current_number := to_integer(unsigned(INDEX));
		next_step := to_integer(unsigned(right_in(0 to 4)));
		if(current_number = next_step) then
			or_2_bit := (right_in(5 to 6)) or (right_in(7 to 8));
			outData(0 to 6) := "1100000";
			outData(7 to 8) := or_2_bit;
			next_step := 24;
		end if;
		
		if(current_number = 24) then
			outData(0 to 6):="0000000";  
			right_out <=outData	 ;
		elsif((next_step - current_number)>= 5) then
			bottom_out<= outData;	
		elsif((next_step - current_number)>= 1) then
			right_out<= outData;		  
		elsif((next_step - current_number)<= -5) then
			top_out<= outData;
		else
			left_out<= outData;
		end if;	  
	
	elsif(top_in /= "UUUUUUUUU" and top_in /= "ZZZZZZZZZ") then	
		outData := top_in;
		current_number := to_integer(unsigned(INDEX));
		next_step := to_integer(unsigned(top_in(0 to 4)));
		if(current_number = next_step) then
			or_2_bit := (top_in(5 to 6)) or (top_in(7 to 8));
			outData(0 to 6) := "1100000";
			outData(7 to 8) := or_2_bit;
			next_step := 24;
		end if;
		
		if(current_number = 24) then
			outData(0 to 4):="00000";
			right_out <=outData	 ;
		elsif((next_step - current_number)>= 5) then
			bottom_out<= outData;	
		elsif((next_step - current_number)>= 1) then
			right_out<= outData;		  
		elsif((next_step - current_number)<= -5) then
			top_out<= outData;
		else
			left_out<= outData;
		end if;	 
	
	elsif(bottom_in /= "UUUUUUUUU" and bottom_in /= "ZZZZZZZZZ") then	
		outData := bottom_in;
		current_number := to_integer(unsigned(INDEX));
		next_step := to_integer(unsigned(bottom_in(0 to 4)));
		if(current_number = next_step) then
			or_2_bit := (bottom_in(5 to 6)) or (bottom_in(7 to 8));
			outData(0 to 6) := "1100000";
			outData(7 to 8) := or_2_bit;
			next_step := 24;
		end if;
		
		if(current_number = 24) then
			outData(0 to 4):="00000";
			right_out <=outData	 ;
		elsif((next_step - current_number)>= 5) then
			bottom_out<= outData;	
		elsif((next_step - current_number)>= 1) then
			right_out<= outData;		  
		elsif((next_step - current_number)<= -5) then
			top_out<= outData;
		else
			left_out<= outData;
		end if;
	end if;	
	
end if;	  
	end process;
end example;

-----------------------------------------------------------------------------

