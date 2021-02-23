--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CL15.vhf
-- /___/   /\     Timestamp : 12/01/2020 15:16:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/suuser/Xilinx/jerena_lab3/CL15.vhf -w C:/Users/suuser/Xilinx/jerena_lab3/CL15.sch
--Design Name: CL15
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

entity CLA_MUSER_CL15 is
   port ( C0 : in    std_logic; 
          G0 : in    std_logic; 
          G1 : in    std_logic; 
          G2 : in    std_logic; 
          P0 : in    std_logic; 
          P1 : in    std_logic; 
          P2 : in    std_logic; 
          C1 : out   std_logic; 
          C2 : out   std_logic; 
          C3 : out   std_logic);
end CLA_MUSER_CL15;

architecture BEHAVIORAL of CLA_MUSER_CL15 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
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
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>P0,
                I1=>C0,
                O=>XLXN_1);
   
   XLXI_2 : OR2
      port map (I0=>G0,
                I1=>XLXN_1,
                O=>C1);
   
   XLXI_3 : AND2
      port map (I0=>P1,
                I1=>G0,
                O=>XLXN_11);
   
   XLXI_6 : OR3
      port map (I0=>G1,
                I1=>XLXN_11,
                I2=>XLXN_10,
                O=>C2);
   
   XLXI_7 : AND3
      port map (I0=>P1,
                I1=>P0,
                I2=>C0,
                O=>XLXN_10);
   
   XLXI_8 : AND2
      port map (I0=>P2,
                I1=>G1,
                O=>XLXN_23);
   
   XLXI_9 : AND3
      port map (I0=>P2,
                I1=>P1,
                I2=>G0,
                O=>XLXN_22);
   
   XLXI_10 : AND4
      port map (I0=>P2,
                I1=>P1,
                I2=>P0,
                I3=>C0,
                O=>XLXN_21);
   
   XLXI_11 : OR4
      port map (I0=>G2,
                I1=>XLXN_23,
                I2=>XLXN_22,
                I3=>XLXN_21,
                O=>C3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CLA3_MUSER_CL15 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          C0 : in    std_logic; 
          C3 : out   std_logic; 
          S0 : out   std_logic; 
          S1 : out   std_logic; 
          S2 : out   std_logic);
end CLA3_MUSER_CL15;

architecture BEHAVIORAL of CLA3_MUSER_CL15 is
   attribute BOX_TYPE   : string ;
   signal XLXN_3  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_33 : std_logic;
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
   
   component CLA_MUSER_CL15
      port ( C0 : in    std_logic; 
             C1 : out   std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic; 
             G0 : in    std_logic; 
             G1 : in    std_logic; 
             G2 : in    std_logic; 
             P0 : in    std_logic; 
             P1 : in    std_logic; 
             P2 : in    std_logic);
   end component;
   
begin
   XLXI_2 : XOR2
      port map (I0=>C0,
                I1=>XLXN_13,
                O=>S0);
   
   XLXI_3 : AND2
      port map (I0=>A0,
                I1=>B0,
                O=>XLXN_3);
   
   XLXI_4 : XOR2
      port map (I0=>A0,
                I1=>B0,
                O=>XLXN_13);
   
   XLXI_5 : AND2
      port map (I0=>A1,
                I1=>B1,
                O=>XLXN_17);
   
   XLXI_6 : XOR2
      port map (I0=>A1,
                I1=>B1,
                O=>XLXN_18);
   
   XLXI_8 : XOR2
      port map (I0=>XLXN_21,
                I1=>XLXN_18,
                O=>S1);
   
   XLXI_9 : XOR2
      port map (I0=>A2,
                I1=>B2,
                O=>XLXN_25);
   
   XLXI_10 : AND2
      port map (I0=>A2,
                I1=>B2,
                O=>XLXN_24);
   
   XLXI_11 : XOR2
      port map (I0=>XLXN_33,
                I1=>XLXN_25,
                O=>S2);
   
   XLXI_12 : CLA_MUSER_CL15
      port map (C0=>C0,
                G0=>XLXN_3,
                G1=>XLXN_17,
                G2=>XLXN_24,
                P0=>XLXN_13,
                P1=>XLXN_18,
                P2=>XLXN_25,
                C1=>XLXN_21,
                C2=>XLXN_33,
                C3=>C3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Clw2c_MUSER_CL15 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          C0 : in    std_logic; 
          C2 : out   std_logic; 
          C3 : out   std_logic; 
          S0 : out   std_logic; 
          S1 : out   std_logic; 
          S2 : out   std_logic);
end Clw2c_MUSER_CL15;

architecture BEHAVIORAL of Clw2c_MUSER_CL15 is
   attribute BOX_TYPE   : string ;
   signal XLXN_3   : std_logic;
   signal XLXN_7   : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_18  : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_25  : std_logic;
   signal C2_DUMMY : std_logic;
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
   
   component CLA_MUSER_CL15
      port ( C0 : in    std_logic; 
             C1 : out   std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic; 
             G0 : in    std_logic; 
             G1 : in    std_logic; 
             G2 : in    std_logic; 
             P0 : in    std_logic; 
             P1 : in    std_logic; 
             P2 : in    std_logic);
   end component;
   
