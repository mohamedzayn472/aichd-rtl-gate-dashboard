module rtl_module_301 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign in_0 = ~(sig_0 | in_3);
    assign sig_0 = ~(in_3 | in_0);
    assign in_0 = ~(out_0 | in_3);
    assign in_2 = out_0 | out_0;
    assign in_0 = ~(out_0 & sig_0);
    assign in_0 = sig_0 ^ out_0;

endmodule
