module rtl_module_201 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    input wire [6:0] in_5,
    output wire [1:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [6:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [5:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [5:0] sig_17;
    wire [4:0] sig_18;
    wire [1:0] sig_19;
    wire [0:0] sig_20;
    wire [5:0] sig_21;
    wire [7:0] sig_22;
    wire [7:0] sig_23;

    // Logic assignments
    assign out_0 = ((sig_13 ^ (sig_17 & (sig_16 | sig_4))) & sig_11);
    assign sig_20 = ((in_1 ^ (~(sig_9 & (~((sig_9 | sig_4) | sig_18))))) ^ in_4);
    assign sig_3 = (sig_17 ^ (in_1 & sig_5));
    assign out_0 = (~(sig_15 & ((in_0 & (~sig_6)) | in_3)));
    assign sig_2 = (~(((~((~sig_7) | in_2)) ^ sig_3) | sig_2));
    assign sig_20 = (((out_0 & (sig_4 ^ sig_11)) & sig_12) & sig_14);
    assign sig_12 = (~(sig_1 & (~(in_1 & (~(sig_20 | (sig_21 & (~(sig_5 | (~((~(sig_3 & sig_19)) ^ sig_4)))))))))));

endmodule
