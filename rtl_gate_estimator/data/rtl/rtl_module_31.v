module rtl_module_31 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    output wire [3:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [7:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [7:0] sig_17;
    wire [3:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [6:0] sig_21;
    wire [3:0] sig_22;
    wire [1:0] sig_23;
    wire [7:0] sig_24;
    wire [5:0] sig_25;
    wire [2:0] sig_26;
    wire [0:0] sig_27;
    wire [7:0] sig_28;

    // Logic assignments
    assign out_0 = (~((~((~((out_2 & (sig_3 & sig_19)) | sig_4)) | sig_6)) & sig_19));
    assign out_1 = (~(~(sig_8 | (~((~((~((~(sig_19 & (sig_19 ^ sig_16))) & sig_26)) | sig_23)) ^ sig_10)))));
    assign out_2 = (sig_18 & (in_1 & (~(in_3 | in_4))));
    assign sig_20 = ((~(sig_27 & (~(in_4 & sig_0)))) ^ sig_23);
    assign out_2 = (~((sig_14 ^ (~((in_2 ^ (~(in_1 & sig_28))) & sig_1))) & sig_22));
    assign sig_2 = (~(sig_25 & (~(sig_13 | (sig_4 ^ sig_25)))));
    assign out_2 = (~((~(sig_16 | (~(sig_18 & (~((~(~(~(sig_4 & sig_26)))) & sig_10)))))) & sig_12));
    assign sig_1 = (sig_13 & ((in_3 ^ ((~((~(in_1 & sig_15)) | sig_21)) ^ sig_16)) | sig_9));
    assign sig_4 = ((sig_0 & (sig_0 ^ (((~(sig_24 & ((sig_21 & sig_23) ^ sig_20))) & sig_14) | sig_18))) ^ sig_7);
    assign sig_21 = (~((in_4 ^ (sig_21 ^ sig_6)) & sig_28));
    assign sig_16 = (in_5 ^ (~(sig_8 & sig_19)));
    assign sig_6 = (((sig_13 & (~(in_4 & (~((~sig_21) & sig_7))))) ^ sig_13) ^ sig_28);

endmodule
