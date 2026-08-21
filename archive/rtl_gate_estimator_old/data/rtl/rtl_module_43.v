module rtl_module_43 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [6:0] in_3,
    output wire [6:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;

    // Logic assignments
    assign sig_0 = sig_0 | out_0;
    assign in_0 = in_3 | sig_0;
    assign sig_2 = ~out_1;
    assign in_0 = ~in_1;
    assign sig_2 = in_2 ^ sig_2;
    assign out_1 = in_3 | out_1;

endmodule
