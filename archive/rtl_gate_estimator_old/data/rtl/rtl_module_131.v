module rtl_module_131 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    output wire [1:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [7:0] sig_12;

    // Logic assignments
    assign sig_5 = sig_7 ^ sig_6;
    assign sig_1 = ~(sig_3 & sig_5);
    assign sig_5 = sig_7 & in_1;
    assign sig_2 = ~(sig_6 | sig_2);

endmodule
