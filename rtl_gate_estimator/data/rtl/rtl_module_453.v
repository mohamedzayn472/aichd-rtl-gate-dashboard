module rtl_module_453 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    output wire [0:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [0:0] sig_15;
    wire [5:0] sig_16;
    wire [0:0] sig_17;
    wire [3:0] sig_18;
    wire [0:0] sig_19;
    wire [7:0] sig_20;
    wire [1:0] sig_21;
    wire [4:0] sig_22;
    wire [6:0] sig_23;
    wire [0:0] sig_24;
    wire [1:0] sig_25;
    wire [0:0] sig_26;
    wire [5:0] sig_27;
    wire [7:0] sig_28;

    // Logic assignments
    assign out_0 = (sig_26 & (~(sig_11 | sig_1)));
    assign out_1 = ((sig_19 & in_3) | out_3);
    assign out_2 = (((~((~(~((~(sig_3 | in_0)) & sig_20))) | sig_5)) ^ sig_9) & sig_7);
    assign out_3 = ((~((((~(sig_2 | (out_3 ^ sig_7))) ^ sig_19) | sig_15) | sig_7)) | sig_26);
    assign sig_25 = (~(sig_19 | (~sig_22)));
    assign sig_13 = ((sig_22 | in_0) & sig_24);
    assign sig_3 = (~((~(sig_13 | ((~(((sig_10 | (sig_15 | (~(sig_18 & sig_4)))) ^ in_0) & sig_7)) & sig_16))) | out_1));
    assign out_1 = (sig_15 | ((~(((~sig_8) ^ sig_14) | sig_16)) ^ sig_23));
    assign sig_15 = ((~((~((sig_9 & (~((~(((~sig_24) & sig_11) & sig_23)) & sig_23))) | sig_27)) | sig_16)) ^ sig_14);

endmodule
