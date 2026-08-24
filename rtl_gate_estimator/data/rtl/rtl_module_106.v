module rtl_module_106 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    output wire [2:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [2:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [3:0] sig_18;
    wire [7:0] sig_19;
    wire [5:0] sig_20;
    wire [5:0] sig_21;
    wire [3:0] sig_22;
    wire [4:0] sig_23;
    wire [4:0] sig_24;
    wire [0:0] sig_25;
    wire [2:0] sig_26;
    wire [1:0] sig_27;
    wire [6:0] sig_28;
    wire [6:0] sig_29;
    wire [6:0] sig_30;

    // Logic assignments
    assign out_0 = (~(sig_28 & ((~(out_0 & (sig_0 ^ (sig_17 & (~((~(sig_16 & sig_28)) & sig_27)))))) & sig_30)));
    assign out_1 = (~(sig_0 & (~sig_8)));
    assign sig_27 = ((~(~(~(in_0 | (sig_21 | (~(sig_23 | (sig_29 ^ (sig_7 & out_1))))))))) ^ sig_20);
    assign sig_14 = (~(out_1 | (sig_8 ^ (sig_16 | sig_30))));
    assign sig_9 = ((in_2 | (sig_7 ^ sig_2)) | sig_30);
    assign sig_4 = ((sig_9 | (~((sig_8 | sig_15) | sig_13))) ^ in_1);

endmodule
