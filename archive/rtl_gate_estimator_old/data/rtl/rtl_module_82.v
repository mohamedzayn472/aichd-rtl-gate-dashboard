module rtl_module_82 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    output wire [6:0] out_0,
    output wire [1:0] out_1,
    output wire [1:0] out_2,
    output wire [7:0] out_3,
    output wire [5:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;

    // Logic assignments
    assign out_5 = in_1 & in_0;
    assign sig_0 = ~(out_5 & in_1);
    assign in_1 = ~(in_1 | out_5);
    assign out_2 = out_5 | in_2;
    assign in_2 = out_0 & out_0;
    assign in_1 = ~out_3;
    assign out_2 = out_1 ^ out_0;
    assign in_1 = out_0 | in_0;
    assign out_2 = ~out_1;

endmodule
