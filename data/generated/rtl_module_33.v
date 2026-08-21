// Auto-generated RTL Module 33
module rtl_module_33(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5, output [7:0] out6
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
    assign sig13 = ~(in1 | in0);
    assign sig11 = ~sig12;
    assign sig15 = ~(in1 & sig3);
    assign sig14 = ~(sig7 & in0);
    assign sig0 = in0 & sig9;
    assign sig2 = sig8 ^ sig3;
    assign sig5 = in0 ^ in1;
    assign sig10 = ~(sig2 | sig2);
    assign sig13 = ~(in1 & sig0);
    assign sig5 = ~(sig5 | in1);
    assign sig6 = in0 & sig10;
    assign sig9 = sig13 | sig8;
    assign sig1 = in0 ^ in0;
    assign sig4 = ~sig15;
    assign sig13 = in1 & sig0;
    assign sig6 = sig9 & in1;
    assign sig5 = in0 & sig6;
    assign sig15 = ~(sig9 | sig2);
    assign sig15 = in1 & in1;
    assign sig2 = ~sig8;
    assign sig11 = ~(in1 | sig5);
    assign sig5 = ~sig11;
    assign sig8 = ~in0;
    assign sig8 = ~sig14;
    assign sig4 = in1 | in0;
    assign sig11 = ~(sig3 | sig2);
    assign sig1 = ~(in1 & sig7);
    assign sig13 = ~sig16;
    assign sig15 = ~(in1 & sig7);
    assign sig1 = sig2 ^ sig12;
    assign sig14 = ~(in0 & in0);
    assign sig6 = sig5 | sig6;
    assign sig2 = in0 | sig13;
    assign sig4 = ~(sig13 | in0);
    assign sig2 = ~(in1 & sig10);
    assign sig10 = sig12 & sig12;
    assign sig16 = in1 ^ in0;
    assign sig13 = ~sig3;
    assign sig3 = in0 | sig3;
    assign sig11 = ~(sig3 & in1);
    assign sig12 = ~in1;
    assign sig1 = ~(sig15 | sig15);
    assign sig4 = in1 | in1;
    assign sig12 = ~(sig12 & sig1);
    assign sig15 = in0 ^ sig1;
    assign sig10 = sig11 ^ in0;
    assign sig15 = in1 ^ sig8;
    assign sig4 = ~(sig3 | sig7);
    assign sig8 = in1 ^ in1;
    assign sig6 = ~(sig13 | sig2);
    assign sig13 = ~in0;
    assign sig1 = ~(sig15 | in1);
    assign sig9 = ~(in0 & sig2);
    assign sig4 = ~(sig16 | sig12);
    assign sig6 = ~(in0 & in0);
    assign out6 = sig1 | sig7;
    assign out0 = in1 & sig1;
    assign out1 = sig6 ^ in1;
    assign out2 = in1 ^ sig16;
    assign sig0 = ~sig3;
    assign out4 = in1 | in1;
    assign out5 = ~(sig14 & sig5);

endmodule // rtl_module_33
