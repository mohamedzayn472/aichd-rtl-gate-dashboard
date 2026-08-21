module rtl_module_368 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [4:0] in_5,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;
    wire [7:0] sig_13;
    wire [2:0] sig_14;

    // Logic assignments
    assign out_0 = (~((in_5 | ((~(out_4 | (~((~((out_3 | (in_1 & in_4)) | out_4)) | sig_4)))) | sig_3)) & sig_0));
    assign out_1 = (~(((~((out_5 | sig_1) ^ sig_6)) ^ in_1) & in_4));
    assign out_2 = (~((out_3 & (in_1 ^ ((~(sig_5 | in_4)) & sig_4))) | sig_13));
    assign out_3 = (~(((out_4 | out_4) ^ sig_7) & sig_13));
    assign out_4 = ((~(((sig_4 ^ sig_6) | sig_5) & in_4)) & sig_2);
    assign out_5 = ((~(~(((~(sig_12 & ((~(sig_12 ^ out_5)) ^ sig_3))) & sig_2) & sig_12))) & sig_4);
    assign out_0 = (~(sig_8 | (sig_10 | (~(((sig_6 ^ (sig_13 & sig_14)) | sig_6) & out_0)))));
    assign sig_0 = (sig_7 ^ (~((~(in_1 & (~((in_0 & sig_7) & in_1)))) & in_3)));
    assign sig_14 = (sig_10 ^ (sig_10 | ((~((sig_5 ^ (~(sig_3 & (sig_2 | sig_14)))) | in_0)) & sig_4)));
    assign sig_10 = ((~(sig_9 & (out_1 | (~((~(in_3 & (~(out_0 & (~(~sig_5)))))) & in_4))))) ^ in_4);
    assign sig_5 = (sig_0 | (~out_2));
    assign sig_0 = ((in_5 ^ sig_4) & in_5);
    assign out_4 = ((sig_14 | in_1) ^ in_3);
    assign sig_6 = (~(((in_3 | (~(sig_1 & (in_0 ^ ((in_2 & sig_9) | sig_3))))) ^ sig_13) & sig_0));
    assign sig_7 = ((~(sig_6 & sig_0)) | out_4);
    assign out_0 = (~(out_3 | (sig_5 & (~(sig_8 | sig_0)))));
    assign out_0 = (~(~(out_4 | ((in_2 | (~((~(in_0 ^ (~(in_4 & sig_6)))) & out_1))) | sig_0))));
    assign out_1 = (~((((~(out_0 | sig_3)) | sig_5) ^ sig_9) & in_2));

endmodule
