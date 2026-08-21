module rtl_module_43 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    input wire [3:0] in_6,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4,
    output wire [1:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [5:0] sig_14;

    // Logic assignments
    assign out_0 = (~(in_4 | (~(sig_8 & (~(sig_2 & ((sig_10 & (~in_0)) | sig_3)))))));
    assign out_1 = (~((~(sig_9 | (~(in_1 | sig_12)))) | in_3));
    assign out_2 = (~(in_1 | (~(sig_0 & (~(~(out_1 | ((~((~(in_1 | sig_5)) ^ sig_3)) | out_0))))))));
    assign out_3 = (out_0 | (~(~((~((~(sig_4 | ((sig_10 & sig_5) | sig_14))) ^ sig_5)) | out_1))));
    assign out_4 = (~(out_3 & (~((((~((out_5 & out_0) & sig_13)) ^ in_4) | sig_8) & in_4))));
    assign out_5 = (~(sig_9 | (((~((~(in_5 & (sig_6 & (~(out_3 | out_5))))) | in_3)) ^ sig_8) & in_1)));
    assign out_3 = (sig_13 | (~(sig_12 | (~((~(in_1 | in_3)) | sig_8)))));
    assign sig_2 = (~(~(sig_11 | (~((~(sig_14 | (~((~(in_0 ^ in_3)) | in_3)))) ^ sig_0)))));
    assign out_0 = (~((~(sig_2 | (sig_13 & (~(in_5 & sig_5))))) | in_3));
    assign out_2 = (~(~(out_3 | (sig_10 & sig_5))));
    assign out_0 = (~((~(out_0 & sig_10)) & sig_13));
    assign sig_6 = ((in_2 | (~(out_5 & (~(in_2 | (in_6 | ((~(sig_7 & out_3)) & in_1))))))) & sig_9);
    assign out_2 = (~(~(sig_9 | (sig_0 & sig_2))));
    assign sig_9 = (~((~((~(in_3 & (~(~((sig_4 ^ sig_9) | sig_9))))) | in_1)) & in_6));
    assign sig_6 = (~(in_2 & (~(out_1 & (sig_11 | sig_4)))));
    assign sig_8 = (~(((~(~(sig_1 & sig_14))) | out_0) | in_6));
    assign sig_8 = (~(in_3 | (~((in_0 | (~(((~((~(out_4 | sig_13)) & in_5)) ^ in_4) | out_3))) | sig_0))));

endmodule
