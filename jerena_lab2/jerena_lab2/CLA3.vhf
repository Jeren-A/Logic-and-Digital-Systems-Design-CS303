--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CLA3.vhf
-- /___/   /\     Timestamp : 12/01/2020 15:09:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/suuser/Xilinx/jerena_lab3/CLA3.vhf -w C:/Users/suuser/Xilinx/jerena_lab3/CLA3.sch
--Design Name: CLA3
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

entity CLA_MUSER_CLA3 is
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
end CLA_MUSER_CLA3;

architecture BEHAVIORAL of CLA_MUSER_CLA3 is
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

entity CLA3 is
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
end CLA3;

architecture BEHAVIORAL of CLA3 is
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
   
   component CLA_MUSER_CLA3
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
   
   XLXI_12 : CLA_MUSER_CLA3
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


