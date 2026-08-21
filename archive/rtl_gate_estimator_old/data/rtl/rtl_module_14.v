module rtl_module_14 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [3:0] out_3,
    output wire [2:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [4:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;

    // Logic assignments
    assign out_1 = ~(out_0 | sig_0);
    assign in_0 = ~sig_6;
    assign sig_1 = ~(out_3 & out_0);
    assign sig_6 = ~(out_1 | out_0);
    assign sig_5 = out_4 & in_0;
    assign sig_8 = ~(sig_5 & sig_0);
    assign out_3 = ~(sig_7 | out_2);
    assign sig_2 = in_1 & in_1;

endmodule
