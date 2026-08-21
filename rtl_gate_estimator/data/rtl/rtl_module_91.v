module rtl_module_91 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    output wire [6:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [0:0] sig_10;
    wire [6:0] sig_11;
    wire [6:0] sig_12;

    // Logic assignments
    assign out_0 = ((in_0 & (sig_5 & (sig_0 & (~(sig_10 | sig_9))))) ^ sig_8);
    assign sig_9 = (~((sig_5 ^ (~(sig_12 & (~((~((~((sig_9 & sig_4) & sig_4)) & sig_2)) & sig_10))))) & sig_1));
    assign sig_10 = (~((~(~((((sig_0 & (sig_11 ^ sig_3)) ^ sig_10) & sig_5) & sig_0))) | sig_9));
    assign sig_10 = (~(sig_8 & (~((sig_0 | (~(sig_9 & (in_0 ^ sig_0)))) & sig_9))));

endmodule
