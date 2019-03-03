//
// Verilog description for cell mult, 
// Sat Feb  9 21:27:07 2019
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module mult ( clk, reset, i_valid, i_a, i_b, o_valid, o_z ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_a ;
    input [7:0]i_b ;
    output o_valid ;
    output [7:0]o_z ;

    wire [7:0]a;
    wire [7:0]b;
    wire state;
    wire [7:0]o_z_1n2s1;
    wire nx42112z1, nx57812z1, nx26664z1, nx22541z1, nx11847z1, nx28178z1, 
         nx52932z1, GND;
    wire [6:0]a_1n4ss1;
    wire [7:1]b_1n4ss1;
    wire nx60567z2, nx33332z2, nx61882z2, PWR, nx38650z1, nx61882z1, nx19052z1, 
         nx60567z1, nx55900z1, nx33332z1, nx38650z3, nx38650z2, nx60567z3;
    wire [111:0] xmplr_dummy ;




    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix36_fadd (.combout (o_z_1n2s1[0]), .cout (
                           nx42112z1), .dataa (o_z[0]), .datab (b[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam o_z_add8_1i1_ix36_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix40_fadd (.combout (o_z_1n2s1[1]), .cout (
                           nx57812z1), .dataa (o_z[1]), .datab (b[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx42112z1)) ;
                           defparam o_z_add8_1i1_ix40_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix40_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix44_fadd (.combout (o_z_1n2s1[2]), .cout (
                           nx26664z1), .dataa (o_z[2]), .datab (b[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx57812z1)) ;
                           defparam o_z_add8_1i1_ix44_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix44_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix48_fadd (.combout (o_z_1n2s1[3]), .cout (
                           nx22541z1), .dataa (o_z[3]), .datab (b[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx26664z1)) ;
                           defparam o_z_add8_1i1_ix48_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix52_fadd (.combout (o_z_1n2s1[4]), .cout (
                           nx11847z1), .dataa (o_z[4]), .datab (b[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx22541z1)) ;
                           defparam o_z_add8_1i1_ix52_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix56_fadd (.combout (o_z_1n2s1[5]), .cout (
                           nx28178z1), .dataa (o_z[5]), .datab (b[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx11847z1)) ;
                           defparam o_z_add8_1i1_ix56_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix60_fadd (.combout (o_z_1n2s1[6]), .cout (
                           nx52932z1), .dataa (o_z[6]), .datab (b[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx28178z1)) ;
                           defparam o_z_add8_1i1_ix60_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_1i1_ix60_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_1i1_ix62_fadd (.combout (o_z_1n2s1[7]), .dataa (
                           o_z[7]), .datab (b[7]), .datac (1'b1), .datad (PWR), 
                           .cin (nx52932z1)) ;
                           defparam o_z_add8_1i1_ix62_fadd.lut_mask = 16'h9696;
                           defparam o_z_add8_1i1_ix62_fadd.sum_lutc_input = "cin";
    dffeas reg_o_valid (.q (o_valid), .d (nx60567z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_b_0_ (.q (b[0]), .d (nx19052z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a_7_ (.q (a[7]), .d (nx61882z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_state (.q (state), .d (nx38650z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)) ;
    dffeas reg_b_7_ (.q (b[7]), .d (b_1n4ss1[7]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_6_ (.q (b[6]), .d (b_1n4ss1[6]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_5_ (.q (b[5]), .d (b_1n4ss1[5]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_4_ (.q (b[4]), .d (b_1n4ss1[4]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_3_ (.q (b[3]), .d (b_1n4ss1[3]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_2_ (.q (b[2]), .d (b_1n4ss1[2]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_b_1_ (.q (b[1]), .d (b_1n4ss1[1]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_6_ (.q (a[6]), .d (a_1n4ss1[6]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_5_ (.q (a[5]), .d (a_1n4ss1[5]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_4_ (.q (a[4]), .d (a_1n4ss1[4]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_3_ (.q (a[3]), .d (a_1n4ss1[3]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_2_ (.q (a[2]), .d (a_1n4ss1[2]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_1_ (.q (a[1]), .d (a_1n4ss1[1]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_a_0_ (.q (a[0]), .d (a_1n4ss1[0]), .clk (clk), .ena (nx55900z1), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset), .sload (GND)
           ) ;
    dffeas reg_o_z_7_ (.q (o_z[7]), .d (o_z_1n2s1[7]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_6_ (.q (o_z[6]), .d (o_z_1n2s1[6]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_5_ (.q (o_z[5]), .d (o_z_1n2s1[5]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_4_ (.q (o_z[4]), .d (o_z_1n2s1[4]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_3_ (.q (o_z[3]), .d (o_z_1n2s1[3]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_2_ (.q (o_z[2]), .d (o_z_1n2s1[2]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_1_ (.q (o_z[1]), .d (o_z_1n2s1[1]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    dffeas reg_o_z_0_ (.q (o_z[0]), .d (o_z_1n2s1[0]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx33332z2)
           , .sload (GND)) ;
    fiftyfivenm_lcell_comb ix60885z7095 (.combout (a_1n4ss1[6]), .dataa (1'b1), 
                           .datab (state), .datac (a[7]), .datad (i_a[6])) ;
                           defparam ix60885z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix59888z7095 (.combout (a_1n4ss1[5]), .dataa (1'b1), 
                           .datab (state), .datac (a[6]), .datad (i_a[5])) ;
                           defparam ix59888z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix58891z7095 (.combout (a_1n4ss1[4]), .dataa (1'b1), 
                           .datab (state), .datac (a[5]), .datad (i_a[4])) ;
                           defparam ix58891z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix57894z7095 (.combout (a_1n4ss1[3]), .dataa (1'b1), 
                           .datab (state), .datac (a[4]), .datad (i_a[3])) ;
                           defparam ix57894z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix56897z7095 (.combout (a_1n4ss1[2]), .dataa (1'b1), 
                           .datab (state), .datac (a[3]), .datad (i_a[2])) ;
                           defparam ix56897z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix55900z7095 (.combout (a_1n4ss1[1]), .dataa (1'b1), 
                           .datab (state), .datac (a[2]), .datad (i_a[1])) ;
                           defparam ix55900z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix54903z7095 (.combout (a_1n4ss1[0]), .dataa (1'b1), 
                           .datab (state), .datac (a[1]), .datad (i_a[0])) ;
                           defparam ix54903z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix12073z7095 (.combout (b_1n4ss1[7]), .dataa (1'b1), 
                           .datab (state), .datac (b[6]), .datad (i_b[7])) ;
                           defparam ix12073z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix13070z7095 (.combout (b_1n4ss1[6]), .dataa (1'b1), 
                           .datab (state), .datac (b[5]), .datad (i_b[6])) ;
                           defparam ix13070z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix14067z7095 (.combout (b_1n4ss1[5]), .dataa (1'b1), 
                           .datab (state), .datac (b[4]), .datad (i_b[5])) ;
                           defparam ix14067z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix15064z7095 (.combout (b_1n4ss1[4]), .dataa (1'b1), 
                           .datab (state), .datac (b[3]), .datad (i_b[4])) ;
                           defparam ix15064z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix16061z7095 (.combout (b_1n4ss1[3]), .dataa (1'b1), 
                           .datab (state), .datac (b[2]), .datad (i_b[3])) ;
                           defparam ix16061z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix17058z7095 (.combout (b_1n4ss1[2]), .dataa (1'b1), 
                           .datab (state), .datac (b[1]), .datad (i_b[2])) ;
                           defparam ix17058z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix18055z7095 (.combout (b_1n4ss1[1]), .dataa (1'b1), 
                           .datab (state), .datac (b[0]), .datad (i_b[1])) ;
                           defparam ix18055z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix60567z7096 (.combout (nx60567z2), .dataa (nx60567z3
                           ), .datab (nx38650z3), .datac (a[0]), .datad (a[1])
                           ) ;
                           defparam ix60567z7096.lut_mask = 16'h0008;
    fiftyfivenm_lcell_comb ix33332z7096 (.combout (nx33332z2), .dataa (1'b1), .datab (
                           state), .datac (i_valid), .datad (reset)) ;
                           defparam ix33332z7096.lut_mask = 16'hff30;
    fiftyfivenm_lcell_comb ix61882z7096 (.combout (nx61882z2), .dataa (1'b1), .datab (
                           nx38650z1), .datac (state), .datad (reset)) ;
                           defparam ix61882z7096.lut_mask = 16'hffc0;
    fiftyfivenm_lcell_comb ix38650z7095 (.combout (nx38650z1), .dataa (nx38650z2
                           ), .datab (nx38650z3), .datac (state), .datad (
                           i_valid)) ;
                           defparam ix38650z7095.lut_mask = 16'h7f70;
    fiftyfivenm_lcell_comb ix61882z7095 (.combout (nx61882z1), .dataa (nx38650z1
                           ), .datab (nx61882z2), .datac (a[7]), .datad (i_a[7])
                           ) ;
                           defparam ix61882z7095.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix19052z7095 (.combout (nx19052z1), .dataa (nx38650z1
                           ), .datab (nx61882z2), .datac (b[0]), .datad (i_b[0])
                           ) ;
                           defparam ix19052z7095.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix60567z7095 (.combout (nx60567z1), .dataa (nx60567z2
                           ), .datab (state), .datac (o_valid), .datad (i_valid)
                           ) ;
                           defparam ix60567z7095.lut_mask = 16'hc8f8;
    fiftyfivenm_lcell_comb ix55900z7096 (.combout (nx55900z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx38650z1), .datad (reset)) ;
                           defparam ix55900z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix33332z7095 (.combout (nx33332z1), .dataa (state), .datab (
                           a[0]), .datac (i_valid), .datad (reset)) ;
                           defparam ix33332z7095.lut_mask = 16'hffd8;
    fiftyfivenm_lcell_comb ix38650z7097 (.combout (nx38650z3), .dataa (a[4]), .datab (
                           a[5]), .datac (a[6]), .datad (a[7])) ;
                           defparam ix38650z7097.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix38650z7096 (.combout (nx38650z2), .dataa (a[0]), .datab (
                           a[1]), .datac (a[2]), .datad (a[3])) ;
                           defparam ix38650z7096.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60567z7097 (.combout (nx60567z3), .dataa (1'b1), .datab (
                           1'b1), .datac (a[2]), .datad (a[3])) ;
                           defparam ix60567z7097.lut_mask = 16'h000f;
endmodule

