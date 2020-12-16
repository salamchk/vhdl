-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : lab3
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\lab3\compile\lab3.vhd
-- Generated   : Sun Dec 13 21:40:02 2020
-- From        : c:\My_Designs\lab3\src\lab3.bde
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

entity lab3 is
  port(
       CLK : in STD_LOGIC;
       OUTDATA : out STD_LOGIC_VECTOR(0 to 8);
       ID0 : in STD_LOGIC_VECTOR(0 to 4);
       ID1 : in STD_LOGIC_VECTOR(0 to 4);
       ID2 : in STD_LOGIC_VECTOR(0 to 4);
       ID3 : in STD_LOGIC_VECTOR(0 to 4);
       ID4 : in STD_LOGIC_VECTOR(0 to 4);
       ID5 : in STD_LOGIC_VECTOR(0 to 4);
       ID6 : in STD_LOGIC_VECTOR(0 to 4);
       ID7 : in STD_LOGIC_VECTOR(0 to 4);
       ID8 : in STD_LOGIC_VECTOR(0 to 4);
       ID9 : in STD_LOGIC_VECTOR(0 to 4);
       ID10 : in STD_LOGIC_VECTOR(0 to 4);
       ID11 : in STD_LOGIC_VECTOR(0 to 4);
       ID12 : in STD_LOGIC_VECTOR(0 to 4);
       ID13 : in STD_LOGIC_VECTOR(0 to 4);
       ID14 : in STD_LOGIC_VECTOR(0 to 4);
       ID15 : in STD_LOGIC_VECTOR(0 to 4);
       ID16 : in STD_LOGIC_VECTOR(0 to 4);
       ID17 : in STD_LOGIC_VECTOR(0 to 4);
       ID18 : in STD_LOGIC_VECTOR(0 to 4);
       ID19 : in STD_LOGIC_VECTOR(0 to 4);
       ID20 : in STD_LOGIC_VECTOR(0 to 4);
       ID21 : in STD_LOGIC_VECTOR(0 to 4);
       ID22 : in STD_LOGIC_VECTOR(0 to 4);
       ID23 : in STD_LOGIC_VECTOR(0 to 4);
       ID24 : in STD_LOGIC_VECTOR(0 to 4);
       DATA : in STD_LOGIC_VECTOR(0 to 8)
  );
end lab3;

architecture lab3 of lab3 is

---- Component declarations -----

component Fub1
  port(
       CLK : in STD_LOGIC;
       INDEX : in STD_LOGIC_VECTOR(0 to 4);
       left_in : in STD_LOGIC_VECTOR(0 to 8);
       right_in : in STD_LOGIC_VECTOR(0 to 8);
       top_in : in STD_LOGIC_VECTOR(0 to 8);
       bottom_in : in STD_LOGIC_VECTOR(0 to 8);
       left_out : out STD_LOGIC_VECTOR(0 to 8);
       right_out : out STD_LOGIC_VECTOR(0 to 8);
       top_out : out STD_LOGIC_VECTOR(0 to 8);
       bottom_out : out STD_LOGIC_VECTOR(0 to 8)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal NET1673 : STD_LOGIC;
signal BUS1011 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1015 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1019 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1023 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1027 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1031 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1035 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1039 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1043 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1047 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1051 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1055 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1059 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1063 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1067 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1071 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1075 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1079 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1083 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1087 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1091 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1095 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1099 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1103 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1107 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1111 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1115 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1119 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1123 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1127 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1131 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1135 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1139 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1143 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1147 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1151 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1155 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1159 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1167 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1171 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1175 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1179 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1183 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1187 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1191 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1195 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1199 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1203 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1207 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1211 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1215 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1219 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1223 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1227 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1231 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1235 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1239 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1243 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1247 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1251 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1255 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1259 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1263 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1267 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1271 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1275 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1279 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1302 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1306 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1310 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1314 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1318 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1322 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1326 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1330 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1334 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1338 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1342 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1346 : STD_LOGIC_VECTOR(8 downto 0);
signal BUS1350 : STD_LOGIC_VECTOR(8 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U0 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID0,
       left_in => DATA,
       right_in => BUS1322,
       top_in(0) => Dangling_Input_Signal,
       top_in(1) => Dangling_Input_Signal,
       top_in(2) => Dangling_Input_Signal,
       top_in(3) => Dangling_Input_Signal,
       top_in(4) => Dangling_Input_Signal,
       top_in(5) => Dangling_Input_Signal,
       top_in(6) => Dangling_Input_Signal,
       top_in(7) => Dangling_Input_Signal,
       top_in(8) => Dangling_Input_Signal,
       bottom_in => BUS1015,
       right_out => BUS1326,
       bottom_out => BUS1011
  );

U1 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID1,
       left_in => BUS1326,
       right_in => BUS1334,
       top_in(0) => Dangling_Input_Signal,
       top_in(1) => Dangling_Input_Signal,
       top_in(2) => Dangling_Input_Signal,
       top_in(3) => Dangling_Input_Signal,
       top_in(4) => Dangling_Input_Signal,
       top_in(5) => Dangling_Input_Signal,
       top_in(6) => Dangling_Input_Signal,
       top_in(7) => Dangling_Input_Signal,
       top_in(8) => Dangling_Input_Signal,
       bottom_in => BUS1023,
       left_out => BUS1322,
       right_out => BUS1330,
       bottom_out => BUS1019
  );

