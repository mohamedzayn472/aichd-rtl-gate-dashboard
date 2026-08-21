module rtl_module_359 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    input wire [1:0] in_4,
    input wire [2:0] in_5,
    output wire [1:0] out_0,
    output wire [0:0] out_1,
    output wire [2:0] out_2,
    output wire [4:0] out_3,
    output wire [2:0] out_4,
    output wire [3:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [1:0] sig_10;
    wire [7:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign sig_5 = ~out_5;
    assign sig_6 = ~out_5;
    assign sig_7 = ~sig_3;
    assign out_0 = out_0 & out_4;
    assign sig_6 = ~(sig_10 | sig_1);
    assign sig_3 = out_5 | sig_2;
    assign in_0 = out_0 & out_3;
    assign in_4 = in_5 ^ sig_3;
    assign out_2 = sig_6 | out_2;
    assign sig_5 = ~(sig_0 | out_5);
    assign out_0 = ~sig_0;
    assign in_5 = ~(in_4 | in_2);
    assign in_2 = ~(out_5 & sig_2);
    assign out_0 = out_3 | in_0;
    assign in_0 = ~sig_5;
    assign sig_3 = ~(sig_9 | out_2);
    assign sig_7 = in_1 | out_5;
    assign sig_4 = sig_9 & out_6;
    assign sig_12 = ~(in_3 | in_2);
    assign in_1 = out_4 ^ out_3;
    assign in_1 = in_2 & sig_6;
    assign in_4 = ~(sig_7 | in_0);

endmodule
