--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:24:11 08/07/2020
-- Design Name:   
-- Module Name:   C:/Users/TUTEL-50/Desktop/HW/hw2.1/test2.vhd
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
 
ENTITY test2 IS
END test2;
 
ARCHITECTURE behavior OF test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hw2_mux
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         s0 : IN  std_logic;
         s00 : IN  std_logic;
         s1 : IN  std_logic;
         reset : IN  std_logic;
         op : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s00 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal op : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hw2_mux PORT MAP (
          i0 => i0,
          i1 => i1,
          i2 => i2,
          i3 => i3,
          s0 => s0,
          s00 => s00,
          s1 => s1,
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
      wait for 100 ns;	
		reset<='0';
		i0<='1';
		i1<='0';
		i2<='0';
		i3<='1';
		s0<='0';
		s00<='0';
		s1<='0';
      wait for 100 ns;
      reset<='0';		
		i0<='1';
		i1<='0';
		i2<='0';
		i3<='1';
		s0<='0';
		s00<='0';
		s1<='1';
      wait for 100 ns;
		reset<='0';	
		i0<='1';
		i1<='0';
		i2<='0';
		i3<='1';
		s0<='0';
		s00<='1';
		s1<='1';
      wait for 100 ns;	
      reset<='0';			
		i0<='1';
		i1<='0';
		i2<='0';
		i3<='1';
		s0<='1';
		s00<='1';
		s1<='1';
      wait for 100 ns;		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
