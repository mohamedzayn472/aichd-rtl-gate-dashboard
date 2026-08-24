module rtl_module_193 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    input wire [4:0] in_3,
    input wire [0:0] in_4,
    output wire [3:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [0:0] sig_6;
    wire [3:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [2:0] sig_15;
    wire [0:0] sig_16;
    wire [3:0] sig_17;
    wire [5:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [0:0] sig_21;
    wire [7:0] sig_22;
    wire [0:0] sig_23;
    wire [2:0] sig_24;
    wire [6:0] sig_25;
    wire [5:0] sig_26;
    wire [2:0] sig_27;
    wire [5:0] sig_28;
    wire [1:0] sig_29;
    wire [6:0] sig_30;
    wire [4:0] sig_31;

    // Logic assignments
    assign out_0 = ((~(sig_27 | ((sig_27 ^ (~(in_1 | (~((sig_7 | in_3) | sig_24))))) | sig_22))) | sig_30);
    assign sig_2 = (sig_16 | ((~(sig_4 | (~((sig_13 & (~(sig_29 & sig_0))) | sig_0)))) & sig_19));
    assign sig_21 = (((sig_24 | (~((sig_2 | sig_2) | sig_20))) ^ sig_5) & sig_15);
    assign sig_30 = ((~(~((sig_3 ^ (~(in_3 | (sig_25 ^ sig_13)))) ^ sig_7))) & in_4);
    assign sig_4 = (~((~(((~(((~(sig_3 & (sig_19 ^ (~sig_26)))) | sig_6) | sig_31)) ^ in_0) & in_0)) & sig_19));
    assign sig_19 = ((sig_30 ^ sig_26) | in_0);

endmodule
