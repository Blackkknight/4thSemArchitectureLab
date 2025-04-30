----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:23:46 04/04/2025 
-- Design Name: 
-- Module Name:    HA1 - Behavioral 
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

entity HA1 is
    Port ( P : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end HA1;

architecture Behavioral of HA1 is

begin
	S <= P XOR Q;  -- Sum
   C <= P AND Q;  -- Carry


end Behavioral;

