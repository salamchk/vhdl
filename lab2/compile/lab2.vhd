-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : lab2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\lab2\compile\lab2.vhd
-- Generated   : Sun Dec 13 15:49:19 2020
-- From        : c:\My_Designs\lab2\src\lab2.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;

entity lab2 is
  port(
       CLK : in STD_LOGIC;
       DATA : in STD_LOGIC_VECTOR(0 to 5);
       C : out STD_LOGIC_VECTOR(0 to 1)
  );
end lab2;

architecture lab2 of lab2 is

---- Component declarations -----

component comutator
  port(
       CLK : in STD_LOGIC;
       inData : in STD_LOGIC_VECTOR(0 to 5);
       outData : out STD_LOGIC_VECTOR(0 to 5);
       outA : out STD_LOGIC_VECTOR(0 to 1);
       outB : out STD_LOGIC_VECTOR(0 to 1);
       inC : in STD_LOGIC_VECTOR(0 to 1)
  );
end component;
component OR2Bit
  port(
       A : in STD_LOGIC_VECTOR(0 to 1);
       B : in STD_LOGIC_VECTOR(0 to 1);
       C : out STD_LOGIC_VECTOR(0 to 1)
  );
end component;
component commutator3
  port(
       CLK : in STD_LOGIC;
       inData : in STD_LOGIC_VECTOR(0 to 5);
       outData : out STD_LOGIC_VECTOR(0 to 1);
       outA : out STD_LOGIC_VECTOR(0 to 1);
       outB : out STD_LOGIC_VECTOR(0 to 1);
       inC : in STD_LOGIC_VECTOR(0 to 1)
  );
end component;
component comparator2
  port(
       CLK : in STD_LOGIC;
       inData : in STD_LOGIC_VECTOR(0 to 5);
       outData : out STD_LOGIC_VECTOR(0 to 5);
       outA : out STD_LOGIC_VECTOR(0 to 1);
       outB : out STD_LOGIC_VECTOR(0 to 1);
       inC : in STD_LOGIC_VECTOR(0 to 1)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET1116 : STD_LOGIC;
signal BUS1536 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1544 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1552 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1659 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1667 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1675 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1813 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1821 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS1829 : STD_LOGIC_VECTOR(1 downto 0);
signal OutCommutator1 : STD_LOGIC_VECTOR(5 downto 0);
signal OutCommutator2 : STD_LOGIC_VECTOR(5 downto 0);

begin

----  Component instantiations  ----

U15 : comutator
  port map(
       CLK => NET1116,
       inData => DATA,
       outData => OutCommutator1,
       outA => BUS1536,
       outB => BUS1544,
       inC => BUS1552
  );

U16 : OR2Bit
  port map(
       A => BUS1536,
       B => BUS1544,
       C => BUS1552
  );

U18 : comparator2
  port map(
       CLK => NET1116,
       inData => OutCommutator1,
       outData => OutCommutator2,
       outA => BUS1667,
       outB => BUS1659,
       inC => BUS1675
  );

U19 : OR2Bit
  port map(
       A => BUS1667,
       B => BUS1659,
       C => BUS1675
  );

U21 : commutator3
  port map(
       CLK => NET1116,
       inData => OutCommutator2,
       outData => C,
       outA => BUS1821,
       outB => BUS1813,
       inC => BUS1829
  );

U22 : OR2Bit
  port map(
       A => BUS1821,
       B => BUS1813,
       C => BUS1829
  );


---- Terminal assignment ----

    -- Inputs terminals
	NET1116 <= CLK;


end lab2;
