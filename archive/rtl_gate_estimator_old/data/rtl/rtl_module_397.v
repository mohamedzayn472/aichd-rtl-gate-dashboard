module rtl_module_397 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    output wire [1:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign sig_2 = ~sig_8;
    assign sig_2 = ~(sig_4 | sig_3);
    assign sig_1 = ~(sig_0 | sig_3);
    assign out_2 = ~(sig_3 | sig_2);
    assign in_1 = in_1 ^ sig_6;
    assign out_1 = out_1 & out_0;

endmodule
