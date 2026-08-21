module rtl_module_400 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    output wire [0:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;
    wire [5:0] sig_11;
    wire [4:0] sig_12;
    wire [7:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [7:0] sig_16;

    // Logic assignments
    assign out_0 = (~(((sig_16 & (~(sig_6 | sig_14))) ^ sig_13) & sig_7));
    assign sig_2 = (~((~(out_0 & sig_2)) & sig_7));
    assign out_0 = (~(~((((sig_12 | (out_0 | (sig_11 & sig_9))) | sig_0) | sig_8) & sig_2)));

endmodule
