module rtl_module_387 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    input wire [5:0] in_4,
    input wire [7:0] in_5,
    input wire [2:0] in_6,
    output wire [2:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [0:0] sig_0;

    // Logic assignments
    assign in_0 = in_0 | sig_0;
    assign out_0 = in_5 ^ out_1;
    assign in_2 = ~in_4;
    assign out_0 = sig_0 | in_1;
    assign out_1 = in_5 | in_1;
    assign in_5 = in_2 ^ in_0;
    assign out_0 = in_0 ^ in_2;
    assign out_0 = ~(in_6 | in_0);
    assign in_0 = ~in_4;

endmodule
