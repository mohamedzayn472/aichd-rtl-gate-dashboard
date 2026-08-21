module rtl_module_367 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [5:0] out_4,
    output wire [5:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;

    // Logic assignments
    assign out_6 = ~(in_1 & sig_2);
    assign in_3 = ~in_3;
    assign sig_0 = ~sig_2;
    assign out_6 = in_2 & out_6;
    assign out_3 = sig_1 & out_6;
    assign sig_1 = ~sig_2;
    assign out_4 = ~(out_5 | out_6);
    assign in_2 = ~(out_5 | sig_2);
    assign in_1 = in_2 ^ out_5;
    assign in_0 = ~out_1;
    assign out_1 = in_1 ^ out_1;

endmodule