begin
   C2 <= C2_DUMMY;
   XLXI_2 : XOR2
      port map (I0=>C0,
                I1=>XLXN_7,
                O=>S0);
   
   XLXI_3 : AND2
      port map (I0=>A0,
                I1=>B0,
                O=>XLXN_3);
   
   XLXI_4 : XOR2
      port map (I0=>A0,
                I1=>B0,
                O=>XLXN_7);
   
   XLXI_5 : AND2
      port map (I0=>A1,
                I1=>B1,
                O=>XLXN_11);
   
   XLXI_6 : XOR2
      port map (I0=>A1,
                I1=>B1,
                O=>XLXN_12);
   
   XLXI_7 : XOR2
      port map (I0=>A2,
                I1=>B2,
                O=>XLXN_25);
   
   XLXI_8 : AND2
      port map (I0=>A2,
                I1=>B2,
                O=>XLXN_24);
   
   XLXI_9 : XOR2
      port map (I0=>XLXN_18,
                I1=>XLXN_12,
                O=>S1);
   
   XLXI_11 : XOR2
      port map (I0=>C2_DUMMY,
                I1=>XLXN_25,
                O=>S2);
   
   XLXI_13 : CLA_MUSER_CL15
      port map (C0=>C0,
                G0=>XLXN_3,
                G1=>XLXN_11,
                G2=>XLXN_24,
                P0=>XLXN_7,
                P1=>XLXN_12,
                P2=>XLXN_25,
                C1=>XLXN_18,
                C2=>C2_DUMMY,
                C3=>C3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CL15 is
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
end CL15;

architecture BEHAVIORAL of CL15 is
   attribute BOX_TYPE   : string ;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_53 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_55 : std_logic;
   signal XLXN_62 : std_logic;
   signal XLXN_75 : std_logic;
   signal XLXN_77 : std_logic;
   signal XLXN_80 : std_logic;
   signal XLXN_88 : std_logic;
   signal XLXN_99 : std_logic;
   signal C_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component Clw2c_MUSER_CL15
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             C0 : in    std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic; 
             S0 : out   std_logic; 
             S1 : out   std_logic; 
             S2 : out   std_logic);
   end component;
   
   component CLA3_MUSER_CL15
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             C0 : in    std_logic; 
             C3 : out   std_logic; 
             S0 : out   std_logic; 
             S1 : out   std_logic; 
             S2 : out   std_logic);
   end component;
   
begin
   C <= C_DUMMY;
   XLXI_10 : XOR2
      port map (I0=>B2,
                I1=>C0,
                O=>XLXN_4);
   
   XLXI_11 : XOR2
      port map (I0=>B1,
                I1=>C0,
                O=>XLXN_5);
   
   XLXI_12 : XOR2
      port map (I0=>B0,
                I1=>C0,
                O=>XLXN_6);
   
   XLXI_14 : XOR2
      port map (I0=>B5,
                I1=>C0,
                O=>XLXN_17);
   
   XLXI_15 : XOR2
      port map (I0=>B4,
                I1=>C0,
                O=>XLXN_18);
   
   XLXI_16 : XOR2
      port map (I0=>B3,
                I1=>C0,
                O=>XLXN_19);
   
   XLXI_18 : XOR2
      port map (I0=>B8,
                I1=>C0,
                O=>XLXN_30);
   
   XLXI_19 : XOR2
      port map (I0=>B7,
                I1=>C0,
                O=>XLXN_31);
   
   XLXI_20 : XOR2
      port map (I0=>B6,
                I1=>C0,
                O=>XLXN_32);
   
   XLXI_22 : XOR2
      port map (I0=>B14,
                I1=>C0,
                O=>XLXN_53);
   
   XLXI_23 : XOR2
      port map (I0=>B13,
                I1=>C0,
                O=>XLXN_54);
   
   XLXI_24 : XOR2
      port map (I0=>B12,
                I1=>C0,
                O=>XLXN_55);
   
   XLXI_27 : XOR2
      port map (I0=>B11,
                I1=>C0,
                O=>XLXN_75);
   
   XLXI_28 : XOR2
      port map (I0=>B9,
                I1=>C0,
                O=>XLXN_80);
   
   XLXI_29 : XOR2
      port map (I0=>B10,
                I1=>C0,
                O=>XLXN_77);
   
   XLXI_31 : XOR2
      port map (I0=>XLXN_99,
                I1=>C_DUMMY,
                O=>V);
   
   XLXI_32 : Clw2c_MUSER_CL15
      port map (A0=>A12,
                A1=>A13,
                A2=>A14,
                B0=>XLXN_55,
                B1=>XLXN_54,
                B2=>XLXN_53,
                C0=>XLXN_62,
                C2=>XLXN_99,
                C3=>C_DUMMY,
                S0=>S12,
                S1=>S13,
                S2=>S14);
   
   XLXI_37 : CLA3_MUSER_CL15
      port map (A0=>A0,
                A1=>A1,
                A2=>A2,
                B0=>XLXN_6,
                B1=>XLXN_5,
                B2=>XLXN_4,
                C0=>C0,
                C3=>XLXN_26,
                S0=>S0,
                S1=>S1,
                S2=>S2);
   
   XLXI_38 : CLA3_MUSER_CL15
      port map (A0=>A3,
                A1=>A4,
                A2=>A5,
                B0=>XLXN_19,
                B1=>XLXN_18,
                B2=>XLXN_17,
                C0=>XLXN_26,
                C3=>XLXN_43,
                S0=>S3,
                S1=>S4,
                S2=>S5);
   
   XLXI_39 : CLA3_MUSER_CL15
      port map (A0=>A6,
                A1=>A7,
                A2=>A8,
                B0=>XLXN_32,
                B1=>XLXN_31,
                B2=>XLXN_30,
                C0=>XLXN_43,
                C3=>XLXN_88,
                S0=>S6,
                S1=>S7,
                S2=>S8);
   
   XLXI_40 : CLA3_MUSER_CL15
      port map (A0=>A9,
                A1=>A10,
                A2=>A11,
                B0=>XLXN_80,
                B1=>XLXN_77,
                B2=>XLXN_75,
                C0=>XLXN_88,
                C3=>XLXN_62,
                S0=>S9,
                S1=>S10,
                S2=>S11);
   
end BEHAVIORAL;


