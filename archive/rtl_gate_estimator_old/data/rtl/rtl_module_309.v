module rtl_module_309 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    input wire [2:0] in_5,
    output wire [6:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [2:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign sig_0 = ~in_2;
    assign sig_8 = ~sig_3;
    assign sig_5 = ~(sig_2 & in_5);
    assign in_0 = sig_6 & in_5;
    assign out_2 = ~(sig_2 & sig_14);
    assign sig_12 = sig_0 & sig_8;
    assign sig_13 = out_3 ^ in_3;
    assign in_4 = ~(in_5 & sig_6);
    assign in_2 = ~out_0;
    assign in_3 = sig_9 | sig_5;
    assign out_1 = sig_6 | in_4;

endmodule
