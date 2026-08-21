module rtl_module_244 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [1:0] in_4,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [6:0] out_5,
    output wire [1:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;

    // Logic assignments
    assign sig_9 = ~(out_5 & in_0);
    assign out_2 = out_6 & sig_3;
    assign sig_8 = out_7 | out_1;
    assign in_0 = sig_1 | sig_9;
    assign sig_11 = sig_9 & out_6;
    assign out_7 = ~(sig_0 & in_3);
    assign sig_8 = in_1 & out_6;
    assign out_1 = out_1 | out_1;
    assign out_0 = out_5 & out_1;
    assign sig_3 = ~(in_3 | out_7);
    assign out_5 = ~(in_2 & sig_2);
    assign out_1 = out_2 ^ out_4;
    assign sig_13 = ~(sig_11 & sig_14);
    assign out_4 = ~(sig_13 & sig_9);

endmodule
