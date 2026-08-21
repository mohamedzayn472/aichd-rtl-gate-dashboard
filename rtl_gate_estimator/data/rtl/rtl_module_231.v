module rtl_module_231 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2,
    output wire [1:0] out_3,
    output wire [5:0] out_4,
    output wire [1:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [7:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;

    // Logic assignments
    assign out_0 = (sig_1 | (~(sig_10 | ((sig_9 ^ (sig_8 ^ (~((~sig_2) | sig_3)))) | sig_5))));
    assign out_1 = (((((~((~(out_5 & sig_2)) | out_6)) ^ sig_6) ^ out_1) & sig_9) & sig_5);
    assign out_2 = ((~(out_2 | (~(out_4 & sig_9)))) ^ out_3);
    assign out_3 = (~(out_4 & (~(out_2 & (~sig_7)))));
    assign out_4 = (sig_4 ^ (~(out_1 | sig_9)));
    assign out_5 = ((~(out_0 & ((~(~((~(((~out_6) | sig_10) | sig_7)) & sig_6))) & sig_9))) | in_0);
    assign out_6 = (~(((~((~((~(out_3 & (~(in_1 | out_6)))) & out_4)) & sig_2)) ^ sig_3) ^ in_1));
    assign sig_0 = (~(sig_0 | out_4));
    assign sig_1 = (~(~((~(sig_2 & (~(sig_2 | (sig_0 | (~(sig_8 | out_4))))))) & sig_1)));

endmodule
