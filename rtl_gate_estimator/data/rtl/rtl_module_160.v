module rtl_module_160 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    output wire [0:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [7:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [6:0] sig_9;
    wire [5:0] sig_10;
    wire [0:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [5:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign out_0 = (sig_4 | ((~sig_4) & sig_1));
    assign out_1 = (~((~(sig_10 | ((out_0 & (~(in_0 | (~(sig_12 | (~(sig_8 | in_1))))))) & sig_4))) & in_0));
    assign sig_8 = (~((~(~(~((~(sig_2 & sig_5)) | sig_5)))) & sig_12));
    assign sig_15 = (~(in_0 | (~(sig_14 | sig_8))));
    assign sig_2 = (~(in_0 | ((~((~sig_4) & sig_5)) & sig_7)));

endmodule
