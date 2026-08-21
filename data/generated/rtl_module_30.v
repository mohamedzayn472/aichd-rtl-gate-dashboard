// Auto-generated RTL Module 30
module rtl_module_30(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5, output [7:0] out6, output [7:0] out7
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

    // Combinational logic
    assign sig15 = ~(in1 & in0);
    assign sig5 = ~(sig5 & sig11);
    assign sig7 = in0 ^ sig3;
    assign sig1 = ~(sig16 | in0);
    assign sig15 = in0 & sig1;
    assign sig5 = sig12 ^ sig4;
    assign sig10 = in1 & in0;
    assign sig8 = sig13 | sig10;
    assign sig16 = in1 & sig3;
    assign sig7 = ~(sig1 | in0);
    assign sig2 = ~(in0 & sig12);
    assign sig9 = ~sig9;
    assign sig0 = in0 ^ in1;
    assign sig9 = sig6 ^ sig9;
    assign sig11 = ~(in0 | sig14);
    assign sig7 = ~(sig15 & in0);
    assign sig0 = in0 | sig13;
    assign sig10 = sig11 | sig0;
    assign sig3 = in1 & in1;
    assign sig13 = sig16 | sig7;
    assign sig4 = ~in0;
    assign sig1 = ~(sig8 | in0);
    assign sig14 = in1 | sig11;
    assign sig16 = ~(sig2 | sig3);
    assign sig1 = in1 | in0;
    assign sig7 = ~sig4;
    assign sig12 = in1 ^ sig10;
    assign sig14 = ~(sig10 | in1);
    assign sig6 = in0 ^ sig2;
    assign sig3 = sig3 | sig4;
    assign sig10 = in1 | in1;
    assign sig11 = ~sig3;
    assign sig14 = in1 | sig9;
    assign sig5 = sig3 ^ in0;
    assign sig6 = ~(in1 | sig1);
    assign sig7 = sig4 ^ sig2;
    assign sig9 = in1 ^ in0;
    assign sig12 = sig5 ^ sig0;
    assign sig3 = ~in0;
    assign sig4 = ~sig3;
    assign sig7 = in0 & sig1;
    assign out1 = sig6 | sig12;
    assign out2 = in0 ^ in1;
    assign out3 = sig0 & sig2;
    assign out4 = in1 | sig4;
    assign out5 = sig10 & in0;
    assign out6 = in1 & sig1;
    assign out7 = sig13 | sig12;
    assign sig12 = ~in0;

endmodule // rtl_module_30
