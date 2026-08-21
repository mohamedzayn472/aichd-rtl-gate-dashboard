module rtl_module_251 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [5:0] in_3,
    output wire [4:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;

    // Logic assignments
    assign out_0 = (~(~(sig_10 & (((sig_7 ^ (sig_1 ^ (sig_5 | sig_0))) ^ sig_9) & sig_0))));
    assign sig_6 = (sig_12 | (~((~(in_1 & sig_8)) & sig_2)));
    assign out_0 = (((~in_1) & in_3) & sig_6);
    assign out_0 = (~(in_1 & (sig_10 ^ ((((~(sig_4 | sig_6)) & sig_4) & sig_7) | sig_4))));
    assign sig_6 = (~(sig_1 & (sig_7 & (~((~(sig_10 & (((~((~(sig_7 | sig_7)) & sig_3)) ^ sig_6) | sig_13))) & sig_11)))));
    assign sig_10 = (~((sig_8 ^ sig_2) | sig_11));

endmodule
