module rtl_module_135 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    output wire [3:0] out_0,
    output wire [2:0] out_1,
    output wire [2:0] out_2,
    output wire [5:0] out_3,
    output wire [5:0] out_4,
    output wire [1:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [3:0] sig_11;
    wire [6:0] sig_12;
    wire [0:0] sig_13;
    wire [1:0] sig_14;
    wire [6:0] sig_15;

    // Logic assignments
    assign out_0 = (in_1 ^ (((~(out_4 | sig_13)) | sig_3) & sig_8));
    assign out_1 = (~(~(sig_12 & sig_8)));
    assign out_2 = (~(sig_0 & (sig_14 & (~(sig_7 | (~(out_2 & sig_9)))))));
    assign out_3 = ((~((~((~(out_4 & (~(sig_6 & (out_4 | (~(in_3 | sig_10))))))) | sig_9)) & in_2)) & sig_2);
    assign out_4 = (~((~(~((~out_2) & sig_0))) | out_1));
    assign out_5 = (sig_15 & (~((sig_1 | (sig_0 ^ out_0)) | sig_4)));
    assign out_6 = (~((out_4 | ((~(~((((~(sig_3 | sig_9)) | in_0) | sig_13) | out_5))) & sig_4)) | sig_4));
    assign out_5 = ((~(sig_3 | sig_4)) | out_4);
    assign out_6 = ((~(~((~(sig_9 | (out_1 & in_3))) ^ sig_6))) ^ sig_4);
    assign out_2 = (((~(sig_15 ^ sig_2)) ^ out_2) & sig_2);
    assign sig_10 = (~(in_2 | ((in_1 ^ (out_1 ^ in_2)) | out_6)));
    assign sig_2 = (~((sig_6 | sig_8) | sig_4));

endmodule
