
-- 
-- Definition of  heatingsys
-- 
--      Sat Feb  9 22:35:05 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_8u_8u_8u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8u_8u_8u_0 ;

architecture BEHAVIORAL of sub_8u_8u_8u_0 is 
   component sim_sub
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_sub
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_5u_5u is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_5u_5u ;

architecture BEHAVIORAL of or_5u_5u is 
   component sim_or
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_or
      generic map (size => 5) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys_gate is 
   port (
      reset : IN std_logic ;
      clk : IN std_logic ;
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys_gate ;

architecture main of heatingsys_gate is 
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND, PWR, not_o_heatmode_0: std_logic ;
   
   signal rtlc0n152: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc0n499, rtlc0n231, rtlc0_PS14_n291: std_logic ;
   
   signal rtlc0n330: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc0n496, not_rtlcn45, rtlc0n499, rtlc0n584, not_rtlc0n584, 
      not_rtlc0n152_2, not_rtlc0n152_1, not_rtlc0n152_0, rtlc0n589, 
      rtlc0n590, rtlc0n591, rtlc0n592, rtlc0n616, not_rtlcn46, rtlc0n619, 
      rtlc0n642, rtlc0n660, rtlcn45, rtlcn46, not_rtlcn107, rtlcn94, 
      rtlcn107, rtlcn108, rtlcn109, not_rtlc0n231, rtlcn111, not_rtlc0n330_7, 
      rtlcn113, not_rtlc0n619, rtlcn115, not_rtlc0n660, rtlcn117, 
      not_rtlcn122, rtlcn122, not_o_heatmode_1, rtlc0_161_and_4_nx0, 
      rtlc_113_and_6_nx0, rtlc_126_or_8_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc0_53_sub_0 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc0n330(7), d(6)=>rtlc0n330(6), d(5)=>rtlc0n330(5), d(4)=>
      rtlc0n330(4), d(3)=>rtlc0n330(3), d(2)=>rtlc0n330(2), d(1)=>
      rtlc0n330(1), d(0)=>rtlc0n330(0), cout=>DANGLING(0,0));
   rtlc0_79_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc0n152(7), d(6)=>rtlc0n152(6), d(5)=>rtlc0n152(5), d(4)=>
      rtlc0n152(4), d(3)=>rtlc0n152(3), d(2)=>rtlc0n152(2), d(1)=>
      rtlc0n152(1), d(0)=>rtlc0n152(0), cout=>DANGLING(0,1));
   not_rtlc0n499 <= NOT rtlc0n499 ;
   rtlc0n231 <= not_rtlc0n499 AND rtlc0n592 ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlc0n496 <= rtlc0n152(1) AND rtlc0n152(0) ;
   rtlc0n499 <= not_rtlcn45 OR rtlc0n152(7) ;
   rtlc0_149_or_3 : or_5u_5u port map ( a(4)=>rtlc0n152(3), a(3)=>
      rtlc0n152(4), a(2)=>rtlc0n152(5), a(1)=>rtlc0n152(6), a(0)=>
      rtlc0n152(7), d=>rtlc0n584);
   not_rtlc0n584 <= NOT rtlc0n584 ;
   not_rtlc0n152_2 <= NOT rtlc0n152(2) ;
   not_rtlc0n152_1 <= NOT rtlc0n152(1) ;
   not_rtlc0n152_0 <= NOT rtlc0n152(0) ;
   rtlc0n589 <= not_rtlc0n152_1 AND not_rtlc0n152_0 ;
   rtlc0n590 <= not_rtlc0n152_2 OR rtlc0n589 ;
   rtlc0n591 <= not_rtlc0n584 AND rtlc0n590 ;
   rtlc0n592 <= rtlc0n591 OR rtlc0n152(7) ;
   rtlc0n619 <= not_rtlcn46 OR rtlc0n152(7) ;
   rtlc0n660 <= rtlc0n642 AND not_rtlc0n330_7 ;
   not_rtlcn45 <= NOT rtlcn45 ;
   not_rtlcn46 <= NOT rtlcn46 ;
   rtlcn46 <= rtlc0n584 OR rtlc0n616 ;
   rtlc_109_or_5 : or_6u_6u port map ( a(5)=>rtlc0n330(2), a(4)=>
      rtlc0n330(3), a(3)=>rtlc0n330(4), a(2)=>rtlc0n330(5), a(1)=>
      rtlc0n330(6), a(0)=>rtlc0n330(7), d=>rtlc0n642);
   rtlcn109 <= rtlc0n330(0) AND rtlc0n330(1) ;
   rtlcn108 <= rtlc0n642 OR rtlcn109 ;
   not_rtlc0n231 <= NOT rtlc0n231 ;
   not_rtlc0n330_7 <= NOT rtlc0n330(7) ;
   rtlc_115_and_7 : and_4u_4u port map ( a(3)=>rtlc0n619, a(2)=>
      not_rtlc0n330_7, a(1)=>rtlc0_PS14_n291, a(0)=>rtlcn108, d=>rtlcn113);
   rtlcn107 <= rtlcn111 OR rtlcn113 ;
   not_rtlcn107 <= NOT rtlcn107 ;
   not_rtlc0n619 <= NOT rtlc0n619 ;
   rtlcn115 <= not_rtlc0n619 AND rtlc0_PS14_n291 ;
   not_rtlc0n660 <= NOT rtlc0n660 ;
   rtlcn117 <= not_rtlc0n660 AND o_heatmode_EXMPLR22(1) ;
   not_rtlcn122 <= NOT rtlcn122 ;
   rtlcn122 <= rtlc0n592 OR o_heatmode_EXMPLR22(0) ;
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   rtlc0_PS14_n291 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   DFFRSE (rtlcn94,GND,reset,PWR,clk,o_heatmode_EXMPLR22(1)) ;
   DFFRSE (not_rtlcn107,GND,reset,PWR,clk,o_heatmode_EXMPLR22(0)) ;
   rtlc0_161_and_4_nx0 <= rtlc0n152(2) AND rtlc0n152(1) ;
   rtlc0n616 <= rtlc0_161_and_4_nx0 AND rtlc0n152(0) ;
   rtlc_113_and_6_nx0 <= rtlc0n592 AND not_rtlc0n231 ;
   rtlcn111 <= rtlc_113_and_6_nx0 AND not_o_heatmode_0 ;
   rtlc_126_or_8_nx0 <= rtlcn115 OR rtlcn117 ;
   rtlcn94 <= rtlc_126_or_8_nx0 OR not_rtlcn122 ;
   modgen_or_0 : or_7u_7u port map ( a(6)=>rtlc0n152(2), a(5)=>rtlc0n152(3), 
      a(4)=>rtlc0n152(4), a(3)=>rtlc0n152(5), a(2)=>rtlc0n152(6), a(1)=>
      rtlc0n152(7), a(0)=>rtlc0n496, d=>rtlcn45);
end main ;

