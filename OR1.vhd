----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:34:33 04/04/2025 
-- Design Name: 
-- Module Name:    OR1 - Behavioral 
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

entity OR1 is
    Port ( P1 : in  STD_LOGIC;
           Q1 : in  STD_LOGIC;
           OR_out : out  STD_LOGIC);
end OR1;

architecture Behavioral of OR1 is

begin
	 OR_out <= P1 OR Q1;  -- OR operation


end Behavioral;

