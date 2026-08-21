module rtl_module_122 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [6:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [3:0] sig_14;
    wire [2:0] sig_15;
    wire [2:0] sig_16;
    wire [2:0] sig_17;
    wire [2:0] sig_18;
    wire [4:0] sig_19;
    wire [0:0] sig_20;
    wire [0:0] sig_21;

    // Logic assignments
    assign out_0 = (~((((~(sig_11 | (sig_2 | (in_2 & ((~sig_3) ^ in_1))))) | sig_8) | sig_1) & sig_6));
    assign out_1 = (~((((sig_21 | (~(sig_16 | sig_11))) | sig_16) | sig_14) & sig_20));
    assign out_2 = (out_3 ^ (~(out_2 & (~(~((in_3 | ((~(out_5 & out_0)) ^ sig_12)) & sig_17))))));
    assign out_3 = (sig_19 | ((~(sig_16 | (~((~(sig_6 & (~((~((out_3 ^ sig_6) | sig_17)) | sig_0)))) & sig_20)))) ^ in_4));
    assign out_4 = (sig_20 | (~((~((sig_21 & sig_21) & sig_12)) | sig_18)));
    assign out_5 = ((sig_16 | ((~((~(~sig_15)) ^ sig_9)) ^ sig_21)) ^ sig_4);
    assign out_0 = (~(~(~((sig_8 | ((sig_21 & (sig_5 ^ (~sig_0))) ^ sig_9)) & sig_13))));
    assign sig_10 = (~((~(sig_10 | (~(out_3 | (~((sig_21 & sig_1) & sig_4)))))) | in_4));
    assign sig_11 = (sig_12 | (~(in_0 | (~(sig_5 & (((~(~((~(sig_7 | out_2)) & sig_10))) & sig_8) & sig_19))))));
    assign sig_13 = (~(~(sig_15 & (~((sig_14 & (~(sig_20 & (sig_2 | (~(~(sig_12 | sig_8))))))) | out_1)))));
    assign out_4 = (~((~((~(sig_19 | sig_5)) & sig_13)) | sig_20));
    assign out_4 = (~(sig_20 & ((~sig_3) & sig_14)));
    assign sig_8 = (~(sig_9 | ((~((((~(sig_19 | sig_21)) | out_2) & sig_21) | in_1)) & sig_9)));
    assign sig_1 = (~(sig_17 & sig_5));
    assign sig_18 = (sig_12 & (~sig_10));
    assign sig_1 = ((in_3 | (((sig_12 ^ (sig_8 ^ (out_3 | (~sig_21)))) | sig_1) | sig_11)) & out_0);
    assign sig_6 = (sig_13 & (sig_0 ^ sig_1));
    assign out_0 = (~((~(in_4 | (in_2 & ((sig_21 & (sig_5 ^ in_2)) & sig_2)))) | in_2));

endmodule
