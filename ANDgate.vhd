----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:12 02/21/2025 
-- Design Name: 
-- Module Name:    ANDgate - Behavioral 
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

entity ANDgate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end ANDgate;

architecture Behavioral of ANDgate is

begin
y <= a AND b;

end Behavioral;

