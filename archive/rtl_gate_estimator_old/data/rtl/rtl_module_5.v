module rtl_module_5 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    output wire [6:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;

    // Logic assignments
    assign sig_1 = ~(in_1 | out_0);
    assign out_1 = ~(sig_0 & sig_1);
    assign sig_0 = out_1 | in_0;
    assign out_0 = out_1 | sig_1;
    assign sig_0 = in_1 ^ out_1;

endmodule
