// Auto-generated RTL Module 46
module rtl_module_46(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;

    // Combinational logic
    assign sig2 = ~(in2 & in7);
    assign sig3 = sig4 ^ sig2;
    assign sig0 = in6 & sig1;
    assign sig2 = ~(sig2 & in3);
    assign sig3 = ~(in1 | sig4);
    assign sig4 = sig4 | sig3;
    assign sig3 = in4 | in5;
    assign sig0 = ~(sig2 | sig0);
    assign out2 = ~(in1 & sig0);
    assign out0 = sig1 | in0;
    assign out1 = in1 | sig3;

endmodule // rtl_module_46
