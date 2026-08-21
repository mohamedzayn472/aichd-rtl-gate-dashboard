module rtl_module_324 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    output wire [5:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;

    // Logic assignments
    assign in_1 = sig_5 | sig_7;
    assign in_0 = ~sig_3;
    assign sig_4 = ~(sig_4 | in_0);
    assign sig_4 = in_1 | sig_4;

endmodule
