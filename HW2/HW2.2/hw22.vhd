----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:59 08/07/2020 
-- Design Name: 
-- Module Name:    hw22 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hw22 is
    Port ( x : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  op : out STD_LOGIC;
           clock : in  STD_LOGIC);
end hw22;

architecture Behavioral of hw22 is

component jkff
    Port ( clk : in  STD_LOGIC;
	        rst : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;	

component decoder
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : out  STD_LOGIC_VECTOR (3 downto 0);
			  rst: in STD_LOGIC);
end component;	

signal araport1: STD_LOGIC;		  
signal araport2: STD_LOGIC;
signal wire1: STD_LOGIC;		  
signal wire2: STD_LOGIC;
signal wireA: STD_LOGIC;		  
signal wireB: STD_LOGIC;

begin

JKFF1: jkff port map (clk => clock, rst => reset, j=>wire1,k =>x, output => araport1);
JKFF2: jkff port map (clk => clock, rst => reset, j =>x,k=>wire2, output => araport2);
DCDR: decoder port map (a(0)=> araport1,a(1)=> not araport2, b(0)=>wire1,b(1)=>wireA,b(2)=>wireB,b(3)=> wire2,rst => reset);

process(x)
begin	
op <= wireA or wireB;
end process;

			   
end Behavioral;

