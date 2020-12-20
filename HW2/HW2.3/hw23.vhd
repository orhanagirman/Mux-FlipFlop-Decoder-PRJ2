----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:06 08/07/2020 
-- Design Name: 
-- Module Name:    hw23 - Behavioral 
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

entity hw23 is
    Port ( clock : in  STD_LOGIC;
	        reset : in  STD_LOGIC;
			  x: in  STD_LOGIC;
			  out1: out STD_LOGIC;
			  out2: out STD_LOGIC);
end hw23;

architecture Behavioral of hw23 is

component dff
    Port ( clk : in  STD_LOGIC;
	        rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;	


component demux
    Port ( rst : in  STD_LOGIC;
	        a : in  STD_LOGIC;
           s : in  STD_LOGIC;
			  output: out STD_LOGIC_VECTOR (1 downto 0));
end component;			  

signal araport1: STD_LOGIC;
signal araport2: STD_LOGIC;
signal araport3: STD_LOGIC;
signal wire1: STD_LOGIC;
signal wire2: STD_LOGIC;

begin


dff1: dff port map (clk => clock,rst => reset,d => wire2,q => araport1);
dff2: dff port map (clk => clock,rst => reset,d => araport2,q => wire1);
dm: demux port map (rst => reset,a =>x ,s => araport1,output(0) => araport2, output(1) => araport3);

     process(clock)
	  begin
	       wire2 <= araport3 nand wire1;
	       out1<=araport2;
			 out2<=araport3;
	  end process;	 


end Behavioral;

