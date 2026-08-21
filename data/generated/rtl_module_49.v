// Auto-generated RTL Module 49
module rtl_module_49(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5
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

    // Combinational logic
    assign sig4 = in2 ^ in0;
    assign sig2 = sig5 | sig7;
    assign sig3 = ~in0;
    assign sig1 = sig5 | in1;
    assign sig2 = in0 & sig3;
    assign sig1 = sig0 ^ sig5;
    assign sig0 = in3 ^ in3;
    assign sig3 = sig3 ^ sig8;
    assign sig7 = in2 | sig8;
    assign sig6 = ~(sig2 & in0);
    assign sig2 = ~(in0 & sig4);
    assign sig4 = sig4 & sig3;
    assign out0 = in3 & in0;
    assign out1 = sig6 & sig4;
    assign out2 = ~(in2 | sig1);
    assign out3 = sig4 & in3;
    assign out4 = in3 | sig8;
    assign out5 = ~(sig1 | sig5);

endmodule // rtl_module_49
