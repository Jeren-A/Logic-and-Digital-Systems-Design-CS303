--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: schem_synthesis.vhd
-- /___/   /\     Timestamp: Wed Dec 02 03:36:57 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm schem -w -dir netgen/synthesis -ofmt vhdl -sim schem.ngc schem_synthesis.vhd 
-- Device	: xc3s100e-4-tq144
-- Input file	: schem.ngc
-- Output file	: C:\Users\suuser\Xilinx\jerena_lab2\netgen\synthesis\schem_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: schem
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity schem is
  port (
    B8 : in STD_LOGIC := 'X'; 
    B9 : in STD_LOGIC := 'X'; 
    B10 : in STD_LOGIC := 'X'; 
    B11 : in STD_LOGIC := 'X'; 
    B12 : in STD_LOGIC := 'X'; 
    B13 : in STD_LOGIC := 'X'; 
    B14 : in STD_LOGIC := 'X'; 
    S10 : out STD_LOGIC; 
    S11 : out STD_LOGIC; 
    S12 : out STD_LOGIC; 
    S13 : out STD_LOGIC; 
    S14 : out STD_LOGIC; 
    C : out STD_LOGIC; 
    S0 : out STD_LOGIC; 
    S1 : out STD_LOGIC; 
    S2 : out STD_LOGIC; 
    S3 : out STD_LOGIC; 
    S4 : out STD_LOGIC; 
    S5 : out STD_LOGIC; 
    S6 : out STD_LOGIC; 
    S7 : out STD_LOGIC; 
    S8 : out STD_LOGIC; 
    S9 : out STD_LOGIC; 
    V : out STD_LOGIC; 
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    A10 : in STD_LOGIC := 'X'; 
    A2 : in STD_LOGIC := 'X'; 
    A11 : in STD_LOGIC := 'X'; 
    A3 : in STD_LOGIC := 'X'; 
    A12 : in STD_LOGIC := 'X'; 
    A4 : in STD_LOGIC := 'X'; 
    A13 : in STD_LOGIC := 'X'; 
    A5 : in STD_LOGIC := 'X'; 
    B0 : in STD_LOGIC := 'X'; 
    A14 : in STD_LOGIC := 'X'; 
    A6 : in STD_LOGIC := 'X'; 
    B1 : in STD_LOGIC := 'X'; 
    A7 : in STD_LOGIC := 'X'; 
    B2 : in STD_LOGIC := 'X'; 
    A8 : in STD_LOGIC := 'X'; 
    B3 : in STD_LOGIC := 'X'; 
    A9 : in STD_LOGIC := 'X'; 
    B4 : in STD_LOGIC := 'X'; 
    B5 : in STD_LOGIC := 'X'; 
    C0 : in STD_LOGIC := 'X'; 
    B6 : in STD_LOGIC := 'X'; 
    B7 : in STD_LOGIC := 'X' 
  );
end schem;

