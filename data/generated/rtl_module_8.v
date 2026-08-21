// Auto-generated RTL Module 8
module rtl_module_8(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
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

    // Combinational logic
    assign sig6 = ~(in1 & in1);
    assign sig23 = ~(sig15 | sig8);
    assign sig6 = ~(in2 & sig3);
    assign sig5 = sig7 ^ in2;
    assign sig17 = in0 ^ sig22;
    assign sig1 = sig8 | sig1;
    assign sig20 = ~(in2 & in1);
    assign sig0 = ~sig3;
    assign sig15 = ~(in2 & sig15);
    assign sig5 = ~sig10;
    assign sig3 = in2 & sig15;
    assign sig2 = sig12 & sig15;
    assign sig4 = ~(in0 & in1);
    assign sig7 = ~(sig9 & sig2);
    assign sig19 = in3 & sig19;
    assign sig14 = ~(sig7 & in3);
    assign sig18 = ~in2;
    assign sig18 = ~sig9;
    assign sig24 = ~(in0 & in0);
    assign sig8 = sig20 | sig6;
    assign sig7 = ~(in0 | sig5);
    assign sig5 = sig17 | in0;
    assign sig22 = in3 & sig14;
    assign sig1 = ~(sig15 & sig9);
    assign sig22 = in2 | in2;
    assign sig21 = ~sig2;
    assign sig25 = in2 | sig25;
    assign sig13 = ~(sig18 | in1);
    assign sig4 = in1 & sig20;
    assign sig1 = sig4 ^ sig2;
    assign sig14 = in2 | in2;
    assign sig9 = sig14 & sig22;
    assign sig16 = ~(in3 | sig8);
    assign sig2 = ~(sig15 & in3);
    assign sig23 = ~(in0 & sig13);
    assign sig0 = sig19 ^ sig8;
    assign sig24 = in1 & in0;
    assign sig1 = ~(sig8 | sig18);
    assign sig20 = in3 | sig16;
    assign sig5 = ~sig8;
    assign sig15 = ~(in3 & sig20);
    assign sig13 = sig15 & sig11;
    assign sig5 = in2 ^ in0;
    assign sig15 = sig13 ^ sig22;
    assign sig17 = in3 ^ sig24;
    assign sig10 = sig14 & in0;
    assign sig24 = in2 ^ sig3;
    assign sig0 = ~sig16;
    assign sig1 = ~(in3 | in3);
    assign sig19 = sig16 | sig11;
    assign sig24 = ~in3;
    assign sig17 = sig6 & in2;
    assign sig22 = in2 | sig14;
    assign sig0 = ~sig3;
    assign out0 = ~(in1 | in1);

endmodule // rtl_module_8
