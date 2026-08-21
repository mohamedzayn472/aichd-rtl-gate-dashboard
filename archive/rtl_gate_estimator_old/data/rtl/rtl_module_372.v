module rtl_module_372 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [5:0] out_2,
    output wire [4:0] out_3,
    output wire [5:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;

    // Logic assignments
    assign sig_4 = ~sig_5;
    assign sig_1 = sig_5 & sig_5;
    assign out_2 = ~(out_4 | in_1);
    assign out_4 = ~(out_2 | out_0);
    assign sig_4 = ~(out_4 & sig_0);
    assign sig_1 = ~out_1;
    assign sig_4 = in_1 ^ sig_0;
    assign sig_4 = ~(out_4 | out_5);

endmodule
