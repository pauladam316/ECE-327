library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(reset            : in std_logic;          -- reset
       clk              : in std_logic;          -- clock
       i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty := "00";
begin
  process (clk)
  begin
    if rising_edge(clk) then
    if reset = '1' then
      state <= "00";
    else
      case state is 
        when "00" =>
	 if (i_des_temp - i_cur_temp) >= 3 and (i_des_temp-i_cur_temp) < 5 then
	    state <= "01";
          elsif (i_des_temp-i_cur_temp) >= 5 then
	    state <= "11";
          else 
            state <= "00";
	  end if;
	when "01" =>
	  if (i_des_temp - i_cur_temp) >= "00000111" then
	    state <= "11";
          elsif (i_cur_temp - i_des_temp) > "00000010" then
            state <= "00";
	  else 
	    state <= "01";
	  end if;
	when "11" =>
          if (i_cur_temp - i_des_temp) > "00000011" then
            state <= "01";
	  else
            state <= "11";
	  end if;
	when others =>
      end case;
    end if;
    end if;
  end process;
  process (state)
  begin
	  o_heatmode <= state;
  end process;
  -- insert your vhdl code here

end main;

-- question 1
  --insert answer here
  --1 bit flip flops: 2
  --1 bit latches: 0
  --ANDS: 14
  --ORs: 13
  --NOTs: 15
  --adders: 0
  --subtractors: 2
  --comparators: 0
  --multiplexers: 0
