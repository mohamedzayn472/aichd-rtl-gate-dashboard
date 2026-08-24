module rtl_module_310 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    output wire [1:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;
    wire [2:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;
    wire [3:0] sig_16;
    wire [2:0] sig_17;
    wire [0:0] sig_18;
    wire [5:0] sig_19;
    wire [2:0] sig_20;
    wire [4:0] sig_21;
    wire [7:0] sig_22;
    wire [3:0] sig_23;
    wire [5:0] sig_24;
    wire [7:0] sig_25;
    wire [2:0] sig_26;
    wire [7:0] sig_27;
    wire [2:0] sig_28;

    // Logic assignments
    assign out_0 = (~(sig_12 | (~((sig_27 ^ in_1) | sig_13))));
    assign out_1 = (~((~((~(sig_15 | (~(sig_16 & out_1)))) | sig_14)) | sig_26));
    assign sig_17 = (sig_1 ^ (~(sig_5 | (~sig_19))));
    assign sig_17 = (~(sig_16 | (~(~(sig_11 | (sig_27 | sig_12))))));
    assign out_1 = (~(sig_22 | ((((~sig_24) & sig_9) & sig_0) | sig_5)));

endmodule
