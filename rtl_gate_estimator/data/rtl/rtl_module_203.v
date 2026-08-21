module rtl_module_203 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    output wire [1:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [3:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [6:0] sig_12;
    wire [7:0] sig_13;
    wire [2:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [3:0] sig_17;

    // Logic assignments
    assign out_0 = (~(~(~(sig_8 | sig_9))));
    assign sig_10 = (~(sig_14 & ((~(sig_13 & (~(sig_9 | (sig_9 ^ (~sig_12)))))) & sig_13)));
    assign sig_2 = (~(~(sig_15 ^ sig_10)));
    assign sig_12 = (~((sig_1 ^ (~(sig_9 | (~((sig_16 & sig_5) & sig_15))))) & in_1));
    assign sig_12 = (~((~(sig_1 | in_3)) | sig_14));
    assign sig_7 = ((sig_16 | (~(in_3 & (~(sig_12 | sig_2))))) & out_0);
    assign sig_0 = (~(~sig_3));

endmodule
