module rtl_module_2 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    input wire [7:0] in_4,
    input wire [0:0] in_5,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign out_1 = sig_0 | sig_3;
    assign sig_5 = ~sig_8;
    assign sig_8 = ~(in_3 & sig_1);
    assign in_2 = sig_4 | in_0;
    assign out_1 = ~(sig_1 & out_2);
    assign in_0 = in_2 | in_1;
    assign in_2 = in_1 | sig_4;
    assign out_0 = sig_1 & sig_2;
    assign sig_9 = ~(sig_0 | out_1);
    assign out_2 = out_2 | sig_9;
    assign sig_9 = sig_7 | sig_0;

endmodule
