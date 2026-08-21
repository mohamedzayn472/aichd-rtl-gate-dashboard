module rtl_module_122 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    output wire [2:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3,
    output wire [7:0] out_4,
    output wire [2:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [2:0] sig_0;

    // Logic assignments
    assign out_2 = ~(out_1 & out_5);
    assign in_1 = ~(out_1 | out_6);
    assign out_0 = ~out_4;
    assign out_3 = in_0 ^ out_2;
    assign out_0 = out_0 | in_0;
    assign out_4 = out_3 | out_1;
    assign sig_0 = ~(in_0 | out_5);
    assign out_2 = ~out_3;
    assign out_4 = ~(out_2 | out_3);

endmodule
