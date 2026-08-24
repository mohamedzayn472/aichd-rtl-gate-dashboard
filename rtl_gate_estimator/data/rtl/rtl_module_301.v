module rtl_module_301 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    input wire [0:0] in_5,
    output wire [3:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [7:0] sig_13;
    wire [0:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [0:0] sig_17;
    wire [7:0] sig_18;
    wire [4:0] sig_19;
    wire [6:0] sig_20;
    wire [1:0] sig_21;

    // Logic assignments
    assign out_0 = (~(in_2 & (sig_2 & sig_19)));
    assign sig_21 = (sig_10 ^ ((sig_14 | (~(~(in_2 & sig_8)))) ^ out_0));
    assign sig_14 = (sig_20 | (sig_2 & (in_0 ^ (~(~(sig_9 | sig_19))))));
    assign sig_13 = (~((sig_18 | sig_3) & sig_9));
    assign sig_8 = (~(~((sig_1 ^ out_0) & sig_2)));
    assign sig_19 = (~(sig_1 & (~((~(in_2 | (~(sig_15 | sig_2)))) | in_4))));
    assign sig_18 = (~(sig_8 & (((sig_3 ^ (~(sig_15 & (sig_21 & ((~sig_16) & sig_20))))) & sig_10) | sig_18)));

endmodule
