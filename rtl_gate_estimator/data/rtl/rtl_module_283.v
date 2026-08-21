module rtl_module_283 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [5:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [1:0] sig_8;
    wire [4:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;

    // Logic assignments
    assign out_0 = (sig_14 | (~(~(~((~(sig_10 & sig_0)) ^ sig_10)))));
    assign out_1 = (~((sig_6 ^ (sig_8 | sig_5)) & sig_10));
    assign out_2 = (in_2 & (~((~(~(sig_8 & (sig_5 | ((~(out_0 | (~(sig_9 | sig_13)))) ^ in_3))))) & out_0)));
    assign out_0 = ((~(sig_1 & (sig_12 ^ (in_3 | (~(sig_11 & ((~(in_2 & in_2)) & in_0))))))) | sig_2);
    assign sig_8 = (~(sig_2 & (~(out_2 & sig_11))));
    assign sig_5 = (sig_4 & (~(sig_11 | (~((out_0 & sig_2) & out_2)))));
    assign sig_11 = (~((~(sig_11 | ((~(sig_5 | sig_5)) ^ sig_1))) | sig_1));
    assign sig_14 = (~((~(out_2 | (~(sig_0 | (~(sig_14 & (~(sig_10 ^ (sig_8 & sig_9))))))))) | in_3));

endmodule
