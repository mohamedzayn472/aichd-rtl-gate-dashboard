module rtl_module_245 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    output wire [0:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;
    wire [5:0] sig_10;
    wire [0:0] sig_11;
    wire [1:0] sig_12;
    wire [1:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [7:0] sig_17;
    wire [2:0] sig_18;
    wire [0:0] sig_19;
    wire [5:0] sig_20;
    wire [5:0] sig_21;
    wire [5:0] sig_22;
    wire [2:0] sig_23;

    // Logic assignments
    assign out_0 = (~((((~(sig_7 & (~((~sig_17) ^ sig_19)))) ^ sig_4) & sig_21) & sig_1));
    assign out_1 = (~(in_2 | (~((~(sig_4 & sig_23)) & sig_22))));
    assign sig_1 = (~(((~(sig_1 & sig_20)) ^ in_4) | sig_1));
    assign sig_13 = (sig_15 & (~(~(sig_10 | ((~(out_0 | (~(sig_22 | (sig_18 ^ (~(in_1 & sig_1))))))) ^ out_1)))));
    assign sig_6 = (~((~(sig_17 | (~(in_1 | (sig_19 | out_0))))) | out_0));
    assign sig_17 = (sig_15 | ((~(in_2 | (~(sig_0 & ((in_0 & (~sig_16)) | sig_16))))) & sig_7));
    assign sig_3 = ((~(sig_21 | ((~((sig_13 & ((sig_12 | out_0) | sig_23)) & out_0)) & sig_16))) & sig_6);

endmodule
