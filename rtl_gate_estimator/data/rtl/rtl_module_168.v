module rtl_module_168 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    output wire [4:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;
    wire [5:0] sig_13;
    wire [7:0] sig_14;
    wire [4:0] sig_15;
    wire [4:0] sig_16;
    wire [3:0] sig_17;
    wire [3:0] sig_18;
    wire [1:0] sig_19;
    wire [7:0] sig_20;
    wire [1:0] sig_21;
    wire [1:0] sig_22;
    wire [5:0] sig_23;
    wire [3:0] sig_24;
    wire [3:0] sig_25;
    wire [3:0] sig_26;
    wire [4:0] sig_27;
    wire [7:0] sig_28;
    wire [2:0] sig_29;
    wire [6:0] sig_30;

    // Logic assignments
    assign out_0 = ((sig_11 & sig_0) & sig_17);
    assign sig_19 = (~(sig_1 & (~(sig_28 ^ (~(sig_3 | (~(out_0 | (~(sig_24 & sig_20))))))))));
    assign sig_8 = ((~(sig_29 & sig_7)) ^ sig_11);
    assign sig_14 = ((~(sig_0 ^ (~(((sig_11 | sig_5) & sig_9) & sig_18)))) | sig_26);

endmodule
