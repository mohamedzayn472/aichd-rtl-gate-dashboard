module rtl_module_375 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    output wire [5:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [0:0] sig_13;
    wire [1:0] sig_14;
    wire [5:0] sig_15;
    wire [2:0] sig_16;
    wire [0:0] sig_17;
    wire [0:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [6:0] sig_21;
    wire [1:0] sig_22;
    wire [5:0] sig_23;
    wire [7:0] sig_24;
    wire [7:0] sig_25;
    wire [3:0] sig_26;

    // Logic assignments
    assign out_0 = (~(~(sig_14 | (~((~(sig_10 | sig_20)) & sig_25)))));
    assign out_1 = ((~(sig_21 & (~((~((~(sig_11 & sig_16)) | sig_1)) & sig_11)))) | sig_24);
    assign sig_10 = (~(~((sig_7 | sig_21) ^ sig_7)));
    assign sig_17 = (~(((~(sig_26 & sig_4)) & sig_9) & sig_3));

endmodule
