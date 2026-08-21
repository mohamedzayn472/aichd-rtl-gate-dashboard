// Auto-generated RTL Module 48
module rtl_module_48(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
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
    assign sig21 = ~(in4 | in2);
    assign sig21 = ~sig22;
    assign sig5 = ~in0;
    assign sig16 = sig17 | in3;
    assign sig17 = in5 ^ sig5;
    assign sig10 = ~(sig14 & sig11);
    assign sig11 = ~(in2 & in6);
    assign sig20 = ~sig24;
    assign sig23 = ~in6;
    assign sig18 = sig19 ^ in1;
    assign sig24 = ~(in1 & sig12);
    assign sig11 = ~(sig23 & sig8);
    assign sig12 = ~in3;
    assign sig9 = sig23 & sig1;
    assign sig4 = ~(in0 & sig16);
    assign sig7 = sig0 ^ in2;
    assign sig0 = in6 | sig10;
    assign sig17 = ~(sig26 | sig8);
    assign sig18 = ~(in4 & in4);
    assign sig14 = sig3 | sig1;
    assign sig8 = in1 ^ sig4;
    assign sig7 = sig18 ^ in1;
    assign sig2 = in6 ^ sig9;
    assign sig6 = ~(sig12 & sig18);
    assign sig10 = ~(in0 | in5);
    assign sig15 = ~sig5;
    assign sig26 = ~(in5 | sig18);
    assign sig9 = sig19 & in5;
    assign sig18 = in5 & sig25;
    assign sig24 = ~sig2;
    assign sig11 = in6 & in2;
    assign sig3 = ~sig13;
    assign sig19 = in5 | sig20;
    assign sig20 = sig20 & in6;
    assign sig9 = ~in0;
    assign sig17 = ~(sig1 & sig10);
    assign sig16 = ~(in1 & in2);
    assign sig1 = ~(sig7 | sig4);
    assign sig14 = ~(in5 | sig12);
    assign sig2 = ~(sig18 & in4);
    assign sig25 = in3 | sig9;
    assign sig4 = ~sig4;
    assign sig18 = in0 ^ in3;
    assign sig12 = ~(sig1 | sig17);
    assign sig16 = in0 ^ sig12;
    assign sig22 = ~sig24;
    assign sig15 = in6 | sig4;
    assign sig12 = ~(sig6 & sig15);
    assign sig17 = ~(in4 | in1);
    assign sig7 = ~(sig23 & sig16);
    assign sig24 = in0 | sig8;
    assign sig21 = ~sig10;
    assign out0 = ~(in0 & sig3);
    assign out1 = ~(sig13 | sig13);

endmodule // rtl_module_48
