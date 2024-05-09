


`timescale 1ns / 1ps

module tb_adpll;

// Constants
localparam real CLOCK_PERIOD = 6.4; // Clock period (156.25 MHz)
localparam real SIM_TIME = 5000; // Simulation time in ms
localparam real TARGET_FREQ = 10.0;
localparam real TARGET_PERIOD = 1.0 / TARGET_FREQ;
localparam real REF_PERIOD = TARGET_PERIOD * 1.000000;

// Signals
reg reset   = 1'b1;
reg clock   = 1'b0;
reg ref_clk = 1'b0;
wire clk_out;

// Clock Process
//initial begin 
//forever 
//    #CLOCK_PERIOD/2 clock = ~clock;
//end

always begin
  clock = 1'b1 ; 
  #3.2 clock = 1'b0; 
  #3.2 ; 
end 



// Ref_clk Process
always  begin
    ref_clk = 1'b1; // add delay for phase mismatch on start.
    #5.0E11 ref_clk = 1'b0 ;
    #5.0E11 ;
end

// Stimulus Process
initial begin
    #50 reset = 1'b0;       // Transition reset from high to low
                            // Convert SIM_TIME to ns
end

// Instantiate the DUT
// all_digital_pll DUT (
//     .reset(reset),
//     .clock(clock),
//     .ref_clk(ref_clk),
//     .clk_out(clk_out)
// );


// ppspll #(
//         // {{{
//         .STEP_BITS              (24) ,
//         .PHASE_BITS             (32+24) ,
//         .OPT_TRACK_FREQUENCY    (1'b1) ,
//         .OPT_ASYNCHRONOUS_PPS   (1'b1) ,
//         // }}}
//     ) DUT (
//         // {{{
//         .i_clk          (clock  ), //input    wire               
//         .i_ld           (load   ), //input    wire               
//         .i_step         (24'h31415928   ), //input    wire    [(SB-1):0] 
//         .i_ce           (1'b1     ), //input    wire               
//         .i_pps          (ref_clk), //input    wire               
//         .i_pcoef        (p_coef ), //input    wire    [PB-1:0]   
//         .i_fcoef        (f_coef ), //input    wire    [SB-1:0]   
//         .o_pps          (clk_out), //output   reg                
//         .o_phase        (phase_out )  //output   wire    [PB-1:0]   
//         // }}}
//     );

gpsclock dut (
    .i_clk      (clock) ,         
    .i_rst      (reset ) ,         
    .i_pps      (ref_clk) ,         
    .o_pps      () ,         
    .o_led      () ,          
    .o_tracking () ,            
    .o_count    () ,           
    .o_step     () ,            
    .o_err      () ,         
    .o_locked   () ,          
    .o_dbg      ()
);

endmodule
