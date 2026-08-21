module rtl_module_493 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    input wire [7:0] in_5,
    input wire [1:0] in_6,
    input wire [3:0] in_7,
    output wire [5:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [3:0] sig_12;

    // Logic assignments
    assign in_6 = ~(in_7 & in_3);
    assign sig_9 = sig_8 & sig_4;
    assign in_7 = in_1 | sig_5;
    assign sig_2 = ~(sig_10 | sig_0);
    assign in_0 = ~(in_0 | in_7);
    assign in_3 = ~(sig_8 & in_0);
    assign sig_5 = sig_1 | sig_9;
    assign in_2 = out_0 ^ in_1;
    assign in_4 = in_2 & sig_8;
    assign sig_1 = in_2 | sig_0;

endmodule
