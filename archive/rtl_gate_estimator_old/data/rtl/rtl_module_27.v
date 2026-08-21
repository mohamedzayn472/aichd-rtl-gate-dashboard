module rtl_module_27 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    output wire [6:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [0:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [4:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [2:0] sig_11;

    // Logic assignments
    assign sig_3 = sig_0 ^ sig_7;
    assign sig_11 = sig_5 | sig_2;
    assign sig_7 = sig_6 & sig_3;
    assign sig_9 = sig_10 | sig_7;
    assign sig_9 = sig_0 & sig_2;

endmodule
