module rtl_module_285 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    input wire [0:0] in_4,
    input wire [4:0] in_5,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [5:0] sig_15;
    wire [3:0] sig_16;
    wire [0:0] sig_17;
    wire [3:0] sig_18;
    wire [2:0] sig_19;
    wire [0:0] sig_20;
    wire [7:0] sig_21;
    wire [5:0] sig_22;
    wire [6:0] sig_23;
    wire [0:0] sig_24;
    wire [5:0] sig_25;
    wire [2:0] sig_26;
    wire [6:0] sig_27;
    wire [0:0] sig_28;
    wire [1:0] sig_29;

    // Logic assignments
    assign out_0 = (~(((out_2 | out_2) & sig_19) | sig_8));
    assign out_1 = (in_3 | (sig_11 | (sig_1 ^ (~(out_2 ^ (in_0 ^ sig_9))))));
    assign out_2 = (~((in_5 | (((sig_29 | (~(out_2 | sig_16))) & sig_14) & sig_12)) | sig_28));
    assign out_3 = (~(sig_2 | (~sig_27)));
    assign out_4 = (in_3 ^ (~(in_2 & sig_1)));
    assign out_5 = (sig_7 ^ (~(sig_25 & ((~(sig_7 | sig_22)) ^ sig_16))));
    assign out_3 = (sig_11 | ((~(sig_6 | (sig_3 ^ (~((~(sig_17 | (sig_27 ^ sig_9))) | sig_28))))) ^ sig_2));
    assign sig_22 = ((~(sig_21 & (((sig_15 ^ ((~(sig_27 | (~sig_20))) ^ in_5)) | sig_9) ^ sig_26))) & out_3);
    assign sig_19 = (~(sig_12 | (~((~(~sig_0)) & sig_15))));
    assign sig_18 = (~((sig_20 & (~(((~((sig_26 & out_0) | sig_10)) ^ sig_12) | sig_15))) | sig_17));
    assign sig_22 = (~((sig_22 | (((~(sig_2 & (~(in_3 & in_4)))) ^ sig_22) ^ sig_15)) | sig_25));
    assign sig_11 = (sig_24 ^ (~((sig_12 & (sig_7 | sig_26)) | sig_9)));
    assign sig_1 = ((~(sig_10 | ((sig_13 ^ (sig_12 ^ out_2)) ^ sig_20))) & sig_0);
    assign sig_8 = (~((~((sig_20 ^ sig_25) & sig_15)) | sig_8));

endmodule
