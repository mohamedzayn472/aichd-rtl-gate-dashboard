module rtl_module_474 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [0:0] in_3,
    output wire [6:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [2:0] sig_12;
    wire [1:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign out_0 = (~((~(sig_14 & (sig_5 | ((~(sig_11 & (sig_4 & in_0))) & sig_9)))) & in_0));
    assign sig_9 = ((~sig_6) ^ in_0);
    assign sig_11 = (~((~(sig_10 & (~((~(in_1 | sig_15)) | sig_15)))) & sig_14));
    assign sig_12 = (~(~(sig_12 & (sig_14 & sig_15))));
    assign out_0 = (sig_10 ^ (~((~((sig_9 | (~sig_0)) & sig_9)) & sig_2)));

endmodule
