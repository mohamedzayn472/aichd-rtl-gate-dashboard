module rtl_module_37 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    output wire [7:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [6:0] sig_12;
    wire [1:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [0:0] sig_16;
    wire [4:0] sig_17;
    wire [6:0] sig_18;
    wire [6:0] sig_19;
    wire [1:0] sig_20;
    wire [6:0] sig_21;

    // Logic assignments
    assign out_0 = (~(~(~(~(sig_17 & (~(sig_6 & in_3)))))));
    assign sig_14 = ((~((((sig_21 & (sig_15 & sig_18)) & sig_14) | sig_12) & sig_9)) ^ sig_15);
    assign sig_7 = (sig_5 & (sig_16 & (sig_5 | sig_14)));
    assign sig_17 = (sig_16 | (sig_2 | (~((~(out_0 & (sig_3 ^ ((sig_12 ^ in_0) ^ sig_17)))) ^ in_1))));
    assign sig_2 = (sig_14 | (~(sig_6 | (~(~(sig_10 | sig_18))))));

endmodule
