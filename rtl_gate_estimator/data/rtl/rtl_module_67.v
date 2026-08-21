module rtl_module_67 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [0:0] sig_15;
    wire [1:0] sig_16;
    wire [4:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [5:0] sig_20;
    wire [6:0] sig_21;
    wire [4:0] sig_22;
    wire [5:0] sig_23;
    wire [1:0] sig_24;
    wire [0:0] sig_25;
    wire [1:0] sig_26;
    wire [7:0] sig_27;
    wire [3:0] sig_28;

    // Logic assignments
    assign out_0 = (~(~(sig_1 | ((sig_28 & (~((~out_1) | out_2))) ^ sig_19))));
    assign out_1 = (~(((~(sig_22 & (in_2 & (out_2 & (sig_23 | ((~(sig_20 & sig_21)) ^ in_2)))))) & in_1) | sig_6));
    assign out_2 = (((~(sig_24 & sig_11)) ^ sig_17) & sig_10);
    assign out_3 = (((~(~(out_0 | (~((sig_6 ^ (sig_20 | (out_1 | out_1))) | sig_0))))) ^ sig_9) & sig_14);
    assign sig_5 = (~(sig_5 ^ (~(sig_23 & (~(~((sig_11 | (~sig_7)) | sig_26)))))));
    assign sig_20 = ((sig_14 | out_3) & out_1);
    assign sig_11 = (~(sig_1 & (~(sig_3 | ((sig_4 | (sig_20 & sig_0)) & out_0)))));
    assign sig_18 = (~(((sig_9 ^ ((~(sig_10 & out_1)) | sig_12)) & sig_9) & sig_9));
    assign sig_13 = ((sig_21 ^ (sig_25 | in_1)) & out_2);
    assign sig_11 = (~(sig_10 & (~((~(~((~((~(~(sig_18 | (sig_18 ^ sig_11)))) & sig_10)) | sig_17))) & sig_3))));

endmodule
