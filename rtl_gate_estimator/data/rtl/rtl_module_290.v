module rtl_module_290 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [1:0] sig_16;
    wire [5:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;
    wire [3:0] sig_21;
    wire [7:0] sig_22;
    wire [5:0] sig_23;
    wire [1:0] sig_24;
    wire [4:0] sig_25;
    wire [4:0] sig_26;
    wire [2:0] sig_27;
    wire [3:0] sig_28;
    wire [6:0] sig_29;
    wire [7:0] sig_30;
    wire [6:0] sig_31;

    // Logic assignments
    assign out_0 = (sig_16 ^ (((~(sig_19 & sig_3)) ^ sig_19) & sig_3));
    assign out_1 = (~(sig_5 & ((~((~(sig_30 & (~(~((~sig_3) & sig_2))))) & sig_1)) & sig_29)));
    assign sig_0 = ((~((sig_22 | (~(~(sig_1 & ((~((sig_19 & sig_22) | sig_13)) | sig_21))))) | sig_27)) & in_0);
    assign sig_15 = (in_0 | (~(~(sig_2 & (sig_16 | sig_1)))));
    assign sig_15 = (~(~((sig_27 & in_2) | sig_5)));

endmodule
