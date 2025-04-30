----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:39:44 03/07/2025 
-- Design Name: 
-- Module Name:    halfsubtractor - Behavioral 
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

entity halfsubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x : out  STD_LOGIC;
           y : out  STD_LOGIC);
end halfsubtractor;

architecture Behavioral of halfsubtractor is

begin
x<= a xor b;
y<= (not a) and b;

end Behavioral;

