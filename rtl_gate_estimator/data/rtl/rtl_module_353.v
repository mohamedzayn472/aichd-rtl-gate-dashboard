module rtl_module_353 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2,
    output wire [7:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;

    // Logic assignments
    assign out_0 = (~(out_2 & ((~(sig_1 & (~(out_2 | out_3)))) | out_2)));
    assign out_1 = (~((((sig_1 ^ out_0) & out_0) ^ in_2) & in_0));
    assign out_2 = (~(sig_0 ^ (~in_0)));
    assign out_3 = ((in_2 ^ ((~(out_2 & (~(sig_0 | in_0)))) | out_3)) & out_4);
    assign out_4 = ((sig_0 | (~(in_3 | (~(out_3 | (~out_1)))))) | in_0);
    assign out_4 = (in_0 | (~out_0));
    assign out_2 = (~(in_0 & (out_3 & out_1)));
    assign out_1 = (~((~(in_2 | ((in_1 & (~(in_0 & in_2))) & out_0))) | sig_1));
    assign out_0 = (~((in_3 & in_2) & in_1));

endmodule
