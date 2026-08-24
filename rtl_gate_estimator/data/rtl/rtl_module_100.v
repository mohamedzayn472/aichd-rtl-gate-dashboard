module rtl_module_100 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    input wire [2:0] in_5,
    input wire [3:0] in_6,
    input wire [2:0] in_7,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;
    wire [7:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;
    wire [7:0] sig_16;
    wire [6:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;
    wire [1:0] sig_20;
    wire [6:0] sig_21;
    wire [2:0] sig_22;

    // Logic assignments
    assign out_0 = ((sig_3 ^ (~((~((~sig_17) | in_4)) | in_1))) ^ sig_15);
    assign out_1 = ((~(sig_16 & (~((~((~(sig_6 | sig_0)) & in_2)) & sig_19)))) & sig_19);
    assign out_2 = (~(~(sig_17 | (~(sig_8 & sig_18)))));
    assign sig_3 = (((~(sig_16 | (~(sig_0 | (sig_17 & in_0))))) ^ in_0) & sig_17);
    assign sig_1 = (~((~(sig_22 | (~(sig_20 | in_7)))) ^ sig_15));
    assign sig_5 = (~((~(~(((sig_13 | in_0) & sig_8) | sig_21))) & sig_21));
    assign sig_3 = (~(~(in_2 ^ ((~((~((in_1 ^ (sig_13 ^ sig_19)) | sig_3)) & sig_18)) & sig_12))));
    assign sig_11 = (out_2 & (~(sig_7 & (~(sig_21 | (~(((sig_0 & in_6) | out_0) | sig_9)))))));
    assign sig_1 = ((sig_1 ^ in_2) ^ in_6);
    assign out_0 = (sig_3 ^ (~(sig_11 | sig_19)));
    assign sig_8 = (~((~(((~((sig_7 | (~(sig_11 & sig_8))) & in_3)) & sig_22) | sig_19)) | sig_3));

endmodule
