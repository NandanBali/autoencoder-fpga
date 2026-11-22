-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Nov 23 00:54:50 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vae_sender_cycles_0_sim_netlist.vhdl
-- Design      : vae_sender_cycles_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter is
  port (
    count : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter is
  signal clear : STD_LOGIC;
  signal \^count\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[35]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[39]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[43]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[47]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[51]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[55]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[59]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[63]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[7]_i_1\ : label is 11;
begin
  count(63 downto 0) <= \^count\(63 downto 0);
\count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => \count[3]_i_2_n_0\
    );
\count[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => clear
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_7\,
      Q => \^count\(0),
      R => clear
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_5\,
      Q => \^count\(10),
      R => clear
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_4\,
      Q => \^count\(11),
      R => clear
    );
\count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[7]_i_1_n_0\,
      CO(3) => \count_reg[11]_i_1_n_0\,
      CO(2) => \count_reg[11]_i_1_n_1\,
      CO(1) => \count_reg[11]_i_1_n_2\,
      CO(0) => \count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[11]_i_1_n_4\,
      O(2) => \count_reg[11]_i_1_n_5\,
      O(1) => \count_reg[11]_i_1_n_6\,
      O(0) => \count_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^count\(11 downto 8)
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[15]_i_1_n_7\,
      Q => \^count\(12),
      R => clear
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[15]_i_1_n_6\,
      Q => \^count\(13),
      R => clear
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[15]_i_1_n_5\,
      Q => \^count\(14),
      R => clear
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[15]_i_1_n_4\,
      Q => \^count\(15),
      R => clear
    );
\count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[11]_i_1_n_0\,
      CO(3) => \count_reg[15]_i_1_n_0\,
      CO(2) => \count_reg[15]_i_1_n_1\,
      CO(1) => \count_reg[15]_i_1_n_2\,
      CO(0) => \count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[15]_i_1_n_4\,
      O(2) => \count_reg[15]_i_1_n_5\,
      O(1) => \count_reg[15]_i_1_n_6\,
      O(0) => \count_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^count\(15 downto 12)
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[19]_i_1_n_7\,
      Q => \^count\(16),
      R => clear
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[19]_i_1_n_6\,
      Q => \^count\(17),
      R => clear
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[19]_i_1_n_5\,
      Q => \^count\(18),
      R => clear
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[19]_i_1_n_4\,
      Q => \^count\(19),
      R => clear
    );
\count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[15]_i_1_n_0\,
      CO(3) => \count_reg[19]_i_1_n_0\,
      CO(2) => \count_reg[19]_i_1_n_1\,
      CO(1) => \count_reg[19]_i_1_n_2\,
      CO(0) => \count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[19]_i_1_n_4\,
      O(2) => \count_reg[19]_i_1_n_5\,
      O(1) => \count_reg[19]_i_1_n_6\,
      O(0) => \count_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^count\(19 downto 16)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_6\,
      Q => \^count\(1),
      R => clear
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[23]_i_1_n_7\,
      Q => \^count\(20),
      R => clear
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[23]_i_1_n_6\,
      Q => \^count\(21),
      R => clear
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[23]_i_1_n_5\,
      Q => \^count\(22),
      R => clear
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[23]_i_1_n_4\,
      Q => \^count\(23),
      R => clear
    );
\count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[19]_i_1_n_0\,
      CO(3) => \count_reg[23]_i_1_n_0\,
      CO(2) => \count_reg[23]_i_1_n_1\,
      CO(1) => \count_reg[23]_i_1_n_2\,
      CO(0) => \count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[23]_i_1_n_4\,
      O(2) => \count_reg[23]_i_1_n_5\,
      O(1) => \count_reg[23]_i_1_n_6\,
      O(0) => \count_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^count\(23 downto 20)
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[27]_i_1_n_7\,
      Q => \^count\(24),
      R => clear
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[27]_i_1_n_6\,
      Q => \^count\(25),
      R => clear
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[27]_i_1_n_5\,
      Q => \^count\(26),
      R => clear
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[27]_i_1_n_4\,
      Q => \^count\(27),
      R => clear
    );
\count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[23]_i_1_n_0\,
      CO(3) => \count_reg[27]_i_1_n_0\,
      CO(2) => \count_reg[27]_i_1_n_1\,
      CO(1) => \count_reg[27]_i_1_n_2\,
      CO(0) => \count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[27]_i_1_n_4\,
      O(2) => \count_reg[27]_i_1_n_5\,
      O(1) => \count_reg[27]_i_1_n_6\,
      O(0) => \count_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^count\(27 downto 24)
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_1_n_7\,
      Q => \^count\(28),
      R => clear
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_1_n_6\,
      Q => \^count\(29),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_5\,
      Q => \^count\(2),
      R => clear
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_1_n_5\,
      Q => \^count\(30),
      R => clear
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[31]_i_1_n_4\,
      Q => \^count\(31),
      R => clear
    );
