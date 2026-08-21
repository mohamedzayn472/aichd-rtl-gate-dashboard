module rtl_module_74 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    output wire [7:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [0:0] sig_12;
    wire [6:0] sig_13;
    wire [4:0] sig_14;
    wire [4:0] sig_15;
    wire [7:0] sig_16;

    // Logic assignments
    assign in_4 = sig_1 & in_0;
    assign sig_3 = ~(in_0 & sig_9);
    assign sig_10 = ~sig_12;
    assign sig_14 = sig_10 & sig_2;
    assign sig_13 = sig_16 | sig_10;
    assign sig_8 = ~sig_9;
    assign sig_14 = sig_14 & in_0;

endmodule
