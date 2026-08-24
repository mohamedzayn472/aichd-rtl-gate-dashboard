module rtl_module_390 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [6:0] in_4,
    input wire [1:0] in_5,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [0:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;
    wire [2:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [4:0] sig_17;

    // Logic assignments
    assign out_0 = ((~(sig_14 | (~(((sig_7 | sig_14) & in_0) & sig_13)))) ^ in_5);
    assign out_1 = (~((~(sig_6 & sig_13)) | in_4));
    assign out_2 = (~(sig_11 & (~((~(sig_12 & sig_13)) & out_2))));
    assign out_3 = (~(sig_10 & (~(sig_7 & (~((sig_0 & (in_5 & (sig_3 & (~in_3)))) & in_0))))));
    assign sig_17 = (~(out_3 & ((sig_9 ^ (out_1 ^ ((~(in_3 | out_0)) | in_5))) ^ out_3)));
    assign sig_7 = ((~(sig_16 | (~(((~(sig_9 | (~(out_0 & ((sig_10 ^ sig_1) & sig_16))))) & sig_9) & out_0)))) & in_5);
    assign sig_3 = (sig_5 & (in_5 & (~((~(sig_16 | (~(in_5 ^ sig_8)))) & sig_1))));
    assign sig_14 = (~(((in_4 & sig_15) | in_4) & sig_10));
    assign sig_0 = (sig_4 | (~((sig_11 | (sig_9 | out_3)) | out_3)));
    assign sig_5 = (~(in_0 | out_3));
    assign sig_12 = ((~(sig_11 | (~in_2))) | in_3);
    assign sig_11 = ((sig_15 & (out_2 & in_2)) & out_0);
    assign sig_7 = (~(sig_11 | (out_3 | (((~(sig_14 & in_0)) | sig_15) | in_1))));
    assign sig_2 = (~((sig_14 ^ ((((~(~(out_3 & (~in_2)))) ^ out_2) & sig_8) & sig_9)) & sig_5));
    assign out_0 = ((~(~((in_3 | (~((~(sig_5 | sig_1)) | sig_0))) | sig_16))) & in_4);
    assign sig_2 = ((~(sig_6 & sig_2)) ^ sig_9);
    assign sig_11 = ((~(sig_3 | (out_2 ^ (sig_12 & (out_3 | ((~(in_0 | in_4)) | sig_8)))))) & sig_9);

endmodule
