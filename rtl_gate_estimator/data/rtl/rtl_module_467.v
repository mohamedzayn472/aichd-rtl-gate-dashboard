module rtl_module_467 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [7:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    input wire [1:0] in_5,
    input wire [1:0] in_6,
    input wire [4:0] in_7,
    output wire [3:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;

    // Logic assignments
    assign out_0 = ((in_7 | (~((~(out_1 ^ ((~(in_6 | (sig_10 ^ sig_4))) | sig_1))) & sig_11))) & in_6);
    assign out_1 = (sig_9 | (~(in_0 | (~(((~(in_1 ^ out_1)) ^ sig_10) & sig_6)))));
    assign sig_11 = (sig_3 | (~(sig_0 & (~(sig_13 | (~((sig_2 & ((sig_0 | sig_4) & in_2)) & in_0)))))));
    assign sig_3 = (out_0 ^ (sig_4 ^ sig_10));
    assign out_1 = (~((in_5 ^ (sig_4 & (~(out_1 & (sig_6 ^ sig_4))))) & sig_4));
    assign sig_4 = ((~(sig_6 | (~((sig_0 ^ sig_0) | sig_8)))) ^ sig_0);
    assign sig_9 = (((sig_13 ^ (~(out_1 | (~(~(sig_14 & sig_0)))))) & sig_1) ^ in_3);
    assign sig_1 = (~(~((~(((~(sig_3 & (sig_4 ^ (sig_5 | in_4)))) ^ sig_9) | in_2)) & sig_14)));
    assign sig_8 = (~((~(sig_5 | (sig_11 ^ sig_9))) | sig_2));
    assign sig_9 = (sig_13 & ((in_0 | (~(in_6 & (in_2 ^ sig_2)))) & out_0));
    assign sig_0 = (((~(sig_14 | out_1)) | sig_7) & sig_11);

endmodule
