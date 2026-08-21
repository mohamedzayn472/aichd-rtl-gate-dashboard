module rtl_module_159 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [1:0] sig_2;

    // Logic assignments
    assign sig_0 = ~in_2;
    assign sig_1 = in_1 ^ sig_0;
    assign sig_1 = ~(in_2 | in_1);
    assign out_2 = out_2 | in_2;
    assign in_0 = out_2 & out_2;
    assign in_0 = out_1 | in_0;
    assign sig_0 = sig_1 ^ out_0;

endmodule
