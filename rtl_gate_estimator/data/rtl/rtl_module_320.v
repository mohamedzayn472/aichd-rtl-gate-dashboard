module rtl_module_320 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [5:0] out_3,
    output wire [4:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;

    // Logic assignments
    assign out_0 = (~(sig_13 | sig_13));
    assign out_1 = (~(~(~((sig_6 | out_3) | sig_6))));
    assign out_2 = (~(in_2 & ((~((~((out_0 & out_2) | sig_3)) & sig_13)) | out_1)));
    assign out_3 = (sig_5 & (out_4 | (sig_8 & sig_6)));
    assign out_4 = (sig_11 | ((~((sig_2 & (in_0 & (sig_8 & (~(out_3 & in_1))))) | sig_6)) ^ sig_2));
    assign out_5 = (~(sig_13 & (sig_2 & (~((~((((out_0 | out_0) | out_4) | sig_11) | sig_10)) | out_3)))));
    assign sig_10 = ((out_5 | ((sig_0 & (~((out_4 | (~((~(sig_12 & out_0)) & sig_11))) | sig_3))) ^ sig_10)) & out_4);
    assign out_5 = (~((~(~((sig_6 & ((~(~(sig_2 | sig_13))) | sig_12)) | out_0))) | sig_4));
    assign sig_3 = (~(~(sig_10 & in_1)));

endmodule