U10 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID10,
       left_in(0) => Dangling_Input_Signal,
       left_in(1) => Dangling_Input_Signal,
       left_in(2) => Dangling_Input_Signal,
       left_in(3) => Dangling_Input_Signal,
       left_in(4) => Dangling_Input_Signal,
       left_in(5) => Dangling_Input_Signal,
       left_in(6) => Dangling_Input_Signal,
       left_in(7) => Dangling_Input_Signal,
       left_in(8) => Dangling_Input_Signal,
       right_in => BUS1243,
       top_in => BUS1087,
       bottom_in => BUS1091,
       right_out => BUS1239,
       top_out => BUS1083,
       bottom_out => BUS1095
  );

U11 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID11,
       left_in => BUS1239,
       right_in => BUS1251,
       top_in => BUS1079,
       bottom_in => BUS1103,
       left_out => BUS1243,
       right_out => BUS1247,
       top_out => BUS1075,
       bottom_out => BUS1099
  );

U12 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID12,
       left_in => BUS1247,
       right_in => BUS1259,
       top_in => BUS1071,
       bottom_in => BUS1111,
       left_out => BUS1251,
       right_out => BUS1255,
       top_out => BUS1067,
       bottom_out => BUS1107
  );

U13 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID13,
       left_in => BUS1255,
       right_in => BUS1267,
       top_in => BUS1063,
       bottom_in => BUS1119,
       left_out => BUS1259,
       right_out => BUS1263,
       top_out => BUS1059,
       bottom_out => BUS1115
  );

U14 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID14,
       left_in => BUS1263,
       right_in(0) => Dangling_Input_Signal,
       right_in(1) => Dangling_Input_Signal,
       right_in(2) => Dangling_Input_Signal,
       right_in(3) => Dangling_Input_Signal,
       right_in(4) => Dangling_Input_Signal,
       right_in(5) => Dangling_Input_Signal,
       right_in(6) => Dangling_Input_Signal,
       right_in(7) => Dangling_Input_Signal,
       right_in(8) => Dangling_Input_Signal,
       top_in => BUS1055,
       bottom_in => BUS1127,
       left_out => BUS1267,
       top_out => BUS1051,
       bottom_out => BUS1123
  );

U15 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID15,
       left_in(0) => Dangling_Input_Signal,
       left_in(1) => Dangling_Input_Signal,
       left_in(2) => Dangling_Input_Signal,
       left_in(3) => Dangling_Input_Signal,
       left_in(4) => Dangling_Input_Signal,
       left_in(5) => Dangling_Input_Signal,
       left_in(6) => Dangling_Input_Signal,
       left_in(7) => Dangling_Input_Signal,
       left_in(8) => Dangling_Input_Signal,
       right_in => BUS1211,
       top_in => BUS1095,
       bottom_in => BUS1135,
       right_out => BUS1207,
       top_out => BUS1091,
       bottom_out => BUS1131
  );

U16 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID16,
       left_in => BUS1207,
       right_in => BUS1219,
       top_in => BUS1099,
       bottom_in => BUS1143,
       left_out => BUS1211,
       right_out => BUS1215,
       top_out => BUS1103,
       bottom_out => BUS1139
  );

U17 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID17,
       left_in => BUS1215,
       right_in => BUS1227,
       top_in => BUS1107,
       bottom_in => BUS1151,
       left_out => BUS1219,
       right_out => BUS1223,
       top_out => BUS1111,
       bottom_out => BUS1147
  );

U18 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID18,
       left_in => BUS1223,
       right_in => BUS1235,
       top_in => BUS1115,
       bottom_in => BUS1159,
       left_out => BUS1227,
       right_out => BUS1231,
       top_out => BUS1119,
       bottom_out => BUS1155
  );

U19 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID19,
       left_in => BUS1231,
       right_in(0) => Dangling_Input_Signal,
       right_in(1) => Dangling_Input_Signal,
       right_in(2) => Dangling_Input_Signal,
       right_in(3) => Dangling_Input_Signal,
       right_in(4) => Dangling_Input_Signal,
       right_in(5) => Dangling_Input_Signal,
       right_in(6) => Dangling_Input_Signal,
       right_in(7) => Dangling_Input_Signal,
       right_in(8) => Dangling_Input_Signal,
       top_in => BUS1123,
       bottom_in => BUS1203,
       left_out => BUS1235,
       top_out => BUS1127,
       bottom_out => BUS1199
  );

