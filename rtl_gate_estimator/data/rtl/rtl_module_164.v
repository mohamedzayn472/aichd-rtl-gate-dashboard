module rtl_module_164 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    output wire [4:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;

    // Logic assignments
    assign out_0 = (~(sig_7 & ((~(~(~in_1))) ^ sig_7)));
    assign sig_1 = (~(sig_1 & (~(sig_1 ^ (((sig_4 ^ sig_3) & in_1) ^ sig_8)))));
    assign sig_9 = ((((~(in_4 | (~(sig_7 & sig_0)))) ^ sig_7) & in_3) ^ in_4);
    assign sig_6 = (sig_2 | (~((in_3 ^ (~(sig_10 | (~(in_1 & (~(out_0 | (sig_3 ^ in_4)))))))) | sig_8)));
    assign out_0 = (~(sig_5 | (~(sig_7 & sig_3))));
    assign sig_2 = ((~(sig_6 | ((~(in_1 | (sig_1 & (sig_2 ^ sig_2)))) ^ sig_2))) ^ out_0);
    assign sig_0 = (~(sig_3 | (((~sig_7) ^ sig_3) ^ sig_9)));

endmodule
