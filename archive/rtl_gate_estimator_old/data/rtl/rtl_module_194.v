module rtl_module_194 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    output wire [0:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [5:0] sig_3;
    wire [1:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [1:0] sig_12;
    wire [0:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;

    // Logic assignments
    assign sig_8 = ~out_2;
    assign sig_4 = ~(sig_13 & sig_4);
    assign sig_13 = ~(out_1 | sig_3);
    assign sig_7 = ~out_0;
    assign sig_12 = sig_3 & sig_14;

endmodule
