module rtl_module_149 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [6:0] in_4,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [4:0] out_3,
    output wire [2:0] out_4,
    output wire [6:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [6:0] sig_6;

    // Logic assignments
    assign in_3 = ~in_4;
    assign out_2 = ~(sig_5 & out_4);
    assign sig_6 = ~(out_2 | sig_6);
    assign out_2 = ~out_1;
    assign out_2 = ~in_0;
    assign in_0 = ~(out_1 & in_2);
    assign sig_4 = sig_2 | out_6;
    assign sig_6 = ~(in_4 & out_5);
    assign sig_4 = ~(in_1 & out_0);
    assign out_0 = in_0 | out_2;
    assign out_2 = ~(in_1 & in_2);
    assign sig_3 = in_3 & sig_5;
    assign in_3 = ~(sig_4 & out_6);
    assign sig_5 = ~in_1;
    assign out_6 = out_4 & in_1;
    assign sig_1 = ~(out_4 | in_4);
    assign out_3 = ~(in_4 & sig_2);
    assign in_4 = ~(sig_4 | sig_4);
    assign in_0 = ~(out_3 | sig_1);
    assign in_2 = in_0 & in_4;
    assign in_3 = ~(out_4 & in_3);
    assign sig_1 = in_3 | out_3;
    assign out_4 = out_2 & out_0;
    assign in_3 = sig_4 & out_0;
    assign sig_0 = ~sig_2;

endmodule
