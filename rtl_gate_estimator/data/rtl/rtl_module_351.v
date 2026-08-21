module rtl_module_351 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    output wire [0:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [7:0] sig_12;

    // Logic assignments
    assign out_0 = (sig_1 & (~(sig_11 | sig_9)));
    assign sig_2 = (~(sig_7 & (out_0 ^ (~(sig_5 | sig_0)))));
    assign out_0 = (~(in_3 & (sig_0 & (sig_7 | in_3))));
    assign sig_12 = (~(sig_8 & (sig_11 ^ (~((~(sig_9 & ((in_0 & (~(sig_4 | sig_2))) ^ sig_12))) | sig_3)))));
    assign sig_5 = (~((~(sig_9 & (~(((in_4 ^ (~(in_4 | sig_4))) & sig_10) & sig_6)))) & sig_0));
    assign out_0 = (~(sig_11 | (sig_8 ^ sig_2)));

endmodule