\count_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[27]_i_1_n_0\,
      CO(3) => \count_reg[31]_i_1_n_0\,
      CO(2) => \count_reg[31]_i_1_n_1\,
      CO(1) => \count_reg[31]_i_1_n_2\,
      CO(0) => \count_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[31]_i_1_n_4\,
      O(2) => \count_reg[31]_i_1_n_5\,
      O(1) => \count_reg[31]_i_1_n_6\,
      O(0) => \count_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^count\(31 downto 28)
    );
\count_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[35]_i_1_n_7\,
      Q => \^count\(32),
      R => clear
    );
\count_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[35]_i_1_n_6\,
      Q => \^count\(33),
      R => clear
    );
\count_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[35]_i_1_n_5\,
      Q => \^count\(34),
      R => clear
    );
\count_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[35]_i_1_n_4\,
      Q => \^count\(35),
      R => clear
    );
\count_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[31]_i_1_n_0\,
      CO(3) => \count_reg[35]_i_1_n_0\,
      CO(2) => \count_reg[35]_i_1_n_1\,
      CO(1) => \count_reg[35]_i_1_n_2\,
      CO(0) => \count_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[35]_i_1_n_4\,
      O(2) => \count_reg[35]_i_1_n_5\,
      O(1) => \count_reg[35]_i_1_n_6\,
      O(0) => \count_reg[35]_i_1_n_7\,
      S(3 downto 0) => \^count\(35 downto 32)
    );
\count_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[39]_i_1_n_7\,
      Q => \^count\(36),
      R => clear
    );
\count_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[39]_i_1_n_6\,
      Q => \^count\(37),
      R => clear
    );
\count_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[39]_i_1_n_5\,
      Q => \^count\(38),
      R => clear
    );
\count_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[39]_i_1_n_4\,
      Q => \^count\(39),
      R => clear
    );
\count_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[35]_i_1_n_0\,
      CO(3) => \count_reg[39]_i_1_n_0\,
      CO(2) => \count_reg[39]_i_1_n_1\,
      CO(1) => \count_reg[39]_i_1_n_2\,
      CO(0) => \count_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[39]_i_1_n_4\,
      O(2) => \count_reg[39]_i_1_n_5\,
      O(1) => \count_reg[39]_i_1_n_6\,
      O(0) => \count_reg[39]_i_1_n_7\,
      S(3 downto 0) => \^count\(39 downto 36)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_4\,
      Q => \^count\(3),
      R => clear
    );
\count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[3]_i_1_n_0\,
      CO(2) => \count_reg[3]_i_1_n_1\,
      CO(1) => \count_reg[3]_i_1_n_2\,
      CO(0) => \count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[3]_i_1_n_4\,
      O(2) => \count_reg[3]_i_1_n_5\,
      O(1) => \count_reg[3]_i_1_n_6\,
      O(0) => \count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^count\(3 downto 1),
      S(0) => \count[3]_i_2_n_0\
    );
\count_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[43]_i_1_n_7\,
      Q => \^count\(40),
      R => clear
    );
\count_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[43]_i_1_n_6\,
      Q => \^count\(41),
      R => clear
    );
\count_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[43]_i_1_n_5\,
      Q => \^count\(42),
      R => clear
    );
\count_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[43]_i_1_n_4\,
      Q => \^count\(43),
      R => clear
    );
\count_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[39]_i_1_n_0\,
      CO(3) => \count_reg[43]_i_1_n_0\,
      CO(2) => \count_reg[43]_i_1_n_1\,
      CO(1) => \count_reg[43]_i_1_n_2\,
      CO(0) => \count_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[43]_i_1_n_4\,
      O(2) => \count_reg[43]_i_1_n_5\,
      O(1) => \count_reg[43]_i_1_n_6\,
      O(0) => \count_reg[43]_i_1_n_7\,
      S(3 downto 0) => \^count\(43 downto 40)
    );
\count_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[47]_i_1_n_7\,
      Q => \^count\(44),
      R => clear
    );
\count_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[47]_i_1_n_6\,
      Q => \^count\(45),
      R => clear
    );
\count_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[47]_i_1_n_5\,
      Q => \^count\(46),
      R => clear
    );
\count_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[47]_i_1_n_4\,
      Q => \^count\(47),
      R => clear
    );
\count_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[43]_i_1_n_0\,
      CO(3) => \count_reg[47]_i_1_n_0\,
      CO(2) => \count_reg[47]_i_1_n_1\,
      CO(1) => \count_reg[47]_i_1_n_2\,
      CO(0) => \count_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[47]_i_1_n_4\,
      O(2) => \count_reg[47]_i_1_n_5\,
      O(1) => \count_reg[47]_i_1_n_6\,
      O(0) => \count_reg[47]_i_1_n_7\,
      S(3 downto 0) => \^count\(47 downto 44)
    );
