module rtl_module_202 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [2:0] in_4,
    output wire [4:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [6:0] sig_11;
    wire [3:0] sig_12;
    wire [0:0] sig_13;

    // Logic assignments
    assign out_0 = (out_3 ^ (sig_13 ^ sig_1));
    assign out_1 = (~((~(in_0 | (~((~(sig_10 & sig_8)) & sig_5)))) | sig_7));
    assign out_2 = (sig_7 & (~(sig_11 & (~(in_0 & (~((~sig_1) & in_2)))))));
    assign out_3 = (~(((((in_3 | (~(sig_12 | sig_4))) & sig_12) | in_1) & sig_3) & sig_8));
    assign sig_4 = (~(sig_13 | ((sig_6 | sig_2) & in_4)));
    assign sig_12 = ((~((out_1 ^ sig_10) & sig_4)) | sig_6);
    assign sig_1 = (~((~(in_1 | (~(in_3 & (~(sig_5 & (~((~sig_2) & out_1)))))))) & sig_0));
    assign sig_2 = (sig_3 ^ (~(in_1 & (~sig_5))));
    assign sig_11 = (~((out_2 ^ sig_6) ^ out_1));
    assign sig_13 = (~(sig_1 & ((~(sig_10 | (sig_3 ^ (sig_9 ^ (in_3 & (~(sig_13 | out_2))))))) ^ in_4)));
    assign sig_6 = ((~(in_0 & (~(sig_10 ^ (~(sig_4 | sig_0)))))) | sig_10);
    assign sig_3 = (~(((sig_8 & sig_0) ^ sig_1) ^ sig_4));
    assign sig_11 = (~(sig_3 & (~((sig_8 | in_4) & in_2))));
    assign sig_11 = ((in_4 & (~((~(sig_3 | sig_6)) & out_1))) & sig_5);

endmodule
