module rtl_module_475 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    output wire [4:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;

    // Logic assignments
    assign sig_1 = sig_3 & in_3;
    assign sig_0 = sig_2 | sig_1;
    assign sig_3 = ~in_0;
    assign out_0 = ~(sig_0 & in_0);
    assign out_0 = in_1 ^ in_0;
    assign sig_1 = ~(in_0 & in_4);

endmodule
