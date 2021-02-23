--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FA_drc.vhf
-- /___/   /\     Timestamp : 11/30/2020 17:30:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl FA_drc.vhf -w C:/Users/suuser/Xilinx/jerena_lab3/FA.sch
--Design Name: FA
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

entity FA is
   port ( Ai  : in    std_logic; 
          Bi  : in    std_logic; 
          Ci  : in    std_logic; 
          Ci1 : out   std_logic; 
          Si  : out   std_logic);
end FA;

architecture BEHAVIORAL of FA is
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


