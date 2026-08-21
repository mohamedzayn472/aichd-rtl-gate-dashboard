module rtl_module_396 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    input wire [1:0] in_4,
    input wire [0:0] in_5,
    input wire [6:0] in_6,
    input wire [7:0] in_7,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [1:0] sig_10;
    wire [3:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [3:0] sig_17;
    wire [0:0] sig_18;
    wire [1:0] sig_19;
    wire [6:0] sig_20;

    // Logic assignments
    assign out_0 = (sig_11 & (sig_12 & ((out_0 ^ (sig_13 & (sig_2 | out_0))) & sig_3)));
    assign out_1 = ((~(sig_11 | ((~(sig_14 | sig_14)) | sig_1))) & sig_1);
    assign out_2 = (sig_13 & (~((sig_13 ^ (~(~(in_6 | (~((sig_16 | sig_2) | in_5)))))) & sig_1)));
    assign out_3 = (((~(~(in_3 & sig_20))) ^ in_2) | sig_5);
    assign out_4 = (~((~(sig_17 & (~((~(sig_3 | (~(sig_3 & (~((in_2 | sig_14) & sig_7)))))) & sig_3)))) | sig_6));
    assign out_5 = (~(sig_2 & ((~(in_4 | (~(in_4 & (sig_18 & in_3))))) ^ sig_19)));
    assign out_2 = (sig_11 | (in_6 | sig_0));
    assign sig_15 = ((out_0 | (~((~(in_2 ^ (~(((~(sig_18 & sig_6)) ^ out_3) & sig_0)))) & sig_5))) | in_5);
    assign out_1 = ((((sig_12 & out_1) ^ sig_15) & in_7) | sig_9);
    assign sig_0 = (~(out_2 & (~(sig_10 & (~(in_1 & (~(sig_2 & sig_17))))))));
    assign sig_13 = (~(sig_12 | ((~(sig_11 | (in_6 ^ (~(sig_18 & ((sig_10 | in_0) ^ in_5)))))) & sig_15)));
    assign out_1 = ((out_2 | (((sig_14 ^ (~((~(sig_0 & out_0)) & sig_12))) ^ sig_1) | in_6)) ^ in_5);
    assign sig_0 = (~(out_4 & (~(((sig_15 | (~((~(sig_10 | (~((sig_10 | sig_18) | sig_20)))) & sig_14))) | sig_12) & sig_19))));
    assign out_4 = ((~(sig_12 | (sig_0 & (in_5 & ((out_5 | (~(sig_16 | (sig_2 & out_0)))) | out_5))))) ^ sig_9);
    assign sig_4 = (~((~(sig_6 | sig_11)) & in_7));
    assign sig_4 = (sig_9 | (~(sig_4 | (((~(sig_18 | (sig_7 | (sig_16 & (~(in_7 | in_4)))))) & sig_18) & out_4))));

endmodule
