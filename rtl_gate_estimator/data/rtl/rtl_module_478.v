module rtl_module_478 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4,
    output wire [6:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [6:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;
    wire [1:0] sig_13;
    wire [1:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign out_0 = ((~(sig_4 | (~(((sig_1 ^ (out_6 ^ (sig_8 & sig_14))) ^ out_5) & out_3)))) & sig_0);
    assign out_1 = ((sig_4 & ((~(sig_15 & (~(sig_11 | (~(~(sig_1 & out_3))))))) | sig_5)) ^ sig_7);
    assign out_2 = ((~(in_1 & (sig_15 & (out_4 | (out_3 ^ out_5))))) & sig_5);
    assign out_3 = (~((~(sig_13 | (sig_11 | out_1))) | sig_15));
    assign out_4 = (sig_2 & (sig_9 & ((sig_3 & (~(out_1 & (~(sig_2 & sig_2))))) | out_3)));
    assign out_5 = (~(sig_6 ^ sig_2));
    assign out_6 = ((((~((~(in_2 | in_1)) & sig_10)) & sig_0) ^ sig_12) & in_3);
    assign sig_15 = ((~(sig_0 | in_4)) ^ sig_6);
    assign sig_1 = ((~(sig_9 & (~((~(~(sig_5 & out_1))) ^ in_0)))) ^ sig_0);
    assign sig_8 = ((sig_13 ^ (~(out_1 & (out_6 ^ sig_3)))) | out_0);
    assign sig_0 = (~((~(~(((~(out_4 | (~(sig_0 | (~(sig_0 & (sig_11 | sig_13))))))) ^ in_2) & sig_15))) & sig_8));
    assign out_6 = (~((sig_12 | (~(sig_11 & sig_9))) & out_5));
    assign sig_3 = ((sig_2 & (sig_6 | sig_10)) ^ out_1);
    assign sig_0 = (~(in_3 | ((~(sig_11 & (~(~(sig_14 & (~((~(sig_3 | in_0)) & sig_9))))))) | sig_7)));
    assign out_0 = (~(~(sig_8 ^ out_0)));
    assign out_5 = (~(sig_3 | ((((~(in_4 & ((~(~out_3)) ^ out_4))) ^ out_0) | sig_12) & sig_8)));

endmodule
