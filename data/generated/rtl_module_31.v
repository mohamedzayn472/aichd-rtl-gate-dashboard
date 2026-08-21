// Auto-generated RTL Module 31
module rtl_module_31(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
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

    // Combinational logic
    assign sig4 = in1 ^ in1;
    assign sig0 = sig7 ^ sig2;
    assign sig4 = ~(in4 & sig3);
    assign sig7 = ~sig6;
    assign sig6 = in0 & sig4;
    assign sig3 = sig6 | sig3;
    assign sig0 = ~(in6 | in4);
    assign sig7 = ~sig5;
    assign sig5 = ~(in6 & sig7);
    assign sig4 = ~(sig5 & in3);
    assign sig3 = in0 | sig5;
    assign out4 = sig4 & sig0;
    assign sig5 = ~in4;
    assign out6 = ~(sig3 & sig2);
    assign out0 = in1 & sig3;
    assign out1 = sig0 ^ in6;
    assign out2 = in4 | sig6;
    assign out3 = sig2 ^ sig2;

endmodule // rtl_module_31
