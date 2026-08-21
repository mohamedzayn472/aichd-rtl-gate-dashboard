module rtl_module_460 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [6:0] in_4,
    input wire [5:0] in_5,
    input wire [7:0] in_6,
    output wire [1:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [1:0] sig_5;
    wire [1:0] sig_6;
    wire [1:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [3:0] sig_11;
    wire [0:0] sig_12;
    wire [2:0] sig_13;
    wire [5:0] sig_14;

    // Logic assignments
    assign in_4 = ~(in_1 & sig_6);
    assign sig_0 = in_3 | sig_2;
    assign sig_3 = ~(sig_12 | sig_6);
    assign sig_14 = ~(out_0 & sig_9);
    assign sig_12 = ~(in_3 | in_0);
    assign out_0 = ~(sig_5 & sig_13);
    assign sig_11 = sig_5 & sig_10;
    assign sig_2 = sig_4 & in_0;
    assign in_5 = in_2 ^ in_2;

endmodule
