module rtl_module_335 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [6:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [1:0] sig_10;
    wire [0:0] sig_11;
    wire [2:0] sig_12;

    // Logic assignments
    assign sig_3 = ~sig_4;
    assign in_1 = sig_0 | sig_0;
    assign sig_3 = sig_4 | out_2;
    assign out_0 = ~(in_1 & in_2);
    assign sig_10 = sig_9 | out_0;
    assign sig_9 = sig_11 | sig_7;
    assign in_0 = ~(in_3 & sig_11);
    assign out_2 = ~in_2;
    assign sig_0 = out_3 ^ sig_5;
    assign sig_8 = in_3 ^ sig_4;
    assign in_0 = out_2 ^ sig_1;
    assign sig_3 = sig_7 | in_2;
    assign sig_5 = ~sig_8;

endmodule
