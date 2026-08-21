module rtl_module_196 (
input wire [5:0] in_0,
    input wire [7:0] in_1,
    input wire [5:0] in_2,
    input wire [7:0] in_3,
    input wire [5:0] in_4,
    input wire [7:0] in_5,
    input wire [4:0] in_6,
    output wire [7:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [7:0] sig_12;
    wire [2:0] sig_13;
    wire [2:0] sig_14;
    wire [6:0] sig_15;
    wire [6:0] sig_16;

    // Logic assignments
    assign sig_5 = sig_13 ^ in_4;
    assign sig_4 = ~in_0;
    assign out_1 = ~sig_14;
    assign in_4 = sig_11 | in_5;
    assign in_3 = in_0 | sig_5;
    assign in_4 = ~sig_1;
    assign in_6 = in_0 ^ sig_8;
    assign in_5 = ~sig_2;
    assign sig_1 = ~(sig_0 & in_6);
    assign sig_12 = ~sig_16;

endmodule
