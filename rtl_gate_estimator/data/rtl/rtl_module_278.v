module rtl_module_278 (
input wire [7:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2,
    output wire [2:0] out_3,
    output wire [2:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;

    // Logic assignments
    assign out_0 = (~((~(out_2 | out_3)) | out_3));
    assign out_1 = (~(sig_3 | (sig_3 | ((sig_1 & (out_1 & ((~((out_1 & in_0) & sig_3)) & out_4))) & out_4))));
    assign out_2 = ((out_4 | sig_5) & sig_0);
    assign out_3 = ((sig_5 | (~(~((~(((~(in_2 & out_5)) | in_0) & out_3)) | sig_1)))) | out_5);
    assign out_4 = (~(~(sig_5 & (~(out_0 | (~(sig_0 | (~((~(~out_3)) ^ sig_3)))))))));
    assign out_5 = (~((sig_2 & (out_1 | out_4)) | sig_1));
    assign out_3 = (~((out_1 & ((~(in_1 & (~(sig_5 | (~(out_1 & sig_1)))))) & in_2)) | out_1));
    assign out_3 = (((~(~(in_1 | (sig_1 ^ (~(out_4 & (out_3 ^ (~(out_3 & sig_2))))))))) ^ in_2) ^ sig_2);
    assign out_3 = (~((sig_3 & (((~(~(out_3 | (sig_4 & in_1)))) | sig_1) ^ sig_5)) & out_1));
    assign sig_2 = (~((~(out_5 & (sig_2 ^ sig_1))) | out_5));

endmodule
