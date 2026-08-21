module rtl_module_433 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3,
    output wire [7:0] out_4,
    output wire [4:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [3:0] sig_9;
    wire [1:0] sig_10;
    wire [2:0] sig_11;
    wire [5:0] sig_12;
    wire [4:0] sig_13;

    // Logic assignments
    assign out_0 = ((~(((sig_5 & (~out_3)) & sig_10) & sig_7)) & out_4);
    assign out_1 = (~(sig_3 | (in_0 & (~((sig_4 & ((sig_13 ^ in_0) | sig_8)) | out_4)))));
    assign out_2 = (~(~(sig_11 | (~((~(sig_2 | (out_5 | sig_4))) | out_0)))));
    assign out_3 = (~(~(~(out_5 & (out_4 ^ (~(sig_13 & (~(out_1 & (out_1 | sig_10))))))))));
    assign out_4 = ((~((sig_1 & ((~((sig_13 ^ (~sig_9)) & out_5)) | sig_2)) & sig_7)) | in_0);
    assign out_5 = (~(in_1 | (~(~(sig_6 & ((~(~sig_7)) & in_0))))));
    assign out_6 = ((sig_12 & (~(out_4 | (in_1 | ((~(out_0 | (sig_13 | out_1))) & sig_4))))) & sig_0);
    assign out_1 = (sig_7 & (sig_3 | (sig_3 & (sig_13 | (~((~(~(sig_0 & out_5))) & sig_2))))));
    assign out_3 = (sig_13 | ((((in_1 & sig_13) | in_1) | sig_8) | out_1));
    assign out_6 = ((out_0 & ((~((out_1 | out_0) ^ sig_12)) | sig_5)) ^ sig_10);

endmodule
