module rtl_module_351 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    output wire [7:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [7:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [7:0] sig_15;
    wire [1:0] sig_16;
    wire [5:0] sig_17;
    wire [1:0] sig_18;
    wire [1:0] sig_19;

    // Logic assignments
    assign out_0 = (sig_14 ^ ((((~(sig_17 | (~((sig_5 ^ sig_7) & sig_10)))) ^ sig_10) | sig_19) & sig_18));
    assign out_1 = (~((~sig_8) | sig_15));
    assign sig_10 = ((~((sig_8 ^ (~(~(in_2 | (sig_16 & (in_0 | sig_4)))))) & in_2)) & sig_8);
    assign out_0 = ((sig_17 & sig_0) & sig_13);
    assign sig_2 = (~(sig_16 & (~(in_2 | (~(((~((sig_3 & sig_6) | sig_8)) & sig_9) | in_0))))));
    assign sig_10 = ((~(~(sig_0 | (sig_10 & sig_18)))) | in_2);

endmodule
