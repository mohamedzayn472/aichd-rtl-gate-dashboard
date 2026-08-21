module rtl_module_251 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    output wire [1:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [0:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [6:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [3:0] sig_11;

    // Logic assignments
    assign sig_9 = ~(out_0 & in_0);
    assign out_0 = sig_2 ^ sig_11;
    assign sig_3 = sig_11 ^ sig_0;
    assign sig_1 = sig_3 | in_1;

endmodule
