module rtl_module_431 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [4:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [2:0] sig_13;
    wire [7:0] sig_14;
    wire [6:0] sig_15;
    wire [1:0] sig_16;

    // Logic assignments
    assign out_0 = (~(sig_3 & ((sig_1 | (in_4 ^ (sig_11 | (~(sig_1 ^ sig_3))))) & out_1)));
    assign out_1 = (out_2 ^ (~((sig_2 ^ ((~(sig_3 & (~((~(~(in_2 & sig_1))) | sig_13)))) | sig_2)) & sig_10)));
    assign out_2 = ((sig_13 & (~((~(sig_6 & sig_6)) | sig_7))) | sig_12);
    assign out_3 = (~((out_5 ^ (sig_5 | out_0)) | sig_9));
    assign out_4 = (sig_10 ^ (~((~sig_8) | in_4)));
    assign out_5 = (~((~(out_4 & ((~(in_4 & sig_4)) & sig_6))) & sig_9));
    assign sig_4 = (sig_14 & (~(sig_16 & sig_0)));
    assign out_3 = (~((~(sig_12 & (sig_5 ^ (sig_11 | (~((sig_10 & (~in_1)) & out_4)))))) | out_0));
    assign sig_14 = (~(sig_9 | (out_1 | ((~(sig_5 | (sig_6 ^ sig_13))) ^ sig_1))));
    assign out_2 = (~(out_5 | (~((~(sig_12 & (~((out_3 | (~(out_5 | (~(in_3 & sig_16))))) & in_3)))) | out_3))));
    assign sig_16 = (~((out_0 & ((~((sig_16 | ((~sig_1) & sig_5)) | sig_2)) ^ in_1)) | sig_13));
    assign sig_2 = (~((out_5 & (~(out_5 ^ sig_4))) | in_4));
    assign out_3 = (in_3 | (~((sig_2 & (sig_10 & sig_0)) & out_4)));
    assign out_0 = (~(out_3 | (~((sig_10 | (~(sig_1 | (~((~(sig_3 | (~(out_2 & sig_9)))) | sig_14))))) | sig_10))));
    assign sig_3 = (~(~(out_3 & (~(~(((~(sig_11 | sig_7)) & out_0) | sig_6))))));
    assign sig_3 = (~(sig_0 & (out_1 ^ out_3)));
    assign out_3 = (~(((~((~out_1) & sig_14)) ^ out_1) & out_3));
    assign sig_0 = (~((~(~out_3)) | sig_15));
    assign sig_0 = (sig_1 & ((~(in_2 | ((~(out_1 | in_0)) ^ in_4))) & sig_1));

endmodule
