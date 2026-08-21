module rtl_module_239 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    output wire [6:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [7:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;

    // Logic assignments
    assign sig_1 = sig_7 | out_1;
    assign sig_1 = ~(in_0 | sig_2);
    assign sig_1 = ~(sig_4 & sig_4);
    assign sig_1 = sig_6 ^ in_0;
    assign sig_0 = ~(sig_5 | out_0);

endmodule
