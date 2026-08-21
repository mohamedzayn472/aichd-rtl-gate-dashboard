module rtl_module_188 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    input wire [4:0] in_5,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4,
    output wire [7:0] out_5,
    output wire [0:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [1:0] sig_11;
    wire [4:0] sig_12;

    // Logic assignments
    assign in_5 = ~(out_1 & sig_4);
    assign in_1 = ~(sig_11 | in_0);
    assign sig_3 = sig_6 & sig_0;
    assign sig_11 = in_1 ^ out_2;
    assign out_4 = ~sig_10;
    assign in_5 = ~(sig_10 & sig_5);
    assign out_3 = ~(in_1 | sig_0);
    assign sig_8 = in_5 & sig_1;
    assign sig_4 = ~(in_2 | out_3);
    assign sig_9 = sig_0 | sig_12;
    assign out_0 = ~(in_0 | in_1);
    assign sig_0 = ~out_3;
    assign sig_3 = in_0 & sig_1;
    assign sig_4 = ~(in_5 | sig_6);
    assign sig_5 = sig_6 | in_1;
    assign in_4 = out_0 | sig_1;
    assign out_2 = ~(sig_2 & sig_7);
    assign sig_12 = ~(out_3 | out_1);
    assign sig_0 = out_1 ^ out_4;
    assign sig_7 = out_3 ^ in_0;
    assign sig_7 = ~sig_6;
    assign sig_0 = out_5 ^ sig_9;
    assign out_0 = in_0 ^ out_1;
    assign sig_6 = ~(in_1 | out_3);
    assign in_4 = ~out_2;
    assign sig_1 = ~(in_2 | out_1);
    assign in_3 = in_5 & out_6;
    assign in_2 = ~in_5;
    assign sig_4 = ~(in_5 & out_4);
    assign out_2 = out_3 ^ out_3;
    assign sig_3 = ~sig_11;

endmodule
