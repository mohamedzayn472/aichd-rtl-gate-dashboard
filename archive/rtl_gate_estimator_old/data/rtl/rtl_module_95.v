module rtl_module_95 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [5:0] in_4,
    input wire [6:0] in_5,
    output wire [7:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;

    // Logic assignments
    assign in_2 = ~(sig_1 | sig_0);
    assign in_4 = sig_0 | sig_1;
    assign out_0 = sig_1 & sig_2;
    assign sig_2 = ~(out_0 | sig_1);
    assign sig_2 = ~in_2;
    assign in_0 = ~(sig_0 & in_4);
    assign out_0 = ~sig_0;
    assign in_5 = ~(in_4 & in_5);

endmodule
