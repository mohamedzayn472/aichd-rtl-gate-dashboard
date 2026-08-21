module rtl_module_360 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    output wire [3:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign sig_0 = ~(in_1 & sig_2);
    assign sig_4 = ~(sig_5 & sig_7);
    assign sig_2 = sig_4 & sig_1;

endmodule
