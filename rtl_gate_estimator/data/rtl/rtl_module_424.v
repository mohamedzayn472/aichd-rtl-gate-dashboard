module rtl_module_424 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;

    // Logic assignments
    assign out_0 = (~((~(~(sig_0 & (sig_1 | sig_8)))) | in_1));
    assign out_1 = ((~((~(in_1 | (~(sig_3 | sig_3)))) | out_1)) | sig_7);
    assign sig_4 = (~((~((sig_1 & (~(~((sig_0 ^ sig_8) | in_1)))) | sig_5)) & sig_0));
    assign sig_13 = (~(~(sig_11 ^ (sig_1 | ((~((~(sig_6 | sig_7)) & sig_10)) ^ out_1)))));
    assign sig_4 = ((~(sig_13 | (~(sig_4 | sig_1)))) & sig_12);

endmodule
