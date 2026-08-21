module rtl_module_499 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [7:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    input wire [0:0] in_5,
    input wire [7:0] in_6,
    input wire [1:0] in_7,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [7:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [4:0] sig_13;
    wire [7:0] sig_14;
    wire [5:0] sig_15;
    wire [7:0] sig_16;
    wire [5:0] sig_17;
    wire [3:0] sig_18;
    wire [1:0] sig_19;
    wire [4:0] sig_20;
    wire [3:0] sig_21;
    wire [0:0] sig_22;
    wire [1:0] sig_23;
    wire [7:0] sig_24;
    wire [1:0] sig_25;
    wire [1:0] sig_26;
    wire [0:0] sig_27;
    wire [6:0] sig_28;
    wire [5:0] sig_29;

    // Logic assignments
    assign out_0 = (sig_24 | (~(~(~(sig_1 | sig_26)))));
    assign out_1 = (sig_10 ^ (~(sig_9 & (~(sig_10 | (sig_17 ^ (((~(sig_9 | (sig_2 | sig_9))) & sig_24) ^ sig_29)))))));
    assign out_2 = (~((in_1 & (~(((~(sig_16 | out_4)) | sig_17) & sig_15))) & sig_2));
    assign out_3 = (~(sig_26 & (~(((sig_21 | sig_24) & in_7) | in_6))));
    assign out_4 = (sig_20 | (~(in_2 & sig_28)));
    assign sig_20 = (~(sig_2 ^ (~(out_2 | (sig_20 & in_1)))));
    assign out_2 = ((sig_3 | sig_10) | sig_1);
    assign sig_27 = (sig_26 & (~(sig_7 | sig_5)));
    assign sig_12 = (~(sig_8 & (in_5 & (~(((~(sig_23 & sig_26)) & sig_19) & sig_28)))));
    assign out_1 = ((sig_3 | (((~((~((in_2 | (~in_3)) & in_5)) | sig_12)) & sig_22) ^ sig_13)) & in_2);
    assign sig_24 = ((~((sig_14 | (~(out_0 | (~((~(sig_15 & (sig_28 | sig_18))) | sig_23))))) | in_1)) | in_7);
    assign sig_5 = (~((~(out_4 | ((~(sig_7 | (sig_1 & sig_15))) & sig_1))) & in_6));
    assign sig_4 = (((~((~(~((~(sig_14 & sig_18)) & sig_3))) | sig_19)) ^ sig_20) & sig_12);
    assign sig_23 = ((((~((~sig_20) | sig_16)) ^ sig_13) & sig_19) ^ sig_21);
    assign sig_24 = (out_3 ^ (~((~((sig_11 | ((~(sig_0 & sig_28)) & sig_19)) & sig_19)) ^ sig_12)));
    assign out_2 = (~(sig_13 | (~((sig_9 | sig_2) | sig_27))));
    assign sig_20 = ((~(~((((in_7 & sig_14) | sig_19) & sig_27) & sig_14))) | sig_6);
    assign sig_11 = (sig_21 ^ (~(sig_22 & (((out_4 ^ in_5) | sig_10) | sig_24))));
    assign sig_4 = (sig_21 ^ (~((sig_29 ^ ((~((~((~(sig_3 & sig_12)) & sig_25)) | sig_16)) | sig_21)) | sig_18)));
    assign sig_13 = (~(((~(sig_13 | sig_28)) ^ sig_9) & sig_6));
    assign sig_18 = (sig_18 & (~(((~(sig_4 | (sig_15 | sig_25))) & sig_23) & sig_24)));

endmodule
