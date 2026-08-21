module rtl_module_352 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    input wire [2:0] in_4,
    input wire [0:0] in_5,
    output wire [1:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [7:0] sig_15;
    wire [0:0] sig_16;
    wire [7:0] sig_17;
    wire [3:0] sig_18;
    wire [6:0] sig_19;
    wire [6:0] sig_20;
    wire [2:0] sig_21;
    wire [0:0] sig_22;
    wire [6:0] sig_23;
    wire [2:0] sig_24;
    wire [7:0] sig_25;
    wire [2:0] sig_26;
    wire [4:0] sig_27;

    // Logic assignments
    assign out_0 = (sig_8 & (~((~((~(~sig_10)) & sig_17)) & in_4)));
    assign out_0 = ((~(~(sig_22 | (sig_15 ^ sig_17)))) | sig_22);
    assign sig_21 = (sig_7 & (((in_3 & (sig_16 & (sig_14 ^ sig_20))) | sig_10) & sig_11));
    assign sig_5 = (~((~(~(sig_10 | (sig_6 ^ (~((~(sig_7 | sig_8)) & sig_5)))))) & sig_2));
    assign sig_4 = (~(sig_9 & (sig_27 & (sig_1 & (~(sig_27 | (~(in_2 & sig_19))))))));
    assign sig_18 = (~((~(sig_17 | (sig_10 ^ (sig_7 ^ (((~(sig_25 | sig_15)) ^ in_4) | sig_12))))) | sig_27));
    assign sig_0 = (~((~(sig_8 | ((~(sig_1 & sig_6)) & sig_23))) & sig_14));
    assign sig_10 = (~(sig_6 & (~sig_2)));

endmodule
