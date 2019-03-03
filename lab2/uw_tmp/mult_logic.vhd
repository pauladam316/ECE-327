
-- 
-- Definition of  mult
-- 
--      Sat Feb  9 21:27:06 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

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
   signal o_valid_EXMPLR33: std_logic ;
   
   signal o_z_EXMPLR45: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal state: std_logic ;
   
   signal o_z_1n2s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx42112z1, nx57812z1, nx26664z1, nx22541z1, nx11847z1, nx28178z1, 
      nx52932z1, GND_EXMPLR42: std_logic ;
   
   signal a_1n4ss1: std_logic_vector (6 DOWNTO 0) ;
   
   signal b_1n4ss1: std_logic_vector (7 DOWNTO 1) ;
   
   signal nx60567z2, nx33332z2, nx61882z2, PWR, nx38650z1, nx61882z1, 
      nx19052z1, nx60567z1, nx55900z1, nx33332z1, nx38650z3, nx38650z2, 
      nx60567z3: std_logic ;

begin
   o_valid <= o_valid_EXMPLR33 ;
   o_z(7) <= o_z_EXMPLR45(7) ;
   o_z(6) <= o_z_EXMPLR45(6) ;
   o_z(5) <= o_z_EXMPLR45(5) ;
   o_z(4) <= o_z_EXMPLR45(4) ;
   o_z(3) <= o_z_EXMPLR45(3) ;
   o_z(2) <= o_z_EXMPLR45(2) ;
   o_z(1) <= o_z_EXMPLR45(1) ;
   o_z(0) <= o_z_EXMPLR45(0) ;
   GND_EXMPLR42 <= '0';
   PWR <= '1';
   o_z_add8_1i1_ix36_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_z_1n2s1(0), cout=>nx42112z1, dataa=>
      o_z_EXMPLR45(0), datab=>b(0), datad=>PWR);
   o_z_add8_1i1_ix40_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(1), cout=>nx57812z1, dataa=>
      o_z_EXMPLR45(1), datab=>b(1), datad=>PWR, cin=>nx42112z1);
   o_z_add8_1i1_ix44_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(2), cout=>nx26664z1, dataa=>
      o_z_EXMPLR45(2), datab=>b(2), datad=>PWR, cin=>nx57812z1);
   o_z_add8_1i1_ix48_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(3), cout=>nx22541z1, dataa=>
      o_z_EXMPLR45(3), datab=>b(3), datad=>PWR, cin=>nx26664z1);
   o_z_add8_1i1_ix52_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(4), cout=>nx11847z1, dataa=>
      o_z_EXMPLR45(4), datab=>b(4), datad=>PWR, cin=>nx22541z1);
   o_z_add8_1i1_ix56_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(5), cout=>nx28178z1, dataa=>
      o_z_EXMPLR45(5), datab=>b(5), datad=>PWR, cin=>nx11847z1);
   o_z_add8_1i1_ix60_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(6), cout=>nx52932z1, dataa=>
      o_z_EXMPLR45(6), datab=>b(6), datad=>PWR, cin=>nx28178z1);
   o_z_add8_1i1_ix62_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_1n2s1(7), dataa=>o_z_EXMPLR45(7), datab=>b(7), 
      datad=>PWR, cin=>nx52932z1);
   reg_o_valid : dffeas port map ( q=>o_valid_EXMPLR33, d=>nx60567z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_0 : dffeas port map ( q=>b(0), d=>nx19052z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42);
   reg_a_7 : dffeas port map ( q=>a(7), d=>nx61882z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42);
   reg_state : dffeas port map ( q=>state, d=>nx38650z1, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, sload=>
      GND_EXMPLR42);
   reg_b_7 : dffeas port map ( q=>b(7), d=>b_1n4ss1(7), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_6 : dffeas port map ( q=>b(6), d=>b_1n4ss1(6), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_5 : dffeas port map ( q=>b(5), d=>b_1n4ss1(5), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_4 : dffeas port map ( q=>b(4), d=>b_1n4ss1(4), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_3 : dffeas port map ( q=>b(3), d=>b_1n4ss1(3), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_2 : dffeas port map ( q=>b(2), d=>b_1n4ss1(2), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_b_1 : dffeas port map ( q=>b(1), d=>b_1n4ss1(1), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_6 : dffeas port map ( q=>a(6), d=>a_1n4ss1(6), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_5 : dffeas port map ( q=>a(5), d=>a_1n4ss1(5), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_4 : dffeas port map ( q=>a(4), d=>a_1n4ss1(4), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_3 : dffeas port map ( q=>a(3), d=>a_1n4ss1(3), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_2 : dffeas port map ( q=>a(2), d=>a_1n4ss1(2), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_1 : dffeas port map ( q=>a(1), d=>a_1n4ss1(1), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_a_0 : dffeas port map ( q=>a(0), d=>a_1n4ss1(0), clk=>clk, ena=>
      nx55900z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>reset, 
      sload=>GND_EXMPLR42);
   reg_o_z_7 : dffeas port map ( q=>o_z_EXMPLR45(7), d=>o_z_1n2s1(7), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_6 : dffeas port map ( q=>o_z_EXMPLR45(6), d=>o_z_1n2s1(6), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_5 : dffeas port map ( q=>o_z_EXMPLR45(5), d=>o_z_1n2s1(5), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_4 : dffeas port map ( q=>o_z_EXMPLR45(4), d=>o_z_1n2s1(4), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_3 : dffeas port map ( q=>o_z_EXMPLR45(3), d=>o_z_1n2s1(3), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_2 : dffeas port map ( q=>o_z_EXMPLR45(2), d=>o_z_1n2s1(2), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_1 : dffeas port map ( q=>o_z_EXMPLR45(1), d=>o_z_1n2s1(1), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   reg_o_z_0 : dffeas port map ( q=>o_z_EXMPLR45(0), d=>o_z_1n2s1(0), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR42, sclr=>
      nx33332z2, sload=>GND_EXMPLR42);
   ix60885z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(6), datab=>state, datac=>a(7), datad=>
      i_a(6));
   ix59888z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(5), datab=>state, datac=>a(6), datad=>
      i_a(5));
   ix58891z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(4), datab=>state, datac=>a(5), datad=>
      i_a(4));
   ix57894z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(3), datab=>state, datac=>a(4), datad=>
      i_a(3));
   ix56897z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(2), datab=>state, datac=>a(3), datad=>
      i_a(2));
   ix55900z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(1), datab=>state, datac=>a(2), datad=>
      i_a(1));
   ix54903z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_1n4ss1(0), datab=>state, datac=>a(1), datad=>
      i_a(0));
   ix12073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(7), datab=>state, datac=>b(6), datad=>
      i_b(7));
   ix13070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(6), datab=>state, datac=>b(5), datad=>
      i_b(6));
   ix14067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(5), datab=>state, datac=>b(4), datad=>
      i_b(5));
   ix15064z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(4), datab=>state, datac=>b(3), datad=>
      i_b(4));
   ix16061z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(3), datab=>state, datac=>b(2), datad=>
      i_b(3));
   ix17058z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(2), datab=>state, datac=>b(1), datad=>
      i_b(2));
   ix18055z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_1n4ss1(1), datab=>state, datac=>b(0), datad=>
      i_b(1));
   ix60567z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>nx60567z2, dataa=>nx60567z3, datab=>nx38650z3, 
      datac=>a(0), datad=>a(1));
   ix33332z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff30") 
       port map ( combout=>nx33332z2, datab=>state, datac=>i_valid, datad=>
      reset);
   ix61882z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffc0") 
       port map ( combout=>nx61882z2, datab=>nx38650z1, datac=>state, datad
      =>reset);
   ix38650z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7f70") 
       port map ( combout=>nx38650z1, dataa=>nx38650z2, datab=>nx38650z3, 
      datac=>state, datad=>i_valid);
   ix61882z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx61882z1, dataa=>nx38650z1, datab=>nx61882z2, 
      datac=>a(7), datad=>i_a(7));
   ix19052z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx19052z1, dataa=>nx38650z1, datab=>nx61882z2, 
      datac=>b(0), datad=>i_b(0));
   ix60567z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c8f8") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>state, datac
      =>o_valid_EXMPLR33, datad=>i_valid);
   ix55900z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx55900z1, datac=>nx38650z1, datad=>reset);
   ix33332z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffd8") 
       port map ( combout=>nx33332z1, dataa=>state, datab=>a(0), datac=>
      i_valid, datad=>reset);
   ix38650z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx38650z3, dataa=>a(4), datab=>a(5), datac=>a(6), 
      datad=>a(7));
   ix38650z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx38650z2, dataa=>a(0), datab=>a(1), datac=>a(2), 
      datad=>a(3));
   ix60567z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx60567z3, datac=>a(2), datad=>a(3));
end main ;

