module rtl_module_299 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    input wire [5:0] in_2,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;

    // Logic assignments
    assign out_0 = (~(sig_3 & (out_3 | ((~((~(((out_2 & in_2) | sig_0) & out_0)) & out_3)) | out_4))));
    assign out_1 = (in_1 | (~(((sig_0 | (in_2 & sig_3)) ^ sig_2) & out_2)));
    assign out_2 = (~(out_1 | (out_4 | (~((~((in_0 ^ ((~(out_0 & sig_3)) ^ sig_0)) | in_2)) & sig_3)))));
    assign out_3 = (~((~(out_2 | (~(~((in_2 & (sig_2 | (~(sig_3 & in_0)))) | in_1))))) ^ sig_0));
    assign out_4 = (out_3 & (in_2 ^ (~(~(~(~((~((~(sig_2 | out_2)) & in_1)) | in_1)))))));
    assign out_4 = ((sig_0 ^ in_2) & out_3);
    assign sig_2 = (~(~((~(out_4 ^ sig_2)) & sig_2)));
    assign out_4 = (((~(out_3 & (~(out_2 & sig_2)))) ^ in_0) ^ in_0);
    assign out_4 = (~(in_2 & (~((~(sig_1 & (~(out_1 & (~(sig_1 & out_2)))))) & in_0))));
    assign sig_0 = (~(((~(in_0 & ((out_2 & (out_3 ^ out_3)) ^ out_2))) ^ out_0) | sig_0));
    assign out_4 = ((in_2 | in_0) ^ sig_0);
    assign out_2 = (~(~(((in_2 | (~((~(~(in_2 & sig_2))) & sig_1))) ^ out_4) & out_3)));

endmodule
