module rtl_module_388 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [5:0] in_4,
    input wire [4:0] in_5,
    output wire [7:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;

    // Logic assignments
    assign sig_4 = ~sig_5;
    assign in_4 = ~sig_1;
    assign sig_11 = ~(sig_9 & sig_10);
    assign sig_10 = ~(sig_8 & sig_6);
    assign sig_7 = sig_1 ^ in_2;
    assign sig_6 = in_1 | sig_7;
    assign in_4 = ~(in_4 | out_0);

endmodule