\count_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[51]_i_1_n_7\,
      Q => \^count\(48),
      R => clear
    );
\count_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[51]_i_1_n_6\,
      Q => \^count\(49),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_7\,
      Q => \^count\(4),
      R => clear
    );
\count_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[51]_i_1_n_5\,
      Q => \^count\(50),
      R => clear
    );
\count_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[51]_i_1_n_4\,
      Q => \^count\(51),
      R => clear
    );
\count_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[47]_i_1_n_0\,
      CO(3) => \count_reg[51]_i_1_n_0\,
      CO(2) => \count_reg[51]_i_1_n_1\,
      CO(1) => \count_reg[51]_i_1_n_2\,
      CO(0) => \count_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[51]_i_1_n_4\,
      O(2) => \count_reg[51]_i_1_n_5\,
      O(1) => \count_reg[51]_i_1_n_6\,
      O(0) => \count_reg[51]_i_1_n_7\,
      S(3 downto 0) => \^count\(51 downto 48)
    );
\count_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[55]_i_1_n_7\,
      Q => \^count\(52),
      R => clear
    );
\count_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[55]_i_1_n_6\,
      Q => \^count\(53),
      R => clear
    );
\count_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[55]_i_1_n_5\,
      Q => \^count\(54),
      R => clear
    );
\count_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[55]_i_1_n_4\,
      Q => \^count\(55),
      R => clear
    );
\count_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[51]_i_1_n_0\,
      CO(3) => \count_reg[55]_i_1_n_0\,
      CO(2) => \count_reg[55]_i_1_n_1\,
      CO(1) => \count_reg[55]_i_1_n_2\,
      CO(0) => \count_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[55]_i_1_n_4\,
      O(2) => \count_reg[55]_i_1_n_5\,
      O(1) => \count_reg[55]_i_1_n_6\,
      O(0) => \count_reg[55]_i_1_n_7\,
      S(3 downto 0) => \^count\(55 downto 52)
    );
\count_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[59]_i_1_n_7\,
      Q => \^count\(56),
      R => clear
    );
\count_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[59]_i_1_n_6\,
      Q => \^count\(57),
      R => clear
    );
\count_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[59]_i_1_n_5\,
      Q => \^count\(58),
      R => clear
    );
\count_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[59]_i_1_n_4\,
      Q => \^count\(59),
      R => clear
    );
\count_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[55]_i_1_n_0\,
      CO(3) => \count_reg[59]_i_1_n_0\,
      CO(2) => \count_reg[59]_i_1_n_1\,
      CO(1) => \count_reg[59]_i_1_n_2\,
      CO(0) => \count_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[59]_i_1_n_4\,
      O(2) => \count_reg[59]_i_1_n_5\,
      O(1) => \count_reg[59]_i_1_n_6\,
      O(0) => \count_reg[59]_i_1_n_7\,
      S(3 downto 0) => \^count\(59 downto 56)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_6\,
      Q => \^count\(5),
      R => clear
    );
\count_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[63]_i_2_n_7\,
      Q => \^count\(60),
      R => clear
    );
\count_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[63]_i_2_n_6\,
      Q => \^count\(61),
      R => clear
    );
\count_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[63]_i_2_n_5\,
      Q => \^count\(62),
      R => clear
    );
\count_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[63]_i_2_n_4\,
      Q => \^count\(63),
      R => clear
    );
\count_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[59]_i_1_n_0\,
      CO(3) => \NLW_count_reg[63]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[63]_i_2_n_1\,
      CO(1) => \count_reg[63]_i_2_n_2\,
      CO(0) => \count_reg[63]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[63]_i_2_n_4\,
      O(2) => \count_reg[63]_i_2_n_5\,
      O(1) => \count_reg[63]_i_2_n_6\,
      O(0) => \count_reg[63]_i_2_n_7\,
      S(3 downto 0) => \^count\(63 downto 60)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_5\,
      Q => \^count\(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_4\,
      Q => \^count\(7),
      R => clear
    );
\count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[3]_i_1_n_0\,
      CO(3) => \count_reg[7]_i_1_n_0\,
      CO(2) => \count_reg[7]_i_1_n_1\,
      CO(1) => \count_reg[7]_i_1_n_2\,
      CO(0) => \count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[7]_i_1_n_4\,
      O(2) => \count_reg[7]_i_1_n_5\,
      O(1) => \count_reg[7]_i_1_n_6\,
      O(0) => \count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^count\(7 downto 4)
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_7\,
      Q => \^count\(8),
      R => clear
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_6\,
      Q => \^count\(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 63 downto 0 );
    not_empty : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vae_sender_cycles_0,cycle_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cycle_counter,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  not_empty <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter
     port map (
      clk => clk,
      count(63 downto 0) => count(63 downto 0),
      resetn => resetn
    );
end STRUCTURE;
