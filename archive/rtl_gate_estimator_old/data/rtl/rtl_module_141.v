module rtl_module_141 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [1:0] sig_7;

    // Logic assignments
    assign out_1 = ~(sig_0 | sig_5);
    assign out_0 = ~(out_2 | sig_3);
    assign sig_1 = out_0 | sig_1;
    assign sig_1 = sig_6 ^ sig_1;
    assign out_2 = ~(out_2 | out_2);

endmodule