U2 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID2,
       left_in => BUS1330,
       right_in => BUS1338,
       top_in(0) => Dangling_Input_Signal,
       top_in(1) => Dangling_Input_Signal,
       top_in(2) => Dangling_Input_Signal,
       top_in(3) => Dangling_Input_Signal,
       top_in(4) => Dangling_Input_Signal,
       top_in(5) => Dangling_Input_Signal,
       top_in(6) => Dangling_Input_Signal,
       top_in(7) => Dangling_Input_Signal,
       top_in(8) => Dangling_Input_Signal,
       bottom_in => BUS1031,
       left_out => BUS1334,
       right_out => BUS1342,
       bottom_out => BUS1027
  );

U20 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID20,
       left_in(0) => Dangling_Input_Signal,
       left_in(1) => Dangling_Input_Signal,
       left_in(2) => Dangling_Input_Signal,
       left_in(3) => Dangling_Input_Signal,
       left_in(4) => Dangling_Input_Signal,
       left_in(5) => Dangling_Input_Signal,
       left_in(6) => Dangling_Input_Signal,
       left_in(7) => Dangling_Input_Signal,
       left_in(8) => Dangling_Input_Signal,
       right_in => BUS1171,
       top_in => BUS1131,
       bottom_in(0) => Dangling_Input_Signal,
       bottom_in(1) => Dangling_Input_Signal,
       bottom_in(2) => Dangling_Input_Signal,
       bottom_in(3) => Dangling_Input_Signal,
       bottom_in(4) => Dangling_Input_Signal,
       bottom_in(5) => Dangling_Input_Signal,
       bottom_in(6) => Dangling_Input_Signal,
       bottom_in(7) => Dangling_Input_Signal,
       bottom_in(8) => Dangling_Input_Signal,
       right_out => BUS1167,
       top_out => BUS1135
  );

U21 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID21,
       left_in => BUS1167,
       right_in => BUS1179,
       top_in => BUS1139,
       bottom_in(0) => Dangling_Input_Signal,
       bottom_in(1) => Dangling_Input_Signal,
       bottom_in(2) => Dangling_Input_Signal,
       bottom_in(3) => Dangling_Input_Signal,
       bottom_in(4) => Dangling_Input_Signal,
       bottom_in(5) => Dangling_Input_Signal,
       bottom_in(6) => Dangling_Input_Signal,
       bottom_in(7) => Dangling_Input_Signal,
       bottom_in(8) => Dangling_Input_Signal,
       left_out => BUS1171,
       right_out => BUS1175,
       top_out => BUS1143
  );

U22 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID22,
       left_in => BUS1175,
       right_in => BUS1187,
       top_in => BUS1147,
       bottom_in(0) => Dangling_Input_Signal,
       bottom_in(1) => Dangling_Input_Signal,
       bottom_in(2) => Dangling_Input_Signal,
       bottom_in(3) => Dangling_Input_Signal,
       bottom_in(4) => Dangling_Input_Signal,
       bottom_in(5) => Dangling_Input_Signal,
       bottom_in(6) => Dangling_Input_Signal,
       bottom_in(7) => Dangling_Input_Signal,
       bottom_in(8) => Dangling_Input_Signal,
       left_out => BUS1179,
       right_out => BUS1183,
       top_out => BUS1151
  );

U23 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID23,
       left_in => BUS1183,
       right_in => BUS1195,
       top_in => BUS1155,
       bottom_in(0) => Dangling_Input_Signal,
       bottom_in(1) => Dangling_Input_Signal,
       bottom_in(2) => Dangling_Input_Signal,
       bottom_in(3) => Dangling_Input_Signal,
       bottom_in(4) => Dangling_Input_Signal,
       bottom_in(5) => Dangling_Input_Signal,
       bottom_in(6) => Dangling_Input_Signal,
       bottom_in(7) => Dangling_Input_Signal,
       bottom_in(8) => Dangling_Input_Signal,
       left_out => BUS1187,
       right_out => BUS1191,
       top_out => BUS1159
  );

