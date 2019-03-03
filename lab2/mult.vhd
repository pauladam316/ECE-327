library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;

entity mult is
  port ( clk, reset, i_valid : in std_logic;
         i_a, i_b : in unsigned( 7 downto 0 );
         o_valid : out std_logic;
         o_z : out unsigned( 7 downto 0 )
       );
end entity;

architecture main of mult is
  -- for full implementation, change the array bounds
  signal v    : std_logic_vector( 0 to 0 );
  signal a, b : unsigned( 7 downto 0 );
  type state_type is (s0, s1);
  signal state: state_type := s0;
begin

  v(0) <= i_valid;
  
  process begin
    wait until rising_edge(clk);
    if reset = '1' then
      a <= "00000000";
      b <= "00000000";
      o_z <= "00000000";
      o_valid <= '0';
      state <= s0;
    else
      case state is
        when s0=>
          if v(0) = '1' then
	    a <= i_a;
	    b <= i_b;
	    o_z <= (others => '0');
	    o_valid <= '0';
	    state <= s1;
	  else
	    state <= s0;
	  end if;
	when s1 =>
	  if a = 0 then
	    o_valid <= '1';
	    state <= s0;
	  else
	    if a(0) = '1' then
	      o_z <= o_z + b;
	    end if;
	    a <= a srl 1;
	    b <= b sll 1;
	    state <= s1;
	  end if;
      end case;
    end if;
  end process;

end architecture;

