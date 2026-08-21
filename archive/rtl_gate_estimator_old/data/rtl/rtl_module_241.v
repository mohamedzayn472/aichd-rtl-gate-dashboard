module rtl_module_241 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    input wire [3:0] in_3,
    output wire [0:0] out_0,
    output wire [1:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;

    // Logic assignments
    assign out_2 = ~out_0;
    assign sig_0 = ~in_1;
    assign out_2 = out_0 ^ out_0;
    assign out_1 = in_2 ^ in_3;
    assign out_2 = in_1 ^ in_2;
    assign out_2 = out_1 ^ in_0;
    assign in_0 = in_0 & in_1;
    assign in_1 = ~(in_0 & in_3);
    assign out_1 = in_3 & in_1;
    assign out_1 = ~sig_0;

endmodule
