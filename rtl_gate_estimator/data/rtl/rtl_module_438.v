module rtl_module_438 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    output wire [6:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;

    // Logic assignments
    assign out_0 = (sig_0 & (~(in_2 ^ (in_2 & (sig_0 ^ (sig_0 | in_3))))));
    assign out_1 = (((((~(sig_0 & sig_1)) | sig_0) | sig_0) ^ out_1) ^ out_1);
    assign sig_1 = ((((out_1 | ((sig_1 & in_1) | sig_1)) | out_1) | out_1) ^ out_0);
    assign out_0 = (~((in_1 & out_0) & in_3));
    assign out_1 = (~(((out_0 & (sig_0 & (~(in_2 & ((in_2 | in_1) | sig_1))))) | in_1) | out_0));
    assign out_0 = ((~(~(out_0 & (~(out_1 & ((out_1 & ((out_1 ^ sig_0) ^ sig_1)) ^ sig_1)))))) ^ in_3);

endmodule
