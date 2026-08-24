module rtl_module_334 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [2:0] in_4,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3,
    output wire [3:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [5:0] sig_9;
    wire [5:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [2:0] sig_13;
    wire [2:0] sig_14;
    wire [0:0] sig_15;
    wire [1:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;
    wire [1:0] sig_19;
    wire [0:0] sig_20;
    wire [6:0] sig_21;
    wire [2:0] sig_22;
    wire [4:0] sig_23;
    wire [5:0] sig_24;

    // Logic assignments
    assign out_0 = (~(sig_18 | (~(~(sig_13 | sig_12)))));
    assign out_1 = (sig_2 & (~(sig_10 | ((~(sig_10 | in_4)) ^ sig_8))));
    assign out_2 = (~((~(out_1 | (~(~(~(in_3 & sig_22)))))) | sig_11));
    assign out_3 = (~(out_0 | ((in_1 & (~((sig_10 & (sig_9 & (~(in_3 | sig_13)))) | out_5))) | out_4)));
    assign out_4 = (sig_1 ^ (~((((~((((sig_8 | sig_15) | sig_3) ^ sig_3) | out_1)) | sig_6) | sig_11) | sig_16)));
    assign out_5 = (~((sig_20 ^ (sig_9 | (((out_3 ^ sig_14) & in_2) & sig_19))) & out_4));
    assign out_1 = (sig_19 ^ (((~(out_2 | (~((sig_16 ^ sig_24) | out_5)))) & sig_14) | out_0));
    assign out_5 = (out_3 | (~(sig_23 | (~((out_0 | (~(sig_0 & ((sig_3 | in_3) ^ sig_15)))) & sig_13)))));
    assign sig_2 = (~(sig_15 & (~(sig_13 & (~(sig_15 | (~(sig_9 | (~sig_0)))))))));
    assign sig_18 = (~(sig_16 | ((sig_16 & out_5) & sig_6)));
    assign sig_1 = (~((sig_24 ^ sig_8) & sig_22));

endmodule
