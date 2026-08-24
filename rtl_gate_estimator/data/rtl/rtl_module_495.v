module rtl_module_495 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    output wire [7:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [7:0] sig_11;
    wire [7:0] sig_12;
    wire [2:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [1:0] sig_17;
    wire [3:0] sig_18;
    wire [2:0] sig_19;
    wire [6:0] sig_20;
    wire [1:0] sig_21;
    wire [3:0] sig_22;
    wire [5:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;
    wire [7:0] sig_26;

    // Logic assignments
    assign out_0 = (~(sig_4 | (~(sig_4 & sig_9))));
    assign sig_1 = ((sig_10 ^ in_2) | sig_21);
    assign sig_9 = (~(sig_19 & sig_10));
    assign sig_24 = ((~sig_14) ^ sig_10);
    assign sig_13 = (~(sig_12 | (~(sig_8 & (~sig_17)))));

endmodule
