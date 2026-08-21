module rtl_module_50 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    input wire [4:0] in_4,
    output wire [6:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;

    // Logic assignments
    assign sig_0 = in_2 | in_1;
    assign sig_0 = ~out_0;
    assign sig_0 = out_0 | in_0;
    assign sig_2 = in_4 & in_3;
    assign sig_4 = in_2 | sig_2;
    assign in_2 = sig_4 & sig_1;
    assign sig_1 = ~(sig_1 | sig_1);

endmodule
