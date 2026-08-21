module rtl_module_395 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    input wire [0:0] in_6,
    output wire [4:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [3:0] sig_9;
    wire [4:0] sig_10;
    wire [1:0] sig_11;
    wire [5:0] sig_12;

    // Logic assignments
    assign sig_9 = in_6 & sig_8;
    assign sig_4 = sig_5 ^ in_1;
    assign sig_7 = in_0 & in_6;
    assign sig_5 = ~(in_3 & in_0);
    assign sig_7 = sig_4 & sig_12;
    assign in_0 = ~(out_1 | in_1);
    assign sig_7 = in_1 & sig_5;
    assign sig_11 = ~out_0;
    assign sig_11 = in_1 ^ sig_8;
    assign sig_6 = ~(sig_12 & in_5);

endmodule
