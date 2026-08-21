module rtl_module_157 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    input wire [2:0] in_5,
    output wire [7:0] out_0,
    output wire [5:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [7:0] out_4,
    output wire [5:0] out_5,
    output wire [3:0] out_6,
    output wire [6:0] out_7
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;

    // Logic assignments
    assign out_0 = ((in_2 ^ (~(out_4 | (sig_8 | sig_3)))) & sig_0);
    assign out_1 = (~((in_0 | (~(~(~(~(sig_6 | (~(in_3 & (~(out_2 | sig_8)))))))))) & sig_4));
    assign out_2 = ((~(sig_4 ^ (~((~(((sig_10 ^ (~(out_2 & sig_3))) & sig_2) | out_2)) & in_1)))) & in_5);
    assign out_3 = (~(in_0 | (sig_8 ^ sig_2)));
    assign out_4 = (~(in_1 & (~(((sig_8 ^ (out_7 ^ sig_1)) | in_3) | in_3))));
    assign out_5 = ((~(sig_1 | ((~(out_2 & (sig_7 ^ (~out_4)))) & out_6))) ^ in_2);
    assign out_6 = (~(sig_5 & (~((~((~((((~(out_6 | sig_8)) & out_3) | out_0) | out_7)) & in_4)) & sig_7))));
    assign out_7 = (~(out_5 | (out_0 | (sig_9 & (out_1 ^ (out_0 ^ sig_3))))));
    assign sig_2 = ((~(~((out_0 ^ (~((~(sig_1 | (~((sig_8 ^ sig_3) & sig_3)))) & in_3))) | out_4))) ^ in_5);
    assign out_2 = (~(sig_4 | sig_9));
    assign sig_8 = ((~(sig_10 & (sig_7 | (~sig_8)))) | out_2);
    assign out_6 = (~(~((((sig_2 ^ sig_10) ^ out_7) ^ in_2) ^ in_0)));
    assign sig_4 = (~(sig_10 & (~(sig_6 | ((~(in_2 & (~((out_2 ^ sig_7) | sig_8)))) | out_1)))));
    assign sig_3 = ((~(sig_7 & (sig_9 ^ sig_3))) ^ out_4);
    assign sig_3 = ((~out_0) ^ sig_6);
    assign sig_4 = (sig_8 | (in_4 & (~((~(sig_4 | (~(sig_2 ^ out_2)))) & in_3))));
    assign sig_9 = ((out_3 & (sig_8 | out_4)) | sig_9);
    assign out_2 = (~(out_0 | ((((~(in_2 ^ (~sig_0))) ^ in_3) ^ in_2) | out_5)));
    assign out_6 = (~((sig_5 & (~(~(out_5 & sig_4)))) & sig_10));
    assign out_1 = ((out_0 ^ (~((~(in_2 | sig_3)) ^ in_0))) | in_5);

endmodule
