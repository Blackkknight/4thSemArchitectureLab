----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:11 03/11/2025 
-- Design Name: 
-- Module Name:    encoder12 - Behavioral 
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

entity encoder12 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end encoder12;

architecture Behavioral of encoder12 is

begin
process(I)
begin
	case I is
		when"0001"=>Y<="00";
		when"0010"=>Y<="01";
		when"0100"=>Y<="10";
		when others=>Y<="11";
	end case;
end process;
end Behavioral;

