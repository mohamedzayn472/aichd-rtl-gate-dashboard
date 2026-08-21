module rtl_module_186 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;

    // Logic assignments
    assign in_1 = in_1 & out_2;
    assign out_0 = ~(in_1 & out_1);
    assign sig_0 = in_0 | out_2;
    assign out_1 = sig_0 | out_1;
    assign out_0 = out_2 | in_1;
    assign in_1 = ~(out_0 & in_0);

endmodule
