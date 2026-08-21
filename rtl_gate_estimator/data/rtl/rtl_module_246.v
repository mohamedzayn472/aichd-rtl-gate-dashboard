module rtl_module_246 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [1:0] in_3,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [4:0] sig_10;
    wire [2:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [7:0] sig_15;
    wire [5:0] sig_16;
    wire [1:0] sig_17;
    wire [4:0] sig_18;
    wire [5:0] sig_19;
    wire [0:0] sig_20;
    wire [0:0] sig_21;
    wire [0:0] sig_22;

    // Logic assignments
    assign out_0 = (~(sig_2 | (~((~(~(sig_8 & ((~(sig_21 & (sig_14 ^ sig_3))) | sig_22)))) & sig_11))));
    assign out_1 = (~(~(sig_2 ^ sig_22)));
    assign out_2 = (~(sig_3 & (~(sig_14 | (sig_8 & (sig_5 | sig_18))))));
    assign out_3 = (~(sig_18 & (in_3 ^ (~(in_0 | (sig_19 ^ sig_1))))));
    assign sig_22 = (~((sig_2 ^ (~((sig_13 ^ (sig_19 ^ ((~((sig_11 ^ sig_15) & sig_10)) ^ sig_7))) | sig_10))) | sig_1));
    assign sig_20 = (~((~(sig_15 & (~(sig_19 & (sig_7 & sig_0))))) ^ sig_12));
    assign sig_2 = ((in_0 | sig_18) | sig_19);
    assign sig_20 = (sig_7 | (~((sig_6 & ((sig_20 | out_2) & sig_10)) & sig_10)));
    assign sig_3 = (~((~in_1) | sig_16));
    assign out_1 = (~(~((~(sig_22 | (((~(in_0 | sig_21)) | sig_7) | sig_8))) | sig_15)));

endmodule
