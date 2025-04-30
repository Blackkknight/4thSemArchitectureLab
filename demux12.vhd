----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:22:47 03/10/2025 
-- Design Name: 
-- Module Name:    demux12 - Behavioral 
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

entity demux12 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end demux12;

architecture Behavioral of demux12 is

begin
process(S,I)
begin
Y<="0000";
	case S is
		when "00" => Y(0) <= I;
		when "01" => Y(1) <= I;
		when "10" => Y(2) <= I;
		when "11" => Y(3) <= I;
		when others => Y <= (others=>'0');
	end case;
end process;
end Behavioral;

