// Auto-generated RTL Module 7
module rtl_module_7(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
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

    // Combinational logic
    assign sig9 = in1 | in0;
    assign sig5 = sig7 | sig4;
    assign sig4 = in0 | sig2;
    assign sig4 = sig9 & in0;
    assign sig3 = ~(in1 & sig6);
    assign sig1 = sig9 & sig3;
    assign sig9 = ~(in1 | in0);
    assign sig6 = sig5 & sig8;
    assign sig8 = ~(in1 | sig1);
    assign sig6 = ~(sig5 | in0);
    assign sig6 = ~in0;
    assign sig6 = sig7 ^ sig2;
    assign sig7 = in1 | in1;
    assign sig4 = ~sig9;
    assign sig4 = in0 ^ sig1;
    assign sig7 = ~sig3;
    assign sig0 = ~(in1 & sig5);
    assign sig2 = ~sig5;
    assign sig5 = ~in0;
    assign sig9 = sig5 ^ sig4;
    assign sig0 = ~(in1 | sig8);
    assign sig3 = ~(sig3 & in0);
    assign sig8 = ~(in1 | sig7);
    assign sig7 = sig7 | sig7;
    assign sig3 = in0 & in1;
    assign sig4 = ~sig3;
    assign sig8 = ~(in1 | sig7);
    assign sig8 = ~(sig5 & in1);
    assign out1 = in1 ^ sig7;
    assign out2 = sig4 ^ sig4;
    assign out0 = in0 | in0;

endmodule // rtl_module_7
