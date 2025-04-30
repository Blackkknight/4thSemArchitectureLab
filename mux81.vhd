----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:37 04/10/2025 
-- Design Name: 
-- Module Name:    mux81 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux81 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux81;

architecture Behavioral of mux81 is
	component mux21
		port(A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
	end component;
	signal stage1_out : STD_LOGIC_VECTOR(3 downto 0);
	signal stage2_out : STD_LOGIC_VECTOR(1 downto 0);
begin
	MUX0 : mux21 port map(D(0), D(1), S(0), stage1_out(0));
	MUX1 : mux21 port map(D(2), D(3), S(0), stage1_out(1));
	MUX2 : mux21 port map(D(4), D(5), S(0), stage1_out(2));
	MUX3 : mux21 port map(D(6), D(7), S(0), stage1_out(3));
	
	MUX4 : mux21 port map(stage1_out(0), stage1_out(1), S(1), stage2_out(0));
	MUX5 : mux21 port map(stage1_out(2), stage1_out(3), S(1), stage2_out(1));
	
	MUX6 : mux21 port map(stage2_out(0), stage2_out(1), S(2), Y);
end Behavioral;

