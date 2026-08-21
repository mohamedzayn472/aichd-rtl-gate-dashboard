module rtl_module_132 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    output wire [5:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [5:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign sig_4 = ~(out_0 | out_0);
    assign sig_13 = ~(sig_2 & sig_10);
    assign sig_6 = sig_4 | sig_2;
    assign out_0 = ~(sig_8 & sig_0);
    assign sig_3 = ~sig_9;
    assign sig_0 = sig_11 ^ in_2;

endmodule
