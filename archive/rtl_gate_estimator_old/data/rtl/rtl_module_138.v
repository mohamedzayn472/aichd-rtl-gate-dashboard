module rtl_module_138 (
input wire [7:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    input wire [5:0] in_3,
    input wire [0:0] in_4,
    output wire [6:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;

    // Logic assignments
    assign in_4 = in_2 & sig_3;
    assign in_2 = ~sig_4;
    assign sig_9 = ~(sig_8 | sig_1);
    assign sig_3 = ~(sig_0 | in_1);
    assign sig_8 = sig_5 & sig_4;
    assign sig_1 = sig_6 | sig_8;

endmodule
