module rtl_module_177 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    input wire [2:0] in_5,
    input wire [5:0] in_6,
    input wire [1:0] in_7,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [2:0] sig_10;
    wire [7:0] sig_11;
    wire [1:0] sig_12;
    wire [6:0] sig_13;

    // Logic assignments
    assign in_1 = ~sig_6;
    assign sig_4 = ~in_6;
    assign out_2 = sig_4 | sig_10;
    assign in_2 = in_5 & sig_8;
    assign out_1 = ~(sig_8 & in_3);
    assign out_2 = in_6 | in_3;
    assign out_1 = ~sig_11;
    assign out_1 = sig_2 ^ sig_5;
    assign in_6 = in_2 | sig_8;
    assign sig_7 = sig_0 ^ sig_8;
    assign sig_6 = in_0 & in_0;

endmodule
