module rtl_module_313 (
input wire [5:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign out_0 = (in_2 ^ (~(~(in_0 | (~(in_1 & sig_4))))));
    assign out_1 = (~(sig_2 | sig_0));
    assign out_2 = ((~((~((~((~(sig_4 | sig_6)) & sig_4)) & sig_3)) | sig_3)) ^ sig_7);
    assign sig_6 = (~(out_0 ^ (~(sig_6 & (~((sig_1 & sig_0) | in_1))))));
    assign sig_4 = ((sig_1 | out_0) | in_1);
    assign out_2 = (~((sig_8 ^ (sig_8 | (~(out_1 | in_2)))) | in_1));
    assign sig_1 = ((sig_6 ^ sig_5) & sig_6);

endmodule
