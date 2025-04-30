----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:22:01 03/28/2025 
-- Design Name: 
-- Module Name:    T_FF - Behavioral 
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

entity T_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is
	signal temp : STD_LOGIC := '0';  -- Internal signal to store state
begin
    process (CLK)
    begin
        if (CLK = '1' and CLK'event) then  -- Detect clock transition
            if T = '1' then
                temp <= not temp;  -- Toggle the state
            else
                temp <= temp;  -- Hold the state
            end if;
        end if;
    end process;

    -- Assign output values
    Q <= temp;
    Qbar <= not temp;


end Behavioral;

