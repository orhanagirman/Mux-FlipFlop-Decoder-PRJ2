----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:23:09 08/07/2020 
-- Design Name: 
-- Module Name:    hw2_mux - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hw2_mux is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
			  i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
			  s00 : in  STD_LOGIC;
			  s1 : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           op : out  STD_LOGIC);
end hw2_mux;

architecture Behavioral of hw2_mux is

begin


	process(reset,i0,i1,i2,i3,s0,s00,s1)
	begin
        if (reset= '1') then
		      op<='0';
		  elsif (s0 = '0') and (s00 = '0') then
				if (s1 = '0') then
				    op<=i0;
				elsif (s1 = '1') then	 
                op<=i2;
				end if;
        elsif (s0 = '0') and (s00 = '1') then
				if (s1 = '0') then
				    op<=i0;
				elsif (s1 = '1') then	 
                op<=i3;
				end if;	
        elsif (s0 = '1') and (s00 = '0') then
				if (s1 = '0') then
				    op<=i1;
				elsif (s1 = '1') then	 
                op<=i2;
				end if;
       elsif (s0 = '1') and (s00 = '1') then
				if (s1 = '0') then
				    op<=i1;
				elsif (s1 = '1') then	 
                op<=i3;
				end if;					
       end if;
	end process;
	 
end Behavioral;

