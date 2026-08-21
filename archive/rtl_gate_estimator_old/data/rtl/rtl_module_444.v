module rtl_module_444 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    input wire [2:0] in_5,
    input wire [3:0] in_6,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [7:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [1:0] sig_6;
    wire [1:0] sig_7;
    wire [7:0] sig_8;
    wire [4:0] sig_9;
    wire [0:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;

    // Logic assignments
    assign in_0 = sig_0 | sig_1;
    assign sig_11 = sig_4 ^ sig_6;
    assign sig_8 = in_2 & sig_1;
    assign sig_8 = ~(sig_5 & sig_4);
    assign out_2 = sig_8 & sig_7;
    assign out_2 = in_4 ^ sig_4;
    assign out_0 = ~(sig_7 | in_4);
    assign in_2 = sig_5 | out_3;
    assign in_3 = sig_5 | in_0;
    assign out_1 = sig_8 | out_0;
    assign out_3 = ~(in_2 & in_2);

endmodule
