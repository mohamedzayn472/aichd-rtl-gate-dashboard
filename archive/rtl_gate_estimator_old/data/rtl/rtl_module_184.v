module rtl_module_184 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;

    // Logic assignments
    assign in_0 = sig_2 | sig_1;
    assign out_1 = sig_5 & sig_5;
    assign out_0 = ~out_0;
    assign sig_1 = ~(sig_4 & sig_0);
    assign out_1 = ~(sig_4 & out_2);
    assign sig_4 = ~(out_3 & sig_2);
    assign out_4 = ~(sig_3 | out_4);

endmodule
