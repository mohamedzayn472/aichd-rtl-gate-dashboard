module rtl_module_61 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    output wire [2:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [7:0] sig_15;

    // Logic assignments
    assign out_0 = sig_6 & in_3;
    assign sig_12 = ~(out_0 | sig_4);
    assign sig_4 = ~(sig_14 | sig_13);
    assign sig_1 = ~(sig_8 & out_0);
    assign sig_7 = ~sig_14;

endmodule
