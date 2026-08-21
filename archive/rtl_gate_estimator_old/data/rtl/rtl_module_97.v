module rtl_module_97 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [6:0] in_3,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;

    // Logic assignments
    assign out_0 = ~(sig_1 & in_1);
    assign in_1 = ~in_3;
    assign out_1 = out_2 ^ sig_1;
    assign sig_0 = sig_1 | out_0;
    assign out_1 = in_1 | out_2;
    assign sig_0 = sig_0 | in_0;
    assign out_0 = in_3 ^ in_1;
    assign in_1 = ~(sig_1 | sig_0);
    assign out_2 = out_1 & out_0;
    assign sig_1 = in_1 | sig_0;

endmodule
