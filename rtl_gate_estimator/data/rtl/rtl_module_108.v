module rtl_module_108 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    input wire [3:0] in_3,
    input wire [7:0] in_4,
    input wire [5:0] in_5,
    input wire [3:0] in_6,
    input wire [0:0] in_7,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [0:0] out_3,
    output wire [2:0] out_4,
    output wire [4:0] out_5,
    output wire [0:0] out_6
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [2:0] sig_12;
    wire [2:0] sig_13;
    wire [1:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;

    // Logic assignments
    assign out_0 = (~((~(~((out_3 ^ (~(out_0 ^ out_5))) & sig_14))) | in_7));
    assign out_1 = (sig_5 ^ (~((~(sig_8 | (((((~(out_1 | in_7)) & sig_1) ^ in_0) & in_0) | sig_15))) | sig_2)));
    assign out_2 = (sig_15 & (~((~(sig_12 & (in_4 | (~(in_6 & ((sig_10 ^ in_4) | in_0)))))) & in_2)));
    assign out_3 = (~(~(((~((~(sig_16 & sig_10)) | sig_7)) ^ sig_13) | in_5)));
    assign out_4 = (out_2 & ((sig_8 ^ (~out_1)) & sig_1));
    assign out_5 = ((~sig_7) ^ sig_13);
    assign out_6 = ((in_2 | (~(((~(~(out_6 ^ (sig_6 & sig_0)))) & sig_13) & sig_1))) & out_4);
    assign out_6 = (((((~sig_15) ^ sig_9) ^ out_4) | in_2) & out_3);
    assign sig_14 = (sig_8 & (~((~in_7) & sig_15)));
    assign sig_15 = (~(in_4 | ((~(~(in_1 | (~(sig_11 | (sig_5 & in_6)))))) | out_3)));
    assign sig_16 = ((~(sig_11 | (~(~((out_0 | (~(out_0 & (sig_3 | sig_13)))) | out_3))))) ^ out_3);
    assign sig_8 = (in_4 & (~(~(sig_16 | sig_5))));
    assign out_5 = (((~(out_0 | out_5)) | sig_0) ^ sig_0);
    assign sig_16 = (~(sig_13 | (~((~(~(out_0 & (in_1 & out_1)))) & sig_6))));
    assign sig_7 = ((sig_12 ^ (out_1 & (~(sig_1 | out_5)))) & out_3);
    assign sig_8 = (((in_4 | (~((~((~((in_3 ^ (~out_3)) | out_4)) | sig_13)) | sig_2))) ^ in_1) & sig_8);
    assign sig_5 = ((~(~(((~sig_5) | sig_3) | sig_3))) | sig_1);
    assign sig_3 = (sig_9 & (~((~(sig_2 | (~(~(~(in_3 & (out_6 & in_6))))))) ^ sig_15)));
    assign sig_12 = (~((((sig_3 ^ ((out_2 & in_0) | sig_3)) & in_0) | sig_9) & out_0));
    assign sig_2 = (~(~(in_1 & in_4)));
    assign sig_0 = (in_0 & (~(in_2 | out_3)));
    assign sig_9 = (sig_9 | ((sig_6 | (~(~(sig_8 | sig_9)))) | out_3));
    assign sig_13 = (~(sig_2 & ((~(in_2 & sig_6)) & sig_12)));
    assign out_2 = (~((~((in_7 ^ ((~((~(sig_2 & (sig_6 | sig_0))) | out_6)) & in_5)) & sig_6)) & in_3));
    assign out_1 = (~((sig_2 | (~(~((~(~(~sig_13))) | sig_2)))) & sig_11));
    assign sig_6 = (~(out_6 ^ (~((~((~(in_0 | (~(sig_15 & in_1)))) | out_2)) & in_0))));
    assign sig_13 = (sig_14 & (sig_3 | (in_2 & (~((sig_7 & (~(sig_11 | (~(in_4 | (sig_2 & in_2)))))) & sig_9)))));

endmodule
