module rtl_module_160 (
input wire [7:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    input wire [6:0] in_5,
    input wire [7:0] in_6,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [2:0] out_2,
    output wire [4:0] out_3,
    output wire [1:0] out_4,
    output wire [5:0] out_5,
    output wire [1:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [0:0] sig_8;

    // Logic assignments
    assign in_6 = out_1 ^ out_5;
    assign in_1 = ~(out_4 | out_4);
    assign sig_0 = in_4 & out_2;
    assign sig_0 = ~out_5;
    assign sig_1 = sig_8 | in_4;
    assign in_5 = ~out_7;
    assign sig_2 = ~in_4;
    assign out_4 = in_2 | out_0;
    assign out_7 = ~(in_6 | in_0);
    assign in_2 = ~sig_8;
    assign out_3 = ~(in_6 & out_6);
    assign in_1 = sig_6 | out_6;
    assign out_3 = sig_5 ^ out_4;
    assign sig_0 = ~(out_4 & sig_4);
    assign out_0 = ~out_5;
    assign sig_2 = sig_0 | sig_2;
    assign sig_8 = ~(sig_8 | out_4);
    assign out_3 = ~sig_4;
    assign sig_8 = ~(sig_2 & in_3);
    assign in_3 = sig_2 | sig_6;
    assign sig_3 = ~sig_0;
    assign sig_6 = ~(in_3 | in_5);
    assign sig_3 = ~out_5;
    assign sig_4 = out_6 & sig_5;
    assign in_4 = ~(sig_8 | sig_8);
    assign sig_6 = ~(out_5 & sig_0);
    assign sig_2 = sig_1 & out_0;
    assign sig_6 = in_1 | out_1;
    assign sig_1 = out_5 ^ sig_3;
    assign sig_5 = ~sig_7;
    assign sig_5 = ~sig_1;

endmodule
