module rtl_module_320 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    output wire [2:0] out_0,
    output wire [6:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign out_0 = (~((~(sig_5 & (~((sig_8 ^ (sig_2 ^ (~(sig_0 & sig_0)))) | sig_3)))) ^ sig_0));
    assign out_1 = (in_2 ^ (~(sig_0 | out_1)));
    assign out_0 = (~(out_1 & (sig_9 & (~((out_0 ^ (sig_7 | sig_8)) | in_0)))));
    assign out_1 = ((sig_7 ^ (((~sig_3) ^ in_1) & in_1)) | sig_8);
    assign sig_5 = (~(((~(sig_3 & (~(sig_0 & (~((in_2 | sig_8) & sig_5)))))) & sig_1) & sig_7));

endmodule
