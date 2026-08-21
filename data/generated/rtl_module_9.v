// Auto-generated RTL Module 9
module rtl_module_9(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;
    wire [7:0] sig5;
    wire [7:0] sig6;
    wire [7:0] sig7;
    wire [7:0] sig8;
    wire [7:0] sig9;
    wire [7:0] sig10;
    wire [7:0] sig11;
    wire [7:0] sig12;
    wire [7:0] sig13;
    wire [7:0] sig14;
    wire [7:0] sig15;
    wire [7:0] sig16;
    wire [7:0] sig17;
    wire [7:0] sig18;
    wire [7:0] sig19;

    // Combinational logic
    assign sig7 = ~in0;
    assign sig4 = sig14 & sig3;
    assign sig16 = ~in2;
    assign sig15 = ~(sig8 | in3);
    assign sig14 = ~in1;
    assign sig6 = ~(sig4 & sig12);
    assign sig8 = ~(in1 & in0);
    assign sig16 = ~sig10;
    assign sig9 = in0 ^ sig9;
    assign sig4 = ~(sig18 & in3);
    assign sig11 = ~in3;
    assign sig12 = sig17 ^ sig17;
    assign sig6 = ~in2;
    assign sig12 = ~(sig7 | sig18);
    assign sig10 = in3 | sig1;
    assign sig12 = ~(sig15 | in3);
    assign sig1 = ~(in1 | sig15);
    assign sig10 = sig16 | sig18;
    assign sig16 = in3 & in0;
    assign sig4 = ~sig0;
    assign sig2 = ~in1;
    assign sig10 = ~sig8;
    assign sig10 = ~(in3 & sig2);
    assign sig10 = ~(sig17 | sig12);
    assign sig19 = ~(in3 | in0);
    assign sig7 = sig7 & sig9;
    assign sig3 = ~(in0 | sig13);
    assign sig5 = ~(sig3 | in3);
    assign sig1 = ~(in2 | sig0);
    assign sig11 = sig1 ^ sig9;
    assign sig7 = in3 ^ in1;
    assign sig5 = ~(sig13 & sig18);
    assign sig19 = in1 | sig2;
    assign sig7 = ~sig19;
    assign sig7 = ~in1;
    assign sig14 = ~sig8;
    assign sig9 = in0 ^ in3;
    assign sig2 = ~(sig17 | sig5);
    assign sig18 = ~in2;
    assign sig14 = sig13 ^ in2;
    assign sig15 = in1 ^ sig12;
    assign sig18 = sig7 & sig12;
    assign sig0 = in2 ^ in2;
    assign sig0 = ~(sig12 | sig8);
    assign out0 = ~(in0 & sig19);

endmodule // rtl_module_9
