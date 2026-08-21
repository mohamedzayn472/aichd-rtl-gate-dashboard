module rtl_module_60 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [2:0] in_3,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [5:0] sig_7;
    wire [4:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign in_2 = ~(sig_4 | sig_0);
    assign sig_2 = ~(sig_4 & in_2);
    assign in_2 = ~(in_0 | out_2);
    assign in_0 = ~(out_4 | out_4);
    assign out_4 = ~sig_2;
    assign out_3 = sig_4 & out_3;
    assign out_1 = ~(sig_0 & sig_7);
    assign sig_3 = ~out_4;
    assign sig_5 = ~(sig_0 | out_0);
    assign out_2 = ~(in_2 & sig_8);

endmodule
