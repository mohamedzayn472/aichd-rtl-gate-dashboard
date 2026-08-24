module rtl_module_309 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [4:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    input wire [5:0] in_5,
    input wire [0:0] in_6,
    output wire [7:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;
    wire [4:0] sig_13;
    wire [6:0] sig_14;
    wire [7:0] sig_15;
    wire [7:0] sig_16;
    wire [0:0] sig_17;
    wire [0:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;
    wire [7:0] sig_21;
    wire [6:0] sig_22;
    wire [4:0] sig_23;

    // Logic assignments
    assign out_0 = (~((sig_22 | ((in_0 ^ in_5) ^ sig_3)) & sig_21));
    assign sig_23 = (~(((~(sig_0 & in_1)) | sig_8) & sig_16));
    assign out_0 = (in_4 & (sig_17 | (sig_20 ^ in_1)));
    assign sig_19 = ((sig_4 & sig_12) ^ sig_13);
    assign sig_21 = (~(sig_21 | (~(sig_15 | ((~(in_5 & sig_22)) ^ sig_18)))));
    assign sig_16 = (~(sig_0 | (~(in_5 | (~(sig_12 | ((sig_9 | in_3) & in_1)))))));
    assign sig_3 = ((out_0 ^ sig_19) ^ sig_18);
    assign sig_13 = (~((sig_10 ^ sig_1) & in_1));

endmodule
