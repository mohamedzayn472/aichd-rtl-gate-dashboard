module rtl_module_322 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    output wire [6:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [1:0] sig_14;
    wire [4:0] sig_15;
    wire [0:0] sig_16;
    wire [2:0] sig_17;
    wire [5:0] sig_18;

    // Logic assignments
    assign sig_1 = sig_7 & sig_11;
    assign in_1 = ~sig_5;
    assign sig_7 = sig_2 & in_1;
    assign sig_7 = ~sig_2;
    assign in_0 = ~sig_6;
    assign in_4 = sig_18 & sig_11;
    assign in_2 = ~(sig_15 | sig_15);
    assign sig_3 = ~in_0;

endmodule
