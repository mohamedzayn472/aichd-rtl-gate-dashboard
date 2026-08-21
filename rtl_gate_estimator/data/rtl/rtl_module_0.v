module rtl_module_0 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    input wire [1:0] in_5,
    input wire [6:0] in_6,
    output wire [0:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;

    // Logic assignments
    assign out_0 = (in_3 | (~((~(in_2 | (~(in_0 | (~(sig_0 & (~in_3))))))) | in_5)));
    assign out_1 = ((in_0 & (~(in_5 & in_5))) & sig_1);
    assign out_1 = (~(in_5 & (out_0 ^ out_1)));
    assign sig_0 = (~((in_1 | in_4) | in_1));
    assign out_1 = ((in_3 | (out_1 ^ (((~((out_1 ^ out_1) | out_1)) | in_3) ^ in_6))) ^ in_0);
    assign sig_0 = (in_3 ^ (~(((sig_1 | (~((~((in_3 ^ out_1) | out_1)) & in_4))) & out_0) ^ out_0)));
    assign sig_1 = (~(sig_1 & ((out_0 & ((~(in_2 | out_1)) | in_1)) & sig_1)));
    assign sig_0 = (~(sig_1 | (in_4 & (~(in_1 | (~(in_2 & (in_4 ^ (~((in_1 ^ in_4) | sig_0))))))))));
    assign sig_1 = (in_3 | (~((~(in_1 & (out_0 & in_5))) & in_4)));

endmodule
