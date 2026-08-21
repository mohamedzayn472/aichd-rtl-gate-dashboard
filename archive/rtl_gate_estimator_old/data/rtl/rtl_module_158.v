module rtl_module_158 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    input wire [6:0] in_5,
    output wire [4:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [6:0] out_5,
    output wire [0:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [2:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign out_4 = sig_5 & sig_8;
    assign out_1 = ~sig_8;
    assign out_7 = ~(sig_7 | sig_3);
    assign out_3 = ~in_4;
    assign in_5 = ~(out_4 | out_5);
    assign out_7 = ~(sig_10 & in_2);
    assign in_0 = sig_12 | sig_12;
    assign out_2 = out_1 ^ sig_8;
    assign sig_4 = ~sig_8;
    assign sig_10 = out_4 | sig_12;
    assign out_5 = in_3 ^ sig_1;
    assign sig_9 = sig_4 ^ in_1;
    assign sig_10 = ~(sig_10 & sig_12);
    assign sig_7 = ~(sig_3 & sig_4);
    assign sig_4 = ~out_5;

endmodule
