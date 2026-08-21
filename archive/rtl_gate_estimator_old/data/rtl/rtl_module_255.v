module rtl_module_255 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    output wire [1:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;

    // Logic assignments
    assign in_3 = out_0 & in_4;
    assign in_3 = in_1 ^ out_1;
    assign in_0 = ~(sig_2 & in_4);
    assign out_0 = ~in_2;
    assign sig_0 = in_4 | sig_1;
    assign sig_0 = ~(in_1 & in_0);
    assign in_3 = in_0 & sig_2;
    assign in_2 = ~in_0;

endmodule
