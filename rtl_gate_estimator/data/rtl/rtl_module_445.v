module rtl_module_445 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [5:0] out_3,
    output wire [3:0] out_4,
    output wire [4:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [2:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;

    // Logic assignments
    assign out_0 = (sig_8 & (sig_10 & (~sig_4)));
    assign out_1 = ((sig_9 | out_5) ^ out_5);
    assign out_2 = (out_0 | (out_0 | (~((~(sig_3 & (~((~((~(sig_13 & out_5)) | in_0)) & in_1)))) & in_3))));
    assign out_3 = (~(out_3 | (~((~(out_5 & (sig_8 ^ (~(sig_2 | (~(sig_6 & in_2))))))) & sig_3))));
    assign out_4 = (~(sig_11 | (~(~(out_5 | ((~(in_2 ^ (sig_8 & sig_8))) & sig_3))))));
    assign out_5 = (in_3 & (sig_1 & (~(sig_10 & out_6))));
    assign out_6 = (sig_5 & (~(sig_6 | (~((~(sig_10 & (~(sig_12 & (~(sig_7 ^ sig_3)))))) & sig_9)))));
    assign out_0 = ((~((~(~(~(in_1 & (sig_12 ^ (sig_6 & sig_2)))))) | sig_2)) | sig_6);
    assign sig_11 = (~(~(sig_6 | ((~(sig_1 & (~((~(sig_8 & sig_11)) | in_1)))) ^ sig_1))));
    assign out_5 = ((~(out_4 | sig_3)) | out_6);
    assign sig_4 = (sig_0 & (sig_6 | ((~(in_3 | sig_12)) ^ sig_13)));
    assign out_2 = (~(out_4 | (~((~(~(in_2 & (~(~(~(sig_4 | in_3))))))) | out_0))));
    assign sig_2 = (~(sig_4 | (~(sig_13 | (~(in_2 & (~(sig_13 & sig_6))))))));
    assign sig_4 = (~(sig_12 | (sig_11 | (~(sig_6 ^ in_0)))));

endmodule
