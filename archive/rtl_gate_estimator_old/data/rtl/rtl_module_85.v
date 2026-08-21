module rtl_module_85 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [4:0] in_3,
    input wire [2:0] in_4,
    input wire [6:0] in_5,
    input wire [2:0] in_6,
    input wire [5:0] in_7,
    output wire [2:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [0:0] sig_10;
    wire [0:0] sig_11;

    // Logic assignments
    assign out_0 = ~(sig_10 | sig_1);
    assign sig_7 = ~in_4;
    assign in_4 = out_0 | sig_0;
    assign sig_6 = ~(sig_5 & in_7);
    assign sig_11 = in_1 | sig_11;
    assign sig_7 = sig_11 | in_2;
    assign sig_1 = ~(sig_3 | sig_5);
    assign sig_9 = in_7 & in_6;
    assign sig_8 = in_3 & sig_11;

endmodule