architecture Structure of schem is
  signal A0_IBUF_1 : STD_LOGIC; 
  signal A10_IBUF_4 : STD_LOGIC; 
  signal A11_IBUF_6 : STD_LOGIC; 
  signal A12_IBUF_8 : STD_LOGIC; 
  signal A13_IBUF_10 : STD_LOGIC; 
  signal A14_IBUF_12 : STD_LOGIC; 
  signal A1_IBUF_13 : STD_LOGIC; 
  signal A2_IBUF_15 : STD_LOGIC; 
  signal A3_IBUF_17 : STD_LOGIC; 
  signal A4_IBUF_19 : STD_LOGIC; 
  signal A5_IBUF_21 : STD_LOGIC; 
  signal A6_IBUF_23 : STD_LOGIC; 
  signal A7_IBUF_25 : STD_LOGIC; 
  signal A8_IBUF_27 : STD_LOGIC; 
  signal A9_IBUF_29 : STD_LOGIC; 
  signal B0_IBUF_31 : STD_LOGIC; 
  signal B10_IBUF_34 : STD_LOGIC; 
  signal B11_IBUF_36 : STD_LOGIC; 
  signal B12_IBUF_38 : STD_LOGIC; 
  signal B13_IBUF_40 : STD_LOGIC; 
  signal B14_IBUF_42 : STD_LOGIC; 
  signal B1_IBUF_43 : STD_LOGIC; 
  signal B2_IBUF_45 : STD_LOGIC; 
  signal B3_IBUF_47 : STD_LOGIC; 
  signal B4_IBUF_49 : STD_LOGIC; 
  signal B5_IBUF_51 : STD_LOGIC; 
  signal B6_IBUF_53 : STD_LOGIC; 
  signal B7_IBUF_55 : STD_LOGIC; 
  signal B8_IBUF_57 : STD_LOGIC; 
  signal B9_IBUF_59 : STD_LOGIC; 
  signal C0_IBUF_62 : STD_LOGIC; 
  signal C_OBUF_63 : STD_LOGIC; 
  signal S0_OBUF_65 : STD_LOGIC; 
  signal S10_OBUF_68 : STD_LOGIC; 
  signal S11_OBUF_70 : STD_LOGIC; 
  signal S12_OBUF_72 : STD_LOGIC; 
  signal S13_OBUF_74 : STD_LOGIC; 
  signal S14_OBUF_76 : STD_LOGIC; 
  signal S1_OBUF_77 : STD_LOGIC; 
  signal S2_OBUF_79 : STD_LOGIC; 
  signal S3_OBUF_81 : STD_LOGIC; 
  signal S4_OBUF_83 : STD_LOGIC; 
  signal S5_OBUF_85 : STD_LOGIC; 
  signal S6_OBUF_87 : STD_LOGIC; 
  signal S7_OBUF_89 : STD_LOGIC; 
  signal S8_OBUF_91 : STD_LOGIC; 
  signal S9_OBUF_93 : STD_LOGIC; 
  signal V_OBUF_95 : STD_LOGIC; 
  signal XLXI_1_XLXN_10 : STD_LOGIC; 
  signal XLXI_1_XLXN_11 : STD_LOGIC; 
  signal XLXI_1_XLXN_9 : STD_LOGIC; 
  signal XLXI_2_XLXN_10 : STD_LOGIC; 
  signal XLXI_2_XLXN_11 : STD_LOGIC; 
  signal XLXI_2_XLXN_9 : STD_LOGIC; 
  signal XLXI_30_XLXN_10 : STD_LOGIC; 
  signal XLXI_30_XLXN_11 : STD_LOGIC; 
  signal XLXI_30_XLXN_9 : STD_LOGIC; 
  signal XLXI_33_XLXN_10 : STD_LOGIC; 
  signal XLXI_33_XLXN_11 : STD_LOGIC; 
  signal XLXI_33_XLXN_9 : STD_LOGIC; 
  signal XLXI_34_XLXN_10 : STD_LOGIC; 
  signal XLXI_34_XLXN_11 : STD_LOGIC; 
  signal XLXI_34_XLXN_9 : STD_LOGIC; 
  signal XLXI_37_XLXN_10 : STD_LOGIC; 
  signal XLXI_37_XLXN_11 : STD_LOGIC; 
  signal XLXI_37_XLXN_9 : STD_LOGIC; 
  signal XLXI_48_XLXN_10 : STD_LOGIC; 
  signal XLXI_48_XLXN_11 : STD_LOGIC; 
  signal XLXI_48_XLXN_9 : STD_LOGIC; 
  signal XLXI_51_XLXN_10 : STD_LOGIC; 
  signal XLXI_51_XLXN_11 : STD_LOGIC; 
  signal XLXI_51_XLXN_9 : STD_LOGIC; 
  signal XLXI_54_XLXN_10 : STD_LOGIC; 
  signal XLXI_54_XLXN_11 : STD_LOGIC; 
  signal XLXI_54_XLXN_9 : STD_LOGIC; 
  signal XLXI_55_XLXN_10 : STD_LOGIC; 
  signal XLXI_55_XLXN_11 : STD_LOGIC; 
  signal XLXI_55_XLXN_9 : STD_LOGIC; 
  signal XLXI_57_XLXN_10 : STD_LOGIC; 
  signal XLXI_57_XLXN_11 : STD_LOGIC; 
  signal XLXI_57_XLXN_9 : STD_LOGIC; 
  signal XLXI_60_XLXN_10 : STD_LOGIC; 
  signal XLXI_60_XLXN_11 : STD_LOGIC; 
  signal XLXI_60_XLXN_9 : STD_LOGIC; 
  signal XLXI_63_XLXN_10 : STD_LOGIC; 
  signal XLXI_63_XLXN_11 : STD_LOGIC; 
  signal XLXI_63_XLXN_9 : STD_LOGIC; 
  signal XLXI_64_XLXN_10 : STD_LOGIC; 
  signal XLXI_64_XLXN_11 : STD_LOGIC; 
  signal XLXI_64_XLXN_9 : STD_LOGIC; 
  signal XLXI_65_XLXN_10 : STD_LOGIC; 
  signal XLXI_65_XLXN_11 : STD_LOGIC; 
  signal XLXI_65_XLXN_9 : STD_LOGIC; 
  signal XLXN_1 : STD_LOGIC; 
  signal XLXN_100 : STD_LOGIC; 
  signal XLXN_101 : STD_LOGIC; 
  signal XLXN_104 : STD_LOGIC; 
  signal XLXN_107 : STD_LOGIC; 
  signal XLXN_109 : STD_LOGIC; 
  signal XLXN_112 : STD_LOGIC; 
  signal XLXN_2 : STD_LOGIC; 
  signal XLXN_22 : STD_LOGIC; 
  signal XLXN_38 : STD_LOGIC; 
  signal XLXN_43 : STD_LOGIC; 
  signal XLXN_44 : STD_LOGIC; 
  signal XLXN_45 : STD_LOGIC; 
  signal XLXN_48 : STD_LOGIC; 
  signal XLXN_51 : STD_LOGIC; 
  signal XLXN_52 : STD_LOGIC; 
  signal XLXN_53 : STD_LOGIC; 
  signal XLXN_56 : STD_LOGIC; 
  signal XLXN_79 : STD_LOGIC; 
  signal XLXN_80 : STD_LOGIC; 
  signal XLXN_81 : STD_LOGIC; 
  signal XLXN_84 : STD_LOGIC; 
  signal XLXN_87 : STD_LOGIC; 
  signal XLXN_88 : STD_LOGIC; 
  signal XLXN_89 : STD_LOGIC; 
  signal XLXN_92 : STD_LOGIC; 
  signal XLXN_95 : STD_LOGIC; 
  signal XLXN_96 : STD_LOGIC; 
  signal XLXN_99 : STD_LOGIC; 
