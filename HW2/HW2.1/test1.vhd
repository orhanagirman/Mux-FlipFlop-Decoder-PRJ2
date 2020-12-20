--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:37:19 08/07/2020
-- Design Name:   
-- Module Name:   C:/Users/TUTEL-50/Desktop/HW/hw2.1/test1.vhd
-- Project Name:  hw2.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hw2_mux
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hw2_mux
    PORT(
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         b1 : IN  std_logic;
         b2 : IN  std_logic;
         c1 : IN  std_logic;
         c2 : IN  std_logic;
         c3 : IN  std_logic;
			reset : IN  std_logic;
         op : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal b2 : std_logic := '0';
   signal c1 : std_logic := '0';
   signal c2 : std_logic := '0';
   signal c3 : std_logic := '0';
	signal reset : std_logic := '0';

 	--Outputs
   signal op : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hw2_mux PORT MAP (
          a1 => a1,
          a2 => a2,
          b1 => b1,
          b2 => b2,
          c1 => c1,
          c2 => c2,
          c3 => c3,
			 reset => reset,
          op => op
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset<='1';
		wait for 10 ns;
		reset<='0';
		a1<='1';
		a2<='0';
		b1<='0';
		b2<='1';
		c1<='1';
		c2<='0';
		c3<='1';
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
