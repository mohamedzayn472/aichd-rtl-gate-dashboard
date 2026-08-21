module rtl_module_462 (
input wire [7:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;

    // Logic assignments
    assign sig_0 = out_4 ^ out_4;
    assign sig_1 = ~(out_1 & out_0);
    assign out_3 = ~in_1;
    assign sig_2 = ~(sig_0 & in_0);
    assign out_0 = sig_1 & out_1;
    assign out_2 = out_4 | out_0;
    assign out_1 = sig_1 & out_4;
    assign out_0 = ~(out_2 | sig_2);
    assign in_0 = ~(in_2 & out_4);
    assign in_2 = ~out_3;

endmodule
