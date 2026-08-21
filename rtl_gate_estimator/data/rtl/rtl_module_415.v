module rtl_module_415 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [5:0] in_3,
    input wire [4:0] in_4,
    input wire [0:0] in_5,
    input wire [0:0] in_6,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [2:0] out_2,
    output wire [5:0] out_3,
    output wire [2:0] out_4,
    output wire [4:0] out_5,
    output wire [4:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [3:0] sig_10;
    wire [3:0] sig_11;
    wire [2:0] sig_12;
    wire [0:0] sig_13;
    wire [1:0] sig_14;
    wire [6:0] sig_15;
    wire [1:0] sig_16;
    wire [6:0] sig_17;
    wire [2:0] sig_18;

    // Logic assignments
    assign out_0 = (~((~(sig_1 & (~(out_3 & in_2)))) & in_4));
    assign out_1 = (~((sig_16 ^ (~(~(sig_3 | (sig_7 & (in_3 ^ ((sig_3 | out_5) & sig_5))))))) & sig_7));
    assign out_2 = ((in_2 ^ (~(out_3 | sig_8))) & sig_14);
    assign out_3 = (~(sig_17 | (~(sig_6 & sig_6))));
    assign out_4 = (~(in_1 | sig_15));
    assign out_5 = (~((((in_2 | (~(out_3 | in_6))) | in_6) & sig_8) | in_6));
    assign out_6 = (in_6 | (~(sig_1 & (~sig_15))));
    assign out_7 = (~(sig_17 & (~(in_6 | (~((~((out_4 ^ in_5) | sig_7)) ^ out_7))))));
    assign sig_12 = (~(sig_6 | sig_13));
    assign out_6 = ((sig_8 | (~(in_2 | (~(((~((out_2 ^ out_6) & sig_17)) & out_4) & in_4))))) & sig_3);
    assign sig_14 = (~((in_5 ^ (~(sig_2 | (out_1 & (~sig_16))))) | in_4));
    assign out_1 = (sig_13 & (~((in_1 & in_0) & out_1)));
    assign sig_1 = (~(((~(sig_15 | ((~(~out_2)) | sig_6))) | sig_5) & out_4));
    assign sig_16 = (~((~(~((sig_7 ^ out_4) & sig_16))) & sig_12));
    assign sig_17 = (~(~(((((out_6 & (out_0 ^ (sig_6 | in_6))) ^ out_0) | sig_0) | sig_8) | out_1)));
    assign sig_17 = (~(in_5 | (((~(~out_3)) & sig_3) | sig_11)));
    assign sig_12 = (~((~(sig_1 | (in_6 ^ (~((sig_7 ^ (~(in_1 & (in_4 & in_3)))) | in_0))))) & sig_11));
    assign sig_6 = (sig_2 & (sig_14 | (~(sig_7 & out_2))));
    assign out_4 = (sig_9 & (((~(sig_3 & in_4)) | out_7) | in_2));
    assign sig_1 = (sig_6 ^ (sig_5 & ((~(sig_1 | (~(sig_12 & (sig_7 | (sig_8 ^ sig_0)))))) ^ in_4)));
    assign sig_9 = ((~(sig_3 & (~(in_6 & sig_14)))) | sig_7);
    assign sig_12 = ((~((~(sig_11 & (out_0 ^ sig_11))) | sig_16)) & in_0);
    assign sig_6 = ((sig_11 ^ (((sig_14 & out_4) | sig_12) ^ out_4)) ^ sig_2);
    assign sig_6 = (~((~((~(sig_17 & in_3)) & sig_8)) & out_1));

endmodule
