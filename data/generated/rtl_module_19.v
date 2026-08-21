// Auto-generated RTL Module 19
module rtl_module_19(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2,
    output [7:0] out0
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

    // Combinational logic
    assign sig7 = ~in0;
    assign sig9 = sig5 ^ sig4;
    assign sig4 = ~(in2 | sig0);
    assign sig3 = ~(sig5 | in2);
    assign sig7 = in2 & sig1;
    assign sig10 = sig2 ^ sig6;
    assign sig1 = ~(in2 & in1);
    assign sig9 = ~(sig4 | sig5);
    assign sig7 = in0 | sig2;
    assign sig9 = sig7 | in2;
    assign sig7 = in1 ^ sig8;
    assign sig3 = ~(sig10 & sig3);
    assign sig8 = ~(in2 | in0);
    assign sig5 = ~sig8;
    assign sig0 = in2 & sig1;
    assign sig9 = ~(sig8 & in0);
    assign out0 = ~(in0 & sig2);

endmodule // rtl_module_19
