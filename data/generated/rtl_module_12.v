// Auto-generated RTL Module 12
module rtl_module_12(
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
    assign sig4 = ~in0;
    assign sig22 = ~sig17;
    assign sig12 = in1 | sig2;
    assign sig0 = ~(sig1 | in1);
    assign sig10 = ~in0;
    assign sig12 = ~(sig13 & sig18);
    assign sig3 = ~(in1 | in1);
    assign sig10 = ~sig0;
    assign sig11 = in1 | sig22;
    assign sig7 = sig13 & in0;
    assign sig16 = ~in1;
    assign sig23 = sig12 & sig9;
    assign sig24 = in0 ^ in1;
    assign sig20 = sig2 | sig16;
    assign sig11 = in0 & sig24;
    assign sig7 = sig23 ^ in0;
    assign sig6 = in0 & sig8;
    assign sig24 = sig19 | sig4;
    assign sig24 = ~(in0 | in0);
    assign sig24 = ~(sig15 | sig14);
    assign sig18 = ~(in1 & sig21);
    assign sig20 = ~(sig20 | in1);
    assign sig2 = in0 ^ sig14;
    assign sig20 = ~sig14;
    assign sig11 = in1 ^ in0;
    assign sig14 = ~(sig2 & sig9);
    assign sig1 = ~in0;
    assign sig20 = sig9 ^ in0;
    assign sig18 = in1 & sig14;
    assign sig1 = ~(sig25 & sig23);
    assign sig10 = ~in0;
    assign sig4 = ~(sig15 & sig16);
    assign sig25 = in1 & sig3;
    assign sig16 = sig22 ^ in0;
    assign sig7 = ~(in0 | sig1);
    assign sig16 = ~(sig14 | sig14);
    assign sig11 = ~(in0 & in1);
    assign sig24 = sig12 ^ sig13;
    assign sig20 = in0 ^ sig25;
    assign sig10 = ~(sig10 | in0);
    assign sig8 = in1 & sig9;
    assign sig4 = ~(sig21 | sig19);
    assign sig11 = in0 ^ in0;
    assign sig21 = sig20 ^ sig22;
    assign sig19 = ~in0;
    assign sig17 = ~(sig2 | in1);
    assign sig4 = ~in1;
    assign sig21 = ~(sig22 | sig23);
    assign sig16 = ~(in0 & in1);
    assign sig9 = sig0 ^ sig11;
    assign sig24 = in0 | sig10;
    assign sig7 = ~sig6;
    assign sig9 = in0 | sig2;
    assign sig17 = sig16 & sig24;
    assign sig24 = ~(in0 | in1);
    assign sig12 = ~(sig4 & sig19);
    assign sig22 = in0 | sig5;
    assign sig23 = ~(sig25 & in0);
    assign sig13 = ~in0;
    assign sig7 = sig21 ^ sig23;
    assign sig24 = ~in1;
    assign sig7 = ~(sig25 | sig14);
    assign sig25 = ~(in0 & sig9);
    assign sig11 = ~sig6;
    assign sig24 = ~(in1 | sig14);
    assign sig16 = sig24 ^ sig12;
    assign sig6 = ~(in1 & in0);
    assign sig1 = ~(sig4 & sig8);
    assign sig17 = ~(in1 | sig11);
    assign sig9 = sig22 & in0;
    assign sig14 = in0 & sig8;
    assign sig2 = ~(sig4 & sig13);
    assign sig0 = in1 | in1;
    assign sig12 = ~sig1;
    assign out2 = ~(in1 & sig7);
    assign sig11 = ~sig2;
    assign out4 = in0 | sig10;
    assign out5 = sig22 & sig20;
    assign out6 = in0 ^ in0;
    assign out7 = sig9 & sig15;
    assign out0 = ~(in0 | sig24);

endmodule // rtl_module_12
