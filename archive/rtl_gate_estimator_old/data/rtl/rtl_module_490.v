module rtl_module_490 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    output wire [4:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [6:0] sig_13;
    wire [7:0] sig_14;
    wire [4:0] sig_15;

    // Logic assignments
    assign in_4 = ~in_2;
    assign sig_9 = sig_15 & sig_5;
    assign sig_4 = out_1 | in_1;
    assign sig_2 = sig_1 & out_1;
    assign sig_6 = in_2 & in_0;
    assign out_0 = ~(sig_14 | out_1);
    assign in_4 = ~sig_4;
    assign in_4 = ~sig_6;

endmodule
