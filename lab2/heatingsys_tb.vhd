------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end heatingsys_tb;

architecture main of heatingsys_tb is
 signal rst, clock		 : std_logic;
 signal cur_temp, des_temp	 : signed (7 downto 0);
 signal heatmode 	   	 : heat_ty;
begin

  uut : entity work.heatingsys(main)
    port map (
      reset 		=> rst,
      clk 		=> clock,
      i_cur_temp	=> cur_temp,
      i_des_temp 	=> des_temp,
      o_heatmode 	=> heatmode
    );

    process
    begin
      rst <= '0'; clock <= '1'; cur_temp <= "00000000"; des_temp <= "00000000";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '0'; clock <= '1'; cur_temp <= "00000000"; des_temp <= "00000100";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '0'; clock <= '1'; cur_temp <= "00000000"; des_temp <= "00000111";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '0'; clock <= '1'; cur_temp <= "00000100"; des_temp <= "00000000";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '0'; clock <= '1'; cur_temp <= "00000011"; des_temp <= "00000000";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '0'; clock <= '1'; cur_temp <= "00000000"; des_temp <= "00000101";
      wait for 10ns;
      clock <= '0';
      wait for 10ns;
      rst <= '1'; clock <= '1';
      wait for 10ns;
      rst <= '0'; clock <= '0';
      wait for 10ns;
    end process;

end main;
