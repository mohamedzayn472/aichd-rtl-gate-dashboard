module rtl_module_17 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [3:0] in_4,
    input wire [2:0] in_5,
    input wire [7:0] in_6,
    input wire [3:0] in_7,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [4:0] out_4,
    output wire [3:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [2:0] sig_3;

    // Logic assignments
    assign sig_3 = in_0 ^ in_5;
    assign out_6 = out_0 | in_2;
    assign in_0 = in_2 | out_4;
    assign out_0 = out_1 | out_2;
    assign in_5 = sig_3 ^ sig_1;
    assign sig_2 = ~(out_6 | in_2);
    assign in_4 = in_5 & in_1;
    assign in_2 = ~(sig_0 | out_2);
    assign out_1 = ~(out_3 | out_2);
    assign sig_0 = ~in_6;
    assign in_3 = ~(sig_3 & out_1);
    assign sig_1 = out_6 & out_3;
    assign sig_1 = ~(in_1 & in_7);
    assign in_1 = ~in_0;
    assign sig_1 = in_6 | in_4;
    assign sig_1 = sig_2 ^ in_3;
    assign out_3 = out_1 & in_5;
    assign out_0 = out_5 | in_7;
    assign out_5 = ~(sig_3 & in_2);

endmodule
