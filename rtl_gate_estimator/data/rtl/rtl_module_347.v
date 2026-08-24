module rtl_module_347 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [2:0] in_3,
    input wire [0:0] in_4,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [3:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign out_0 = (~(in_4 & (~(~(in_1 & sig_0)))));
    assign out_1 = ((~((((~(in_3 | (~(~(out_0 & out_2))))) & sig_0) & out_0) & in_2)) ^ out_4);
    assign out_2 = ((~(~(out_4 & out_3))) ^ sig_0);
    assign out_3 = (~(in_2 & (~(((~(~(out_1 | ((in_0 | (in_0 ^ out_0)) & in_0)))) | out_3) | out_4))));
    assign out_4 = ((in_0 & (~(out_0 & (~(out_0 & (~(~(in_2 | sig_0)))))))) & in_3);
    assign sig_0 = (~(~((~((in_4 | ((in_0 ^ (out_1 & (~in_3))) & out_1)) | out_3)) & out_3)));
    assign out_0 = ((out_4 ^ out_0) & in_0);
    assign out_4 = (~((out_2 ^ (~in_4)) | out_4));
    assign out_3 = (~((~((~(((in_2 & (sig_0 | (in_3 | out_1))) | in_3) & out_3)) & out_4)) & sig_0));
    assign sig_0 = (~((~((~((out_4 | out_2) | in_4)) | sig_0)) & out_4));
    assign out_3 = (in_4 ^ ((~(out_4 & ((~out_2) ^ in_0))) ^ out_3));
    assign out_0 = (~(~((~((sig_0 | (~sig_0)) & out_4)) & in_0)));

endmodule
