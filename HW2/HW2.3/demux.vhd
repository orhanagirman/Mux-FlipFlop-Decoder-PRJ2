----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:55 08/07/2020 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
    Port ( rst : in  STD_LOGIC;
	        a : in  STD_LOGIC;
           s : in  STD_LOGIC;
			  output: out STD_LOGIC_VECTOR (1 downto 0));
end demux;

architecture Behavioral of demux is

begin
     process(s,a,rst)
     begin
	       if(rst = '1') then
			    output <= "00";
			 else
			    output(0) <= (not a) and s;
				 output(1) <=  s and a;
			 end if;
     end process;			

end Behavioral;

