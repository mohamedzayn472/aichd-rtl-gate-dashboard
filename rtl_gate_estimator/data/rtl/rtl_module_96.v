module rtl_module_96 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    output wire [7:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [0:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;

    // Logic assignments
    assign out_0 = (~((~((sig_1 | (~(~(in_3 & sig_11)))) & sig_2)) & in_3));
    assign out_1 = (sig_7 | (~in_3));
    assign out_2 = (~(sig_2 & ((~((~((~(sig_13 & (~(out_4 | ((~(sig_11 | in_2)) | out_2))))) | sig_8)) & sig_6)) | sig_4)));
    assign out_3 = (~(((out_4 | sig_1) | out_2) | out_1));
    assign out_4 = (out_2 ^ (~(out_3 & (~(out_5 | out_0)))));
    assign out_5 = (~(out_1 | ((~in_1) ^ sig_8)));
    assign sig_10 = (sig_11 ^ (~(out_2 | (sig_3 & sig_8))));
    assign sig_7 = (~(out_3 | (sig_13 & in_1)));
    assign sig_8 = (sig_13 | (sig_11 & out_3));
    assign sig_3 = (~(sig_6 & (((sig_3 & (~(sig_5 | (in_1 & (sig_8 | sig_1))))) | out_5) ^ sig_7)));

endmodule
