module rtl_module_154 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [4:0] sig_13;
    wire [6:0] sig_14;

    // Logic assignments
    assign sig_11 = ~in_1;
    assign sig_3 = sig_9 | sig_2;
    assign sig_10 = ~(sig_14 | in_1);
    assign sig_6 = ~(in_1 | sig_14);
    assign in_0 = out_1 ^ sig_7;
    assign out_0 = sig_3 ^ in_0;
    assign out_1 = sig_10 ^ sig_10;

endmodule
