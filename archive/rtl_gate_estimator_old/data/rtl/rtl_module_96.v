module rtl_module_96 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    output wire [5:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;

    // Logic assignments
    assign sig_1 = sig_0 ^ in_0;
    assign in_1 = ~(in_1 | in_1);
    assign sig_0 = ~(sig_2 | in_0);
    assign in_0 = ~(sig_0 | in_0);

endmodule
