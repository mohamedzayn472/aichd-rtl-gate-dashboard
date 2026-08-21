module rtl_module_152 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [0:0] sig_10;
    wire [7:0] sig_11;
    wire [3:0] sig_12;
    wire [5:0] sig_13;

    // Logic assignments
    assign in_0 = in_1 | in_0;
    assign out_1 = sig_10 | in_0;
    assign sig_13 = ~(in_1 & sig_10);
    assign sig_2 = ~sig_11;
    assign sig_11 = ~(out_1 | sig_2);
    assign sig_12 = sig_1 & sig_9;

endmodule
