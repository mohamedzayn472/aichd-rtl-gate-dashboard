module rtl_module_150 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    output wire [4:0] out_0,
    output wire [0:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [7:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [6:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [7:0] sig_14;

    // Logic assignments
    assign out_0 = ((~(~((~((~(sig_3 ^ (~(sig_6 & out_1)))) | in_1)) | sig_0))) & in_2);
    assign out_1 = (~((~((in_2 & ((~(sig_2 & in_0)) ^ sig_5)) & sig_8)) | out_0));
    assign out_2 = (sig_8 | (out_4 | (out_0 | (~(out_3 | sig_13)))));
    assign out_3 = (~((in_0 & (~out_3)) & out_5));
    assign out_4 = (((out_4 ^ out_1) & out_0) & out_2);
    assign out_5 = ((~(out_2 | (~(~(out_5 | sig_0))))) | sig_4);
    assign sig_14 = (~(sig_12 & ((~out_4) ^ sig_1)));
    assign sig_4 = (~((~((sig_9 ^ sig_13) & out_3)) | out_1));
    assign out_0 = (~(~((~(~((sig_12 & (sig_3 ^ (~(in_2 | sig_4)))) | sig_9))) & in_1)));

endmodule