begin
  XLXI_28 : XOR2
    port map (
      I0 => B0_IBUF_31,
      I1 => C0_IBUF_62,
      O => XLXN_22
    );
  XLXI_29 : XOR2
    port map (
      I0 => B1_IBUF_43,
      I1 => C0_IBUF_62,
      O => XLXN_38
    );
  XLXI_31 : XOR2
    port map (
      I0 => B2_IBUF_45,
      I1 => C0_IBUF_62,
      O => XLXN_45
    );
  XLXI_32 : XOR2
    port map (
      I0 => B3_IBUF_47,
      I1 => C0_IBUF_62,
      O => XLXN_48
    );
  XLXI_35 : XOR2
    port map (
      I0 => B4_IBUF_49,
      I1 => C0_IBUF_62,
      O => XLXN_53
    );
  XLXI_36 : XOR2
    port map (
      I0 => B5_IBUF_51,
      I1 => C0_IBUF_62,
      O => XLXN_56
    );
  XLXI_49 : XOR2
    port map (
      I0 => B6_IBUF_53,
      I1 => C0_IBUF_62,
      O => XLXN_81
    );
  XLXI_50 : XOR2
    port map (
      I0 => B7_IBUF_55,
      I1 => C0_IBUF_62,
      O => XLXN_84
    );
  XLXI_52 : XOR2
    port map (
      I0 => B8_IBUF_57,
      I1 => C0_IBUF_62,
      O => XLXN_89
    );
  XLXI_53 : XOR2
    port map (
      I0 => B9_IBUF_59,
      I1 => C0_IBUF_62,
      O => XLXN_92
    );
  XLXI_56 : XOR2
    port map (
      I0 => B10_IBUF_34,
      I1 => C0_IBUF_62,
      O => XLXN_96
    );
  XLXI_58 : XOR2
    port map (
      I0 => B11_IBUF_36,
      I1 => C0_IBUF_62,
      O => XLXN_101
    );
  XLXI_59 : XOR2
    port map (
      I0 => B12_IBUF_38,
      I1 => C0_IBUF_62,
      O => XLXN_104
    );
  XLXI_61 : XOR2
    port map (
      I0 => B13_IBUF_40,
      I1 => C0_IBUF_62,
      O => XLXN_109
    );
  XLXI_62 : XOR2
    port map (
      I0 => B14_IBUF_42,
      I1 => C0_IBUF_62,
      O => XLXN_112
    );
  XLXI_66 : XOR2
    port map (
      I0 => C_OBUF_63,
      I1 => XLXN_107,
      O => V_OBUF_95
    );
  XLXI_65_XLXI_5 : OR2
    port map (
      I0 => XLXI_65_XLXN_10,
      I1 => XLXI_65_XLXN_9,
      O => XLXN_95
    );
  XLXI_65_XLXI_4 : AND2
    port map (
      I0 => XLXN_88,
      I1 => XLXI_65_XLXN_11,
      O => XLXI_65_XLXN_9
    );
  XLXI_65_XLXI_3 : AND2
    port map (
      I0 => XLXN_96,
      I1 => A10_IBUF_4,
      O => XLXI_65_XLXN_10
    );
  XLXI_65_XLXI_2 : XOR2
    port map (
      I0 => XLXN_88,
      I1 => XLXI_65_XLXN_11,
      O => S10_OBUF_68
    );
  XLXI_65_XLXI_1 : XOR2
    port map (
      I0 => XLXN_96,
      I1 => A10_IBUF_4,
      O => XLXI_65_XLXN_11
    );
  XLXI_64_XLXI_5 : OR2
    port map (
      I0 => XLXI_64_XLXN_10,
      I1 => XLXI_64_XLXN_9,
      O => XLXN_99
    );
  XLXI_64_XLXI_4 : AND2
    port map (
      I0 => XLXN_95,
      I1 => XLXI_64_XLXN_11,
      O => XLXI_64_XLXN_9
    );
  XLXI_64_XLXI_3 : AND2
    port map (
      I0 => XLXN_101,
      I1 => A11_IBUF_6,
      O => XLXI_64_XLXN_10
    );
  XLXI_64_XLXI_2 : XOR2
    port map (
      I0 => XLXN_95,
      I1 => XLXI_64_XLXN_11,
      O => S11_OBUF_70
    );
  XLXI_64_XLXI_1 : XOR2
    port map (
      I0 => XLXN_101,
      I1 => A11_IBUF_6,
      O => XLXI_64_XLXN_11
    );
  XLXI_63_XLXI_5 : OR2
    port map (
      I0 => XLXI_63_XLXN_10,
      I1 => XLXI_63_XLXN_9,
      O => XLXN_107
    );
  XLXI_63_XLXI_4 : AND2
    port map (
      I0 => XLXN_100,
      I1 => XLXI_63_XLXN_11,
      O => XLXI_63_XLXN_9
    );
  XLXI_63_XLXI_3 : AND2
    port map (
      I0 => XLXN_109,
      I1 => A13_IBUF_10,
      O => XLXI_63_XLXN_10
    );
  XLXI_63_XLXI_2 : XOR2
    port map (
      I0 => XLXN_100,
      I1 => XLXI_63_XLXN_11,
      O => S13_OBUF_74
    );
  XLXI_63_XLXI_1 : XOR2
    port map (
      I0 => XLXN_109,
      I1 => A13_IBUF_10,
      O => XLXI_63_XLXN_11
    );
  XLXI_60_XLXI_5 : OR2
    port map (
      I0 => XLXI_60_XLXN_10,
      I1 => XLXI_60_XLXN_9,
      O => C_OBUF_63
    );
  XLXI_60_XLXI_4 : AND2
    port map (
      I0 => XLXN_107,
      I1 => XLXI_60_XLXN_11,
      O => XLXI_60_XLXN_9
    );
  XLXI_60_XLXI_3 : AND2
    port map (
      I0 => XLXN_112,
      I1 => A14_IBUF_12,
      O => XLXI_60_XLXN_10
    );
  XLXI_60_XLXI_2 : XOR2
    port map (
      I0 => XLXN_107,
      I1 => XLXI_60_XLXN_11,
      O => S14_OBUF_76
    );
  XLXI_60_XLXI_1 : XOR2
    port map (
      I0 => XLXN_112,
      I1 => A14_IBUF_12,
      O => XLXI_60_XLXN_11
    );
  XLXI_57_XLXI_5 : OR2
    port map (
      I0 => XLXI_57_XLXN_10,
      I1 => XLXI_57_XLXN_9,
      O => XLXN_100
    );
  XLXI_57_XLXI_4 : AND2
    port map (
      I0 => XLXN_99,
      I1 => XLXI_57_XLXN_11,
      O => XLXI_57_XLXN_9
    );
  XLXI_57_XLXI_3 : AND2
    port map (
      I0 => XLXN_104,
      I1 => A12_IBUF_8,
      O => XLXI_57_XLXN_10
    );
  XLXI_57_XLXI_2 : XOR2
    port map (
      I0 => XLXN_99,
      I1 => XLXI_57_XLXN_11,
      O => S12_OBUF_72
    );
  XLXI_57_XLXI_1 : XOR2
    port map (
      I0 => XLXN_104,
      I1 => A12_IBUF_8,
      O => XLXI_57_XLXN_11
    );
  XLXI_55_XLXI_5 : OR2
    port map (
      I0 => XLXI_55_XLXN_10,
      I1 => XLXI_55_XLXN_9,
      O => XLXN_79
    );
  XLXI_55_XLXI_4 : AND2
    port map (
      I0 => XLXN_52,
      I1 => XLXI_55_XLXN_11,
      O => XLXI_55_XLXN_9
    );
  XLXI_55_XLXI_3 : AND2
    port map (
      I0 => XLXN_81,
      I1 => A6_IBUF_23,
      O => XLXI_55_XLXN_10
    );
  XLXI_55_XLXI_2 : XOR2
    port map (
      I0 => XLXN_52,
      I1 => XLXI_55_XLXN_11,
      O => S6_OBUF_87
    );
  XLXI_55_XLXI_1 : XOR2
    port map (
      I0 => XLXN_81,
      I1 => A6_IBUF_23,
      O => XLXI_55_XLXN_11
    );
  XLXI_54_XLXI_5 : OR2
    port map (
      I0 => XLXI_54_XLXN_10,
      I1 => XLXI_54_XLXN_9,
      O => XLXN_87
    );
  XLXI_54_XLXI_4 : AND2
    port map (
      I0 => XLXN_80,
      I1 => XLXI_54_XLXN_11,
      O => XLXI_54_XLXN_9
    );
  XLXI_54_XLXI_3 : AND2
    port map (
      I0 => XLXN_89,
      I1 => A8_IBUF_27,
      O => XLXI_54_XLXN_10
    );
  XLXI_54_XLXI_2 : XOR2
    port map (
      I0 => XLXN_80,
      I1 => XLXI_54_XLXN_11,
      O => S8_OBUF_91
    );
  XLXI_54_XLXI_1 : XOR2
    port map (
      I0 => XLXN_89,
      I1 => A8_IBUF_27,
      O => XLXI_54_XLXN_11
    );
  XLXI_51_XLXI_5 : OR2
    port map (
      I0 => XLXI_51_XLXN_10,
      I1 => XLXI_51_XLXN_9,
      O => XLXN_88
    );
  XLXI_51_XLXI_4 : AND2
    port map (
      I0 => XLXN_87,
      I1 => XLXI_51_XLXN_11,
      O => XLXI_51_XLXN_9
    );
  XLXI_51_XLXI_3 : AND2
    port map (
      I0 => XLXN_92,
      I1 => A9_IBUF_29,
      O => XLXI_51_XLXN_10
    );
  XLXI_51_XLXI_2 : XOR2
    port map (
      I0 => XLXN_87,
      I1 => XLXI_51_XLXN_11,
      O => S9_OBUF_93
    );
  XLXI_51_XLXI_1 : XOR2
    port map (
      I0 => XLXN_92,
      I1 => A9_IBUF_29,
      O => XLXI_51_XLXN_11
    );
  XLXI_48_XLXI_5 : OR2
    port map (
      I0 => XLXI_48_XLXN_10,
      I1 => XLXI_48_XLXN_9,
      O => XLXN_80
    );
  XLXI_48_XLXI_4 : AND2
    port map (
      I0 => XLXN_79,
      I1 => XLXI_48_XLXN_11,
      O => XLXI_48_XLXN_9
    );
  XLXI_48_XLXI_3 : AND2
    port map (
      I0 => XLXN_84,
      I1 => A7_IBUF_25,
      O => XLXI_48_XLXN_10
    );
  XLXI_48_XLXI_2 : XOR2
    port map (
      I0 => XLXN_79,
      I1 => XLXI_48_XLXN_11,
      O => S7_OBUF_89
    );
  XLXI_48_XLXI_1 : XOR2
    port map (
      I0 => XLXN_84,
      I1 => A7_IBUF_25,
      O => XLXI_48_XLXN_11
    );
  XLXI_37_XLXI_5 : OR2
    port map (
      I0 => XLXI_37_XLXN_10,
      I1 => XLXI_37_XLXN_9,
      O => XLXN_51
    );
  XLXI_37_XLXI_4 : AND2
    port map (
      I0 => XLXN_44,
      I1 => XLXI_37_XLXN_11,
      O => XLXI_37_XLXN_9
    );
  XLXI_37_XLXI_3 : AND2
    port map (
      I0 => XLXN_53,
      I1 => A4_IBUF_19,
      O => XLXI_37_XLXN_10
    );
  XLXI_37_XLXI_2 : XOR2
    port map (
      I0 => XLXN_44,
      I1 => XLXI_37_XLXN_11,
      O => S4_OBUF_83
    );
  XLXI_37_XLXI_1 : XOR2
    port map (
      I0 => XLXN_53,
      I1 => A4_IBUF_19,
      O => XLXI_37_XLXN_11
    );
  XLXI_34_XLXI_5 : OR2
    port map (
      I0 => XLXI_34_XLXN_10,
      I1 => XLXI_34_XLXN_9,
      O => XLXN_52
    );
  XLXI_34_XLXI_4 : AND2
    port map (
      I0 => XLXN_51,
      I1 => XLXI_34_XLXN_11,
      O => XLXI_34_XLXN_9
    );
  XLXI_34_XLXI_3 : AND2
    port map (
      I0 => XLXN_56,
      I1 => A5_IBUF_21,
      O => XLXI_34_XLXN_10
    );
  XLXI_34_XLXI_2 : XOR2
    port map (
      I0 => XLXN_51,
      I1 => XLXI_34_XLXN_11,
      O => S5_OBUF_85
    );
  XLXI_34_XLXI_1 : XOR2
    port map (
      I0 => XLXN_56,
      I1 => A5_IBUF_21,
      O => XLXI_34_XLXN_11
    );
  XLXI_33_XLXI_5 : OR2
    port map (
      I0 => XLXI_33_XLXN_10,
      I1 => XLXI_33_XLXN_9,
      O => XLXN_43
    );
  XLXI_33_XLXI_4 : AND2
    port map (
      I0 => XLXN_2,
      I1 => XLXI_33_XLXN_11,
      O => XLXI_33_XLXN_9
    );
  XLXI_33_XLXI_3 : AND2
    port map (
      I0 => XLXN_45,
      I1 => A2_IBUF_15,
      O => XLXI_33_XLXN_10
    );
  XLXI_33_XLXI_2 : XOR2
    port map (
      I0 => XLXN_2,
      I1 => XLXI_33_XLXN_11,
      O => S2_OBUF_79
    );
  XLXI_33_XLXI_1 : XOR2
    port map (
      I0 => XLXN_45,
      I1 => A2_IBUF_15,
      O => XLXI_33_XLXN_11
    );
  XLXI_30_XLXI_5 : OR2
    port map (
      I0 => XLXI_30_XLXN_10,
      I1 => XLXI_30_XLXN_9,
      O => XLXN_44
    );
  XLXI_30_XLXI_4 : AND2
    port map (
      I0 => XLXN_43,
      I1 => XLXI_30_XLXN_11,
      O => XLXI_30_XLXN_9
    );
  XLXI_30_XLXI_3 : AND2
    port map (
      I0 => XLXN_48,
      I1 => A3_IBUF_17,
      O => XLXI_30_XLXN_10
    );
  XLXI_30_XLXI_2 : XOR2
    port map (
      I0 => XLXN_43,
      I1 => XLXI_30_XLXN_11,
      O => S3_OBUF_81
    );
  XLXI_30_XLXI_1 : XOR2
    port map (
      I0 => XLXN_48,
      I1 => A3_IBUF_17,
      O => XLXI_30_XLXN_11
    );
  XLXI_2_XLXI_5 : OR2
    port map (
      I0 => XLXI_2_XLXN_10,
      I1 => XLXI_2_XLXN_9,
      O => XLXN_2
    );
  XLXI_2_XLXI_4 : AND2
    port map (
      I0 => XLXN_1,
      I1 => XLXI_2_XLXN_11,
      O => XLXI_2_XLXN_9
    );
  XLXI_2_XLXI_3 : AND2
    port map (
      I0 => XLXN_38,
      I1 => A1_IBUF_13,
      O => XLXI_2_XLXN_10
    );
  XLXI_2_XLXI_2 : XOR2
    port map (
      I0 => XLXN_1,
      I1 => XLXI_2_XLXN_11,
      O => S1_OBUF_77
    );
  XLXI_2_XLXI_1 : XOR2
    port map (
      I0 => XLXN_38,
      I1 => A1_IBUF_13,
      O => XLXI_2_XLXN_11
    );
  XLXI_1_XLXI_5 : OR2
    port map (
      I0 => XLXI_1_XLXN_10,
      I1 => XLXI_1_XLXN_9,
      O => XLXN_1
    );
  XLXI_1_XLXI_4 : AND2
    port map (
      I0 => C0_IBUF_62,
      I1 => XLXI_1_XLXN_11,
      O => XLXI_1_XLXN_9
    );
  XLXI_1_XLXI_3 : AND2
    port map (
      I0 => XLXN_22,
      I1 => A0_IBUF_1,
      O => XLXI_1_XLXN_10
    );
  XLXI_1_XLXI_2 : XOR2
    port map (
      I0 => C0_IBUF_62,
      I1 => XLXI_1_XLXN_11,
      O => S0_OBUF_65
    );
  XLXI_1_XLXI_1 : XOR2
    port map (
      I0 => XLXN_22,
      I1 => A0_IBUF_1,
      O => XLXI_1_XLXN_11
    );
  B8_IBUF : IBUF
    port map (
      I => B8,
      O => B8_IBUF_57
    );
  B9_IBUF : IBUF
    port map (
      I => B9,
      O => B9_IBUF_59
    );
  B10_IBUF : IBUF
    port map (
      I => B10,
      O => B10_IBUF_34
    );
  B11_IBUF : IBUF
    port map (
      I => B11,
      O => B11_IBUF_36
    );
  B12_IBUF : IBUF
    port map (
      I => B12,
      O => B12_IBUF_38
    );
  B13_IBUF : IBUF
    port map (
      I => B13,
      O => B13_IBUF_40
    );
  B14_IBUF : IBUF
    port map (
      I => B14,
      O => B14_IBUF_42
    );
  A0_IBUF : IBUF
    port map (
      I => A0,
      O => A0_IBUF_1
    );
  A1_IBUF : IBUF
    port map (
      I => A1,
      O => A1_IBUF_13
    );
  A10_IBUF : IBUF
    port map (
      I => A10,
      O => A10_IBUF_4
    );
  A2_IBUF : IBUF
    port map (
      I => A2,
      O => A2_IBUF_15
    );
  A11_IBUF : IBUF
    port map (
      I => A11,
      O => A11_IBUF_6
    );
  A3_IBUF : IBUF
    port map (
      I => A3,
      O => A3_IBUF_17
    );
  A12_IBUF : IBUF
    port map (
      I => A12,
      O => A12_IBUF_8
    );
  A4_IBUF : IBUF
    port map (
      I => A4,
      O => A4_IBUF_19
    );
  A13_IBUF : IBUF
    port map (
      I => A13,
      O => A13_IBUF_10
    );
  A5_IBUF : IBUF
    port map (
      I => A5,
      O => A5_IBUF_21
    );
  B0_IBUF : IBUF
    port map (
      I => B0,
      O => B0_IBUF_31
    );
  A14_IBUF : IBUF
    port map (
      I => A14,
      O => A14_IBUF_12
    );
  A6_IBUF : IBUF
    port map (
      I => A6,
      O => A6_IBUF_23
    );
  B1_IBUF : IBUF
    port map (
      I => B1,
      O => B1_IBUF_43
    );
  A7_IBUF : IBUF
    port map (
      I => A7,
      O => A7_IBUF_25
    );
  B2_IBUF : IBUF
    port map (
      I => B2,
      O => B2_IBUF_45
    );
  A8_IBUF : IBUF
    port map (
      I => A8,
      O => A8_IBUF_27
    );
  B3_IBUF : IBUF
    port map (
      I => B3,
      O => B3_IBUF_47
    );
  A9_IBUF : IBUF
    port map (
      I => A9,
      O => A9_IBUF_29
    );
  B4_IBUF : IBUF
    port map (
      I => B4,
      O => B4_IBUF_49
    );
  B5_IBUF : IBUF
    port map (
      I => B5,
      O => B5_IBUF_51
    );
  C0_IBUF : IBUF
    port map (
      I => C0,
      O => C0_IBUF_62
    );
  B6_IBUF : IBUF
    port map (
      I => B6,
      O => B6_IBUF_53
    );
  B7_IBUF : IBUF
    port map (
      I => B7,
      O => B7_IBUF_55
    );
  S10_OBUF : OBUF
    port map (
      I => S10_OBUF_68,
      O => S10
    );
  S11_OBUF : OBUF
    port map (
      I => S11_OBUF_70,
      O => S11
    );
  S12_OBUF : OBUF
    port map (
      I => S12_OBUF_72,
      O => S12
    );
  S13_OBUF : OBUF
    port map (
      I => S13_OBUF_74,
      O => S13
    );
  S14_OBUF : OBUF
    port map (
      I => S14_OBUF_76,
      O => S14
    );
  C_OBUF : OBUF
    port map (
      I => C_OBUF_63,
      O => C
    );
  S0_OBUF : OBUF
    port map (
      I => S0_OBUF_65,
      O => S0
    );
  S1_OBUF : OBUF
    port map (
      I => S1_OBUF_77,
      O => S1
    );
  S2_OBUF : OBUF
    port map (
      I => S2_OBUF_79,
      O => S2
    );
  S3_OBUF : OBUF
    port map (
      I => S3_OBUF_81,
      O => S3
    );
  S4_OBUF : OBUF
    port map (
      I => S4_OBUF_83,
      O => S4
    );
  S5_OBUF : OBUF
    port map (
      I => S5_OBUF_85,
      O => S5
    );
  S6_OBUF : OBUF
    port map (
      I => S6_OBUF_87,
      O => S6
    );
  S7_OBUF : OBUF
    port map (
      I => S7_OBUF_89,
      O => S7
    );
  S8_OBUF : OBUF
    port map (
      I => S8_OBUF_91,
      O => S8
    );
  S9_OBUF : OBUF
    port map (
      I => S9_OBUF_93,
      O => S9
    );
  V_OBUF : OBUF
    port map (
      I => V_OBUF_95,
      O => V
    );

end Structure;

