module rtl_module_54 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [1:0] sig_12;
    wire [2:0] sig_13;
    wire [1:0] sig_14;
    wire [5:0] sig_15;
    wire [1:0] sig_16;
    wire [3:0] sig_17;
    wire [4:0] sig_18;
    wire [2:0] sig_19;
    wire [2:0] sig_20;
    wire [4:0] sig_21;
    wire [3:0] sig_22;
    wire [0:0] sig_23;
    wire [2:0] sig_24;
    wire [6:0] sig_25;
    wire [1:0] sig_26;
    wire [3:0] sig_27;
    wire [7:0] sig_28;

    // Logic assignments
    assign out_0 = (sig_1 ^ (~(sig_2 | sig_20)));
    assign out_1 = (sig_12 & (sig_24 & (~sig_25)));
    assign out_2 = ((sig_15 & sig_23) ^ out_2);
    assign sig_3 = (~(sig_14 | (sig_26 ^ (((~(((~((~(sig_19 & sig_0)) & sig_6)) & sig_20) | sig_8)) & sig_20) ^ sig_4))));
    assign sig_8 = (~(sig_0 | (out_2 & ((~(sig_7 & sig_26)) ^ sig_19))));
    assign sig_23 = (sig_28 | (~(~(sig_4 | (~(sig_9 & (sig_16 & sig_27)))))));
    assign sig_5 = (~(~(sig_4 & (~sig_14))));
    assign sig_19 = ((~(sig_0 & (~((~(out_2 & (sig_24 & (~((in_2 & sig_27) & sig_22))))) ^ sig_17)))) | in_1);
    assign out_0 = ((~(sig_21 & sig_0)) | sig_14);

endmodule
