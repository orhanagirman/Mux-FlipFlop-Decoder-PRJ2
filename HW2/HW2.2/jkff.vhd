----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:09:27 08/07/2020 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

entity jkff is
    Port ( clk : in  STD_LOGIC;
	        rst : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           output : out  STD_LOGIC);
end jkff;

architecture Behavioral of jkff is

signal tmp: STD_LOGIC;

begin

     process(clk,rst)
	  begin
	       if (rst = '1') then
			     tmp<='0';
			 elsif rising_edge(clk) then
					if (j='0') and (k='0') then
                   tmp<=tmp;
					elsif (j='0') and (k='1') then					
                   tmp<='0';
					elsif (j='1') and (k='0') then					
                   tmp<='1';
					elsif (j='1') and (k='1') then					
                   tmp<= not tmp;
					end if;
           end if;
      end process;
      output<= tmp;		
						 
end Behavioral;

