module rtl_module_47 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [4:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    output wire [0:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [6:0] sig_14;
    wire [0:0] sig_15;
    wire [2:0] sig_16;

    // Logic assignments
    assign sig_0 = sig_1 | sig_1;
    assign in_1 = sig_8 | in_2;
    assign sig_8 = ~(sig_1 | sig_15);
    assign sig_14 = sig_3 | sig_5;
    assign in_2 = ~(in_2 | sig_7);
    assign sig_7 = ~(sig_12 & sig_5);
    assign sig_11 = sig_9 ^ in_0;

endmodule
