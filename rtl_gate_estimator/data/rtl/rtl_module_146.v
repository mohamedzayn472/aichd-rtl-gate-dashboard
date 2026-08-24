module rtl_module_146 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    output wire [2:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [1:0] sig_11;
    wire [3:0] sig_12;
    wire [3:0] sig_13;
    wire [7:0] sig_14;
    wire [1:0] sig_15;
    wire [4:0] sig_16;
    wire [4:0] sig_17;
    wire [4:0] sig_18;
    wire [0:0] sig_19;
    wire [2:0] sig_20;
    wire [5:0] sig_21;
    wire [0:0] sig_22;
    wire [2:0] sig_23;
    wire [6:0] sig_24;
    wire [4:0] sig_25;
    wire [0:0] sig_26;
    wire [1:0] sig_27;
    wire [6:0] sig_28;
    wire [4:0] sig_29;

    // Logic assignments
    assign out_0 = (~((~(sig_11 | sig_1)) | sig_29));
    assign out_1 = (~(~(sig_5 | (~sig_27))));
    assign sig_4 = (sig_29 | (~(sig_26 | sig_0)));
    assign sig_6 = (sig_2 | ((~(sig_9 & (~(sig_22 | (~((~(sig_26 & sig_16)) & sig_23)))))) ^ sig_29));
    assign sig_11 = (~(((~(sig_29 & ((sig_23 | out_1) ^ in_1))) ^ sig_22) | sig_2));
    assign sig_3 = (~(sig_0 | (~(~(sig_19 & (sig_18 | in_0))))));
    assign sig_10 = ((~(sig_20 | (sig_15 ^ sig_5))) | sig_18);

endmodule