U24 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID24,
       left_in => BUS1191,
       right_in(0) => Dangling_Input_Signal,
       right_in(1) => Dangling_Input_Signal,
       right_in(2) => Dangling_Input_Signal,
       right_in(3) => Dangling_Input_Signal,
       right_in(4) => Dangling_Input_Signal,
       right_in(5) => Dangling_Input_Signal,
       right_in(6) => Dangling_Input_Signal,
       right_in(7) => Dangling_Input_Signal,
       right_in(8) => Dangling_Input_Signal,
       top_in => BUS1199,
       bottom_in(0) => Dangling_Input_Signal,
       bottom_in(1) => Dangling_Input_Signal,
       bottom_in(2) => Dangling_Input_Signal,
       bottom_in(3) => Dangling_Input_Signal,
       bottom_in(4) => Dangling_Input_Signal,
       bottom_in(5) => Dangling_Input_Signal,
       bottom_in(6) => Dangling_Input_Signal,
       bottom_in(7) => Dangling_Input_Signal,
       bottom_in(8) => Dangling_Input_Signal,
       left_out => BUS1195,
       right_out => OUTDATA,
       top_out => BUS1203
  );

U3 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID3,
       left_in => BUS1342,
       right_in => BUS1350,
       top_in(0) => Dangling_Input_Signal,
       top_in(1) => Dangling_Input_Signal,
       top_in(2) => Dangling_Input_Signal,
       top_in(3) => Dangling_Input_Signal,
       top_in(4) => Dangling_Input_Signal,
       top_in(5) => Dangling_Input_Signal,
       top_in(6) => Dangling_Input_Signal,
       top_in(7) => Dangling_Input_Signal,
       top_in(8) => Dangling_Input_Signal,
       bottom_in => BUS1039,
       left_out => BUS1338,
       right_out => BUS1346,
       bottom_out => BUS1035
  );

U4 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID4,
       left_in => BUS1346,
       right_in(0) => Dangling_Input_Signal,
       right_in(1) => Dangling_Input_Signal,
       right_in(2) => Dangling_Input_Signal,
       right_in(3) => Dangling_Input_Signal,
       right_in(4) => Dangling_Input_Signal,
       right_in(5) => Dangling_Input_Signal,
       right_in(6) => Dangling_Input_Signal,
       right_in(7) => Dangling_Input_Signal,
       right_in(8) => Dangling_Input_Signal,
       top_in(0) => Dangling_Input_Signal,
       top_in(1) => Dangling_Input_Signal,
       top_in(2) => Dangling_Input_Signal,
       top_in(3) => Dangling_Input_Signal,
       top_in(4) => Dangling_Input_Signal,
       top_in(5) => Dangling_Input_Signal,
       top_in(6) => Dangling_Input_Signal,
       top_in(7) => Dangling_Input_Signal,
       top_in(8) => Dangling_Input_Signal,
       bottom_in => BUS1047,
       left_out => BUS1350,
       bottom_out => BUS1043
  );

U5 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID5,
       left_in(0) => Dangling_Input_Signal,
       left_in(1) => Dangling_Input_Signal,
       left_in(2) => Dangling_Input_Signal,
       left_in(3) => Dangling_Input_Signal,
       left_in(4) => Dangling_Input_Signal,
       left_in(5) => Dangling_Input_Signal,
       left_in(6) => Dangling_Input_Signal,
       left_in(7) => Dangling_Input_Signal,
       left_in(8) => Dangling_Input_Signal,
       right_in => BUS1275,
       top_in => BUS1011,
       bottom_in => BUS1083,
       right_out => BUS1271,
       top_out => BUS1015,
       bottom_out => BUS1087
  );

U6 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID6,
       left_in => BUS1271,
       right_in => BUS1302,
       top_in => BUS1019,
       bottom_in => BUS1075,
       left_out => BUS1275,
       right_out => BUS1279,
       top_out => BUS1023,
       bottom_out => BUS1079
  );

U7 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID7,
       left_in => BUS1279,
       right_in => BUS1310,
       top_in => BUS1027,
       bottom_in => BUS1067,
       left_out => BUS1302,
       right_out => BUS1306,
       top_out => BUS1031,
       bottom_out => BUS1071
  );

U8 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID8,
       left_in => BUS1306,
       right_in => BUS1314,
       top_in => BUS1035,
       bottom_in => BUS1059,
       left_out => BUS1310,
       right_out => BUS1318,
       top_out => BUS1039,
       bottom_out => BUS1063
  );

U9 : Fub1
  port map(
       CLK => NET1673,
       INDEX => ID9,
       left_in => BUS1318,
       right_in(0) => Dangling_Input_Signal,
       right_in(1) => Dangling_Input_Signal,
       right_in(2) => Dangling_Input_Signal,
       right_in(3) => Dangling_Input_Signal,
       right_in(4) => Dangling_Input_Signal,
       right_in(5) => Dangling_Input_Signal,
       right_in(6) => Dangling_Input_Signal,
       right_in(7) => Dangling_Input_Signal,
       right_in(8) => Dangling_Input_Signal,
       top_in => BUS1043,
       bottom_in => BUS1051,
       left_out => BUS1314,
       top_out => BUS1047,
       bottom_out => BUS1055
  );


---- Terminal assignment ----

    -- Inputs terminals
	NET1673 <= CLK;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end lab3;
