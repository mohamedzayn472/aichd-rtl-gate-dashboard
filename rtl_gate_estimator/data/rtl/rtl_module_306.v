module rtl_module_306 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    output wire [2:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [5:0] sig_15;
    wire [6:0] sig_16;
    wire [2:0] sig_17;
    wire [3:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;
    wire [4:0] sig_21;
    wire [7:0] sig_22;
    wire [7:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [4:0] sig_26;
    wire [3:0] sig_27;
    wire [4:0] sig_28;
    wire [6:0] sig_29;
    wire [4:0] sig_30;
    wire [5:0] sig_31;

    // Logic assignments
    assign out_0 = (~((~(sig_11 | sig_12)) | in_2));
    assign out_1 = (sig_21 ^ (~sig_3));
    assign sig_9 = (sig_5 ^ (~(in_2 | (sig_12 | sig_20))));
    assign sig_5 = (sig_23 ^ (((sig_28 & ((sig_19 | sig_5) & sig_29)) & sig_15) & sig_21));
    assign sig_28 = (~(sig_12 & sig_13));
    assign sig_30 = (~(~(sig_12 | (sig_2 ^ sig_13))));

endmodule
