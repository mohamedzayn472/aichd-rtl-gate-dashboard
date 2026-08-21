// Auto-generated RTL Module 37
module rtl_module_37(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4,
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
    wire [7:0] sig26;
    wire [7:0] sig27;
    wire [7:0] sig28;
    wire [7:0] sig29;
    wire [7:0] sig30;
    wire [7:0] sig31;

    // Combinational logic
    assign sig11 = ~(in1 & in4);
    assign sig24 = ~(sig8 | sig6);
    assign sig24 = ~(in4 | sig20);
    assign sig17 = ~sig15;
    assign sig18 = ~in2;
    assign sig8 = ~sig8;
    assign sig19 = ~in4;
    assign sig12 = ~(sig20 | sig13);
    assign sig22 = in4 | sig18;
    assign sig20 = ~(sig8 | in1);
    assign sig30 = ~(in0 | sig22);
    assign sig27 = ~(sig26 & sig18);
    assign sig1 = in4 & in0;
    assign sig3 = ~sig9;
    assign sig17 = ~(in0 | sig12);
    assign sig9 = sig18 | in2;
    assign sig2 = in2 & sig13;
    assign sig14 = sig28 ^ sig6;
    assign sig15 = ~(in4 | in3);
    assign sig24 = ~(sig18 & sig3);
    assign sig20 = ~in3;
    assign sig16 = ~(sig3 & in0);
    assign sig14 = in4 | sig28;
    assign sig12 = ~(sig23 | sig12);
    assign sig4 = in3 ^ in1;
    assign sig24 = sig11 | sig7;
    assign sig16 = in3 & sig17;
    assign sig16 = sig10 | in4;
    assign sig9 = in2 & sig29;
    assign sig3 = sig9 & sig20;
    assign sig31 = ~(in4 | in2);
    assign sig20 = ~(sig22 & sig4);
    assign sig4 = ~(in1 & sig11);
    assign sig25 = ~(sig10 & in3);
    assign sig13 = in2 & sig14;
    assign out3 = ~(sig21 | sig21);
    assign out4 = in2 ^ in1;
    assign out5 = ~(sig30 & sig0);
    assign out6 = in2 & sig28;
    assign out7 = sig15 | in0;
    assign out0 = ~(in2 | sig24);
    assign out1 = sig24 & sig16;
    assign out2 = ~(in2 & in0);

endmodule // rtl_module_37
