module rtl_module_373 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    input wire [2:0] in_5,
    input wire [4:0] in_6,
    output wire [4:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [0:0] sig_10;
    wire [0:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [0:0] sig_14;

    // Logic assignments
    assign out_0 = (~(sig_1 & (~((~(~(~(sig_0 & in_1)))) & out_1))));
    assign out_1 = (~(sig_11 ^ (sig_6 ^ (in_5 | (~(sig_14 | (sig_5 | in_3)))))));
    assign out_2 = (~((out_0 | ((~(out_2 & ((~((~(sig_4 | sig_8)) & sig_14)) ^ in_2))) ^ sig_5)) & sig_11));
    assign sig_2 = (~((~((in_0 & in_1) & sig_4)) ^ sig_7));
    assign sig_5 = (sig_1 ^ (~(sig_11 | (~sig_14))));
    assign sig_1 = (in_4 & ((sig_8 & (~(sig_5 | (out_2 | (sig_7 | (~(sig_13 & sig_8))))))) | out_2));
    assign sig_4 = (~(((~((~(sig_4 | in_3)) & sig_4)) & in_5) | in_4));
    assign sig_4 = ((sig_9 & (~(out_1 ^ (sig_5 ^ in_4)))) & in_6);
    assign sig_2 = (in_1 ^ (sig_12 | (sig_2 | sig_10)));
    assign sig_2 = (~(out_1 & ((in_4 ^ (~(~((~(sig_7 | (~in_4))) | sig_8)))) ^ out_0)));
    assign sig_9 = ((~(~((~(sig_13 & (sig_5 ^ sig_8))) | out_1))) ^ in_4);
    assign sig_14 = (in_0 & (~(in_6 & in_5)));
    assign sig_6 = (~(~(sig_13 & sig_2)));
    assign out_0 = ((sig_3 | (sig_5 ^ ((~(sig_4 & (~(sig_4 & (sig_14 & (sig_7 ^ sig_13)))))) & in_4))) ^ in_4);
    assign sig_9 = (sig_0 ^ (sig_6 & sig_8));

endmodule
