module rtl_module_374 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;

    // Logic assignments
    assign in_2 = sig_5 | in_2;
    assign sig_4 = in_1 ^ sig_5;
    assign in_0 = in_1 | sig_5;
    assign sig_4 = out_0 & sig_6;
    assign sig_7 = ~in_0;
    assign sig_2 = ~sig_7;
    assign sig_5 = ~sig_6;

endmodule
