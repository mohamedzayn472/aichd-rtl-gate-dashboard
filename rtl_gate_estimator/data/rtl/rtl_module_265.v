module rtl_module_265 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;

    // Logic assignments
    assign out_0 = (sig_1 | ((in_1 & out_0) & out_3));
    assign out_1 = (~(out_0 | ((sig_1 | (in_0 | (~(~((~(in_1 | out_0)) | sig_0))))) ^ in_1)));
    assign out_2 = (in_2 ^ ((~((~(~(~(sig_0 & out_1)))) | sig_0)) | sig_1));
    assign out_3 = (((((~(sig_0 | (out_2 | (out_0 ^ out_3)))) ^ out_1) | out_2) | out_3) | sig_0);
    assign sig_0 = (~(sig_1 & (~((~((~(sig_0 ^ (out_1 & sig_1))) | in_1)) & in_0))));
    assign out_2 = ((~(in_0 ^ in_1)) & in_2);
    assign sig_0 = (~((in_0 ^ (~(in_1 & sig_1))) | in_2));

endmodule
