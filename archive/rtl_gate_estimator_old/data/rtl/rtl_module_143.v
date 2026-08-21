module rtl_module_143 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [3:0] in_4,
    input wire [0:0] in_5,
    output wire [5:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;

    // Logic assignments
    assign in_4 = sig_1 ^ in_3;
    assign in_5 = out_0 & in_4;
    assign sig_1 = ~sig_0;
    assign sig_0 = ~(in_3 & in_4);
    assign in_3 = in_4 | sig_0;
    assign in_4 = in_2 & in_3;
    assign sig_1 = ~(sig_0 | sig_1);

endmodule
