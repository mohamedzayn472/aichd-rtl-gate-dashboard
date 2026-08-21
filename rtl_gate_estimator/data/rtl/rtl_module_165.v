module rtl_module_165 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4,
    output wire [3:0] out_5,
    output wire [7:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [4:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;

    // Logic assignments
    assign out_0 = (sig_5 | (~(sig_10 | (in_2 | (~((~(~(in_0 & (sig_12 & (~(out_7 | out_5)))))) & sig_8))))));
    assign out_1 = (sig_2 & (~((~(out_2 & (~((~(sig_3 & sig_10)) & sig_4)))) & sig_12)));
    assign out_2 = ((~(sig_8 | ((out_1 & (in_1 | sig_3)) ^ out_4))) | out_3);
    assign out_3 = (((sig_4 ^ sig_12) | sig_6) ^ in_3);
    assign out_4 = (~((in_1 ^ sig_8) | sig_12));
    assign out_5 = (~((~(in_1 & sig_2)) & sig_5));
    assign out_6 = (~(~((out_1 ^ in_1) & sig_8)));
    assign out_7 = (~(~(~((~(out_4 & in_3)) | in_2))));
    assign sig_5 = (sig_6 & ((sig_3 & out_7) ^ out_4));
    assign out_4 = (~(~((~(sig_9 & (~(sig_0 | (~((sig_12 & (~((~(out_3 & in_1)) | sig_5))) | sig_2)))))) | out_4)));
    assign sig_3 = (sig_7 | (~(((sig_5 ^ (~((((sig_6 | out_1) & sig_11) & sig_12) | in_0))) ^ sig_10) & out_0)));
    assign sig_12 = (~(sig_3 | (out_6 & (~(((~((~(out_3 & (~(sig_2 & in_3)))) & sig_7)) ^ sig_7) & out_1)))));
    assign out_5 = (~((~(in_0 & (~((~out_4) & sig_11)))) & out_3));

endmodule
