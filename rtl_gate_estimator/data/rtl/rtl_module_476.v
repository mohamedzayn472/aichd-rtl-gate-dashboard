module rtl_module_476 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [2:0] in_5,
    input wire [1:0] in_6,
    output wire [5:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [7:0] sig_11;
    wire [3:0] sig_12;
    wire [2:0] sig_13;
    wire [4:0] sig_14;
    wire [3:0] sig_15;
    wire [1:0] sig_16;
    wire [1:0] sig_17;
    wire [5:0] sig_18;
    wire [4:0] sig_19;
    wire [2:0] sig_20;
    wire [6:0] sig_21;
    wire [4:0] sig_22;
    wire [5:0] sig_23;
    wire [7:0] sig_24;
    wire [2:0] sig_25;
    wire [7:0] sig_26;
    wire [2:0] sig_27;
    wire [6:0] sig_28;
    wire [0:0] sig_29;
    wire [7:0] sig_30;

    // Logic assignments
    assign out_0 = (~(sig_13 | (sig_10 & (~(sig_6 & (~(sig_21 ^ ((~(in_1 & (sig_5 ^ in_4))) | sig_22))))))));
    assign sig_12 = ((((~(sig_15 & ((~((~sig_4) & sig_23)) ^ in_5))) ^ sig_29) | sig_28) ^ sig_17);
    assign sig_30 = (sig_25 ^ ((~(~(sig_18 & (~sig_12)))) ^ sig_21));
    assign sig_15 = (((~(sig_12 & (in_2 | sig_22))) ^ sig_26) & sig_2);
    assign sig_23 = (sig_18 ^ (~(sig_29 & ((~(sig_12 | (sig_8 ^ sig_14))) ^ sig_0))));
    assign sig_16 = (~(sig_15 & (~(sig_10 & (~(sig_10 | (~(sig_21 | (sig_22 & sig_5)))))))));
    assign sig_2 = (~((sig_29 | sig_25) | out_0));
    assign sig_21 = (in_6 & (sig_22 ^ (in_0 | (~(((~(sig_17 | sig_25)) & sig_20) | sig_24)))));
    assign sig_15 = ((~((out_0 ^ (~(out_0 | sig_18))) ^ sig_1)) & in_5);

endmodule
