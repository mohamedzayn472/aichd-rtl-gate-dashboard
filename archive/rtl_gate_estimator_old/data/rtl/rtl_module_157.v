module rtl_module_157 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    input wire [1:0] in_5,
    input wire [0:0] in_6,
    input wire [7:0] in_7,
    output wire [7:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [3:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign in_7 = ~(sig_6 | sig_5);
    assign in_2 = sig_3 ^ sig_9;
    assign in_2 = ~(sig_3 & sig_7);
    assign in_7 = ~(sig_6 & sig_5);
    assign out_0 = in_4 | sig_9;
    assign sig_5 = out_0 | in_4;
    assign sig_0 = ~(sig_1 & sig_2);
    assign in_3 = in_2 ^ sig_5;
    assign sig_8 = ~in_4;

endmodule
