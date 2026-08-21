module rtl_module_364 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    output wire [2:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;

    // Logic assignments
    assign out_0 = ~in_3;
    assign sig_4 = in_0 & sig_2;
    assign in_0 = in_0 | sig_3;
    assign in_3 = ~(in_0 | in_2);
    assign in_2 = sig_2 ^ sig_2;

endmodule
