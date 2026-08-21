module rtl_module_79 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    input wire [2:0] in_5,
    input wire [3:0] in_6,
    input wire [3:0] in_7,
    output wire [3:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [3:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [3:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign out_0 = (~((~(sig_8 & (~((~(in_6 | (sig_7 | (out_0 & (~(~(sig_0 | sig_9))))))) | sig_2)))) & sig_10));
    assign sig_6 = (((~(~(in_7 & (~(in_5 | ((sig_12 & in_3) | sig_13)))))) ^ in_5) ^ in_6);
    assign sig_4 = ((~(sig_1 | (~((~(in_4 & in_1)) | in_6)))) & sig_5);
    assign sig_1 = ((~(~(((((~(sig_13 & in_5)) & sig_5) ^ in_5) | in_4) & sig_5))) | in_5);
    assign sig_8 = (~(sig_0 & (~((~(sig_11 & (~((~((sig_11 ^ (~in_5)) & sig_10)) & sig_6)))) | sig_6))));
    assign out_0 = (out_0 & ((~((~(~((~in_2) & sig_10))) ^ out_0)) | in_1));
    assign sig_13 = (~(sig_12 & (~sig_4)));
    assign sig_11 = ((in_4 & (~(((~((in_7 | (sig_9 | (sig_8 | in_1))) & in_2)) | sig_9) & sig_0))) | in_1);
    assign sig_13 = ((sig_13 | (in_0 | (~((~(((~(sig_12 & (sig_11 | sig_6))) & sig_2) | sig_13)) | sig_2)))) | in_0);
    assign sig_2 = (~(in_3 | (~((~(in_4 & ((in_1 & (~(sig_9 | (sig_6 | (~in_3))))) & sig_11))) | sig_2))));

endmodule
