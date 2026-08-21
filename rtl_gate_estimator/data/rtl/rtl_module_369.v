module rtl_module_369 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [2:0] in_4,
    input wire [0:0] in_5,
    input wire [1:0] in_6,
    input wire [1:0] in_7,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [1:0] out_3,
    output wire [2:0] out_4,
    output wire [7:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [4:0] sig_14;

    // Logic assignments
    assign out_0 = ((out_5 ^ (~(sig_6 ^ sig_1))) & out_5);
    assign out_1 = (~(in_0 & (~(in_3 & (out_6 | (sig_9 ^ in_2))))));
    assign out_2 = (~((~((sig_3 ^ sig_8) | sig_0)) & out_6));
    assign out_3 = (~(out_0 ^ (out_2 & sig_6)));
    assign out_4 = (~((~(in_2 & (sig_0 & (((((~out_6) ^ out_0) & sig_7) & out_0) | sig_5)))) | sig_10));
    assign out_5 = (sig_12 | (~((((~(sig_0 & sig_6)) | sig_10) & out_1) ^ sig_6)));
    assign out_6 = (~(sig_13 & (in_3 ^ in_2)));
    assign sig_2 = ((out_6 | ((~(~((~(sig_3 & sig_9)) | in_4))) | in_2)) | out_4);
    assign sig_9 = ((in_2 | (sig_2 & sig_9)) | out_1);
    assign out_4 = ((~(out_0 & (sig_6 | (out_6 ^ out_5)))) ^ sig_9);
    assign out_2 = (out_4 ^ ((~(sig_12 | out_1)) | sig_12));
    assign sig_3 = (~(out_6 | ((~(~((~(out_4 & out_1)) | sig_10))) & sig_1)));
    assign out_5 = (~(~(((sig_4 & (~(sig_9 & ((~(sig_14 & sig_7)) | out_1)))) ^ in_4) & sig_14)));
    assign out_6 = (sig_14 & (~((((~((sig_4 & in_3) & sig_8)) | out_5) & in_3) | sig_1)));
    assign out_2 = (~(sig_10 | (~(sig_7 | (~((~((sig_3 & in_4) & sig_13)) ^ in_0))))));
    assign sig_1 = (sig_4 & (~(~((out_3 | (in_2 & (~(sig_2 | sig_10)))) | sig_7))));
    assign out_0 = (~(~(sig_9 | (((~(sig_4 | sig_4)) & in_1) ^ sig_9))));
    assign out_1 = (~(((~((sig_11 ^ ((~(in_4 | sig_1)) ^ out_5)) | sig_8)) ^ out_4) | sig_8));
    assign sig_9 = (sig_6 & ((~(out_5 ^ in_5)) | sig_5));
    assign sig_7 = (in_2 ^ (sig_2 ^ in_5));
    assign out_2 = ((in_3 & (sig_4 & in_4)) | sig_8);
    assign sig_12 = ((sig_14 ^ (~(sig_13 & sig_2))) ^ out_6);
    assign sig_0 = ((~((~(~(out_0 & out_3))) | in_5)) ^ sig_14);
    assign sig_5 = ((sig_9 | ((sig_7 ^ (~(((~((~(sig_12 & sig_7)) & in_0)) | sig_3) & in_6))) | out_4)) ^ sig_4);
    assign sig_5 = (sig_0 & (~(in_0 | sig_0)));
    assign out_1 = (sig_4 ^ (in_2 | (~(in_3 & (sig_12 ^ out_2)))));
    assign out_0 = (~(~(((out_5 | sig_14) | in_1) | in_3)));
    assign out_5 = (~(sig_12 & ((~(~((~(out_2 & (sig_7 ^ (sig_14 | sig_11)))) & in_0))) | sig_14)));
    assign sig_5 = ((~((~(sig_0 | sig_13)) & sig_5)) ^ sig_9);
    assign out_6 = (~(in_6 & ((~((~(sig_11 ^ (~(sig_4 & in_2)))) & in_3)) ^ sig_2)));
    assign sig_13 = (~((sig_10 & (~(sig_3 | ((~(~(((out_4 & sig_12) ^ in_5) | in_4))) ^ sig_9)))) | in_6));

endmodule
