module rtl_module_233 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign out_0 = (sig_3 ^ (~(~(~(out_1 | in_0)))));
    assign out_1 = (~((~(sig_1 | (in_1 ^ sig_4))) | sig_2));
    assign out_2 = ((in_2 & (sig_7 ^ ((out_2 ^ sig_3) | out_1))) ^ in_0);
    assign out_1 = (~(sig_7 & (~(sig_6 | sig_4))));
    assign sig_0 = (~(sig_5 | (in_2 | (sig_9 ^ (~((sig_1 | sig_2) | out_0))))));
    assign sig_4 = (~(sig_3 | (~((~(~(sig_1 | sig_7))) ^ in_3))));
    assign sig_10 = (sig_7 ^ (sig_6 & (~(in_0 & (~((~sig_0) | sig_0))))));

endmodule
