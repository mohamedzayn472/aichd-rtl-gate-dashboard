module rtl_module_316 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [3:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [6:0] in_5,
    output wire [7:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [5:0] sig_10;

    // Logic assignments
    assign out_0 = ((~((sig_4 & sig_2) & in_3)) ^ in_1);
    assign sig_9 = (~((out_0 ^ (sig_1 ^ sig_0)) & in_4));
    assign sig_3 = (~(((sig_5 | in_2) & sig_10) | in_0));
    assign sig_2 = (in_3 ^ ((~((~in_0) | sig_6)) & in_3));
    assign sig_4 = (~(out_0 & (~(~(sig_7 | in_3)))));
    assign out_0 = (~(sig_4 | ((~(~(sig_8 | sig_1))) | sig_3)));
    assign sig_2 = ((~(((sig_5 | sig_1) & sig_0) | in_3)) | out_0);

endmodule
