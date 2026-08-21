module rtl_module_212 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    input wire [0:0] in_5,
    input wire [1:0] in_6,
    output wire [0:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [2:0] sig_5;

    // Logic assignments
    assign out_3 = in_3 | out_2;
    assign sig_0 = ~(sig_2 & in_1);
    assign sig_3 = ~in_5;
    assign out_2 = ~(out_1 | sig_4);
    assign sig_2 = ~(sig_2 & sig_5);
    assign sig_0 = ~sig_2;
    assign sig_3 = ~(in_6 | sig_0);
    assign in_4 = ~in_4;
    assign in_2 = in_1 & out_5;
    assign in_4 = in_3 & out_1;
    assign in_4 = in_2 | sig_2;
    assign sig_3 = out_5 ^ sig_0;
    assign out_2 = ~(out_0 | out_0);
    assign out_4 = out_5 & sig_2;

endmodule
