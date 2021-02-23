--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 11/30/2020 18:13:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/suuser/Xilinx/jerena_lab3/schem.vhf -w C:/Users/suuser/Xilinx/jerena_lab3/schem.sch
--Design Name: schem
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FA_MUSER_schem is
   port ( Ai  : in    std_logic; 
          Bi  : in    std_logic; 
          Ci  : in    std_logic; 
          Ci1 : out   std_logic; 
          Si  : out   std_logic);
end FA_MUSER_schem;

architecture BEHAVIORAL of FA_MUSER_schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>Bi,
                I1=>Ai,
                O=>XLXN_11);
   
   XLXI_2 : XOR2
      port map (I0=>Ci,
                I1=>XLXN_11,
                O=>Si);
   
   XLXI_3 : AND2
      port map (I0=>Bi,
                I1=>Ai,
                O=>XLXN_10);
   
   XLXI_4 : AND2
      port map (I0=>Ci,
                I1=>XLXN_11,
                O=>XLXN_9);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_10,
                I1=>XLXN_9,
                O=>Ci1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schem is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          A4  : in    std_logic; 
          A5  : in    std_logic; 
          A6  : in    std_logic; 
          A7  : in    std_logic; 
          A8  : in    std_logic; 
          A9  : in    std_logic; 
          A10 : in    std_logic; 
          A11 : in    std_logic; 
          A12 : in    std_logic; 
          A13 : in    std_logic; 
          A14 : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          B4  : in    std_logic; 
          B5  : in    std_logic; 
          B6  : in    std_logic; 
          B7  : in    std_logic; 
          B8  : in    std_logic; 
          B9  : in    std_logic; 
          B10 : in    std_logic; 
          B11 : in    std_logic; 
          B12 : in    std_logic; 
          B13 : in    std_logic; 
          B14 : in    std_logic; 
          C0  : in    std_logic; 
          C   : out   std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic; 
          S2  : out   std_logic; 
          S3  : out   std_logic; 
          S4  : out   std_logic; 
          S5  : out   std_logic; 
          S6  : out   std_logic; 
          S7  : out   std_logic; 
          S8  : out   std_logic; 
          S9  : out   std_logic; 
          S10 : out   std_logic; 
          S11 : out   std_logic; 
          S12 : out   std_logic; 
          S13 : out   std_logic; 
          S14 : out   std_logic; 
          V   : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal XLXN_2   : std_logic;
   signal XLXN_22  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_43  : std_logic;
   signal XLXN_44  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_51  : std_logic;
   signal XLXN_52  : std_logic;
   signal XLXN_53  : std_logic;
   signal XLXN_56  : std_logic;
   signal XLXN_79  : std_logic;
   signal XLXN_80  : std_logic;
   signal XLXN_81  : std_logic;
   signal XLXN_84  : std_logic;
   signal XLXN_87  : std_logic;
   signal XLXN_88  : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_92  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_96  : std_logic;
   signal XLXN_99  : std_logic;
   signal XLXN_100 : std_logic;
   signal XLXN_101 : std_logic;
   signal XLXN_104 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_112 : std_logic;
   signal C_DUMMY  : std_logic;
   component FA_MUSER_schem
      port ( Ai  : in    std_logic; 
             Bi  : in    std_logic; 
             Ci  : in    std_logic; 
             Ci1 : out   std_logic; 
             Si  : out   std_logic);
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   C <= C_DUMMY;
   XLXI_1 : FA_MUSER_schem
      port map (Ai=>A0,
                Bi=>XLXN_22,
                Ci=>C0,
                Ci1=>XLXN_1,
                Si=>S0);
   
   XLXI_2 : FA_MUSER_schem
      port map (Ai=>A1,
                Bi=>XLXN_38,
                Ci=>XLXN_1,
                Ci1=>XLXN_2,
                Si=>S1);
   
   XLXI_28 : XOR2
      port map (I0=>B0,
                I1=>C0,
                O=>XLXN_22);
   
   XLXI_29 : XOR2
      port map (I0=>B1,
                I1=>C0,
                O=>XLXN_38);
   
   XLXI_30 : FA_MUSER_schem
      port map (Ai=>A3,
                Bi=>XLXN_48,
                Ci=>XLXN_43,
                Ci1=>XLXN_44,
                Si=>S3);
   
   XLXI_31 : XOR2
      port map (I0=>B2,
                I1=>C0,
                O=>XLXN_45);
   
   XLXI_32 : XOR2
      port map (I0=>B3,
                I1=>C0,
                O=>XLXN_48);
   
   XLXI_33 : FA_MUSER_schem
      port map (Ai=>A2,
                Bi=>XLXN_45,
                Ci=>XLXN_2,
                Ci1=>XLXN_43,
                Si=>S2);
   
   XLXI_34 : FA_MUSER_schem
      port map (Ai=>A5,
                Bi=>XLXN_56,
                Ci=>XLXN_51,
                Ci1=>XLXN_52,
                Si=>S5);
   
   XLXI_35 : XOR2
      port map (I0=>B4,
                I1=>C0,
                O=>XLXN_53);
   
   XLXI_36 : XOR2
      port map (I0=>B5,
                I1=>C0,
                O=>XLXN_56);
   
   XLXI_37 : FA_MUSER_schem
      port map (Ai=>A4,
                Bi=>XLXN_53,
                Ci=>XLXN_44,
                Ci1=>XLXN_51,
                Si=>S4);
   
   XLXI_48 : FA_MUSER_schem
      port map (Ai=>A7,
                Bi=>XLXN_84,
                Ci=>XLXN_79,
                Ci1=>XLXN_80,
                Si=>S7);
   
   XLXI_49 : XOR2
      port map (I0=>B6,
                I1=>C0,
                O=>XLXN_81);
   
   XLXI_50 : XOR2
      port map (I0=>B7,
                I1=>C0,
                O=>XLXN_84);
   
   XLXI_51 : FA_MUSER_schem
      port map (Ai=>A9,
                Bi=>XLXN_92,
                Ci=>XLXN_87,
                Ci1=>XLXN_88,
                Si=>S9);
   
   XLXI_52 : XOR2
      port map (I0=>B8,
                I1=>C0,
                O=>XLXN_89);
   
   XLXI_53 : XOR2
      port map (I0=>B9,
                I1=>C0,
                O=>XLXN_92);
   
   XLXI_54 : FA_MUSER_schem
      port map (Ai=>A8,
                Bi=>XLXN_89,
                Ci=>XLXN_80,
                Ci1=>XLXN_87,
                Si=>S8);
   
   XLXI_55 : FA_MUSER_schem
      port map (Ai=>A6,
                Bi=>XLXN_81,
                Ci=>XLXN_52,
                Ci1=>XLXN_79,
                Si=>S6);
   
   XLXI_56 : XOR2
      port map (I0=>B10,
                I1=>C0,
                O=>XLXN_96);
   
   XLXI_57 : FA_MUSER_schem
      port map (Ai=>A12,
                Bi=>XLXN_104,
                Ci=>XLXN_99,
                Ci1=>XLXN_100,
                Si=>S12);
   
   XLXI_58 : XOR2
      port map (I0=>B11,
                I1=>C0,
                O=>XLXN_101);
   
   XLXI_59 : XOR2
      port map (I0=>B12,
                I1=>C0,
                O=>XLXN_104);
   
   XLXI_60 : FA_MUSER_schem
      port map (Ai=>A14,
                Bi=>XLXN_112,
                Ci=>XLXN_107,
                Ci1=>C_DUMMY,
                Si=>S14);
   
   XLXI_61 : XOR2
      port map (I0=>B13,
                I1=>C0,
                O=>XLXN_109);
   
   XLXI_62 : XOR2
      port map (I0=>B14,
                I1=>C0,
                O=>XLXN_112);
   
   XLXI_63 : FA_MUSER_schem
      port map (Ai=>A13,
                Bi=>XLXN_109,
                Ci=>XLXN_100,
                Ci1=>XLXN_107,
                Si=>S13);
   
   XLXI_64 : FA_MUSER_schem
      port map (Ai=>A11,
                Bi=>XLXN_101,
                Ci=>XLXN_95,
                Ci1=>XLXN_99,
                Si=>S11);
   
   XLXI_65 : FA_MUSER_schem
      port map (Ai=>A10,
                Bi=>XLXN_96,
                Ci=>XLXN_88,
                Ci1=>XLXN_95,
                Si=>S10);
   
   XLXI_66 : XOR2
      port map (I0=>C_DUMMY,
                I1=>XLXN_107,
                O=>V);
   
end BEHAVIORAL;


