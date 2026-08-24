module rtl_module_169 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    input wire [4:0] in_5,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [7:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;
    wire [1:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [0:0] sig_13;
    wire [7:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign out_0 = (~(sig_9 & sig_4));
    assign out_1 = (~(((sig_2 | ((~((~(in_4 | (~(sig_9 ^ sig_4)))) | in_4)) ^ in_0)) ^ sig_3) & in_2));
    assign out_2 = ((~(sig_10 & (sig_6 & (((~(sig_5 | in_3)) | in_3) & sig_8)))) | sig_6);
    assign out_3 = ((~(sig_5 | (~((~(sig_12 & (~(sig_7 & out_3)))) | in_2)))) ^ sig_0);
    assign sig_10 = (~((((sig_11 | sig_11) & sig_0) & in_5) | sig_7));
    assign sig_4 = ((sig_3 | sig_8) | sig_2);
    assign sig_3 = (sig_7 ^ (sig_8 | sig_15));
    assign sig_12 = (~((((~(sig_14 & (~(out_3 | ((~(sig_6 | (~(sig_12 | in_4)))) ^ in_1))))) & sig_9) & sig_3) & sig_2));
    assign sig_1 = (sig_11 | ((sig_5 & (sig_11 | sig_1)) ^ in_5));
    assign sig_8 = (~(in_4 ^ ((~(out_2 ^ out_1)) | in_5)));

endmodule
