module rtl_module_287 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    input wire [4:0] in_5,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;

    // Logic assignments
    assign out_0 = (~((in_2 & (in_0 & in_0)) & sig_0));
    assign out_1 = (~(~(out_1 & in_0)));
    assign out_2 = (~(((~((~(out_2 & (~((~(out_0 & (in_2 & sig_0))) | in_5)))) | in_2)) ^ in_1) ^ out_2));
    assign out_0 = (sig_0 | (~((~(in_2 & out_0)) ^ out_2)));
    assign sig_0 = (out_0 | ((out_0 | (~(in_0 & (in_3 | out_1)))) ^ in_0));
    assign out_1 = (~(out_0 & (~(in_4 & (out_1 | in_4)))));
    assign sig_0 = (~((in_1 | (((in_1 | in_3) | in_3) & out_0)) & in_4));
    assign sig_0 = (~(out_0 | (in_3 | (~((out_1 & (sig_0 ^ (out_1 & (~in_4)))) ^ out_1)))));
    assign out_0 = ((~(~(in_5 & (~(((~(out_2 & in_4)) | sig_0) & in_5))))) | in_0);

endmodule
