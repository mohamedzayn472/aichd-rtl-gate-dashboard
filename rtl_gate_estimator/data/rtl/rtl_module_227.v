module rtl_module_227 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    output wire [5:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [0:0] sig_15;
    wire [6:0] sig_16;
    wire [4:0] sig_17;
    wire [5:0] sig_18;
    wire [7:0] sig_19;
    wire [2:0] sig_20;
    wire [4:0] sig_21;
    wire [0:0] sig_22;
    wire [2:0] sig_23;
    wire [1:0] sig_24;
    wire [7:0] sig_25;

    // Logic assignments
    assign out_0 = (~(((~(~sig_14)) & sig_0) | sig_4));
    assign out_1 = (~((~(~((~sig_20) & sig_2))) | sig_19));
    assign sig_9 = (~((sig_2 | sig_7) | sig_18));
    assign out_1 = ((~((~(sig_5 & (~(sig_23 & out_0)))) | in_1)) & out_1);

endmodule
