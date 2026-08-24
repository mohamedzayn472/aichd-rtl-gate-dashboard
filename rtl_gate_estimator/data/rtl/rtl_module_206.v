module rtl_module_206 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    output wire [0:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;

    // Logic assignments
    assign out_0 = ((in_0 & (~(sig_0 | sig_4))) ^ sig_7);
    assign out_1 = (~(((~((~(sig_11 & (~(out_2 & (sig_8 | (sig_10 & sig_6)))))) | in_0)) | out_2) | in_2));
    assign out_2 = (out_1 & (~(sig_1 & (sig_7 ^ (~(sig_7 | sig_4))))));
    assign sig_1 = ((out_2 ^ (~(~(in_2 & (~(~(sig_1 ^ out_2))))))) ^ sig_4);
    assign sig_3 = ((~(~(sig_9 & (~(sig_4 | (~(((~(sig_0 | (out_2 | sig_11))) & sig_0) | sig_11))))))) ^ in_0);
    assign sig_5 = (in_1 ^ (sig_10 ^ (~(in_0 ^ (~((~(in_0 & sig_6)) & sig_5))))));

endmodule
