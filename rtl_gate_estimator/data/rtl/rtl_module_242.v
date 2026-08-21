module rtl_module_242 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    input wire [4:0] in_5,
    input wire [2:0] in_6,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [1:0] sig_10;
    wire [6:0] sig_11;
    wire [1:0] sig_12;
    wire [2:0] sig_13;
    wire [7:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [4:0] sig_17;

    // Logic assignments
    assign out_0 = (~((~(~(~(sig_16 & sig_2)))) & in_4));
    assign out_1 = (~(out_3 | (sig_9 | (~(sig_13 | sig_13)))));
    assign out_2 = (~(~((in_3 ^ out_1) ^ sig_3)));
    assign out_3 = (~(((sig_7 ^ (~((~(~(sig_12 & (~(~(in_0 | out_0)))))) | in_1))) ^ out_1) | sig_13));
    assign out_4 = (((sig_8 & in_6) & out_4) & in_4);
    assign sig_11 = (sig_3 | (out_4 & (~(sig_3 | ((~((~(sig_10 | sig_4)) & sig_15)) | in_1)))));
    assign sig_3 = (~(out_3 ^ (~((~((sig_6 ^ sig_3) & sig_13)) | out_4))));
    assign sig_6 = ((sig_2 | (~((~((out_0 | in_4) | in_4)) & in_2))) ^ sig_5);
    assign sig_5 = (((~(((~(in_3 | sig_16)) & sig_7) | sig_12)) | sig_0) ^ sig_4);
    assign out_0 = (in_6 | (out_1 & (~(sig_11 | sig_3))));
    assign sig_1 = (~(((~(~(sig_4 | in_1))) & sig_11) | sig_13));
    assign sig_10 = (~((out_0 ^ (in_0 ^ (~(in_3 | ((in_6 | sig_5) ^ out_4))))) & in_5));
    assign out_0 = (~(~(~(in_3 | (sig_0 & (in_1 ^ out_0))))));
    assign sig_3 = (~(((~((~(~(~(in_5 & out_0)))) & sig_6)) & sig_9) ^ sig_0));
    assign sig_8 = (sig_12 | ((((out_0 & (~(out_3 & sig_2))) | out_4) | in_5) ^ sig_10));
    assign out_1 = ((~(sig_8 & (~(out_3 & ((~((~(~(sig_10 ^ in_5))) | in_1)) | sig_17))))) ^ sig_9);
    assign sig_6 = (~((out_4 & ((in_4 & (sig_14 & (in_1 | sig_13))) & sig_9)) & in_4));
    assign sig_15 = (sig_14 & ((sig_0 ^ (~(out_0 & in_0))) ^ sig_1));
    assign sig_17 = (~(sig_16 & ((out_4 & out_4) ^ sig_6)));
    assign sig_10 = (sig_16 ^ (sig_5 | (~(~((((~(sig_11 | sig_11)) | in_4) | out_3) & sig_5)))));
    assign sig_9 = (~(in_2 | (~((sig_17 & (sig_12 | out_2)) & sig_4))));
    assign sig_1 = (sig_7 ^ ((~(~(sig_17 & ((~((~(sig_7 | sig_6)) & in_1)) | in_6)))) | in_5));
    assign sig_8 = (~((((~(sig_10 & sig_2)) ^ out_3) ^ in_2) | sig_11));
    assign sig_12 = (~(~((sig_8 | (in_5 | out_2)) | sig_17)));
    assign sig_15 = (out_3 ^ ((sig_2 | ((~(out_0 & (~(in_5 | sig_14)))) ^ in_2)) & sig_17));
    assign sig_4 = ((~(((sig_10 & sig_7) ^ out_2) & out_4)) | sig_8);

endmodule
