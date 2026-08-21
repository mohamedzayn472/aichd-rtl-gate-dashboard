// Auto-generated RTL Module 2
module rtl_module_2(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7,
    output [7:0] out0, output [7:0] out1
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
    wire [7:0] sig20;
    wire [7:0] sig21;
    wire [7:0] sig22;
    wire [7:0] sig23;
    wire [7:0] sig24;
    wire [7:0] sig25;
    wire [7:0] sig26;

    // Combinational logic
    assign sig21 = ~(in2 & in2);
    assign sig5 = ~sig17;
    assign sig17 = in6 ^ sig6;
    assign sig22 = ~(sig22 | in3);
    assign sig20 = in6 ^ sig21;
    assign sig14 = sig14 ^ sig16;
    assign sig2 = in3 & in3;
    assign sig17 = sig0 ^ sig18;
    assign sig2 = in3 | sig0;
    assign sig7 = ~(sig20 | in0);
    assign sig2 = in0 & sig10;
    assign sig21 = ~(sig7 & sig8);
    assign sig17 = ~in3;
    assign sig18 = sig23 | sig18;
    assign sig25 = ~in3;
    assign sig13 = ~sig25;
    assign sig21 = in1 | sig3;
    assign sig13 = ~sig11;
    assign sig23 = ~in7;
    assign sig20 = sig21 & sig20;
    assign sig23 = in0 & sig12;
    assign sig7 = sig25 ^ in1;
    assign sig14 = in3 | sig17;
    assign sig8 = sig13 | sig5;
    assign sig2 = ~in3;
    assign sig17 = ~sig25;
    assign sig17 = in0 & sig20;
    assign sig5 = sig2 & in3;
    assign sig15 = ~in7;
    assign sig5 = sig12 | sig1;
    assign sig12 = ~in0;
    assign sig14 = sig25 ^ sig25;
    assign sig23 = in6 ^ sig22;
    assign sig4 = ~(sig21 & in7);
    assign sig1 = in4 | sig6;
    assign sig1 = ~(sig23 & sig17);
    assign sig1 = ~(in5 | in0);
    assign sig16 = ~(sig15 & sig16);
    assign sig2 = in0 | sig16;
    assign sig21 = sig2 | in1;
    assign sig18 = in6 | sig3;
    assign sig1 = sig18 | sig19;
    assign sig21 = ~(in1 & in6);
    assign sig10 = ~(sig18 & sig16);
    assign sig22 = in3 ^ sig21;
    assign sig12 = sig7 ^ in4;
    assign sig10 = in4 | sig14;
    assign sig19 = sig0 & sig14;
    assign sig17 = ~(in1 & in1);
    assign sig4 = sig16 | sig8;
    assign sig11 = in1 ^ sig7;
    assign sig26 = sig5 ^ in7;
    assign sig25 = ~(in4 & sig19);
    assign sig21 = ~(sig16 | sig0);
    assign sig4 = ~(in4 & in1);
    assign sig23 = sig3 ^ sig3;
    assign sig9 = ~(in2 & sig8);
    assign sig6 = ~(sig6 & in5);
    assign sig15 = ~(in4 | sig16);
    assign sig20 = sig1 ^ sig2;
    assign sig1 = ~in4;
    assign sig4 = sig10 & sig24;
    assign out0 = ~(in4 | sig5);
    assign out1 = ~(sig14 | in6);

endmodule // rtl_module_2
