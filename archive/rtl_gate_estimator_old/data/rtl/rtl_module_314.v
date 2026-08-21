module rtl_module_314 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    output wire [4:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;

    // Logic assignments
    assign in_5 = in_0 & in_3;
    assign in_3 = ~(out_0 | in_4);
    assign out_1 = ~in_3;
    assign in_0 = sig_0 | out_0;
    assign out_0 = ~(in_3 | in_0);
    assign out_0 = ~in_1;
    assign in_2 = ~(in_2 & in_2);
    assign sig_0 = ~out_0;
    assign in_4 = ~(in_1 & in_0);

endmodule
