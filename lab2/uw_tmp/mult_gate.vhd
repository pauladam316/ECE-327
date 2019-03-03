
-- 
-- Definition of  mult
-- 
--      Sat Feb  9 21:27:04 2019
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

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_8u_8u ;

architecture BEHAVIORAL of and_8u_8u is 
   component sim_and
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_and
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mult is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_a : IN std_logic_vector (7 DOWNTO 0) ;
      i_b : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_z : OUT std_logic_vector (7 DOWNTO 0)) ;
end mult ;

architecture main of mult is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
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
   signal o_z_EXMPLR30: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, GND: std_logic ;
   
   signal a_1n4ss1: std_logic_vector (6 DOWNTO 0) ;
   
   signal b_1n4ss1: std_logic_vector (7 DOWNTO 1) ;
   
   signal not_i_valid, rtlc1n99, not_rtlc1n99: std_logic ;
   
   signal o_z_1n2s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_a_0, rtlc1n149, rtlc1n150, rtlc1n151, not_rtlc1n149, 
      not_rtlc1n150, not_rtlc1n151, rtlcn15, rtlcn22, not_state, rtlcn24, 
      not_rtlcn62, rtlcn28, rtlcn57, rtlcn58, rtlcn62, not_a_7, not_a_6, 
      not_a_5, not_a_4, not_a_3, not_a_2, not_a_1, PWR: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_z(7) <= o_z_EXMPLR30(7) ;
   o_z(6) <= o_z_EXMPLR30(6) ;
   o_z(5) <= o_z_EXMPLR30(5) ;
   o_z(4) <= o_z_EXMPLR30(4) ;
   o_z(3) <= o_z_EXMPLR30(3) ;
   o_z(2) <= o_z_EXMPLR30(2) ;
   o_z(1) <= o_z_EXMPLR30(1) ;
   o_z(0) <= o_z_EXMPLR30(0) ;
   GND <= '0' ;
   not_rtlc1n151 <= NOT rtlc1n151 ;
   not_rtlc1n150 <= NOT rtlc1n150 ;
   not_rtlc1n149 <= NOT rtlc1n149 ;
   not_a_0 <= NOT a(0) ;
   not_i_valid <= NOT i_valid ;
   o_z_add8_1i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      o_z_EXMPLR30(7), a(6)=>o_z_EXMPLR30(6), a(5)=>o_z_EXMPLR30(5), a(4)=>
      o_z_EXMPLR30(4), a(3)=>o_z_EXMPLR30(3), a(2)=>o_z_EXMPLR30(2), a(1)=>
      o_z_EXMPLR30(1), a(0)=>o_z_EXMPLR30(0), b(7)=>b(7), b(6)=>b(6), b(5)=>
      b(5), b(4)=>b(4), b(3)=>b(3), b(2)=>b(2), b(1)=>b(1), b(0)=>b(0), d(7)
      =>o_z_1n2s1(7), d(6)=>o_z_1n2s1(6), d(5)=>o_z_1n2s1(5), d(4)=>
      o_z_1n2s1(4), d(3)=>o_z_1n2s1(3), d(2)=>o_z_1n2s1(2), d(1)=>
      o_z_1n2s1(1), d(0)=>o_z_1n2s1(0), cout=>DANGLING(0,0));
   not_rtlc1n99 <= NOT rtlc1n99 ;
   rtlcn22 <= state AND not_rtlc1n99 ;
   not_state <= NOT state ;
   rtlcn24 <= not_state AND i_valid ;
   rtlcn15 <= rtlcn22 OR rtlcn24 ;
   rtlcn28 <= reset OR not_rtlcn62 ;
   rtlcn57 <= state AND not_rtlc1n149 ;
   rtlcn58 <= reset OR rtlcn57 ;
   not_rtlcn62 <= NOT rtlcn62 ;
   a_1n4ss1(0) <= a(1) when state = '1' else i_a(0) ;
   a_1n4ss1(1) <= a(2) when state = '1' else i_a(1) ;
   a_1n4ss1(2) <= a(3) when state = '1' else i_a(2) ;
   a_1n4ss1(3) <= a(4) when state = '1' else i_a(3) ;
   a_1n4ss1(4) <= a(5) when state = '1' else i_a(4) ;
   a_1n4ss1(5) <= a(6) when state = '1' else i_a(5) ;
   a_1n4ss1(6) <= a(7) when state = '1' else i_a(6) ;
   b_1n4ss1(1) <= b(0) when state = '1' else i_b(1) ;
   b_1n4ss1(2) <= b(1) when state = '1' else i_b(2) ;
   b_1n4ss1(3) <= b(2) when state = '1' else i_b(3) ;
   b_1n4ss1(4) <= b(3) when state = '1' else i_b(4) ;
   b_1n4ss1(5) <= b(4) when state = '1' else i_b(5) ;
   b_1n4ss1(6) <= b(5) when state = '1' else i_b(6) ;
   b_1n4ss1(7) <= b(6) when state = '1' else i_b(7) ;
   rtlc1n149 <= rtlc1n99 when state = '1' else not_i_valid ;
   rtlc1n150 <= not_a_0 when state = '1' else not_i_valid ;
   rtlc1n151 <= not_rtlc1n99 when state = '1' else not_i_valid ;
   not_a_7 <= NOT a(7) ;
   not_a_6 <= NOT a(6) ;
   not_a_5 <= NOT a(5) ;
   not_a_4 <= NOT a(4) ;
   not_a_3 <= NOT a(3) ;
   not_a_2 <= NOT a(2) ;
   not_a_1 <= NOT a(1) ;
   rtlc_165_and_1 : and_8u_8u port map ( a(7)=>not_a_7, a(6)=>not_a_6, a(5)
      =>not_a_5, a(4)=>not_a_4, a(3)=>not_a_3, a(2)=>not_a_2, a(1)=>not_a_1, 
      a(0)=>not_a_0, d=>rtlc1n99);
   rtlcn62 <= state OR rtlc1n150 ;
   DFFRSE (rtlcn15,GND,reset,PWR,clk,state) ;
   PWR <= '1' ;
   DFFRSE (state,GND,reset,not_rtlc1n151,clk,o_valid) ;
   DFFRSE (b_1n4ss1(7),GND,reset,not_rtlc1n149,clk,b(7)) ;
   DFFRSE (b_1n4ss1(6),GND,reset,not_rtlc1n149,clk,b(6)) ;
   DFFRSE (b_1n4ss1(5),GND,reset,not_rtlc1n149,clk,b(5)) ;
   DFFRSE (b_1n4ss1(4),GND,reset,not_rtlc1n149,clk,b(4)) ;
   DFFRSE (b_1n4ss1(3),GND,reset,not_rtlc1n149,clk,b(3)) ;
   DFFRSE (b_1n4ss1(2),GND,reset,not_rtlc1n149,clk,b(2)) ;
   DFFRSE (b_1n4ss1(1),GND,reset,not_rtlc1n149,clk,b(1)) ;
   DFFRSE (a_1n4ss1(6),GND,reset,not_rtlc1n149,clk,a(6)) ;
   DFFRSE (a_1n4ss1(5),GND,reset,not_rtlc1n149,clk,a(5)) ;
   DFFRSE (a_1n4ss1(4),GND,reset,not_rtlc1n149,clk,a(4)) ;
   DFFRSE (a_1n4ss1(3),GND,reset,not_rtlc1n149,clk,a(3)) ;
   DFFRSE (a_1n4ss1(2),GND,reset,not_rtlc1n149,clk,a(2)) ;
   DFFRSE (a_1n4ss1(1),GND,reset,not_rtlc1n149,clk,a(1)) ;
   DFFRSE (a_1n4ss1(0),GND,reset,not_rtlc1n149,clk,a(0)) ;
   DFFRSE (o_z_1n2s1(7),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(7)) ;
   DFFRSE (o_z_1n2s1(6),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(6)) ;
   DFFRSE (o_z_1n2s1(5),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(5)) ;
   DFFRSE (o_z_1n2s1(4),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(4)) ;
   DFFRSE (o_z_1n2s1(3),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(3)) ;
   DFFRSE (o_z_1n2s1(2),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(2)) ;
   DFFRSE (o_z_1n2s1(1),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(1)) ;
   DFFRSE (o_z_1n2s1(0),GND,rtlcn28,not_rtlc1n150,clk,o_z_EXMPLR30(0)) ;
   DFFRSE (i_b(0),GND,rtlcn58,not_rtlc1n149,clk,b(0)) ;
   DFFRSE (i_a(7),GND,rtlcn58,not_rtlc1n149,clk,a(7)) ;
end main ;

