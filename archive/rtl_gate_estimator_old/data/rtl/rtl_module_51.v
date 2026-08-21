module rtl_module_51 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [5:0] in_4,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [3:0] out_4,
    output wire [5:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [2:0] sig_0;

    // Logic assignments
    assign in_1 = in_0 | in_4;
    assign out_1 = out_5 ^ out_2;
    assign out_2 = ~(sig_0 & out_0);
    assign in_2 = ~(sig_0 | out_1);
    assign out_6 = in_3 ^ in_2;
    assign in_0 = ~in_3;
    assign out_5 = in_2 | in_3;
    assign in_0 = ~(out_3 | out_2);
    assign in_1 = sig_0 | out_5;
    assign out_6 = ~(in_0 | out_0);
    assign in_4 = ~(out_6 | out_2);
    assign in_0 = ~(out_3 & in_0);
    assign in_1 = ~(out_4 | in_0);

endmodule
