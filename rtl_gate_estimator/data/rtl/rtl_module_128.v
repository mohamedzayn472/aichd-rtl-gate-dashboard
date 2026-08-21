module rtl_module_128 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    input wire [4:0] in_4,
    input wire [6:0] in_5,
    input wire [2:0] in_6,
    output wire [0:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [0:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign out_0 = (~(out_1 & (~(out_1 ^ sig_9))));
    assign out_1 = (((~((~((~((~(sig_13 & in_1)) & sig_13)) | sig_2)) & sig_0)) | sig_5) & sig_9);
    assign sig_6 = (((~(sig_5 & (~((~(in_1 | (((~(sig_13 & in_6)) ^ sig_7) & sig_9))) | in_0)))) | sig_3) ^ sig_7);
    assign out_0 = ((((~(sig_10 & (sig_12 & (sig_7 | out_0)))) & in_6) & in_3) ^ in_3);
    assign sig_12 = (~((~(sig_11 & ((~(sig_8 & sig_11)) & sig_5))) & sig_9));
    assign sig_6 = (~(sig_3 & (~in_1)));
    assign sig_10 = (sig_11 | (sig_0 ^ ((((~(in_2 | sig_10)) ^ sig_6) ^ out_1) | sig_4)));
    assign sig_5 = ((~(~(~(in_4 | in_3)))) | out_1);
    assign sig_1 = (~(sig_6 | (sig_1 ^ sig_10)));
    assign sig_6 = (in_5 | (in_4 & sig_9));

endmodule
