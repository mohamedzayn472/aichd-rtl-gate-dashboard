module rtl_module_130 (
input wire [3:0] in_0,
    input wire [7:0] in_1,
    output wire [1:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [5:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [5:0] sig_12;

    // Logic assignments
    assign sig_0 = ~out_0;
    assign in_0 = ~sig_3;
    assign sig_6 = ~(sig_2 & sig_7);

endmodule
