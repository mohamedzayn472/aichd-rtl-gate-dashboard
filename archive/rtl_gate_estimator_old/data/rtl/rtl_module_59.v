module rtl_module_59 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [3:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;

    // Logic assignments
    assign sig_13 = ~(in_1 | sig_12);
    assign out_0 = ~sig_12;
    assign sig_4 = out_1 & in_2;
    assign in_3 = sig_1 ^ sig_13;
    assign sig_5 = ~sig_6;
    assign out_1 = out_0 | sig_2;
    assign sig_4 = sig_14 & in_2;
    assign sig_5 = sig_10 | sig_9;

endmodule
