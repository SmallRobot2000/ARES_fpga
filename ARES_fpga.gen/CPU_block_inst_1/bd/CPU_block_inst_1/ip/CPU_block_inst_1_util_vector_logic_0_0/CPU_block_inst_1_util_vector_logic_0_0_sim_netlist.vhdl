-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Jul 26 21:12:34 2026
-- Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top CPU_block_inst_1_util_vector_logic_0_0 -prefix
--               CPU_block_inst_1_util_vector_logic_0_0_ CPU_block_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : CPU_block_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_block_inst_1_util_vector_logic_0_0_util_vector_logic_v2_0_5_util_vector_logic is
  port (
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end CPU_block_inst_1_util_vector_logic_0_0_util_vector_logic_v2_0_5_util_vector_logic;

architecture STRUCTURE of CPU_block_inst_1_util_vector_logic_0_0_util_vector_logic_v2_0_5_util_vector_logic is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
\Res[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(1),
      O => Res(1)
    );
\Res[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(2),
      O => Res(2)
    );
\Res[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(3),
      O => Res(3)
    );
\Res[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(4),
      O => Res(4)
    );
\Res[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(5),
      O => Res(5)
    );
\Res[6]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(6),
      O => Res(6)
    );
\Res[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(7),
      O => Res(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_block_inst_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_block_inst_1_util_vector_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_block_inst_1_util_vector_logic_0_0 : entity is "CPU_block_util_vector_logic_0_0,util_vector_logic_v2_0_5_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of CPU_block_inst_1_util_vector_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of CPU_block_inst_1_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_5_util_vector_logic,Vivado 2025.2";
end CPU_block_inst_1_util_vector_logic_0_0;

architecture STRUCTURE of CPU_block_inst_1_util_vector_logic_0_0 is
begin
inst: entity work.CPU_block_inst_1_util_vector_logic_0_0_util_vector_logic_v2_0_5_util_vector_logic
     port map (
      Op1(7 downto 0) => Op1(7 downto 0),
      Res(7 downto 0) => Res(7 downto 0)
    );
end STRUCTURE;
