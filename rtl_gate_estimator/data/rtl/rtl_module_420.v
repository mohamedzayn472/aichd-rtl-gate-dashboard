module rtl_module_420 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;
    wire [6:0] sig_16;
    wire [1:0] sig_17;
    wire [6:0] sig_18;
    wire [1:0] sig_19;
    wire [4:0] sig_20;
    wire [0:0] sig_21;
    wire [2:0] sig_22;
    wire [1:0] sig_23;
    wire [2:0] sig_24;
    wire [0:0] sig_25;
    wire [3:0] sig_26;
    wire [0:0] sig_27;

    // Logic assignments
    assign out_0 = (~((~((~((~((~sig_18) | sig_23)) | sig_20)) | sig_21)) | sig_13));
    assign out_1 = (sig_4 ^ (~((sig_17 | ((~(~(in_0 | sig_17))) | sig_16)) & sig_21)));
    assign out_2 = ((~((~(sig_21 & (~((~(sig_16 & (~(sig_19 & (~((~(sig_19 | out_3)) | sig_1)))))) & sig_14)))) | sig_21)) | sig_8);
    assign out_3 = ((~((~(out_1 | (in_2 ^ (~(out_1 & sig_18))))) | sig_13)) | sig_0);
    assign out_4 = ((sig_26 ^ (~((((((~(sig_9 & sig_16)) & sig_7) | in_0) | out_1) ^ sig_19) | in_0))) & sig_0);
    assign sig_23 = (sig_15 | (~((~(((~(sig_7 & sig_26)) ^ sig_0) | sig_22)) | sig_15)));
    assign sig_15 = (((~sig_16) & out_1) ^ sig_8);
    assign sig_1 = (~(out_1 | (~(sig_7 & sig_26))));

endmodule
