module rtl_module_105 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    output wire [6:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;
    wire [4:0] sig_16;
    wire [6:0] sig_17;
    wire [2:0] sig_18;
    wire [2:0] sig_19;
    wire [0:0] sig_20;
    wire [2:0] sig_21;
    wire [1:0] sig_22;
    wire [2:0] sig_23;
    wire [3:0] sig_24;
    wire [7:0] sig_25;
    wire [2:0] sig_26;
    wire [0:0] sig_27;

    // Logic assignments
    assign out_0 = ((in_0 | sig_0) | sig_21);
    assign out_1 = (~(in_0 | (~(sig_4 | (~(~sig_12))))));
    assign sig_18 = (~(((sig_26 & (sig_9 ^ (sig_5 & (~(sig_6 & (sig_21 & sig_2)))))) & in_2) & sig_18));
    assign sig_26 = (~((~sig_27) & sig_13));
    assign sig_1 = ((~(sig_14 & out_1)) & sig_12);
    assign out_0 = (~((sig_2 | sig_25) | sig_2));

endmodule
