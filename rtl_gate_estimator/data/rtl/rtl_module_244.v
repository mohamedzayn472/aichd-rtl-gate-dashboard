module rtl_module_244 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    input wire [0:0] in_6,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [6:0] sig_14;
    wire [2:0] sig_15;
    wire [3:0] sig_16;
    wire [1:0] sig_17;
    wire [1:0] sig_18;
    wire [6:0] sig_19;
    wire [7:0] sig_20;
    wire [7:0] sig_21;
    wire [5:0] sig_22;
    wire [6:0] sig_23;
    wire [4:0] sig_24;

    // Logic assignments
    assign out_0 = ((~(sig_2 & sig_16)) & sig_0);
    assign out_1 = ((sig_7 & ((~in_6) ^ sig_20)) ^ sig_10);
    assign out_2 = (~((~(~(in_3 ^ (sig_15 ^ sig_21)))) | in_5));
    assign out_3 = (~(sig_3 | (sig_14 & (~((sig_18 ^ sig_5) & in_3)))));
    assign sig_16 = ((sig_6 & (sig_2 | sig_20)) | sig_12);
    assign sig_11 = (~((~((~(sig_18 | ((~((~(sig_22 & in_6)) & sig_22)) ^ out_0))) | sig_2)) | sig_10));
    assign sig_22 = ((~(~(sig_0 | (~(sig_24 & in_6))))) | sig_20);
    assign sig_6 = (sig_22 ^ (~(in_3 & ((sig_1 ^ (out_0 | (~(out_1 & (sig_16 ^ in_3))))) ^ out_2))));
    assign sig_16 = ((~((~(sig_12 | (sig_21 ^ sig_0))) | in_5)) ^ sig_0);
    assign sig_2 = ((sig_2 ^ (~((sig_22 & sig_18) | sig_2))) ^ sig_16);
    assign sig_1 = ((sig_9 ^ ((~(sig_22 | sig_24)) | in_1)) & sig_20);
    assign out_1 = (in_6 | (sig_15 & (~(~(sig_18 | (~(~(in_0 & (~(in_4 & (~sig_13)))))))))));
    assign sig_9 = (~(sig_10 | sig_7));

endmodule
