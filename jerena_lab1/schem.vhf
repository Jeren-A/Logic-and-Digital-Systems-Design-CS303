--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 10/30/2020 02:31:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/suuser/Xilinx/CS_303/jerena_lab1/schem.vhf -w C:/Users/suuser/Xilinx/CS_303/jerena_lab1/schem.sch
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

entity schem is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          Y : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_9  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : NAND2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_9);
   
   XLXI_2 : NAND2
      port map (I0=>XLXN_9,
                I1=>A,
                O=>XLXN_12);
   
   XLXI_3 : NAND2
      port map (I0=>B,
                I1=>XLXN_9,
                O=>XLXN_13);
   
   XLXI_4 : NAND2
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                O=>Y);
   
end BEHAVIORAL;


