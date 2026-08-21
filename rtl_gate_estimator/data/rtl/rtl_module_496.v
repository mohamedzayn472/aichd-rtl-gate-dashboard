module rtl_module_496 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [2:0] in_4,
    input wire [5:0] in_5,
    output wire [3:0] out_0,
    output wire [2:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [4:0] sig_9;
    wire [4:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [2:0] sig_15;
    wire [0:0] sig_16;

    // Logic assignments
    assign out_0 = ((~((sig_15 | (~(sig_4 | (~(sig_15 | (~((sig_2 | sig_16) & sig_7))))))) | sig_14)) & sig_4);
    assign out_1 = (~(sig_16 | (~(in_3 & (~(in_2 | (((sig_16 & sig_15) ^ out_2) ^ in_5)))))));
    assign out_2 = (~(~((sig_14 | (~(~(in_0 ^ sig_2)))) | in_1)));
    assign sig_8 = (~((~(sig_7 ^ in_5)) & sig_3));
    assign sig_13 = (sig_4 & ((sig_14 | (~(sig_7 & ((sig_2 & (~(sig_5 & in_0))) & out_1)))) ^ sig_5));
    assign sig_10 = (~(~(((sig_16 & sig_11) | sig_4) | sig_8)));
    assign sig_12 = (~(~((~(out_1 & (~(out_0 ^ in_3)))) & out_0)));
    assign sig_12 = (~(sig_4 | (~in_5)));
    assign sig_2 = (in_2 ^ (~(out_1 & in_5)));

endmodule
