module rtl_module_423 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    output wire [6:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [0:0] sig_8;
    wire [0:0] sig_9;
    wire [0:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;

    // Logic assignments
    assign sig_0 = ~(sig_3 & sig_12);
    assign sig_11 = sig_9 | sig_2;
    assign in_3 = in_1 | sig_10;
    assign sig_11 = ~(sig_11 | sig_1);
    assign sig_0 = sig_9 & sig_2;
    assign sig_8 = ~(sig_6 | sig_4);

endmodule
