module rtl_module_372 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [4:0] in_5,
    output wire [2:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [0:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [6:0] sig_13;
    wire [4:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [0:0] sig_17;
    wire [5:0] sig_18;
    wire [7:0] sig_19;
    wire [5:0] sig_20;
    wire [6:0] sig_21;
    wire [1:0] sig_22;
    wire [1:0] sig_23;
    wire [3:0] sig_24;
    wire [4:0] sig_25;
    wire [3:0] sig_26;
    wire [1:0] sig_27;

    // Logic assignments
    assign out_0 = ((sig_4 & (sig_24 ^ (~(((~(sig_27 & sig_2)) | sig_4) & sig_19)))) | sig_21);
    assign sig_8 = (~((~(sig_10 & (~(sig_24 | ((~(sig_22 & ((~sig_14) & sig_4))) | sig_6))))) & sig_8));
    assign sig_16 = ((sig_4 & (~(sig_14 | (sig_24 | (~(((~(sig_18 | (sig_21 ^ in_0))) ^ sig_23) | in_4)))))) & sig_2);
    assign sig_12 = (~(in_4 | ((~(sig_10 ^ sig_0)) ^ sig_6)));
    assign sig_11 = ((sig_11 | (~(((sig_2 ^ (in_3 & sig_9)) | sig_26) & sig_13))) & sig_17);
    assign sig_6 = (~(sig_14 & (~(in_2 | sig_18))));
    assign sig_23 = (~((((~sig_20) & sig_13) ^ sig_17) & sig_23));

endmodule
