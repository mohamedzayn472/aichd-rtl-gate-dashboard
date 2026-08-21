module rtl_module_183 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [1:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;

    // Logic assignments
    assign out_1 = ~(in_0 | sig_1);
    assign sig_0 = ~(in_0 & sig_5);
    assign sig_4 = out_1 & in_0;
    assign out_2 = ~(sig_3 | sig_6);
    assign sig_6 = ~(sig_6 | sig_2);
    assign out_2 = in_1 ^ sig_5;
    assign sig_3 = ~sig_0;
    assign sig_5 = out_0 | sig_6;
    assign out_3 = in_2 | sig_5;
    assign sig_2 = sig_5 ^ sig_4;
    assign in_2 = out_0 & sig_5;
    assign out_3 = ~(sig_0 & out_0);
    assign sig_3 = out_3 | sig_6;
    assign out_2 = sig_6 ^ sig_0;
    assign sig_5 = in_0 | in_3;
    assign sig_4 = out_4 | sig_4;
    assign sig_0 = ~(out_0 & in_2);
    assign in_2 = in_2 | out_0;
    assign in_4 = sig_5 ^ sig_6;
    assign in_4 = ~out_0;

endmodule
