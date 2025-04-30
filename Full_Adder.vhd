----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:37:28 04/04/2025 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
	 -- Component Declaration
    component HA1
        Port ( P, Q : in STD_LOGIC;
               S, C : out STD_LOGIC);
    end component;

    component OR1
        Port ( P1, Q1 : in STD_LOGIC;
               OR_out : out STD_LOGIC);
    end component;

    -- Internal signals
    signal S1, C1, C2 : STD_LOGIC;


begin
	-- First Half Adder
    U1: HA1 port map (A, B, S1, C1);
    
    -- Second Half Adder
    U2: HA1 port map (S1, Cin, Sum, C2);
    
    -- OR Gate for Final Carry
    U3: OR1 port map (C1, C2, Carry);

end Behavioral;


