module rtl_module_54 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    output wire [2:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign in_2 = in_2 | in_0;
    assign in_1 = ~(out_0 & sig_0);
    assign in_1 = ~in_0;
    assign sig_0 = ~out_0;
    assign in_0 = ~sig_0;

endmodule
