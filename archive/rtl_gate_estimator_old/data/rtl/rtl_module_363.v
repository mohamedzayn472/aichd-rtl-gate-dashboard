module rtl_module_363 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    input wire [2:0] in_4,
    input wire [6:0] in_5,
    input wire [6:0] in_6,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [7:0] out_4,
    output wire [6:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign sig_8 = ~sig_7;
    assign sig_6 = sig_3 | out_1;
    assign sig_5 = ~sig_2;
    assign sig_10 = in_6 & sig_10;
    assign out_5 = sig_10 ^ in_0;
    assign in_0 = in_2 ^ out_4;
    assign in_3 = out_6 ^ sig_7;
    assign out_6 = sig_5 & sig_3;
    assign sig_10 = ~out_0;
    assign out_0 = in_2 | in_4;
    assign sig_4 = ~(sig_5 & sig_4);
    assign sig_10 = sig_10 & sig_7;
    assign out_2 = in_3 & sig_2;
    assign sig_6 = ~(in_1 & in_1);
    assign sig_4 = ~(out_6 | in_1);
    assign out_4 = out_1 & in_5;
    assign sig_1 = out_1 ^ out_4;
    assign in_5 = ~(sig_9 | sig_7);
    assign sig_8 = ~(sig_4 & out_2);
    assign in_1 = ~out_2;
    assign out_2 = in_0 | out_6;
    assign out_0 = in_6 | in_0;
    assign in_3 = out_5 & in_4;

endmodule
