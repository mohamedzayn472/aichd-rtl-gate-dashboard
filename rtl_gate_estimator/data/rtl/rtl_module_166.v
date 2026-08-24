module rtl_module_166 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    output wire [2:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;

    // Logic assignments
    assign out_0 = ((~(sig_0 & (~(~(in_2 ^ (~((in_1 & in_0) | in_2))))))) ^ in_2);
    assign sig_0 = (out_0 ^ ((~(((~(in_1 | (~(in_2 & (~((in_1 | in_1) & in_0)))))) ^ in_0) | in_3)) & in_3));
    assign sig_0 = (~((~(in_0 | (~(out_0 | ((~(~(in_2 & in_1))) & in_0))))) | sig_0));
    assign sig_0 = ((~(sig_0 | (out_0 ^ in_1))) ^ in_2);
    assign out_0 = (out_0 & (~in_1));
    assign sig_0 = (~((~((~((((~in_3) | in_3) | in_3) | in_2)) ^ in_1)) & in_0));

endmodule
