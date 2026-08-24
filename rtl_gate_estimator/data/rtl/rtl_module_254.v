module rtl_module_254 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    output wire [1:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [6:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [5:0] sig_12;
    wire [6:0] sig_13;

    // Logic assignments
    assign out_0 = (~((sig_3 & (~((~(sig_8 & sig_10)) | sig_3))) | in_0));
    assign sig_2 = (~(in_0 | (sig_5 & (~((~((~((sig_7 & sig_12) & sig_4)) | sig_9)) | in_0)))));
    assign sig_3 = (~(~(out_0 & sig_12)));

endmodule
