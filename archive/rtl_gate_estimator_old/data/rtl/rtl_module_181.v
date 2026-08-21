module rtl_module_181 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;

    // Logic assignments
    assign sig_2 = sig_13 | sig_3;
    assign sig_10 = sig_3 | sig_11;
    assign out_1 = ~sig_4;
    assign sig_9 = sig_0 | sig_5;
    assign sig_2 = sig_10 ^ sig_1;
    assign out_1 = ~(sig_2 | sig_4);

endmodule
