module rtl_module_42 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    output wire [3:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;

    // Logic assignments
    assign in_0 = in_1 & sig_3;
    assign out_0 = ~in_1;
    assign out_0 = out_0 & out_0;

endmodule
