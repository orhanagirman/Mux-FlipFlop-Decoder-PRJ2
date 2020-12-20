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

entity mux is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
			  rst: in  STD_LOGIC;
           output : out  STD_LOGIC);
end mux;

architecture Behavioral of mux is
signal ara:  STD_LOGIC;
begin
        process(rst)
		  begin
		    if(rst = '1' ) then
             ara<='0';
	       elsif(s0='0') and (rst = '0') then
			    ara<=i0;
			 elsif(s0='1') and (rst = '0') then
             ara<=i1;
          end if;
	       output<=ara;
     	  end process;


end Behavioral;

