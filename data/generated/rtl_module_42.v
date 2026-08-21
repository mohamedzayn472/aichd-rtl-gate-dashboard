// Auto-generated RTL Module 42
module rtl_module_42(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;

    // Combinational logic
    assign sig0 = ~(in1 & in1);
    assign sig1 = ~(sig2 & sig3);
    assign sig3 = ~in0;
    assign out0 = sig0 ^ in0;
    assign out1 = ~(in0 | sig3);
    assign out2 = ~(sig0 & sig2);

endmodule // rtl_module_42
