module rtl_module_457 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    output wire [4:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [5:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [3:0] sig_15;

    // Logic assignments
    assign sig_14 = sig_15 & in_1;
    assign sig_8 = sig_7 | sig_11;
    assign sig_7 = ~(sig_10 & sig_11);
    assign sig_7 = out_0 & in_1;
    assign sig_13 = sig_10 | sig_6;

endmodule
