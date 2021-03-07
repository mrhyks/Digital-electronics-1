-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Mar  6 00:36:02 2021
-- Host        : DESKTOP-DMSRP3S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Test/Documents/mrhyks/Digital-electronics-1/Labs/04-segment/new_display/new_display.sim/sim_1/impl/func/xsim/tb_top_func_impl.vhd
-- Design      : hex_7seg
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_7seg is
  port (
    hex_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_o : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hex_7seg : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of hex_7seg : entity is "4a40de20";
end hex_7seg;

architecture STRUCTURE of hex_7seg is
  signal hex_i_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg_o_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_o_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_o_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_o_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_o_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_o_OBUF[4]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_o_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
begin
\hex_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => hex_i(0),
      O => hex_i_IBUF(0)
    );
\hex_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => hex_i(1),
      O => hex_i_IBUF(1)
    );
\hex_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => hex_i(2),
      O => hex_i_IBUF(2)
    );
\hex_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => hex_i(3),
      O => hex_i_IBUF(3)
    );
\seg_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(0),
      O => seg_o(0)
    );
\seg_o_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(0),
      I2 => hex_i_IBUF(2),
      I3 => hex_i_IBUF(1),
      O => seg_o_OBUF(0)
    );
\seg_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(1),
      O => seg_o(1)
    );
\seg_o_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5910"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(2),
      I2 => hex_i_IBUF(1),
      I3 => hex_i_IBUF(0),
      O => seg_o_OBUF(1)
    );
\seg_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(2),
      O => seg_o(2)
    );
\seg_o_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(1),
      I2 => hex_i_IBUF(2),
      I3 => hex_i_IBUF(0),
      O => seg_o_OBUF(2)
    );
\seg_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(3),
      O => seg_o(3)
    );
\seg_o_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(2),
      I2 => hex_i_IBUF(0),
      I3 => hex_i_IBUF(1),
      O => seg_o_OBUF(3)
    );
\seg_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(4),
      O => seg_o(4)
    );
\seg_o_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(0),
      I2 => hex_i_IBUF(1),
      I3 => hex_i_IBUF(2),
      O => seg_o_OBUF(4)
    );
\seg_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(5),
      O => seg_o(5)
    );
\seg_o_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(2),
      I2 => hex_i_IBUF(0),
      I3 => hex_i_IBUF(1),
      O => seg_o_OBUF(5)
    );
\seg_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_o_OBUF(6),
      O => seg_o(6)
    );
\seg_o_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2090"
    )
        port map (
      I0 => hex_i_IBUF(3),
      I1 => hex_i_IBUF(1),
      I2 => hex_i_IBUF(0),
      I3 => hex_i_IBUF(2),
      O => seg_o_OBUF(6)
    );
end STRUCTURE;
