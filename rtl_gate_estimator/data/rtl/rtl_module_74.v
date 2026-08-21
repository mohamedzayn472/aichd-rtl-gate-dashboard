module rtl_module_74 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [5:0] in_4,
    output wire [7:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;
    wire [7:0] sig_14;
    wire [0:0] sig_15;
    wire [4:0] sig_16;
    wire [6:0] sig_17;
    wire [6:0] sig_18;
    wire [1:0] sig_19;
    wire [1:0] sig_20;
    wire [1:0] sig_21;
    wire [4:0] sig_22;
    wire [5:0] sig_23;
    wire [7:0] sig_24;

    // Logic assignments
    assign out_0 = (sig_18 & (sig_23 & (sig_6 | sig_0)));
    assign out_1 = (in_3 & (~(((~((~sig_2) & in_2)) | sig_4) | sig_20)));
    assign out_2 = ((~(sig_12 & in_0)) & sig_3);
    assign sig_7 = (~(sig_4 | (sig_3 | (~((~(~(~(sig_1 | sig_6)))) | in_4)))));
    assign sig_2 = (~((sig_15 & (~(((sig_18 | sig_21) | sig_11) & sig_22))) & in_1));
    assign sig_23 = (~(~(~(out_2 & (out_0 | sig_3)))));
    assign sig_20 = (~(sig_15 | (((~((~(sig_4 & (sig_0 ^ (~(sig_22 & in_1))))) & in_2)) | sig_20) | sig_16)));
    assign out_2 = (~((~(~(~(out_1 | (~(sig_3 & out_0)))))) & in_4));

endmodule
